_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix {};
in {
  metacraft-labs = rec {
    inherit langserver;
  };
}