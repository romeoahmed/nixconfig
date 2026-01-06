{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "git-firefly"
      "html"
      "toml"
      "fish"
      "catppuccin"
      "catppuccin-icons"
    ];

    mutableUserSettings = true;

    userSettings = {
      buffer_font_family = "JetBrains Mono";
      buffer_font_size = 16;
      buffer_font_features = {
        calt = true;
      };
      buffer_font_fallbacks = [ "Noto Sans CJK SC" ];

      features = {
        edit_prediction_provider = "zed";
      };

      terminal = {
        font_family = "JetBrainsMonoNL Nerd Font";
        font_size = 14;
        shell = {
          program = "fish";
        };
      };
    };
  };
}
