{ config, pkgs, ... }:

{
  networking.hostName = "onixauto";
  time.timeZone = "Asia/Seoul";

  services.openssh.enable = true;
  users.users.root.initialPassword = "changeme"; # 테스트용

  system.stateVersion = "24.05";
}
