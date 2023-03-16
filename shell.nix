{pkgs}:
with pkgs;
  mkShell {
    packages =
      [
        metacraft-lab.langserver
      ];

    shellHook = ''
      figlet -w$COLUMNS "nix-blockchain-development"
    '';
  }