{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.brave
		pkgs.discord
		pkgs.file-roller
		pkgs.gnome-disk-utility
		pkgs.impression
		pkgs.galculator
		pkgs.lollypop
		pkgs.networkmanagerapplet
		pkgs.picard
		pkgs.qbittorrent
		pkgs.redshift
		pkgs.rhythmbox
		pkgs.ristretto
		pkgs.rofi
		pkgs.thunderbird
		pkgs.xfce4-whiskermenu-plugin
		pkgs.zathura
		pkgs.zathuraPkgs.zathura_pdf_mupdf
	];
}
