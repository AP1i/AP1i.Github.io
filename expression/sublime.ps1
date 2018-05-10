# 清理上下文菜单（右键菜单）中的 "Open with Sublime text" 选项
#
# 2018.5.22
# 
# if(Test-Path $_A) {Get-Item -Path "$_A" | Remove-Item -Recurse}
$_A = 'HKLM:\SOFTWARE\Classes\`*\Shell\*Sublime*'; If($_A) {Ri "$_A" -R}