# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  
  boot = {
  loader.grub = {
    enable = true;
    device = "/dev/sda";
    useOSProber =true;

    dedsec-theme = {
      enable = true;
      style = "sitedown";
      icon = "color";
      resolution = "1440p";
     };
    };
   };

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  sound.enable = true;
  hardware.pulseaudio.enable = true;
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Bratislava";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "sk_SK.UTF-8";
    LC_IDENTIFICATION = "sk_SK.UTF-8";
    LC_MEASUREMENT = "sk_SK.UTF-8";
    LC_MONETARY = "sk_SK.UTF-8";
    LC_NAME = "sk_SK.UTF-8";
    LC_NUMERIC = "sk_SK.UTF-8";
    LC_PAPER = "sk_SK.UTF-8";
    LC_TELEPHONE = "sk_SK.UTF-8";
    LC_TIME = "sk_SK.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "sk";
    xkbVariant = "bksl";
  };

  # Configure console keymap
  console.keyMap = "sk-qwerty";

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dacker = {
    isNormalUser = true;
    description = "DN";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
 # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    eza
    neovim    
    wget
    git
    #sxhkd
    #bspwm
    tilix
    #setroot
    xorg.xrandr
    #rofi
    firefox
    python3
    htop
    btop
    fastfetch
    ipfetch
    starship
    nettools
    #dunst
    flameshot
    nerdfonts
    #pavucontrol
    #picom
    #terminus-nerdfonts
    tldr
    trash-cli
    unzip
    variety
    #xorg.libX11
    #xorg.libX11.dev
    #xorg.libxcb
    #xorg.libXft
    #xorg.libXinerama
    #xorg.xinit
    #xorg.xinput
    #xorg.xsetroot
    vivaldi
    vivaldi-ffmpeg-codecs
    pcmanfm
    #dialog
    cinnamon.nemo-with-extensions
    krusader
    #pulseaudio
    cmatrix
    tty-clock
    mlocate
    lxappearance
    gnutar
    openssl
    plymouth
    #adi1090x-plymouth-themes
    nixos-bgrt-plymouth
    graphite-cursors
    graphite-kde-theme
    graphite-gtk-theme
    tela-circle-icon-theme
    tela-icon-theme
    tango-icon-theme
    sddm-chili-theme
    themechanger
      
      ];

# Enable the X11 windowing system.
   services.xserver.enable = true;
   services.xserver.displayManager.sddm.enable = true;
   #services.xserver.displayManager.sddm.theme = "sddm-chili-theme";
   services.xserver.desktopManager.plasma5.enable = true;

qt = {
  enable = true;
  platformTheme = "gnome";
  style = "adwaita";
  #style = "graphite-dark";
};
# Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

   boot.plymouth.enable = true;
   #boot.plymouth.theme = "black_hud";
  # Enable the OpenSSH daemon.
   services.openssh.enable = true;
  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

  nix.settings.experimental-features = [ "nix-command" "flakes"];
  documentation.nixos.enable = false;
  nix.settings.auto-optimise-store = true;
fonts = {                                                  #This is depricated new sytax will
    fonts = with pkgs; [                                           #be enforced in the next realease
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji
      font-awesome
      source-han-sans
      source-han-sans-japanese
      source-han-serif-japanese
      (nerdfonts.override { fonts = [ "Meslo" ]; })
    ];
    fontconfig = {
      enable = true;
      defaultFonts = {
	      monospace = [ "Meslo LG M Regular Nerd Font Complete Mono" ];
	      serif = [ "Noto Serif" "Source Han Serif" ];
	      sansSerif = [ "Noto Sans" "Source Han Sans" ];
      };
    };
};
}
