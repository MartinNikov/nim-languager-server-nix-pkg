_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix { inherit json-serialization; inherit chronicles; inherit faststreams; inherit asynctools; inherit stew; inherit json-rpc; };
  faststreams = prevNixpkgs.callPackage ./packages/faststreams/default.nix {};
  asynctools = prevNixpkgs.callPackage ./packages/asynctools/default.nix {};
  stew = prevNixpkgs.callPackage ./packages/stew/default.nix {};
  json-rpc = prevNixpkgs.callPackage ./packages/json_rpc/default.nix {};
  chronicles = prevNixpkgs.callPackage ./packages/chronicles/default.nix {};
  json-serialization = prevNixpkgs.callPackage ./packages/json-serialization/default.nix {};

in {
  metacraft-labs = rec {
    inherit langserver;
    inherit faststreams;
    inherit asynctools;
    inherit stew;
    inherit json-rpc;
    inherit chronicles;
    inherit json-serialization;
  };
}