{ config, pkgs, ... }:	{
	time.timeZone = "Asia/Kolkata";
	i18n.defaultLocale = "en_IN";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_IN";
		LC_IDENTIFICATION = "en_IN";
		LC_MEASUREMENT = "en_IN";
		LC_MONETARY = "en_IN";
		LC_NAME = "en_IN";
		LC_NUMERIC = "en_IN";
		LC_PAPER = "en_IN";
		LC_TELEPHONE = "en_IN";
		LC_TIME = "en_IN";
	};

	fonts = {
		packages = with pkgs; [
			# Terminal and UI specific fonts (SpaceMono for terminals, waybar, fuzzel, notifications)
			nerd-fonts.jetbrains-mono

			# System fonts - Inter for UI, Source Sans Pro for general text
			inter
			source-sans-pro
			source-serif-pro

			# Monospace alternatives
			victor-mono
			jetbrains-mono

			# Essential fonts
			noto-fonts              # Comprehensive Unicode support
			noto-fonts-cjk-sans     # Chinese, Japanese, Korean
			noto-fonts-color-emoji  # Emoji support

			# Icon fonts
			font-awesome
			nerd-fonts.symbols-only
			
			# Fallback fonts
			liberation_ttf
			dejavu_fonts
		];

		fontconfig = {
			enable = true;
			defaultFonts = {
				# Use Inter for general UI text (clean, modern, readable)
				sansSerif = [ "Inter" "Noto Sans" "DejaVu Sans" ];
				
				# Use Source Serif Pro for documents and reading
				serif = [ "Source Serif Pro" "Noto Serif" "DejaVu Serif" ];
				
				# Use JetBrains Mono as default monospace (better than SpaceMono for general use)
				monospace = [ "JetBrains Mono" "SpaceMono Nerd Font" "DejaVu Sans Mono" ];
				
				# Emoji support
				emoji = [ "Noto Color Emoji" ];
			};

			# Additional fontconfig settings for better rendering
			localConf = ''
				<?xml version="1.0"?>
				<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
				<fontconfig>
				<!-- Better font rendering -->
				<match target="font">
					<edit name="antialias" mode="assign">
					<bool>true</bool>
					</edit>
					<edit name="hinting" mode="assign">
					<bool>true</bool>
					</edit>
					<edit name="hintstyle" mode="assign">
					<const>hintslight</const>
					</edit>
					<edit name="rgba" mode="assign">
					<const>rgb</const>
					</edit>
				</match>
				
				<!-- Use SpaceMono specifically for terminal applications -->
				<match target="pattern">
					<test qual="any" name="family">
					<string>monospace</string>
					</test>
					<test name="prgname">
					<string>foot</string>
					</test>
					<edit name="family" mode="prepend" binding="strong">
					<string>SpaceMono Nerd Font</string>
					</edit>
				</match>
				
				<match target="pattern">
					<test qual="any" name="family">
					<string>monospace</string>
					</test>
					<test name="prgname">
					<string>ghostty</string>
					</test>
					<edit name="family" mode="prepend" binding="strong">
					<string>SpaceMono Nerd Font</string>
					</edit>
				</match>
				</fontconfig>
			'';
		};
	};
}
