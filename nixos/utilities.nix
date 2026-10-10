{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.bat
		pkgs.btop
		pkgs.calcurse
		pkgs.dust
		pkgs.eza
		pkgs.fastfetch
		pkgs.git
		pkgs.micro
		pkgs.termdown
		pkgs.trash-cli
		pkgs.unzip
		pkgs.xz
		pkgs.yazi
		pkgs.zip
	];
}
