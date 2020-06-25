
{ pkgs ? import <nixpkgs> {} }:

let
  easyPS = import (pkgs.fetchFromGitHub {
    owner = "justinwoo";
    repo = "easy-purescript-nix";
    rev = "e00cbfd289389ccbae1d508d56c5120ed4195054";
    sha256 = "0kj3r7567ry4zb0bl3y91x7kykhhb27hc9phxdrcqi2l6ypcwmyi";
  }) { inherit pkgs; };
in with easyPS;
  pkgs.stdenv.mkDerivation {
    name = "easy-purescript";
    buildInputs = [
      purs
      spago
      pkgs.jq
      pkgs.nodejs
    ];
    shellHook = ''
      export PATH="$PWD/node_modules/.bin/:$PATH"
    '';
    
  }
