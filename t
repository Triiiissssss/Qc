echo "---------------------"
echo find qemu
sleep 1
if command -v /bin/ >/dev/null; then
    echo "ok"
else
    echo "fail,install qemu"
fi
echo "---------suf---------"
sleep 1
sudo apt update -y
sudo apt install qemu-system -y
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
echo "----------------------
echo install ngrok
