#!/bin/bash

export gen="../../bin/linux/GenCase_linux64"

chmod +x ${gen}

export dircase=_DataCases_Ds5Test
export case=Spheric2Dam

rm ${dircase}/z*.*

# Generate initial conditions
${gen} ${dircase}/${case}_95M ${dircase}/z${case}_95M

rm ${dircase}/*_hdp_Actual.vtk
rm ${dircase}/*_Actual.vtk
