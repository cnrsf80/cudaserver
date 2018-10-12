#Installation de Jupyter Notebook
sudo apt-get install supervisor
pip3 install jupyter

jupyter notebook --generate-config
cat "c.NotebookApp.notebook_dir = '/path/to/notebook_directory'" >
c.NotebookApp.password = 'pi'
c.NotebookApp.port = 8888
c.NotebookApp.port_retries = 50

