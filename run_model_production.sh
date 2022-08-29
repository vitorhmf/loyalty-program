# variable
data=$(date +'%Y-%m-%dT%H:%M:%S')

#path
path='/home/ubunto/loyalty-program'
path_to_env='/home/ubuntu/.pyenv/versions/3.9.0/envs/LoyaltyProgram/bin'

$path_to_env/papermill $path/scr/loyalty_program.ipynb $path/reports/loyalty_program_$data.ipynb
