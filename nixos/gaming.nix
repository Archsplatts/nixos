{ config, pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.gamemode
		pkgs.lact
		pkgs.mangohud
		pkgs.protonup-qt
	];
	
	hardware.amdgpu.overdrive.enable = false;
	
	programs.steam.enable = false
}
