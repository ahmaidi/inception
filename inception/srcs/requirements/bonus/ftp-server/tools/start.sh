
adduser --gecos "" $USER_FTP ; 
echo "$USER_FTP:$PASSWORD_FTP" | chpasswd;
mkdir -p /home/$USER_FTP/ftp/;
chown -R "$USER_FTP:$USER_FTP" /home/$USER_FTP/;
echo "$USER_FTP" | tee -a /etc/vsftpd.userlist
echo "local_enable=YES" >> /etc/vsftpd.conf;
echo "write_enable=YES" >> /etc/vsftpd.conf;
echo "chroot_local_user=YES" >> /etc/vsftpd.conf;
echo "allow_writeable_chroot=YES" >> /etc/vsftpd.conf;
echo "pasv_enable=YES" >> /etc/vsftpd.conf;
echo "pasv_min_port=40000" >> /etc/vsftpd.conf;
echo "pasv_max_port=40005" >> /etc/vsftpd.conf;
echo "userlist_enable=YES" >> /etc/vsftpd.conf;
echo "userlist_file=/etc/vsftpd.userlist" >> /etc/vsftpd.conf;
echo "userlist_deny=NO" >> /etc/vsftpd.conf;
echo "secure_chroot_dir=/home/$USER_FTP/ftp" >> /etc/vsftpd.conf;
service vsftpd stop;
/usr/sbin/vsftpd