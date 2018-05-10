# 清理上下文菜单（右键菜单）中的 "Open with VSCode" 选项
#
# 2018.5.22
# 
Function _VSC($_V) {"HKCU:\Software\Classes\$_V\Shell\vscode"}
#
# HKEY_CURRENT_USER\software\classes\*\shell\vscode
$_A = _VSC '`*'; If($_A) {Ri "$_A" -R}
#
# HKEY_CURRENT_USER\Software\Classes\Drive\shell\vscode
$_A = _VSC "drive"; If($_A) {Ri "$_A" -R}
#
# HKEY_CURRENT_USER\Software\Classes\Directory\shell\VSCode
$_A = _VSC "Directory"; If($_A) {Ri "$_A" -R}
#
# HKEY_CURRENT_USER\Software\Classes\Directory\Background\shell\VSCode
$_A = _VSC "Directory\Background"; If($_A) {Ri "$_A" -R}