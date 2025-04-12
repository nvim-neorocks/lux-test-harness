{
  description = "A test harness for Lux compatibility.";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    lux.url = "github:nvim-neorocks/lux";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [];
      systems = [ "x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {
        devShells = {
            default = pkgs.mkShell {
              buildInputs = with pkgs; [
                inputs'.lux.packages.lux-cli
                git
                gnumake
                cmake
                gcc
                bc
                tree-sitter
                coreutils-full
                gnused
                luarocks
                lua51Packages.lua
              ];
            };
        };
      };
    };
}
