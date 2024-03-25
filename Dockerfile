FROM python:3.12.0-bookworm
ENV APP /app
RUN mkdir $APP
WORKDIR $APP
EXPOSE 5000
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
