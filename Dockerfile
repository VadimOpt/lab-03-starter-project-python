FROM python:3.10-alpine

WORKDIR /app

COPY requirements/backend.in .

RUN python -m venv .venv
RUN . .venv/bin/activate && pip install -r backend.in

COPY . /app

CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]