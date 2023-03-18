#{ fetchFromGitHub }:

#fetchFromGitHub {
#  url = "https://github.com/yyoncho/nim-json-rpc/tree/notif-changes";
#  owner = "yyoncho";
#  repo = "nim-json-rpc";
#  rev = "808ba33269341ed500c9f65f0663e0918917e546";
#  hash = "sha256-MnyVBBvQEqU1ys/hG+hEMt+ddHULn8mVfWuasZlcHvU=";
#}

{ lib, fetchurl }:

fetchurl {
  url = "https://github.com/yyoncho/nim-json-rpc/tree/notif-changes";
  sha256 = "sha256-z7NhLKUOJioLTGKPvZn7Wzvm961FKn44zYfLryFQKoI=";
}