with Ada.Directories, Ada.Text_IO, Ada.Long_Float_Text_IO, System.Machine_Code;
use Ada.Directories, Ada.Text_IO, Ada.Long_Float_Text_IO, System.Machine_Code;
procedure Main is
   type timespec                    is record
      tv_sec   : Long_Long_Integer;
      tv_nsec  : Integer;
   end record;
   start, finish                    : timespec;
   frequency, counter               : aliased Long_Long_Integer;
   type Long_Long_Integer_Pointer   is access all Long_Long_Integer;
   elapsedTime                      : Long_Float;
   type Unsigned_Long_Long_Integer  is mod 2 ** 64;
   type Unsigned_Integer            is mod 2 ** 32;
   st, et, Cycles, i                : Unsigned_Long_Long_Integer := 0;
   Size                             : File_Size;
   KB                               : constant Long_Float := 1024.0;
   MB                               : constant Long_Float := KB * 1024.0;
   GB                               : constant Long_Float := MB * 1024.0;
   function QueryPerformanceFrequency(lpFrequency : Long_Long_Integer_Pointer) return Integer;
   function QueryPerformanceCounter(lpPerformanceCount : Long_Long_Integer_Pointer) return Integer;
   procedure ExitProcess(uExitCode : Unsigned_Integer);
   pragma Import(StdCall, QueryPerformanceCounter, "QueryPerformanceCounter");
   pragma Import(StdCall, QueryPerformanceFrequency, "QueryPerformanceFrequency");
   pragma Import(StdCall, ExitProcess, "ExitProcess");
   pragma Linker_Options("-lkernel32");
   function rdtscpf return Unsigned_Long_Long_Integer is
      output   : Unsigned_Long_Long_Integer;
   begin
      Asm(  "lfence" & ASCII.LF &
            "rdtscp" & ASCII.LF &
            "lfence" & ASCII.LF &
            "shl  $32, %%rdx" & ASCII.LF &
            "or   %%rdx, %%rax" & ASCII.LF &
            "mov  %%rax, %0",
            Outputs  => (Unsigned_Long_Long_Integer'Asm_Output ("=r", output)),
            Volatile => True);
      return   output;
   end rdtscpf;
begin
   if             (QueryPerformanceFrequency(frequency'Access) = 0 and QueryPerformanceCounter(counter'Access) = 0) then ExitProcess(1);
   end            if;
   start.tv_sec   := counter / frequency;
   start.tv_nsec  := Integer((counter mod frequency) * 1000000000 / frequency);
   loop
      exit     when i = Unsigned_Long_Long_Integer'Last;
      st       := rdtscpf;
      i        := i + 1;
      et       := rdtscpf - st;
      Cycles   := Cycles + et;
   end            loop;
   if             QueryPerformanceCounter(counter'Access) = 0 then ExitProcess(1);
   end            if;
   finish.tv_sec  := counter / frequency;
   finish.tv_nsec := Integer((counter mod frequency) * 1000000000 / frequency);
   elapsedTime    := Long_Float(finish.tv_sec - start.tv_sec) + Long_Float(finish.tv_nsec - start.tv_nsec) / 1_000_000_000.0;
   Size           := Ada.Directories.Size("bin/main.exe");
   Put_Line("Total Cycles " & Cycles'Image);
   Put("Time taken: ");
   Put(elapsedTime, 1, 6, 0);
   Put_Line(" seconds");
   Put("Approx CPU frequency: ");
   Put(Long_Float(Cycles) / elapsedTime / 1.0e9, 1, 6, 0);
   Put_Line(" GHz");
   if             Long_Float(Size) >= GB then
      Put("File size: ");
      Put(Long_Float(Size) / GB, 1, 3, 0);
      Put_Line(" GB");
   elsif          Long_Float(Size) >= MB then
      Put("File size: ");
      Put(Long_Float(Size) / MB, 1, 3, 0);
      Put_Line(" MB");
   elsif          Long_Float(Size) >= KB then
      Put("File size: ");
      Put(Long_Float(Size) / KB, 1, 3, 0); 
      Put_Line(" KB");
   else           Put_Line("File size: " & Size'Image & " bytes");
   end if;
   ExitProcess(0);
   exception      when Ada.Directories.Name_Error => ExitProcess(1);
end Main;
