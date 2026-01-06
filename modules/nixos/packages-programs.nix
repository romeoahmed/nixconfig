{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    sbctl
    tpm2-tools
    pciutils
    wget2
  ];

  programs = {
    nix-ld.dev.enable = true;
    auto-cpufreq.enable = true;
    appimage = {
      enable = true;
      binfmt = true;
    };
  };
}
