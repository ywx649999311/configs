### Weixiang Yu's config files

A collection of configuration files to customize SciServer working environment.

- `git-completion.bash` & `git-prompt.sh`: Command line git autocompletion.
- `gitconfig_remote`: Git configuration file (change the settings under [user] to yours).
- `gitconfig_local`: Git configuration file for local machines (not needed for SciServer).
- `user-settings/`: JupyterLab settings, same as seen under `Settings -> Advanced Settings Editor`.
- `jupyter_notebook_config.py`: Jupyter notebook server settings, may not much needed within SciServer.
- `setup_*.sh`: Shell script configuring the computing environment using the above config files (mostly by soft links and copy). 
- `snippets`: Folder containing commonly used python snippets. 
- `viz`: Configuration files related to visualizations

What you need to do:

- Modify user.name and use.email setting in `gitconfig_remote` the file
- run the following command with in this directory.
>```
> $ bash/zsh setup_*.sh
>```
> or
>```
> $ chmod +x setup_*.sh
> $ ./setup_*.sh
>```
