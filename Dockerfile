FROM python:alpine
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py /app/app.py
EXPOSE 80
ENTRYPOINT ["python"]
CMD ["app.py"]
