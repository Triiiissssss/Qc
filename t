wget "https://downloads.sourceforge.net/project/android-x86/Release%200.9/eeepc-v0.9.iso" &

echo "---------------------"
echo find qemu
sleep 1
if command -v /bin/ >/dev/null; then
    echo "ok"
else
    echo "fail,install qemu"
fi
echo "-------------suf-------------"
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
sudo read -p "Paste Authtoken ngrok:" NAUTH
echo "---------------------------------------------"
echo "choose your region:"
echo "region code            Location
echo "ap                     asia (Singapore)"
echo "au                     Australia"
echo "eu                     Europe"
echo "in                     India"
echo "jp                     Japan"
echo "sa                     South America(Ohio)"
read -p "REGION: " NREGION
echo "---------------------------------------------"
echo "run ngrok:"
 docker run -it -e NGROK_AUTHTOKEN=$NAUTH ngrok/ngrok tcp 5900 --region=NREGION &
echo "---------------------------------------------"



