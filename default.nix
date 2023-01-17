{ pkgs ? import <nixpkgs> { } }:
with pkgs;

let
  inherit (pkgs) bundlerEnv stdenv;
  pythonDeps = ps: with ps; [
    jupyter
    bash_kernel
  ];
  pythonEnv = python3.withPackages pythonDeps;
  gems = bundlerEnv {
    ruby = pkgs.ruby_2_7;
};

in mkShell {
  buildInputs = [
    pythonEnv
    nodejs
    nodePackages.npm
    nodePackages.ijavascript
    jekyll_env 
    pkgs.rubyPackages.ffi
    pkgs.bundler
  ];

}
