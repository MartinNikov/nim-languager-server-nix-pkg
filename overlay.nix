_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix { inherit faststreams; inherit asynctools; inherit stew; inherit json-rpc; };
  faststreams = prevNixpkgs.callPackage ./packages/faststreams/default.nix {};
  asynctools = prevNixpkgs.callPackage ./packages/asynctools/default.nix {};
  stew = prevNixpkgs.callPackage ./packages/stew/default.nix {};
  json-rpc = prevNixpkgs.callPackage ./packages/json-rpc/default.nix {};

in {
  metacraft-labs = rec {
    inherit langserver;
    inherit faststreams;
    inherit asynctools;
    inherit stew;
    inherit json-rpc;
  };
}