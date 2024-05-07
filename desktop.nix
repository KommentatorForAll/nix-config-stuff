{ config, lib, pkgs, ...}:

{

  services = {
    desktopManager.plasma6.enable = true;
    dbus.enable = true;
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
    };
    gvfs.enable = true;

    xserver = {
      xkb.layout = "us";
      xkb.variant = "altgr-intl";
    };
  };

  hardware.pulseaudio.enable = true;

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
    vivaldi-ffmpeg-codecs
    joplin
    joplin-desktop
    vlc
    filelight
    libreoffice
    kdePackages.kdeconnect-kde
    kdePackages.plasma-pa
    _4d-minesweeper
    syncthingtray
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    oxygen
    elisa
    spectacle
    kwrited
  ];

}
