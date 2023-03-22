# Nim Language Server Nix package

Nim Language Server, or nimlangserver, is a language server for Nim.
* Github repository for [langserver](https://github.com/nim-lang/langserver)
#

* I created the [langserver default file](packages/langserver/default.nix) and default files for all of the libraries that are needed.
    *  All repository for those files are in [nible.lock](https://github.com/nim-lang/langserver/blob/master/nimble.lock) file in langserver repository.
        * I've get the default file code from this command: `nix run nixpkgs#nurl [URL] [REV]`
        * All of the default files can be found in '[packages](packages)/[name of the library]' folder. 
* Modified the [overlay.nix](overlay.nix) file and [langserver default file](packages/langserver/default.nix) to call and input those libraries.

#

## Build

* The following command can be used to create the package if you fork the repository:

    ```console
     nix build --print-build-logs --json .#packages.x86_64-linux.langserver
    ```

* Use this command if you don't want to fork the repository:

    ```console
    nix build --json github:MartinNikov/nix-package#langserver
    ```
    
## Usage

* Using this command, you can use the package without building it: 
    ```console
    nix run github:MartinNikov/nix-package#langserver
    ```