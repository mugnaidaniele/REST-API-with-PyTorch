FROM nvcr.io/nvidia/pytorch:20.09-py3

WORKDIR /app

RUN mkdir .torch
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0"]