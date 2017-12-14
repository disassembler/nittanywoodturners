with import <nixpkgs> { };

let
  foo = "";
in
  stdenv.mkDerivation rec {
    name = "Centre County Wood Turners";
    buildInputs = [
      php71Packages.composer
      php
      pythonPackages.Fabric
      pythonPackages.pyyaml
      pythonPackages.docker_compose
    ];
  }
