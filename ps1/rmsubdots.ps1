foreach ($f in Get-ChildItem -Directory) {
  Set-Location $f;
  foreach ($t in Get-ChildItem -Hidden ._*) {
    Remove-Item -Force $t;
  };
  Set-Location ..;
}

