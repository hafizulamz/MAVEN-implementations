import time
import torch
import argparse
from utils.configparser_hook import get_config
from utils.global_variables import Global
from utils.initializer import initialize
from utils.runner import run

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    required_args = ["config"]
    normal_args = ["gpu"]
    for arg in required_args + normal_args:
        parser.add_argument("--{}".format(arg), required=arg in required_args)
    args = parser.parse_args()
    
    device = torch.device("cuda:{}".format(args.gpu) if args.gpu and torch.cuda.is_available() else "cpu")
    Global.device = device
    print("Device:", device)

    config = get_config(args.config)
    config.add_section("runtime")

    parameters = initialize(config, device)
    
    # get the start time
    exec_start_time = time.time()
    cpu_start_time = time.process_time()
    
    # run the program 
    run(parameters, config, device, exec_start_time)
    
    # get the end time
    exec_elapsed_time = time.time() - exec_start_time
    cpu_elapsed_time = time.process_time() - cpu_start_time
    
    # print execution time
    print("\n==========TIME RESOURCE SPENT==========")
    print("\nClock execution time: %s minutes" % (exec_elapsed_time/60))
    print('Clock execution time:', time.strftime("%H:%M:%S", time.gmtime(exec_elapsed_time)))
    print("\nCPU/GPU execution time: %s minutes" % (cpu_elapsed_time/60))
    print('CPU/GPU execution time:', time.strftime("%H:%M:%S", time.gmtime(cpu_elapsed_time)),'\n')