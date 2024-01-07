if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FilmClan/FilmClan.git /FilmClan
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FilmClan
fi
cd /Lucifer
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
