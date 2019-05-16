Param($path)
$regex=(cat rules/generic_cc.txt).split("\n")
Get-ChildItem -Recurse -Path $path  | Where-Object { !$_.PSIsContainer }|ForEach-Object -Process {if(get-content $_.fullname|select-string -Pattern $regex -quiet){$_.fullname}}
