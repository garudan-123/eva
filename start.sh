if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Vineshvinu/VIPautofilter.git /VIPautofilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /VIPautofilter
fi
cd /VIPautofilter 
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
