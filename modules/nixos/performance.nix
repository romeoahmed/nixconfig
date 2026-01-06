{
  zramSwap = {
    enable = true;
    memoryPercent = 50;
    algorithm = "lzo-rle zstd(level=3) (type=idle)";
  };

  powerManagement.powertop.enable = true;
}
