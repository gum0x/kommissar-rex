# Kommisar Rex

* Search for sensitive data with with OS tools
* List of Regex for sensitive data (mostly extracted from TruffleHog

## Usage
*Search for CC*
.\grep_cc.ps1 <PATH>
./grep_cc.sh <PATH>

*Search for keys or other credentials*
.\grep_findings.ps1 <PATH>
./grep_findings.sh <PATH>



## Grep in windows
*Print the files with credit cards on the current path (recursively)*

```powershell
Get-ChildItem -Recurse | Where-Object { !$_.PSIsContainer }|ForEach-Object -Process {if(cat $_.fullname|select-string -Pattern "\b[456]\d{3}[ -]?(\d{4}[ -]?){3}\b" -quiet){$_.fullname}}
```

