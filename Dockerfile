FROM python:3.10-slim

WORKDIR /app

# Copy files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Environment variable for Render PORT
ENV PORT=8501

# Expose port
EXPOSE 8501

# Start Streamlit using Render PORT
CMD ["sh", "-c", "streamlit run app.py --server.port=$PORT --server.address=0.0.0.0"]