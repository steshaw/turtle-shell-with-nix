let
  hostPkgs = import <nixpkgs> { };
  pinnedPkgs = hostPkgs.fetchFromGitHub {
    owner = "NixOS";
    repo = "nixpkgs";
    rev = "60accda79fe13fa938c6237be9af7e1f60e2ed46";
    sha256 = "sha256:11061jsvwb0kqw49zjmdv34zmysz28aj0nx3cfhlrpw6wzv1bp8r";
  };
in with (import pinnedPkgs { }).pkgs;
let
  pkg = haskellngPackages.callPackage ({ mkDerivation, base, turtle, stdenv }:
    mkDerivation {
      pname = "turtle-example";
      version = "0.0.0.0";
      src = ./.;
      isLibrary = false;
      isExecutable = true;
      buildDepends = [ base turtle ];
      license = stdenv.lib.licenses.bsd2;
    }) { };
in pkg.env
