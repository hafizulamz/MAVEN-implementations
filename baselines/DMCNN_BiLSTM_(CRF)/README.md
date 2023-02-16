# DMCNN & BiLSTM & BiLSTM+CRF
The codes are implementations of [DMCNN](https://www.aclweb.org/anthology/P15-1017/), BiLSTM and BiLSTM+CRF for event detection on MAVEN. 


## Requirements
+ torch==1.6 -f https://download.pytorch.org/whl/torch_stable.html
+ cupy-cuda102 #originally: (CUDA==10.2), but replaced to cupy as AMD processor is not supported by CUDA
+ numpy
+ scikit-learn #originally: sklearn
+ seqeval==1.2.2
+ tqdm==4.44.0

### To run this code, you need to:
To run this code, you need to:
1. Check if your PC has python3.7 installed. If no, run ```sh setupenv-py37.sh```. If step 1 is complete, skip the following:
    a. make sure you have installed Python 3.7 from ppa:deadsnake using ```sudo add-apt-repository ppa:deadsnakes/ppa```, then ```sudo apt-get update```, then ```sudo apt install python3.7```.
    b. install python3.7 dev and venv packages using ```sudo apt install python3.7-dev``` and ```sudo apt install python3.7-venv```
    c. install pip for this Python version using ```curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7```
2. cd to the ("DMCNN_BiLSTM_(CRF)") folder and create a python virtual environment (venv) using ```python3.7 -m venv env```
3. activate the venv using ```source env/bin/activate```. To deactivate after use, type ```deactivate```.
4. install the requirements (packages) using ```pip install -r requirements.txt```
5. put raw files of MAVEN dataset in `./raw`
6. run ```python3.7 main.py --config [path of config files] --gpu [gpu, optional]```  
        (e.g.: ```python3.7 main.py --config config/dmcnn.config --gpu 0```)
we will train, evaluate and test models in every epoch. We output the performance of training and evaluating, and generate test result files for submit to [CodaLab](https://competitions.codalab.org/competitions/27320#learn_the_details-submission-format).

All the hyper-parameters for the three models are in config files at `./config/`, you can modify them as you wish.

Note: export dependencies using ```pip freeze > requirements.txt```