{
  description = "Mono colorscheme :D";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    treefmt-nix.url = "github:numtide/treefmt-nix";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      treefmt-nix,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        project = "Mono colorscheme >:3";
      in
      {
        devShells.default = pkgs.mkShell {
          name = project;
          LSP_SERVER = "lua_ls";
          packages = with pkgs; [
            lua
            stylua
            lua-language-server
          ];
          shellHook = ''
            echo -e '(¬_¬") Entered ${project} :D'
          '';
        };
        formatter = treefmt-nix.lib.mkWrapper pkgs {
          projectRootFile = "flake.nix";
          programs = {
            nixfmt.enable = true;
            stylua.enable = true;
          };
        };
      }
    );
}
