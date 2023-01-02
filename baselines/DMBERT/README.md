# DMBERT
This code is the implementation for [DMBERT](https://www.aclweb.org/anthology/N19-1105/) model. The implementations are based on [Huggingface's Transformers](https://github.com/huggingface/transformers), especially its example for the multiple-choice task.


## Requirements
- python==3.6.9
- torch==1.2.0
- transformers==2.8.0
- sklearn==0.20.2

  
## Usage
Hint: please read and delete all the comments after ```\``` in each line of the ```.sh``` scripts before running them.

### To run this code, you need to:
1. make sure you have installed Python 3.7 from ppa:deadsnake using ```sudo add-apt-repository ppa:deadsnakes/ppa```, then ```sudo apt-get update```, then ```sudo apt install python3.7```.
2. install python3.7 dev and venv packages using ```sudo apt install python3.7-dev``` and ```sudo apt install python3.7-venv```
3. install pip for this Python version using ```curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7```
4. cd to the working folder and create a python virtual environment (venv) using ```python3.7 -m venv env```
5. activate the venv using ```source env/bin/activate```. To deactivate after use, type ```deactivate```.
6. install the requirements (packages) using ```pip install -r requirements.txt```

### On MAVEN:
1. Download MAVEN data files.
2. Run ```sh run_MAVEN.sh``` for training and evaluation on the devlopment set.  
3. Run ```sh run_MAVEN_infer.sh``` to get predictions on the test set (dumped to ```results.jsonl```).

See the two scripts for more details.

### On ACE
1. Preprocess ACE 2005 dataset as in [this repo](https://github.com/thunlp/HMEAE).
2. Run ``run_ACE.sh`` for training and evaluation.
