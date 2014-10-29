# -*- coding: utf-8 -*-
import locale
locale.setlocale(locale.LC_ALL, '')


import subprocess
from i3pystatus import Status
from i3pystatus.mail import imap

status = Status(standalone=True)
status.register("clock", format=" %H:%M", )
status.register("clock", format="  %a %d.%m", )
status.register("battery", full_color="#FFFFFF", charging_color="#FFFFFF", not_present_color="#FFFFFF", format="{status} {remaining:%E%hh:%Mm}", alert=True, alert_percentage=10, status={ "DIS":  "", "CHR":  "", "FULL": "",},)
status.register("pulseaudio",format=" {volume}%",)
status.register("cpu_usage", format=" {usage:02}%")
status.register("mem", format="{percent_used_mem}%", color="#ffffff")
status.register("disk", path="/", format=" {percentage_avail:02}%")
status.register("disk", path="/home", format=" {percentage_avail:02}%")
status.register("mail", format=" {unread}", format_plural=" {unread}", hide_if_null="false", email_client="urxvt -e mutt", backends=[imap.IMAP(username="lukasz@malik.pro", password="bigpasswd", host="imap.mydevil.net")])

status.run()
