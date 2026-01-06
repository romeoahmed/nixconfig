{
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
      wifi.backend = "iwd";
    };

    firewall.enable = true;
    nftables.enable = true;
  };
}
