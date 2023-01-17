{ pkgs ? import <nixpkgs> { } }:
with pkgs;

let
  inherit (pkgs) bundlerEnv stdenv;
  pythonDeps = ps: with ps; [
    bash_kernel
    jupyter
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
    bundler 
    ruby
  ];

}
