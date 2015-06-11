with (import <nixpkgs> {}).pkgs;
let pkg = haskellngPackages.callPackage
            ({ mkDerivation, base, turtle, stdenv }:
             mkDerivation {
               pname = "turtle-example";
               version = "0.0.0.0";
               src = ./.;
               isLibrary = false;
               isExecutable = true;
               buildDepends = [ base turtle ];
               license = stdenv.lib.licenses.bsd2;
             }) {};
in
  pkg.env
