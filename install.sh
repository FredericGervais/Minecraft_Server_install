#/bin/bash


sudo apt update
sudo apt upgrade -y

# Install Dependencies
sudo apt install default-jdk wget screen -y

# Download the Minecraft server
wget https://launcher.mojang.com/v1/objects/f02f4473dbf152c23d7d484952121db0b36698cb/server.jar -O minecraft_server.1.16.3.jar

echo "eula=true">eula.txt

# Run the Manicraft server
screen -d -m java -Xmx1024M -Xms1024M -jar minecraft_server.1.16.3.jar nogui
