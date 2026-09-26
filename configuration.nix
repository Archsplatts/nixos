{ config, inputs, pkgs, ... }:

{
	imports =
	[
		./hardware-configuration.nix
		./apps.nix
		./services.nix
		./theme.nix
		./utilities.nix
	];

hardware.amdgpu.overdrive.enable = true;

programs.zsh.enable = true;
users.extraUsers.myuser = {
	isNormalUser = true;
	group = "myuser";
  	shell = pkgs.zsh;
};

users.extraGroups.myuser = {};

programs.zsh = {
  enableCompletion = true;
  autosuggestions.enable = true;
  syntaxHighlighting.enable = true;

  histSize = 10000;
  histFile = "$HOME/.zsh_history";
  setOptions = [
    "HIST_IGNORE_ALL_DUPS"
  ];
};

boot.loader.systemd-boot.configurationLimit = 5;

	nixpkgs.config.allowUnfree = true;

	system.autoUpgrade.enable = true;
	system.autoUpgrade.allowReboot = true;

programs.thunar.plugins = with pkgs; [
	thunar-archive-plugin
	thunar-volman
];

users.users."bloods" = {
	isNormalUser = true;
	description = "bloods";
	group = "bloods";
	extraGroups = [ "networkmanager" "wheel" ];
};

users.groups.bloods = {};
}
