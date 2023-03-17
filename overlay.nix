_finalNixpkgs: prevNixpkgs: let
  langserver = prevNixpkgs.callPackage ./packages/langserver/default.nix {};
  faststream = prevNixpkgs.python3Packages.cattrs.overrideAttrs (finalAttrs: previousAttrs: {
    src = prevNixpkgs.fetchFromGitHub {
      owner = "status-im";
      repo = "nim-faststreams";
      rev = "814f8927e1f356f39219f37f069b83066bcc893a";
      hash = "sha256-qVwGLXlhJXhdyXpFpujFrLf0tVQIbOzfqg1ZAM+U2B4=";
    };
  patches = [];
  });
  
in {
  metacraft-labs = rec {
    inherit langserver;
    inherit faststream;
  };
}