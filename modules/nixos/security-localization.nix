{
  security = {
    rtkit.enable = true;
    sudo-rs = {
      enable = true;
      execWheelOnly = true;
    };
  };

  time.timeZone = "Asia/Shanghai";

  i18n = {
    defaultLocale = "zh_CN.UTF-8";
    extraLocales = [ "en_US.UTF-8/UTF-8" ];
  };
}
