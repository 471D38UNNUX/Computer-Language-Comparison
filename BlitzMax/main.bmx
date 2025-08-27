SuperStrict
Import "RDTSCP.s"
Extern
	Function QueryPerformanceFrequency:Int(lpFrequency:Long Ptr)		= "WINBOOL QueryPerformanceFrequency(LARGE_INTEGER*)"
	Function QueryPerformanceCounter:Int(lpPerformanceCount:Long Ptr)	= "WINBOOL QueryPerformanceCounter(LARGE_INTEGER*)"
	Function ExitProcess(uExitCode:UInt)
	Function rdtscpf:ULong()
End							Extern
Const						kB:Double = 1024.0, mB:Double = 1024.0 * 1024.0, gB:Double = 1024.0 * 1024.0 * 1024.0
Global						frequency:Long, counter:Long
If							Not(QueryPerformanceFrequency(Varptr frequency) And QueryPerformanceCounter(Varptr counter)) Then Exitprocess 1
Type						timespec
	Field	tv_sec:Long
	Field	tv_nsec:Int
	Method	New(tv_sec:Long, tv_nsec:Int)
		Self.tv_sec		= tv_sec
		Self.tv_nsec	= tv_nsec
	End		Method
End							Type
Global time:timespec		= New timespec(counter / frequency, Int((counter Mod frequency) * 1000000000 / frequency))
Global						st:ULong, et:ULong, Cycles:ULong = 0
Global i:UInt				= 100000
Repeat
	st		= rdtscpf()
	et		= rdtscpf() - st
	Cycles	:+ et
	i	:- 1
Until i						= 0
If							Not QueryPerformanceCounter(Varptr counter) Then Exitprocess 1
Global elapsedTime:Double	= Double(counter / frequency - time.tv_sec) + Double(Int((counter Mod frequency) * 1000000000 / frequency) - time.tv_nsec) / 1000000000.0
Try
	If				Not FileType("main.exe") Then Throw New TBlitzException 
	Local Size:Long			= FileSize("main.exe")
	Local sb:TStringBuilder	= New TStringBuilder
	Print					"Total Cycles " + Cycles
	Print					"Time taken: " + ULong(elapsedTime) / 3600 + " hours " + ULong(elapsedTime) Mod 3600 / 60 + " minutes " + sb.format("%f", Double(ULong(elapsedTime) Mod 60) + elapsedTime + Double ULong elapsedTime).ToString() + " seconds"
	sb						= New TStringBuilder
	Print					"Approx CPU frequency: " + sb.format("%f", Double(Cycles) / elapsedTime / 1.0e9).ToString() + " GB"
	If						Double Size >= gB Then
		sb		= New TStringBuilder
		Print	"File size: " + sb.format("%.3f", Double(Size) / gB).ToString() + " GB"
	ElseIf					Double Size >= mB Then
		sb		= New TStringBuilder
		Print	"File size: " + sb.format("%.3f", Double(Size) / mB).ToString() + " MB"
	ElseIf					Double Size >= kB Then
		sb		= New TStringBuilder
		Print	"File size: " + sb.format("%.3f", Double(Size) / kB).ToString() + " KB"
	Else					Print "File size: " + Size + " bytes"
	EndIf
	ExitProcess				0
Catch						e:TBlitzException Exitprocess 1
End							Try

