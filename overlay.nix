_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix { inherit chronicles; inherit faststreams; inherit asynctools; inherit stew; inherit json_rpc; };
  faststreams = prevNixpkgs.callPackage ./packages/faststreams/default.nix {};
  asynctools = prevNixpkgs.callPackage ./packages/asynctools/default.nix {};
  stew = prevNixpkgs.callPackage ./packages/stew/default.nix {};
  json_rpc = prevNixpkgs.callPackage ./packages/json_rpc/default.nix {};
  chronicles = prevNixpkgs.callPackage ./packages/chronicles/default.nix {};

in {
  metacraft-labs = rec {
    inherit langserver;
    inherit faststreams;
    inherit asynctools;
    inherit stew;
    inherit json_rpc;
    inherit chronicles;
  };
}