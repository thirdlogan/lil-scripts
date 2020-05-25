foreach ($f in Get-ChildItem *.zip) {
  Expand-Archive $f;
};
