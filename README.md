[中文页](README_zh.md)  

## zsh
install: sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

## terminator
安装: sudo apt-get install terminator

## markdown 

## terminal 
`ag` search the key world 
`ctrl r` search the command when you use in the history 

## gvim 
### combinationkey 
`ctrl o` go front  
`ctrl i` go back  
enter command `sp .` split screen  
enter command `vsp .` virtical split screen  
press `ctrl v` and `hjkl` to select region  
`u` cancel  
`ctrl z` opposite cancel  
`jklh` direction key  

### ~/.vimrc: 
```bash 
colorscheme evening   
imap jj <esc>  #enter jj will switch edit mode to command mode  
set hlsearch  
set incsearch  
set autoindent  
```
## update_db.sh
Execute the script `update_db.sh`, then will product some files, and open the gvim, 
enter the command`cs add cscope.out`, you can use the shortcut key to search the 
code and go where you want.  
combination key `ctrl ]` : goto where that the cursor to the function or variety  
when you want to know where to call the function or variety, end the command 
"cs f e keyword_you_want"

## terminator 
split screen for terminal  
`ctrl shit o`, `ctrl shit e` to split screen 

## memory check  
`valgrind --leak-check=full your-program`  

## build HTTP server
python2 : `python -m SimpleHTTPServer`
python3 : `python3 -m http.server`

## web get quickly 
axel -n 10 -o /tmp/ http://soft.vpser.net/lnmp/lnmp0.7-full.tar.gz

## uart
sudo miniterm /dev/ttyUSB0 115200  

## search line for string  > 80 char
awk 'length>80' file

## search big file
find . -type f -size +800M  -print0 | xargs -0 du -h | sort -nr

## audio
tinycap /sdcard/rec.wav -D 0 -d 0 -c 2 -r 44100 -b 16 -p 1024 -n 3
`notice: -c channel must right mic number`
tinyplay /data/audio/Steppin_Out.wav   -D 0 -d 0  -n 3
amix "IN2 Boost"
amix "ADC Capture Volume"

## wifi config by command
sudo iw dev wlan0 scan | less (ps: wlan is your PC wireless card name) 
wpa_passphrase Pd_robot_5G pdpdpdpd >  /etc/wpa_supplicant.conf 
wpa_supplicant -i wlan0 -c /etc/wpa_supplicant.conf -B 
dhclient wlan0 
ip addr

## rj45 directly connect
ifconfig eth0 192.168.0.1 netmask 255.255.255.0
ping -I eth0 another_compute_ip

## usb speed test 
echo "read from SSD....." 
sudo sh -c "sync && echo 3 > /proc/sys/vm/drop_caches" 
sudo dd if=/media/jim/your_ssd/big_file of=/home/big_file bs=1024576 count=1024 
sudo sh -c "sync && echo 3 > /proc/sys/vm/drop_caches" 

echo "write to SSD....." 
dd if=~/workspace/big_file of=/media/jim/your_ssd/big_file bs=1M count=1024 
sudo rm /home/big_file 

## read cpu temperature
watch -n 1 cat /sys/class/thermal/thermal_zone1/temp 

## iperf test
server: iperf -s 
client: iperf -c  $1 -p 5001 -i 1 -t 1000000

## player audio pcm
ffplay -f s16le -ar 16000 -ac 1 -autoexit sound.pcm

## self-start
gnome-session-properties

## sshd
sudo apt install openssh-server
sudo /etc/init.d/ssh start

## audio change hz
ffmpeg -i input -ac 1 -ar 48000 -y output

## get linux stand library souce code
apt-get source libasound2-dev

## tcp capture text
sudo tshark -Y 'websocket'  -V -T text

## search system lib & head file
pkg-config --libs opencv
pkg-config --cflags opencv

## copyright   
MIT by Jim
