{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.brave
		pkgs.discord
		pkgs.gnome-disk-utility
		pkgs.impression
		pkgs.galculator
		pkgs.lact
		pkgs.lollypop
		pkgs.networkmanagerapplet
		pkgs.picard
		pkgs.protonup-qt
		pkgs.qbittorrent
		pkgs.redshift
		pkgs.rhythmbox
		pkgs.ristretto
		pkgs.rofi
		pkgs.steam
		pkgs.thunderbird
		pkgs.xarchiver
		pkgs.xfce4-whiskermenu-plugin
		pkgs.zathura
		pkgs.zathuraPkgs.zathura_pdf_mupdf
	];
}
