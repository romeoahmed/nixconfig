{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.victor = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    initialPassword = "password";
    shell = pkgs.fish;
  };
}
