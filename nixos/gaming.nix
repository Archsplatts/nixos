{ config, pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.gamemode
		pkgs.lact
		pkgs.mangohud
		pkgs.protonup-qt
	];

	hardware.amdgpu.overdrive.enable = true;
  	hardware.amdgpu.opencl.enable = true; 

	programs.gamemode.enable = true;
    programs.steam.enable = true;

    services = {
		lact.enable = true;
	};
}
