with import <nixpkgs> { };

let
  foo = "";
in
  stdenv.mkDerivation rec {
    name = "wood_turners_website";
    buildInputs = [
      php71Packages.composer
      php
      pythonPackages.Fabric
      pythonPackages.pyyaml
      pythonPackages.docker_compose
    ];
    shellHook = ''
      export EDITOR=nvim
      echo "Wood Turners Site" \
      | ${pkgs.figlet}/bin/figlet -f banner -c \
      | ${pkgs.lolcat}/bin/lolcat
          cat <<EOF
        Instructions for updating:
             Edit composer.json
             $ composer install
             $ git commit -am "Wordpress Core -> 4.7.2"
             $ git push
    EOF

    '';
  }
