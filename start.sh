if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AM-ROBOTS/ApnaTube.git /ApnaTube
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ApnaTube
fi
cd /ApnaTube
pip3 install -U -r requirements.txt
echo "Starting ApnaTube...."
python3 bot.py
