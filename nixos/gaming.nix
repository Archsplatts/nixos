{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.gamemode
		pkgs.lact
		pkgs.mangohud
		pkgs.protonup-qt
	];
}
