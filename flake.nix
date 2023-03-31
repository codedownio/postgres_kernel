{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/release-22.11";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }@inputs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
        rec {
          packages = rec {
            default = pkgs.callPackage ./. {};
          };

          defaultPackage = packages.default;
        }
    );
}
