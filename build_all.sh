#!/bin/bash
declare -a archs=("armv6" "armv7" "arm64")

## For every arm architecture above build MXNet using a cross-compilation environment hosted in
## docker.  Then copy the build artifacts into an appropriate folder.

for i in "${archs[@]}"
do
   echo Building "$i"
   # Build mxnet within the appropriate container
   docker build -f Dockerfile.$i -t $i  .
done

for i in "${archs[@]}"
do
   echo Copying Artifacts "$i"
   mkdir -p $i
   # Copy the artifacts
   docker run -v `pwd`/$i:/$i $i bash -c "cp /work/incubator-mxnet/lib/* /$i"
done
