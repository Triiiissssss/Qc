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
echo "---------------------------------------------"
echo run ngrok
read -p "Paste Authtoken ngrok:" NAUTHTOKEN
echo "---------------------------------------------"
echo "choose your region:"
echo "region code            Location
echo "ap                     asia (Singapore)"
echo "au                     Australia"
echo "eu                     Europe"
echo "in                     India"
echo "jp                     Japan"
echo "sa                     South America(Ohio)"

