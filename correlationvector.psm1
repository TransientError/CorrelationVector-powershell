function New-Cv {
  param([switch] $v2 = $false)

  $guid = New-Guid
  if (!$v2) {
    $base = [System.Convert]::ToBase64String($guid.ToByteArray(), 0, 12)
  } else {
    $base = [System.Convert]::ToBase64String($guid.ToByteArray())
    $base = $base.SubString(0, 22)
  }

  echo $base".0"
}
