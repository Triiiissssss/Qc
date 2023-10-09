wget "https://sourceforge.net/projects/android-x86/files/Release%208.1/android-x86-8.1-r6.iso" -O a81.iso &

echo "---------------------"
echo find qemu
sleep 1
if command -v /bin/qemu-system-x86_64 >/dev/null; then
    echo "ok" 
else
    echo "fail,install qemu" && sleep 2 && sudo apt install qemu-system
fi
echo "-------------suf-------------"
sleep 1
clear
echo
echo
echo
echo
echo
echo
echo
echo 
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
clear "---------------------------------------------"
echo run ngrok
read -p "Paste Authtoken ngrok:" NAUTH
echo "---------------------------------------------"
read -p "REGION: " NREGION
echo "---------------------------------------------"
echo "run ngrok"

qemu-img create -f qcow2 Win.qcow2 12G

curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list && sudo apt update && sudo apt install ngrok
 
echo "---------------------------------------------"
qemu-system-x86_64 -m 8G -M pc -boot d -cpu host -enable-kvm -device vmware-svga,vgamem_mb=512 -device rtl8139,netdev=net0 -netdev user,id=net0 -enable-kvm -smp 3,cores=3,threads=2,sockets=1 -vnc localhost:0 -hda Win.qcow2 -cdrom a81.iso

echo "exit vm?" 
pkill ngrok
pkill qemu
