%   as FFI.asm -o FFI.obj
%   ld -shared --file-alignment=4 --section-alignment=4 --disable-reloc-section FFI.obj -Tlink.ld -L"Path\lib" -lkernel32 -lswipl -o FFI.dll
%   swipl -o main -c main.pl
:- use_foreign_library(foreign('FFI')).
:- initialization(main, main).
cycleCount(I, Init, Cycle)  :-
    rdtscpf(St),
    rdtscpf(Et),
    Result  is Et - St,
    Total   is Init + Result,
    J       is I - 1,
    (J > 0 -> cycleCount(J, Total, Cycle) ; Cycle = Total).
main                        :-
    KB          is 1024.0,
    MB          is 1024.0 * 1024.0,
    GB          is 1024.0 * 1024.0 * 1024.0,
    (
        'QueryPerformanceFrequency'(Frequency),
        'QueryPerformanceCounter'(Counter1)
        ->  true
        ;   'ExitProcess'(1)
    ),
    Sec1        is Counter1 // Frequency,
    Nsec1       is (Counter1 mod Frequency) * 1000000000 // Frequency,
    Time        = _{tv_sec: Sec1, tv_nsec: Nsec1},
    cycleCount(100000, 0, Cycles),
    (
        'QueryPerformanceCounter'(Counter2)
        ->  true
        ;   'ExitProcess'(1)
    ),
    Sec2        is Counter2 // Frequency,
    Nsec2       is (Counter2 mod Frequency) * 1000000000 // Frequency,
    ElapsedTime is Sec2 - Time.tv_sec + (Nsec2 - Time.tv_nsec) / 1000000000.0,
    catch(
        (
            size_file('main.exe', Size),
            format('Total Cycles ~d~n', [Cycles]),
            format('Time taken: ~d hours ~d minutes ~f seconds~n', [integer(ElapsedTime) // 3600, integer(ElapsedTime) mod 3600, float(integer(ElapsedTime) mod 60) + ElapsedTime - float(integer(ElapsedTime))]),
            format('Approx CPU frequency: ~f GHz~n', [Cycles / ElapsedTime / 1.0e9]),
            (
                Size    >= GB
                ->  format('File size: ~3f GB~n', [Size / GB])
                ;   (
                        Size    >= MB
                        ->  format('File size: ~3f MB~n', [Size / MB])
                        ;   (
                                Size    >= KB
                                ->  format('File size: ~3f KB~n', [Size / KB])
                                ;   format('File size: ~d bytes~n', [Size])
                            )
                    )
            ),
            'ExitProcess'(0)
        ),
        _Error, 'ExitProcess'(1)).