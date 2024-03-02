wget https://download.java.net/java/GA/jdk22/830ec9fcccef480bb3e73fb7ecafe059/36/GPL/openjdk-22_linux-x64_bin.tar.gz
tar -xf openjdk-22_linux-x64_bin.tar.gz
rm openjdk-22_linux-x64_bin.tar.gz

sudo mv jdk-22/ /usr/share/
sudo ln -s /usr/share/jdk-22/bin/* /usr/bin/

echo 'complete -f java' >> ~/.bashrc
source ~/.profile
