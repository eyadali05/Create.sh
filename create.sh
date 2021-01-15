# !/usr/bin/bash 

# TODO:
#  . get the project name and project type as a parameter
#  . make the command callable anywhere from the system
#  . create a folder in the /home/workspace directory
#  . Making the necessary files for a project type 
#  . setting up a git repository with the project name (PHASE 2)
#  . opening neovim with NERDTree on the OUTLINE.md 


create() {

	cd /home/eyadali05/workspace 
	mkdir $1
	cd $1
	touch README.md
	touch OUTLINE.md 
	if [[ $2 == "-p" ]]
	then
		touch '__init__.py'
		touch 'main.py'
		mkdir 'Modules'
	elif [[ $2 == "-w" ]]
	then
		touch 'index.html'
		touch 'app.js'
		mkdir 'src'
		cd 'src'
		touch 'style.css'
	fi
	cd /home/eyadali05/workspace/$1
	nvim OUTLINE.md
}

create $1 $2
