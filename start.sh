if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Sreejithmadmax/deleterobot.git /deleterobot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /deleterobot
fi
cd /deleterobot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
