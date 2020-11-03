java -Xms2g -Xmx2g -jar fabric-server-launch.jar nogui

echo pushing to github
git add .
git commit -m "server shutdown"
git push
