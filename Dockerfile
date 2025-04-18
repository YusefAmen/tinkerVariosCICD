# Stage 1: Builder
FROM python:3.8 AS builder
WORKDIR /app
COPY . /app
RUN pip install --upgrade pip %% pip install flask

# Stage 2: Runtime minimal image
FROM python:3.8-slim
WORKDIR /app

COPY --from=builder /app /app
EXPOSE 8080

ENTRYPOINT ["python"]
CMD ["app.py"]
