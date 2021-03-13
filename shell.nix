let
  pinned = fetchTarball {
    name   = "nixos-20.09";
    url    = "https://github.com/NixOS/nixpkgs/archive/1eff582e7ea6dcb208127ad369e231eaaf6fa378.tar.gz";
    sha256 = "1p29xyspvcy7fna9gn9qj9ha0kdn2malp815cjw70bxx1dxsa0kl";
  };
  pkgs = import pinned {};
in
  pkgs.mkShell {
    buildInputs = [
      pkgs.gcc
      pkgs.bash
      pkgs.cmake
      pkgs.sfml
      pkgs.python3
    ];
  }
