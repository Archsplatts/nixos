{ pkgs, ... }:

{
	environment.systemPackages = [
		pkgs.bibata-cursors
		pkgs.catppuccin-papirus-folders
		pkgs.papirus-folders
		(pkgs.catppuccin-gtk.override {
					accents = ["blue"];
					size = "standard";
					tweaks = ["rimless"];
		})
	];

	fonts.packages = with pkgs; [
		pkgs.nerd-fonts.ubuntu
		pkgs.nerd-fonts.ubuntu-mono
	];
}
