{ config, lib, pkgs, ...}:

{

  virtualisation.docker.enable = true;

  environment.systemPackages = with pkgs; [
    python3
    cmake
    gnumake
    clang
    clang-tools
    jdk22
    jdk8
    jdk11
    jetbrains.clion
    jetbrains.pycharm-professional
    jetbrains.idea-ultimate
    sqlitebrowser
    tokei
  ];
}
