{
  imports = [
    ./modules/hm/fonts.nix
    ./modules/hm/inputMethod.nix
    ./modules/hm/packages.nix
    ./modules/hm/programs.nix
    ./modules/hm/gnupg.nix
    ./modules/hm/git.nix
    ./modules/hm/alacritty.nix
    ./modules/hm/vscode.nix
    ./modules/hm/zed.nix
    ./modules/hm/catppuccin.nix
    ./modules/hm/firefox.nix
  ];

  home = {
    username = "victor";
    homeDirectory = "/home/victor";
    stateVersion = "26.05";

    sessionVariables = {
      # EDITOR = "emacs";
    };
  };

  xdg = {
    enable = true;

    portal.config = {
      common = {
        default = [ "kde" ];
      };
    };

    userDirs = {
      enable = true;
      createDirectories = true;
    };

    terminal-exec = {
      enable = true;
      settings = {
        default = [
          "Alacritty.desktop"
        ];
      };
    };

    autostart.enable = true;
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
