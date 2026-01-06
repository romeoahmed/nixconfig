{
  # NixOS module topology (top -> bottom):
  # boot/kernel -> hardware -> desktop -> networking
  #              -> performance -> security/locale
  #              -> packages/programs -> nix core -> users
  imports = [
    ./boot-kernel.nix
    ./hardware.nix
    ./desktop.nix
    ./networking.nix
    ./performance.nix
    ./security-localization.nix
    ./packages-programs.nix
    ./nix-core.nix
    ./users.nix
  ];
}
