_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix { inherit faststreams; };
  faststreams = prevNixpkgs.callPackage ./packages/faststreams/default.nix {};

in {
  metacraft-labs = rec {
    inherit langserver;
    inherit faststreams;
  };
}