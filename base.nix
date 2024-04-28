{ config, pkgs, lib, ...}:

{
  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      KbdInteractiveAuthentication = false;
    };
  };

  environment.systemPackages = with pkgs; [
    git
    tree
    htop
    iftop
    iotop
    wget
    curl
  ];
}
