# speedtestschedule
Powershell script to run a speedtest-cli (scheduled) and output data into CSV

I have this set on a task scheduler running once per hour to see congestion levels on my NBN FTTP:

Dependencies: 

Require speedtest-cli which can be obtained using "pip install speedtest-cli" in command line.

Task Scheduler Details:
Program: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe 
Arguments: -ExecutionPolicy Bypass -File "C:\Powershell\SpeedtestSchedule.ps1"







