# This script will launch the techNote project locally.
# The service is accessible through a web browser at:
#   localhost:5001

# Run this script with:
#   bash -i techNote.sh

# Then press enter to return control of the terminal

# This is because the interactive mode will give you access to your .bashrc file
# (Needed because conda won't know about your environments if you launch it in a subshell and will complain)
# Alternatively, you could (among other things) add this to the script:
#   eval "$(conda shell.bash hook)"
#   conda activate <env-name>
# That would probably work, allowing you to do ./techNote.sh

# NOTE:
# mongod and node will be launched in the background with this script.
# To stop them, first get its pid:
#   pgrep <service>
# Then kill it:
#   kill <pid>
# E.g.:
#   pgrep mongod
#   kill 5771

cd /home/vboxuser/repositories/techNote &&
        conda activate techNote &&
        nohup node app.js & nohup mongod &
