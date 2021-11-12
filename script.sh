# == MY ARCH INSTALL SCRIPT == #
#part1
echo "Welcome to LeopoldBl00m's Arch Install script"
echo "This install script basically only works for my system, so use it at your own risk!"
echo "Please read the 'script.sh' to make sure that it will work for your system too."
echo "Please also connect to the internet before running this script, as to install packages you obviously need to use the internet."
read -p "Are you ready to start the script? [y/n]" answer
if [[ $answer = n ]] ; then
echo "Take as much time as you need"
echo "This script is intended for people with good knowledge of how to install arch systems to use"
echo "If you are new to installing arch linux, I will reccomend watching 'DenshiVideo's video called 'Arch Linux: A Comfy Install Guide' to get a basic understanding of how to install arch and linux in general."
if [[ $answer = y ]] ; then
echo "Let us go ahead with the install!"
echo "Hopefully I programmed it right so it doesn't mess up your system, but, you were warned ;)"
loadkeys uk
parted /dev/sda mklabel gpt
sgdisk /dev/sda -n=1:0:+31M -t=1:ef02
sgdisk /dev/sda -n=2:0:+512M
sgdisk /dev/sda -n=3:0:+16GiB -t=3:8200
sgdisk /dev/sda -n=4:0:0
