{ config, lib, pkgs, ...}:

{

  virtualization.docker.enable = true;

  environment.systemPackages = with pkgs; [
    python3
    cmake
    gnumake
    clang
    clang-tools
    jdk22
    jdk8
    jdk12
    jetbrains.clion
    jetbrains.pycharm-professional
    jetbrains.idea-professional
    sqlitebrowser
  ];
}
