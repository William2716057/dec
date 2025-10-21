# DecodeBase64.ps1
param(
    [Parameter(Mandatory=$true)]
    [string]$Base64
)

# PowerShell -EncodedCommand uses UTF-16LE (Unicode)
$bytes = [System.Convert]::FromBase64String($Base64)
$text  = [System.Text.Encoding]::Unicode.GetString($bytes)

# Output the decoded text
Write-Output $text
