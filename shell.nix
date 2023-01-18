{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.rubyPackages.ffi
    pkgs.bundler
  ];

  shellHook = ''
   bundle exec jekyll serve -P 4001
  '';
}