Param(
    [Parameter(Mandatory = $True)]
    [string]$CommitMessage
)

$Regex="(?:^|\W)minor(?:$|\W)"
$Regex2="(?:^|\W)major(?:$|\W)"
$regex3="(?:^|\W)patch(?:$|\W)"

if ($CommitMessage -match $Regex -Or $CommitMessage -match $Regex2  -Or $CommitMessage -match $Regex3  ) {
  Write-Host "The commit message complies with conventional commits."
}
else {
  #  Write-Output $CommitMessage
  Throw "Error : Invalid commit message!"
}