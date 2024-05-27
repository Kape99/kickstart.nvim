{
  description = "nvim flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShell = pkgs.mkShell {
          buildInputs = [ pkgs.stylua pkgs.libgcc pkgs.vimPlugins.nvim-treesitter-parsers.vimdoc ];
          shellHook = ''
            nu
            exit
          '';
        };
      });
}
