# switchconfig_backup
@作者：陈传林
代码由shell和expect编写，用于批量自动备份园区网交换机配置。

1、工作环境：
  工作机：linux系统，如centos6.8(Final)。
  ftp服务器：windows系统(ip:192.168.201.98)，已安装ftp服务，用于存储备份文件。ftp备份用户参数(用户名/密码)：pz/123
2、预装软件：bash(4.1.2)、expect（v5.44.1.15）
3、文件说明：
  sw.sh是主程序文件，用bash编制。
  ftp.exp的功能是登录交换机并把交换机配置文件上传ftp服务器。
  ip.txt是交换机管理地址列表文件，每行格式：ip地址+空格+备份文件名。
  mk_ip_seq.sh是批量生成交换机管理地址列表文件的bsh程序。
4、配置定时调度自动备份的配置：
crontab -e
00 02 * * 0-6 (/bin/sh /root/sw.sh >> /root/sw_bak.txt;/sbin/clock >> /root/sw_bak.txt)
说明：每天凌晨2:00进行一次备份，生成备份记录文件。
