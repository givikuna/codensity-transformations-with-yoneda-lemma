{
  description = "latex env";

  inputs = {
    nixpkgs.url = "github:Nixos/nixpkgs/nixos-unstable";
    utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      utils,
    }:
    utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };

        latexEnv = pkgs.texlive.combine {
          inherit (pkgs.texlive)
            scheme-small
            latexmk
            amsmath
            amsfonts
            amscls
            tikz-cd
            pgf
            minted
            fvextra
            catchfile
            xstring
            environ
            ;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            latexEnv
            pkgs.which
            pkgs.python311Packages.pygments
          ];

          shellHook = ''
            echo "entered latex env"
          '';
        };
      }
    );
}
