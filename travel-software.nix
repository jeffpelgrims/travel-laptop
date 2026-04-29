{ config, pkgs, ...}:
{
	# Paquet de test
	environment.systemPackages = with pkgs; [
		# Polices
		fira-code
		redhat-official-fonts
		
		# Gnome Apps
		ptyxis
		seahorse
		gnome-tweaks
		file-roller
		dconf-editor
		
		# CLI : Console
		screen
		git

		# CLI : Système
		htop
		glances
		fastfetch
		inxi
		lm_sensors

		# CLI : Réseau
		speedtest-cli

		# CLI : Backup
		borgbackup
		plakar
		
		# CLI : Multimédia
		mediainfo
		yt-dlp

		# GUI : Multimédia
		pavucontrol
		strawberry
		soundconverter
		audacity
		easytag
		mediainfo-gui
		showtime
		decibels

		# GUI : Graphisme
		gimp

		# GUI : Réseau
		remmina
		gqrx

		# GUI : Internet
		vivaldi
		vivaldi-ffmpeg-codecs

		# GUI : Utilitaire
		libreoffice

		# GUI : Sécurité
		keepassxc

		# GUI : Dev
		vscode

		# Extension GNOME
		gnomeExtensions.dash-to-dock
		gnomeExtensions.blur-my-shell
		gnomeExtensions.bing-wallpaper-changer
		
		
	];

	# Exclure les logiciels de GNOME
	environment.gnome.excludePackages = with pkgs; [
		gnome-tour
		geary
		gnome-terminal
		gnome-console
	];
}