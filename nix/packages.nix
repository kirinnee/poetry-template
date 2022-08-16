{ nixpkgs ? import <nixpkgs> { } }:
let pkgs = rec {
  atomi = (
    with import (fetchTarball "https://github.com/kirinnee/test-nix-repo/archive/refs/tags/v9.0.0.tar.gz");
    {
    }
  );
  "Unstable 16th August 2022" = (
    with import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/a093c35beee0a64ad68312d747a4c49eaa5b1105.tar.gz") { };
    {
      inherit 
        nixpkgs-fmt
        coreutils
        git
        poetry;
    }
  );
}; in
with pkgs;
pkgs.atomi // pkgs."Unstable 16th August 2022"
