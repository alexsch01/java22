wget https://download.java.net/java/early_access/jdk22/34/GPL/openjdk-22-ea+34_linux-x64_bin.tar.gz
tar -xf openjdk-22-ea+34_linux-x64_bin.tar.gz
rm openjdk-22-ea+34_linux-x64_bin.tar.gz

mv jdk-22/bin/java jdk-22/bin/java-og
echo 'java-og --source 22 --enable-preview "$@"' > jdk-22/bin/java
chmod +x jdk-22/bin/java

sudo mv jdk-22/ /usr/share/
sudo ln -s /usr/share/jdk-22/bin/java-og /usr/bin/java-og
sudo ln -s /usr/share/jdk-22/bin/java /usr/bin/java

echo 'complete -f -X "!*.java" java' > ~/.bashrc
source ~/.profile
