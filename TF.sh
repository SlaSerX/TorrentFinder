
#!/bin/bash
echo -e "\e[31m  _______                        _     ______ _           _            \e[0m"
echo -e "\e[31m |__   __|                      | |   |  ____(_)         | |           \e[0m"
echo -e "\e[31m    | | ___  _ __ _ __ ___ _ __ | |_  | |__   _ _ __   __| | ___ _ __  \e[0m"
echo -e "\e[31m    | |/ _ \| '__| '__/ _ \ '_ \| __| |  __| | | '_ \ / _\ |/ _ \ '__| \e[0m"
echo -e "\e[31m    | | (_) | |  | | |  __/ | | | |_  | |    | | | | | (_| |  __/ |    \e[0m"
echo -e "\e[31m    |_|\___/|_|  |_|  \___|_| |_|\__| |_|    |_|_| |_|\__,_|\___|_|    \e[0m"
echo -e "\e[31m                                                                       \e[0m"
echo -e "\e[31m                                                                       \e[0m"
echo -e "\e[31m                                                      By SlaSerX V. 1.4\e[0m"
echo -e "\e[31m                                   More sites to be added in the future\e[0m"
echo -e "\e[31m                                                                       \e[0m"
echo -ne "Search: "
read SEA
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mKickass\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q http://kat.unbanthe.org/usearch/${SEA// /%20}/\?field\=seeders\&sorder\=desc | grep -A 1 '<div class="torrentname">' | grep -P 'href="' | cut -d '"' -f 2 | sed 's\/\http://kat.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q http://kat.unbanthe.org/usearch/${SEA// /%20}/\?field\=seeders\&sorder\=desc | grep '"Download torrent file" href="' | cut -d '"' -f4 | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mThe piratebay (Only supports magnet links)\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.125 Safari/537.36" http://tpb.unbanthe.org/search/${SEA// /%20}/0/7/0 | grep '<div class="detName' | cut -d '"' -f4 | sed 's\/\http://tpb.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q --user-agent="Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.125 Safari/537.36" http://tpb.unbanthe.org/search/${SEA// /%20}/0/7/0 | grep -A 2 '<div class="detName' | grep '<a href="magnet:?' | cut -d '"' -f 2 | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31m1337x\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q http://1337x.unbanthe.org/sort-search/${SEA// /%20}/seeders/desc/1/ | grep '<strong><a href="/torrent' | cut -d '"' -f2 | sed 's\/\http://1337x.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q http://1337x.unbanthe.org/sort-search/${SEA// /%20}/seeders/desc/1/ | grep '<strong><a href="/torrent' | cut -d '"' -f2 | sed 's\/\http://1337x.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | xargs wget -O- -q 2>&1 | grep 'href="http://torcache.net/torrent/' | cut -d '"' -f4 | sed '/wget: missing URL/d' | sed '/Usage: wget /d' | sed '/^\s*$/d' | sed '/Try `wget --help/d' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mIso Hunt\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q http://iso.unbanthe.org/torrents/\?ihq\=${SEA// /+}\&Torrent_sort\=seeders.desc | grep '"title-row"><a href="' | cut -d '"' -f12 | sed 's\/\http://iso.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q http://iso.unbanthe.org/torrents/\?ihq\=${SEA// /+}\&Torrent_sort\=seeders.desc | grep '"title-row"><a href="' | cut -d '"' -f12 | sed 's\/\http://iso.unbanthe.org/\' | head -5 | sed 's/ /%20/g' |  xargs wget -O- -q 2>&1 | grep '<a href="https://torrent.isohunt.to/download.php' | cut -d '"' -f2 | sed '/wget: missing URL/d' | sed '/Usage: wget /d' | sed '/^\s*$/d' | sed '/Try `wget --help/d' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mTorrent Hound\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q http://th.unbanthe.org/search/1/${SEA// /+}/seeds:desc | grep '</div><a href="' | cut -d '"' -f2 | sed 's\/\http://th.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q http://th.unbanthe.org/search/1/${SEA// /+}/seeds:desc | grep '<a href="/torrent/' | cut -d '"' -f 2 | head -5 | sed 's\/\http://th.unbanthe.org/\' | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mIt-Ebooks\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q "http://it-ebooks.info/search/?q=${SEA// /+}&type=title" | grep -o -P 'href="/book/.{0,150}' | sed 's\href="/book/\"it-ebooks.info/\' | sed 's\/"\"\' | grep 'title="' | cut -d '"' -f4,2 | sed 's/"/ Title: /' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mseedpeer (might take a bit longer)\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q http://sp.unbanthe.org/search/${SEA// /-}/4/1.html | grep -o -E 'href="/details/.{0,1000}' | cut -d '"' -f2 | sed 's\/\http://sp.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q http://sp.unbanthe.org/search/${SEA// /-}/4/1.html | grep -o -E 'href="/details/.{0,1000}' | cut -d '"' -f2 | sed 's\/\http://sp.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | xargs wget -O- -q 2>&1 | grep 'href="/download/' | cut -d '"' -f4 | sed 's\/\http://sp.unbanthe.org/\' | sed '/wget: missing URL/d' | sed '/Usage: wget /d' | sed '/^\s*$/d' | sed '/Try `wget --help/d' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mLime Torrents (might take a bit longer)\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q http://lime.unbanthe.org/search/all/${SEA// /-}/seeds/1/ | grep -o -E '"></a><a href="/.{0,1000}' | cut -d '"' -f3 | sed 's\/\http://lime.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "-"; done
wget -O- -q http://lime.unbanthe.org/search/all/${SEA// /-}/seeds/1/ | grep -o -E '"></a><a href="/.{0,1000}' | cut -d '"' -f3 | sed 's\/\http://lime.unbanthe.org/\' | head -5 | sed 's/ /%20/g' | xargs wget -O- -q 2>&1 | grep '<a href="http://itorrents.org/torrent' | cut -d '"' -f2 | sed '/wget: missing URL/d' | sed '/Usage: wget /d' | sed '/^\s*$/d' | sed '/Try `wget --help/d' | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
echo -e "\e[31mYTS Torrents (movies)\e[0m"
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
wget -O- -q https://yts.to/browse-movies/${SEA// /%20}/all/all/0/seeds | grep -o -P '>  <a href="https://yts.to/movie/.{0,200}' | cut -d '"' -f2 | head -5 | cat -n
for i in $(seq 1 $(stty size | cut -d' ' -f2)); do echo -n "="; done
