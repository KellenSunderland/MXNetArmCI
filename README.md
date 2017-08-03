# MXNet Cross Compilation Notes

## Introduction

This is a short guide to explain how to cross-compile [MXNet](https://github.com/dmlc/mxnet) with [OpenBLAS](http://www.openblas.net/).  This guide uses a small extension of the Dockerfiles put together at [dockcross](https://github.com/dockcross/dockcross).  The goal of the guide is to create MXNet binaries that are compatible with a variety of modern ARM instruction sets.  The only prerequisite required to follow this guide is to have docker installed.

## Build All Binaries

To build the entire family of binaries, you can then run 

```bash
chmod +x build_all.sh
./build_all.sh
```

## Artifact Details

All build artifacts should include version of OpenBLAS with lapack enabled.  They may not work on some ARM architectures which don't support hardware floating point acceleration.

## Future Work

In the future we will work to make the produced libraries more portable.
