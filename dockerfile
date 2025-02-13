# Step 1: Use an official Python 3.9 image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy all the project files to the container
COPY . .

# Step 4: Install dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Expose port 5000 for the Flask app
EXPOSE 5000

# Step 6: Start the Flask app using Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
