{ config, pkgs, ... }:

{
  imports =
    [ 
      ./apps.nix		
      ./hardware-configuration.nix
      ./theme.nix
    ];

  # ─── Boot ───────────────────────────────────────────────
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 5;

  # ─── Réseau ─────────────────────────────────────────────
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  # ─── Localisation ───────────────────────────────────────
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "fr_FR.UTF-8";
    LC_IDENTIFICATION = "fr_FR.UTF-8";
    LC_MEASUREMENT = "fr_FR.UTF-8";
    LC_MONETARY = "fr_FR.UTF-8";
    LC_NAME = "fr_FR.UTF-8";
    LC_NUMERIC = "fr_FR.UTF-8";
    LC_PAPER = "fr_FR.UTF-8";
    LC_TELEPHONE = "fr_FR.UTF-8";
    LC_TIME = "fr_FR.UTF-8";
  };

  # ─── Affichage / WM ─────────────────────────────────────  
  services.xserver.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  services.xserver.displayManager.lightdm.enable = true;

  services.xserver.displayManager.lightdm.greeters.gtk = {
  	theme = {
    	package = pkgs.catppuccin-gtk.override {
      		accents = [ "blue" ];
      		variant = "mocha";
      		size = "standard";
      		tweaks = [ "normal" ];
    	};
    name = "catppuccin-mocha-blue-standard+normal";
   };

   cursorTheme = {
    name = "Bibata-Modern-Ice";
    size = 24;
    package = pkgs.bibata-cursors;
  };

  extraConfig = ''
    font-name = Ubuntu Nerd Font 11
  '';
 }; 

  services.xserver.xkb = {
    layout = "fr";
    variant = "azerty";
  };

  console.keyMap = "fr";

  environment.xfce.excludePackages = with pkgs; [
  	parole
  ];
  
  # ─── Services désactivés ────────────────────────────────
  services.printing.enable = false;
  systemd.services.ModemManager.enable = false;
  systemd.services.NetworkManager-wait-online.enable = false;

  # ─── Son ──────────────────────────────────────────────── 
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # jack.enable = true;
  };

  # ─── Utilisateur ──────────────────────────────────────── 
  users.users."bloods" = {
    isNormalUser = true;
    description = "bloods";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  # ─── Programmes ─────────────────────────────────────────
  programs.firefox.enable = true;

  programs.thunar.plugins = with pkgs; [
    thunar-archive-plugin
    thunar-volman
  ];
  
  # ─── Système ──────────────────────────────────────────── 
  nixpkgs.config.allowUnfree = true;

  #system.autoUpgrade = {
  #	enable = true;
  #	dates = "Fri *-*-* 09:00:00";
  #	allowReboot = false;
  #};

  system.stateVersion = "26.05";

}
