{ pkgs, lib, ... }:

{
  services = {
    xserver.videoDrivers = [ "modesetting" ];

    displayManager.plasma-login-manager.enable = true;

    desktopManager.plasma6.enable = true;

    resolved = {
      enable = true;
      settings.Resolve = {
        DNSSEC = "allow-downgrade";
      };
    };

    pipewire = {
      enable = true;
      alsa.enable = true;
      pulse.enable = true;
    };

    chrony = {
      enable = true;
      enableNTS = true;
      servers = [ "time.cloudflare.com" ];
    };

    hardware.bolt.enable = true;

    thermald.enable = true;
    power-profiles-daemon.enable = lib.mkForce false;

    upower.enable = true;

    scx = {
      enable = true;
      package = pkgs.scx.rustscheds;
      scheduler = "scx_rustland";
    };

    libinput = {
      enable = true;
      mouse.naturalScrolling = false;
      touchpad.naturalScrolling = true;
    };

    fprintd.enable = true;
    fwupd.enable = true;

    avahi = {
      enable = true;
      nssmdns4 = true;
      openFirewall = true;
    };

    printing = {
      enable = true;
      drivers = with pkgs; [
        cups-filters
        cups-browsed
      ];
    };

    colord.enable = true;

    v2raya = {
      enable = true;
      cliPackage = pkgs.xray;
    };
  };
}
