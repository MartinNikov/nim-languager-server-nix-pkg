{ lib, nimPackages, fetchFromGitHub, SDL2, faststreams, asynctools, stew, json-rpc, chronicles, json-serialization, serialization, zevv-with }:

nimPackages.buildNimPackage rec {
  pname = "langserver";
  version = "1.6.10";
  src = fetchFromGitHub {
    owner = "nim-lang";
    repo = "langserver";
    rev = "0ffa2323cf956abde645f5c0ee4649fa5206d80f";
    hash = "sha256-eaAJOjVWchw2ZlDC00qdAvZJjmvxXyPEjT4bb9rTXVk=";
  };

  propagatedBuildInputs = [ faststreams asynctools stew json-rpc chronicles json-serialization serialization zevv-with ];

  doCheck = true;
  nimRelease = false;
  nimDefines = [ "debug" ];

  meta = with lib; {
    mainProgram = "nimlangserver";
  };
}
