wget https://download.java.net/java/GA/jdk22/830ec9fcccef480bb3e73fb7ecafe059/35/GPL/openjdk-22_linux-x64_bin.tar.gz
tar -xf openjdk-22_linux-x64_bin.tar.gz
rm openjdk-22_linux-x64_bin.tar.gz

mv jdk-22/bin/java jdk-22/bin/java-og
echo '/usr/share/jdk-22/bin/java-og --source 22 --enable-preview "$@"' > jdk-22/bin/java
chmod +x jdk-22/bin/java

sudo mv jdk-22/ /usr/share/
sudo ln -s /usr/share/jdk-22/bin/java /usr/bin/java

echo 'complete -f -X "!*.java" java' >> ~/.bashrc
source ~/.profile
