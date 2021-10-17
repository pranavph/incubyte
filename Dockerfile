FROM python
RUN mkdir /task/
COPY app.py /task/
RUN python3 -m venv venv
RUN . venv/bin/activate
RUN pip3 install --upgrade pip
RUN pip3 install Flask
CMD [ "python3", "/task/app.py" ]
