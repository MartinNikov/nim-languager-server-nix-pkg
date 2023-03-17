{ lib, nimPackages, fetchFromGitHub, SDL2 }:

nimPackages.buildNimPackage rec {
  pname = "faststreams";
  version = "1.0.0";
  nimBinOnly = true;
  src = fetchFromGitHub {
    owner = "status-im";
    repo = "nim-faststreams";
    rev = "814f8927e1f356f39219f37f069b83066bcc893a";
    hash = "sha256-qVwGLXlhJXhdyXpFpujFrLf0tVQIbOzfqg1ZAM+U2B4=";
  };
}