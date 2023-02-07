FROM python:3.8-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .
RUN python setup.py install
#python tortoise/do_tts.py --text "Your text" --voice random --preset fast

#CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]