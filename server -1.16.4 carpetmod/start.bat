java -Xms512m -Xmx512m -jar fabric-server-launch.jar nogui

echo pushing to github
git add .
git commit -m "manual push"
git push