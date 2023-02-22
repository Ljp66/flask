FROM python:3.11.2-alpine

COPY instance /app/instance
COPY static /app/static
COPY templates /app/templates
COPY app.py /app/
COPY LICENSE /app/
COPY README.md /app/
COPY requirements.txt /app/

WORKDIR /app

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip install -r requirements.txt

CMD ["python3", "app.py"]