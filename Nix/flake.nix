{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-23.11;

    dedsec-grub-theme = {
      url = gitlab:VandalByte/dedsec-grub-theme;
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, dedsec-grub-theme, ... }: {
    nixosConfigurations.nixos= nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        dedsec-grub-theme.nixosModule
        ./configuration.nix
      ];
    };
  };
}
