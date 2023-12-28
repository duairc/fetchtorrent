{
  description = "fetchtorrent";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-unstable;
    flake-utils.url = github:numtide/flake-utils;
  };

  outputs =
    { self, flake-utils, nixpkgs }:

    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
        { packages.fetchTorrent = pkgs.callPackage ./default.nix {};
        }
    );
}
