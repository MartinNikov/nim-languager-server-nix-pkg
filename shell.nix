{pkgs}:
with pkgs;
  mkShell {
    packages =
      [
        metacraft-labs.langserver
      ];

    shellHook = ''
      figlet -w$COLUMNS "langserver"
    '';
  }