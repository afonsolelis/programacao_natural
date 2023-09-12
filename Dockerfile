FROM jupyter/minimal-notebook

# Instale as extensões do Jupyter Notebook
RUN conda install -c conda-forge jupyter_contrib_nbextensions && \
    jupyter contrib nbextension install --sys-prefix && \
    jupyter nbextension enable equation-numbering/main && \
    jupyter nbextension enable latex_envs/latex_envs && \
    jupyter nbextension enable highlighter/highlighter && \
    jupyter nbextension enable toc2/main && \
    jupyter nbextension enable collapsible_headings/main && \
    jupyter nbextension enable scratchpad/main && \
    jupyter nbextension enable code_prettify/code_prettify && \
    jupyter nbextension enable execute_time/ExecuteTime && \
    jupyter nbextension enable toggle_all_line_numbers/main && \
    jupyter nbextension enable varInspector/main && \
    jupyter nbextension enable equation-numbering/main && \
    jupyter nbextension enable table_beautifier/main && \
    jupyter nbextension enable spellchecker/main && \
    jupyter nbextension enable splitcell/splitcell && \
    jupyter nbextension enable notify/notify && \
    jupyter nbextension enable keyboard_shortcut_editor/main

# Instale os pacotes necessários
RUN conda install -c anaconda nbconvert && \
    conda install -c conda-forge nbformat && \
    conda install -c anaconda pandoc

# Copie seus arquivos de trabalho para o diretório /home/jovyan/work
COPY . /home/jovyan/work

# Configure o comando de inicialização do Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=123456"]
