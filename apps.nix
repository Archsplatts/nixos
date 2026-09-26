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
		pkgs.mpv
		pkgs.nm-connection-editor
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
		pkgs.zathura
		pkgs.zathura-pdf-mupdf
	];
}
