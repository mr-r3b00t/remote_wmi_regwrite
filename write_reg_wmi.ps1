[uint32]$hklm = 2147483650
$reg = [wmiclass]"root\cimv2:StdRegprov"

#$newkey = "SOFTWARE"

$newKeyvalue = "SOFTWARE\pwndefend"

$newname = "pwndefender"

$newvalue = "Version"

$creds = Get-Credential

Invoke-WmiMethod -Namespace root\cimv2 -Class StdRegProv -Name CreateKey $hklm, $newKeyvalue -ComputerName ws05.ny.ecorp.local -Credential $cred

Invoke-WmiMethod -Namespace root\cimv2 -Class StdRegProv -Name SetSTRINGvalue $hklm, $newKeyvalue, $newvalue, $newname -ComputerName ws05.ny.ecorp.local -Credential $cred
