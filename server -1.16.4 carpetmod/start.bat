java -Xms1g -Xmx1g -jar fabric-server-launch.jar nogui

echo pushing to github
git pull
git add .
git commit -m "server shutdown"
git push
