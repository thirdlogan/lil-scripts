foreach ($f in Get-ChildItem -Directory) {
  Set-Location $f;
  foreach ($r in Get-ChildItem -Directory) {
    Set-Location $r;
    foreach ($t in Get-ChildItem -Hidden ._*) {
      Remove-Item -Force $t;
    };
    Set-Location ..;
  };
  Set-Location ..;
}

