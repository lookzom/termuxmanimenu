#!/bin/bash
     # Установка необходимых пакетов
     pkg update && pkg upgrade -y
     pkg install dialog -y

     # Меню с 50 инструментами
     while true; do
         choice=$(dialog --clear --backtitle "Hacker Tools" --title "Меню" \
         --menu "Выберите инструмент:" 20 60 15 \
         1 "Nmap (сканирование сети)" \
         2 "Metasploit (тестирование уязвимостей)" \
         3 "SQLmap (тестирование SQL-инъекций)" \
         4 "Hydra (подбор паролей)" \
         5 "Wifite (взлом Wi-Fi)" \
         6 "John the Ripper (взлом паролей)" \
         7 "Aircrack-ng (взлом Wi-Fi)" \
         8 "Social-Engineer Toolkit (фишинг)" \
         9 "DDoS (атака на сайты)" \
         10 "Взлом телефона (Bad USB)" \
         11 "Nikto (сканирование веб-серверов)" \
         12 "Wireshark (анализ трафика)" \
         13 "Burp Suite (тестирование веб-приложений)" \
         14 "Netcat (сетевой инструмент)" \
         15 "Tcpdump (перехват трафика)" \
         16 "Ettercap (MITM-атаки)" \
         17 "Hashcat (взлом хэшей)" \
         18 "Recon-ng (разведка)" \
         19 "Maltego (визуализация данных)" \
         20 "TheHarvester (сбор информации)" \
         21 "Shodan (поиск устройств)" \
         22 "Cewl (генерация словарей)" \
         23 "Gobuster (перебор директорий)" \
         24 "Dirb (перебор директорий)" \
         25 "Wpscan (сканирование WordPress)" \
         26 "Commix (эксплуатация уязвимостей)" \
         27 "Skipfish (сканирование веб-приложений)" \
         28 "Wapiti (сканирование уязвимостей)" \
         29 "OpenVAS (сканирование уязвимостей)" \
         30 "Nessus (сканирование уязвимостей)" \
         31 "Armitage (графический интерфейс для Metasploit)" \
         32 "BeEF (взлом браузеров)" \
         33 "Responder (перехват сетевых данных)" \
         34 "Empire (пост-эксплуатация)" \
         35 "Cobalt Strike (тестирование на проникновение)" \
         36 "Snort (обнаружение вторжений)" \
         37 "Bro (анализ сетевого трафика)" \
         38 "Volatility (анализ памяти)" \
         39 "Binwalk (анализ файлов)" \
         40 "Radare2 (реверс-инжиниринг)" \
         41 "Ghidra (реверс-инжиниринг)" \
         42 "IDA Pro (реверс-инжиниринг)" \
         43 "OllyDbg (отладка)" \
         44 "Immunity Debugger (отладка)" \
         45 "Frida (динамический анализ)" \
         46 "Apktool (анализ APK)" \
         47 "Jadx (декомпиляция APK)" \
         48 "Androguard (анализ Android-приложений)" \
         49 "MobSF (анализ мобильных приложений)" \
         50 "Выход" \
         2>&1 >/dev/tty)

         case $choice in
             1) pkg install nmap -y && nmap ;;
             2) pkg install metasploit -y && msfconsole ;;
             3) pkg install sqlmap -y && sqlmap ;;
             4) pkg install hydra -y && hydra ;;
             5) pkg install wifite -y && wifite ;;
             6) pkg install john -y && john ;;
             7) pkg install aircrack-ng -y && aircrack-ng ;;
             8) pkg install setoolkit -y && setoolkit ;;
             9) pkg install python -y && git clone https://github.com/palahsu/DDoS-Ripper.git && cd DDoS-Ripper && python3 DRipper.py ;;
             10) pkg install git python -y && git clone https://github.com/termux/badusb.git && cd badusb && python badusb.py ;;
             11) pkg install nikto -y && nikto ;;
             12) pkg install wireshark -y && wireshark ;;
             13) pkg install burpsuite -y && burpsuite ;;
             14) pkg install netcat -y && nc ;;
             15) pkg install tcpdump -y && tcpdump ;;
             16) pkg install ettercap -y && ettercap ;;
             17) pkg install hashcat -y && hashcat ;;
             18) pkg install recon-ng -y && recon-ng ;;
             19) pkg install maltego -y && maltego ;;
             20) pkg install theharvester -y && theharvester ;;
             21) pkg install shodan -y && shodan ;;
             22) pkg install cewl -y && cewl ;;
             23) pkg install gobuster -y && gobuster ;;
             24) pkg install dirb -y && dirb ;;
             25) pkg install wpscan -y && wpscan ;;
             26) pkg install commix -y && commix ;;
             27) pkg install skipfish -y && skipfish ;;
             28) pkg install wapiti -y && wapiti ;;
             29) pkg install openvas -y && openvas ;;
             30) pkg install nessus -y && nessus ;;
             31) pkg install armitage -y && armitage ;;
             32) pkg install beef -y && beef ;;
             33) pkg install responder -y && responder ;;
             34) pkg install empire -y && empire ;;
             35) pkg install cobaltstrike -y && cobaltstrike ;;
             36) pkg install snort -y && snort ;;
             37) pkg install bro -y && bro ;;
             38) pkg install volatility -y && volatility ;;
             39) pkg install binwalk -y && binwalk ;;
             40) pkg install radare2 -y && radare2 ;;
             41) pkg install ghidra -y && ghidra ;;
             42) pkg install ida -y && ida ;;
             43) pkg install ollydbg -y && ollydbg ;;
             44) pkg install immunity -y && immunity ;;
             45) pkg install frida -y && frida ;;
             46) pkg install apktool -y && apktool ;;
             47) pkg install jadx -y && jadx ;;
             48) pkg install androguard -y && androguard ;;
             49) pkg install mobsf -y && mobsf ;;
             50) break ;;
         esac
     done
