# SpeedTestSchedule

## Overview
`SpeedTestSchedule` is a PowerShell script designed to periodically run `speedtest-cli`, capturing internet speed data (download, upload speeds, and latency) and logging it to a CSV file. This script is useful for monitoring network performance, particularly in tracking congestion levels on networks like NBN FTTP.

## Dependencies
- **speedtest-cli**: This script requires `speedtest-cli`. Install it using the following command in the command line: 

pip install speedtest-cli

## Task Scheduler Setup
To automate the running of this script, set it up in Windows Task Scheduler:

- **Program to Run**:
- C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
  **Arguments**:
  -ExecutionPolicy Bypass -File "C:\Powershell\SpeedtestSchedule.ps1"

I run it once an hour to test out congestion with my ISP 
