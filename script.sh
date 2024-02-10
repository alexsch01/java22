wget https://download.java.net/java/GA/jdk22/830ec9fcccef480bb3e73fb7ecafe059/35/GPL/openjdk-22_linux-x64_bin.tar.gz
tar -xf openjdk-22_linux-x64_bin.tar.gz
rm openjdk-22_linux-x64_bin.tar.gz

mv jdk-22/bin/java jdk-22/bin/java-og
mv jdk-22/bin/javac jdk-22/bin/javac-og

echo 'if [[ $1 == *.java ]]; then
        /usr/share/jdk-22/bin/java-og --source 22 --enable-preview "${1/.class/}"
else
        /usr/share/jdk-22/bin/java-og --enable-preview "${1/.class/}"
fi' > jdk-22/bin/java

echo '/usr/share/jdk-22/bin/javac-og --release 22 --enable-preview "$@"' > jdk-22/bin/javac

chmod +x jdk-22/bin/java
chmod +x jdk-22/bin/javac

sudo mv jdk-22/ /usr/share/
sudo ln -s /usr/share/jdk-22/bin/java /usr/bin/java
sudo ln -s /usr/share/jdk-22/bin/javac /usr/bin/javac

echo 'complete -f java' >> ~/.bashrc
echo 'complete -f javac' >> ~/.bashrc
source ~/.profile
