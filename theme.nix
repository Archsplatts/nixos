{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.bibata-cursors
		pkgs.catppuccin-papirus-folders
		pkgs.papirus-folders
	];
}
