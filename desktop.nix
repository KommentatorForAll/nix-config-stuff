{ config, lib, pkgs, ...}:

{

  services = {
    desktopManager.plasma6.enable = true;
    dbus.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
  };

  xdg.portal = {
    enable = true;
    wlr.enable = true;
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  };

  environment.systemPackages = with pkgs; [
    wayland
    xdg-utils
    flameshot
    vivaldi
    joplin
    joplin-desktop
    vlc
    filelight
    libreoffice
    kdePackages.kdeconnect-kde
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    oxygen
    elisa
    spectacle
    kwrited
  ];

}
