class wallpaper {
	file { "/usr/share/xfce4/backdrops/taustakuva.png":
		source => "/etc/puppet/modules/wallpaper/taustakuva.png",
	}
	
	file { "/home/xubuntu/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml":
		content => template("wallpaper/xfce4-desktop.xml"),
	}
}
