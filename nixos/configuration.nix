{ config, inputs, pkgs, ... }:

{
	imports =
	[
		./hardware-configuration.nix
		./apps.nix
		./theme.nix
		./utilities.nix
	];

hardware.amdgpu.overdrive.enable = false;
programs.steam.enable = false;

boot.loader.systemd-boot.configurationLimit = 5;

	nixpkgs.config.allowUnfree = true;

	system.autoUpgrade = {
		enable = true;
		dates = "Fri *-*-* 09:00:00";
	};

	system.autoUpgrade.allowReboot = false;

programs.thunar.plugins = with pkgs; [
	thunar-archive-plugin
	thunar-volman
];
