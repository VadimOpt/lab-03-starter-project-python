FROM python:3.10-buster

WORKDIR /app

COPY . /app

RUN python -m venv .venv
RUN . .venv/bin/activate && pip install -r requirements/backend.in

CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]
