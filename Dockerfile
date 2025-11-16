FROM python:3.10-slim

WORKDIR /app

# Copy project files
COPY . .

# Install requirements
RUN pip install --no-cache-dir -r requirements.txt

# Set Render port
ENV PORT=5000

EXPOSE 5000

# Start Flask app using Gunicorn (recommended)
CMD sh -c "gunicorn --bind 0.0.0.0:$PORT app:app"
