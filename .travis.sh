#!/usr/bin/env bash

OPAM_DEPENDS="xmlm"

case "$OCAML_VERSION,$OPAM_VERSION" in
4.01.0,1.1.0) ppa=avsm/ocaml41+opam11 ;;
*) echo Unknown $OCAML_VERSION,$OPAM_VERSION; exit 1 ;;
esac

# set up machine
echo "yes" | sudo add-apt-repository ppa:$ppa
sudo apt-get update -qq
sudo apt-get install -qq ocaml ocaml-native-compilers camlp4-extra opam

# set up OPAM
export OPAMYES=1
# export OPAMVERBOSE=1  # uncomment this to get more debug info
opam init
opam install ${OPAM_DEPENDS}
eval `opam config env`

# Print info on system
echo Working directory
pwd
echo OCaml version
ocaml -version
echo OPAM versions
opam --version
opam --git-version
echo Mirage version
mirage --version

# run the commands to build from here
#make
