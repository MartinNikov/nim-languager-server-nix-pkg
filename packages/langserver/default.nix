{ lib, nimPackages, fetchFromGitHub, SDL2, faststreams, asynctools, stew, json-rpc }:

nimPackages.buildNimPackage rec {
  pname = "langserver";
  version = "1.6.10";
  nimBinOnly = true;
  src = fetchFromGitHub {
    owner = "nim-lang";
    repo = "langserver";
    rev = "dbaff403fa7f785d1b6afeff890dd6f903cb8b49";
    hash = "sha256-wkD9+6p8Volp0WwRfLej7QkvsCHXL6B7uPHWBaDpMDw=";
  };

  propagatedBuildInputs = [ faststreams asynctools stew json-rpc ];

  doCheck = true;
}