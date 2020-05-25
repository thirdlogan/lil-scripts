cd \Users\wrait\Downloads;

foreach ($f in dir ZIP_*) {
  cd $f; 

  del tn*;
  del -Recurse __MACOSX;

  cd \Users\wrait\Downloads;
}
