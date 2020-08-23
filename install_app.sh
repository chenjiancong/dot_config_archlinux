# 安装 archlinux
# mount -o remount,size=2G /run/archiso/cowspace
# wget https://github.com/helmuthdu/aui/tarball/master -O - | tar xz

# 安装的软件

# 解决自动挂载U盘, udiskie -2 命令为开机自动后台启动
sudo pacman -S --noconfirm udiskie

# fcitx 输入法安装
sudo pacman -S --noconfirm fcitx fcitx-im fcitx-rime fcitx-configtool

# 网络管理工具
sudo install -S networkmanager nm-connection-editor dhclient
# nm-connection-editor 图形管理界面; dhclient 全功能dhcp和IPV6支持
# 启用 NetworkManager
# 开机自动启动
# systemctl enable NetworkManager
# 立刻启动
# systemctl start NetworkManager

# 无线网卡 ID 0bda:818b Realtek Semiconductor Corp. RTL8192EU 驱动
#yay -S rtl8192eu

# 截图工具
sudo pacman -S --noconfirm scrot xclip deeping-screen-recorder

# powerpill 替代 pacman
yay -S --noconfirm  powerpill

# lxapperance 主题更换
psudo pacman -S --noconfirm lxappearance-gtk3

# vim /etc/pacman.conf
# 不进行包签名验证
#SigLevel = PackageRequired

# 下拉terminal tilda
sudo pacman -S --noconfirm tilda

# 应用软件
sudo pacman -S --noconfirm git python-pip

# 窗口管理器lightdm
sudo pacman -S --noconfirm git lightdm lightdm-gtk-greeter

# 自动挂载硬盘
sudo pacman -S --noconfirm gvfs gvfs-mtp

# 透明效果
sudo pacman -S --noconfirm compton

# 漫画查看软件 mcomix
sudo pacman -S --noconfirm mcomix

# 看图工具
sudo pacman -S --noconfirm shotwell

# windows 共享工具
sudo pacman -S --noconfirm gigolo gvfs-smb

# 安装virtualbox
# VBoxManage setextradata "Win_7" CustomVideoMode1 1920x1080x32
sudo pacman -S --noconfirm virtualbox

# 锁屏美化
yay -S --noconfirm i3lock-fancy-multimonitor

# javaide
#pacman -S intellij-idea-community-edition

# wps-office 及中文字体
yay -S --noconfirm wps-office ttf-wps-fonts wps-office-mui-zh-cn

# 壁纸
sudo pacman -S --noconfirm feh variety

# neofetch 查看系统基本信息
sudo pacman -S --noconfirm neofetch

# 设置时间同步
sudo timedatectl set-local-rtc true

# 图形界面解压软件
sudo pacman -S --noconfirm xarchiver

# 坚果云
yay -S --noconfirm nutstore-experimental

# 字体管理工具
yay -S --noconfirm font-manager

# polybar 字体
sudo pacman -S --noconfirm ttf-font-awesome

# PDF支持中文显示
sudo pacman -S --noconfirm popler-data

# 字体安装
sudo pacman -S --noconfirm ttf-jetbrains-mono

# 科学上网
#sudo pacman -S shadowsocks
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

# 锁屏工具
https://github.com/yvbbrjdr/i3lock-fancy-rapid
# LightDM
https://github.com/Litarvan/lightdm-webkit-theme-litarvan

# 添加配置
vim ~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS='@im=fcitx'
# 输入法皮肤
yay -S fcitx-skin-material
