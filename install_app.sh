# 安装 archlinux
# mount -o remount,size=2G /run/archiso/cowspace
# wget https://github.com/helmuthdu/aui/tarball/master -O - | tar xz

# 安装的软件

# 解决自动挂载U盘, udiskie -2 命令为开机自动后台启动
sudo pacman -S --noconfirm udiskie

# 下拉terminal tilda
sudo pacman -S --noconfirm tilda

# 应用软件
sudo pacman -S --noconfirm git python-pip

# 窗口管理器lightdm
sudo pacman -S --noconfirm git lightdm lightdm-gtk-greeter

# 自动挂载硬盘
sudo pacman -S gvfs gvfs-mtp

# 漫画查看软件 mcomix
sudo pacman -S mcomix

# windows 共享工具
sudo pacman -S gigolo gvfs-smb

# 安装virtualbox
# VBoxManage setextradata "Win_7" CustomVideoMode1 1920x1080x32
sudo pacman -S virtualbox

# 锁屏美化
yay -S i3lock-fancy-multimonitor

# javaide
pacman -S intellij-idea-community-edition

# wps-office
yay -S wps-office ttf-wps-fonts

# 壁纸
sudo pacman -S feh variety

# neofetch 查看系统基本信息
sudo pacman -S neofetch

# 设置时间同步
sudo timedatectl set-local-rtc true

# 科学上网
sudo pacman -S shadowsocks
# https://wiki.archlinux.org/index.php/Shadowsocks_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
# 在 /etc/shadowsocks/ 创建文件 myssh.json
# 开机自动启动 systemctl enable shadowsocks@myssh

# 解决thunar挂载分区无权限
# http://www.linuxdiyf.com/linux/18918.html
# 或另一解决方法 http://www.kbase101.com/question/25376.html (未实际操作)
编辑/usr/share/polkit-1/actions/org.freedesktop.udisks2.policy这个文件，找到：

<action id="org.freedesktop.udisks2.filesystem-mount-system">
省略
<allow_active>auth_admin_keep</allow_active>
省略
</action>


把其中的authadminkeep改成yes,即：
<action id="org.freedesktop.udisks2.filesystem-mount-system">
省略
<allow_active>yes</allow_active>
省略
</action>
