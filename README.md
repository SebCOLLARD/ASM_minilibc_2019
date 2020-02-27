# ASM_minilibc_2019
Refaire des function de la libC en assembleur x86_64 Intel

Le Makefile fournis une librairies partager.
Pou utiliser la librairie vous devais definir le variable LD_PRELOAD de votre environement un incluant le chemin 
de la libriarie.

Example zsh : export LD_PRELOAD=~/ASM_minilibc_2019/libasm.so

Example tcsh : setenv LD_PRELOAD /home/ASM_minilibc_2019/libasm.so
