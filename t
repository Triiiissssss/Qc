wget "https://downloads.sourceforge.net/project/android-x86/Release%200.9/eeepc-v0.9.iso" &

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
 "---------------------------------------------"
echo "run ngrok"
 docker run -it -e NGROK_AUTHTOKEN=$NAUTH ngrok/ngrok tcp 5900 --region=$NREGION &
echo "---------------------------------------------"
qemu-system-x86_64 -m 9999 -M pc -boot d -cpu host -enable-kvm -device vmware-svga,vgamem_mb=512 -device rtl8139,netdev=net0 -netdev user,id=net0 -enable-kvm -smp 3,cores=3,threads=1,sockets=1 -vnc localhost:0 -cdrom eeepc-v0.9.iso



