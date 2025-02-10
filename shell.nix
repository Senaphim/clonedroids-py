{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {

  packages = [
    (pkgs.python3.withPackages(p: with p; [
      pygame
    ]))
  ];

  env.LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
    pkgs.stdenv.cc.cc.lib
    pkgs.libz
  ];

}
