# Modify as required

$PythonPath = "C:\Program Files\Python36\python.exe"
$SpeedtestPath = "C:\Users\xxxxxx\AppData\Roaming\Python\Python36\site-packages\speedtest.py"
$CsvPath = "C:\Output\speedtest_results.csv"

# Run speedtest and capture output
$output = & $PythonPath $SpeedtestPath | Out-String

# Extract data from output
$download = if ($output -match "Download: (\d+\.\d+) Mbit/s") { $matches[1] }
$upload = if ($output -match "Upload: (\d+\.\d+) Mbit/s") { $matches[1] }
$latency = if ($output -match "\[.*?\]: (\d+\.\d+) ms") { $matches[1] }

# Get current time
$time = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Create CSV line
$csvLine = "$time, $download, $latency, $upload"

# Check if CSV file exists, create if not
if (!(Test-Path $CsvPath)) {
    "Time, Download, Latency, Upload" | Out-File $CsvPath
}

# Append to CSV
$csvLine | Out-File $CsvPath -Append
Pause 