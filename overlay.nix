_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix { inherit faststreams; inherit asynctools; inherit stew; };
  faststreams = prevNixpkgs.callPackage ./packages/faststreams/default.nix {};
  asynctools = prevNixpkgs.callPackage ./packages/asynctools/default.nix {};
  stew = prevNixpkgs.callPackage ./packages/stew/default.nix {};

in {
  metacraft-labs = rec {
    inherit langserver;
    inherit faststreams;
    inherit asynctools;
    inherit stew;
  };
}