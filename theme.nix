{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.bibata-cursors
		pkgs.catppuccin-papirus-folders
		pkgs.papirus-folders
	];

	fonts.packages = with pkgs; [
		pkgs.nerd-fonts.ubuntu
		pkgs.nerd-fonts.ubuntu-mono
	];
}
