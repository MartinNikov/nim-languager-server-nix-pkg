{pkgs}:
with pkgs;
  mkShell {
    packages =
      [
        metacraft-labs.langserver
        metacraft-labs.faststream
      ];

    shellHook = ''
      figlet -w$COLUMNS "langserver"
    '';
  }