if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MYDBOY/AutoFilmBot.git /AutoFilmBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoFilmBot
fi
cd /AutoFilmBot
pip3 install -U -r requirements.txt
echo "Starting AutoFilmBot...."
python3 bot.py
