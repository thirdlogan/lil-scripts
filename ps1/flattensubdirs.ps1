 foreach ($q in Get-ChildItem -Directory .) {
   Set-Location $q;
   foreach ($w in Get-ChildItem -Directory .) {
     Set-Location $w;

     $w_dirs = (Get-ChildItem -Directory .) 
     foreach ($e in $w_dirs) {
      Move-Item $e\*.* ..\..\;
     }

     $w_files = (Get-ChildItem -File .)
     foreach ($f in $w_files) {
       Move-Item $f ..\;
     }

     Set-Location ..;
   };
   Set-Location ..;
 };
