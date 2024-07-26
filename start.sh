if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FILMCLAN/FC-Search-Bot.git /FC-Search-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FC-Search-Bot
fi
cd /AutoFilmBot
pip3 install -U -r requirements.txt
echo "Starting FC-Search-Bot...."
python3 bot.py
