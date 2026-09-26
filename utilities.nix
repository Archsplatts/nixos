{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.bat
		pkgs.btop
		pkgs.calcurse
		pkgs.dust
		pkgs.eza
		pkgs.fastfetch
		pkgs.gamemode
		pkgs.git
		pkgs.mangohud
		pkgs.micro
		pkgs.starship
		pkgs.termdown
		pkgs.trash-cli
		pkgs.unzip
		pkgs.webkitgtk_4_1
		pkgs.xz
		pkgs.yazi
		pkgs.zip
	];
}
