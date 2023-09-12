# COMPUTACAO NATURAL [Turma 01A] - 2023/2

code:001ENST10216.03859-01A

Para rodar o Dockerfile com jupyter-notebook:

```bash
docker build -t myjupyter .
docker run -p 8888:8888 -v $(pwd):/home/jovyan/work myjupyter
```