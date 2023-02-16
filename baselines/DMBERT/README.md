# DMBERT
This code is the implementation for [DMBERT](https://www.aclweb.org/anthology/N19-1105/) model. The implementations are based on [Huggingface's Transformers](https://github.com/huggingface/transformers), especially its example for the multiple-choice task.


## Requirements
- python==3.6.9
- torch==1.2.0
- transformers==2.8.0
- scikit-learn==0.20.2 (or sklearn==0.20.2)

  
## Usage
Hint: please read and delete all the comments after ```\``` in each line of the ```.sh``` scripts before running them.

### To run this code, you need to:
1. Check if your PC has python3.7 installed. If no, run ```sh setupenv-py37.sh```. If step 1 is complete, skip the following:
    a. make sure you have installed Python 3.7 from ppa:deadsnake using ```sudo add-apt-repository ppa:deadsnakes/ppa```, then ```sudo apt-get update```, then ```sudo apt install python3.7```.
    b. install python3.7 dev and venv packages using ```sudo apt install python3.7-dev``` and ```sudo apt install python3.7-venv```
    c. install pip for this Python version using ```curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7```
2. cd to the (DMBERT) folder and create a python virtual environment (venv) using ```python3.7 -m venv env```
3. activate the venv using ```source env/bin/activate```. To deactivate after use, type ```deactivate```.
4. install the requirements (packages) using ```pip install -r requirements.txt```
5. Then, see the following section: ```On MAVEN```.

### On MAVEN:
1. Download MAVEN data files.
2. Run ```sh run_MAVEN.sh``` for training and evaluation on the devlopment set.  
3. Run ```sh run_MAVEN_infer.sh``` to get predictions on the test set (dumped to ```results.jsonl```).

See the two scripts for more details.

### On ACE
1. Preprocess ACE 2005 dataset as in [this repo](https://github.com/thunlp/HMEAE).
2. Run ``run_ACE.sh`` for training and evaluation.
