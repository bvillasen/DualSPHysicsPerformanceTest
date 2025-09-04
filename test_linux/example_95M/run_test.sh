#!/bin/bash

flog=z_TestResults.csv

vexe=_linux64
casedir=_DataCases_Ds5Test

chmod +x _rundsph5test.sh

# opt="-symplectic -ddt:3 -cellmode:h -tmax:0.001"
opt="-symplectic -ddt:3 -cellmode:h -sv:none -tmax:0.001"

mark=_hs3e_r01
./_rundsph5test.sh gpu $vexe $casedir zSpheric2Dam_95M $flog $mark "$opt"

echo "--- DONE! ---"

