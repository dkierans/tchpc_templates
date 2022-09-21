# tchpc_templates/git

[git](https://docs.github.com/en/get-started/using-git/about-git) is a massively popular, modern version control system. Useful for:
* Restoring old files and old versions of files
* Tracking file changes
* Collaborating on projects

Git is used for both open source (eg [OpenMPI](https://github.com/open-mpi/ompi), [OpenHPC](https://github.com/openhpc/ohpc), [Athena++](https://github.com/PrincetonUniversity/athena), etc.), and commercially software development.

# Documentation
I work with the Github platform. Read Github's full documentation [here](https://docs.github.com/en)

# What to Repo - MSc HPC
The easiest and laziest way, but which works perfectly well, is to just dump all your college files in a git repo. 
So for example, I made a repo for all term 1 modules, and another then for term 2.

```bash
~/Term1/	# 1st git repo
	HPC_Software1/
		#files
	HPC_Hardware/
		#files

~/Term2/	# 2nd git repo
	HPC_Software2
		#files
	Cpp_Programming
		#files
```

Then at the end of each day, you can just push an update to your git repo.


My module directories usually look something like:
```bash
HPC_Software1/
	LectureNotes/
		L1_notes.txt
		L2_notes.txt
	LectureSlides/
		intro.pdf
		omp.pdf
	Assignments/
		Assignment1/
			assignment.pdf
			code.c
			Makefile
```


# Git ignore file
Git uses a special file called .gitignore which sits in the base directory of your git repository.
Any file names, or files which match the regex patterns in this file are not uploaded to your git repository.
Each pattern is separated by a new line.


You can get template .gitignores on [github](https://github.com/github/gitignore). I usually take a C/C++ template,
and add to it as required. For example, you don't need to copy intermediate object files, and executionals to git
as you are uploading the source files.
```bash
# .gitignore

# Specific files


# Specifici directories
tmp/

# Pattern match object files
*.exe
*.o
*.d

```
