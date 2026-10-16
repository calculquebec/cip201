Job scripts
===========

`Français <../../fr/slurm/scripts.html>`_

A job script is commonly a Bash script intended for the Slurm scheduler. For
example:

.. code-block:: bash

   #!/bin/bash

   #SBATCH --job-name=my-job
   #SBATCH --mem=1G
   #SBATCH --time=4:00:00

   module load StdEnv/2023 python/3.11.5

   python my_script.py

It includes:

#. The `shebang <https://en.wikipedia.org/wiki/Shebang_(Unix)>`__ (``#!``) on
   the very first line.
#. The ``#SBATCH`` options for the job. These options will be read by the
   `sbatch <https://slurm.schedmd.com/sbatch.html>`__ job submission command.
#. Loading required `modules
   <https://docs.alliancecan.ca/wiki/Utiliser_des_modules/en>`__.
#. Commands that will be executed automatically on CPU cores reserved for the
   job.

See examples from the Alliance documentation:

- `Simple script <https://docs.alliancecan.ca/wiki/Running_jobs#Use_sbatch_to_submit_jobs>`__
- `Python job <https://docs.alliancecan.ca/wiki/Python#Creating_virtual_environments_inside_of_your_jobs>`__
- `R job <https://docs.alliancecan.ca/wiki/R#The_R_interpreter>`__

Exercise - Simple script
------------------------

#. Log in to the virtual cluster with ``ssh login1``.
#. Go to the exercise directory with ``cd ~/cip201-main/lab/script``.
#. In the ``simple.sh`` file, edit the ``#SBATCH`` options according to the
   instructions there:

   #. Request an amount of memory.
   #. Set a time limit for execution.

   Note: The scheduler will automatically select the ``def-sponsor00`` compute
   account.

#. Submit this job script using the ``sbatch`` command.
#. Monitor the job status with the ``sq`` command.
#. Once the job is completed, see the contents of the output file
   (``slurm-<jobid>.out``) with ``less`` (press :kbd:`q` to exit).
