{ nixpkgs ? import <nixpkgs> { } }:
let pkgs = import ./packages.nix { inherit nixpkgs; }; in
with pkgs;
{
  system = [
    coreutils
  ];

  dev = [
    git
  ];

  main = [
    poetry
  ];
  lint = [
    nixpkgs-fmt
  ];

}
