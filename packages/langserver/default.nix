{ lib, buildNimPackage, fetchFromGitHub, SDL2 }:

buildNimPackage rec {
  pname = "langserver";
  version = "0.1.0";
  nimBinOnly = true;
  src = fetchFromGitHub {
    owner = "nim-lang";
    repo = "langserver";
    rev = "dbaff403fa7f785d1b6afeff890dd6f903cb8b49";
    hash = "sha256-wkD9+6p8Volp0WwRfLej7QkvsCHXL6B7uPHWBaDpMDw=";
  };
}