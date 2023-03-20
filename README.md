# Build the Nix package for the Nim Language Server.
* Github repository for [langserver](https://github.com/nim-lang/langserver)
#

### Created [flake.nix](flake.nix), [overlay.nix](overlay.nix) and [shell.nix](shell.nix) files.

### After those files are ready, I created the [langserver default file](packages/langserver/default.nix) and default files for all of the libraries that are needed.
*  All repository for those files are in [nible.lock](https://github.com/nim-lang/langserver/blob/master/nimble.lock) file in langserver repository.
    * I've get the default file code from this command: `nix run nixpkgs#nurl [URL] [REV]`

### Modified the [overlay.nix](overlay.nix) file and [langserver default file](packages/langserver/default.nix) to call and input those libraries.

#

### I built the package with the `nix build --print-build-logs --json .#packages.x86_64-linux.langserver` command.

### End users can use `nix build --json github:MartinNikov/nix-package#langserver` to build and use the package.
