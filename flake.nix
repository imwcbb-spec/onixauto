{
  description = "onixauto baremetal/VM NixOS config";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.onixauto = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/onixauto.nix
      ];
    };
  };
}
