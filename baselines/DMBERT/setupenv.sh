#add repo for installing Python 3.7 and Virtual Environment for Python 3.7
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update
sudo apt install python3.7-dev
sudo apt install python3.7-venv
curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7

#setup virtualenv in the current (DMBERT) folder
python3.7 -m venv env
source env/bin/activate
pip install -r requirements.txt