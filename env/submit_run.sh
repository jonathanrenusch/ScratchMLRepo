# Use this file to submit the run to create your conda environment on an HTcondor managed batching system
executable  = /path/to/create_conda_env.sh
+JobFlavour  = "workday"
output       = logs/output_creating_env$(ProcId).output
error        = logs/error_creating_env$(ProcId).log
log          = logs/job_creating_env$(ProcId).log
batch_name = creating_env

queue


