FROM python:3.10-slim

# Install git and other required packages
RUN apt-get update && apt-get install -y git

# Install Python packages
RUN pip3 install --no-cache-dir PyYAML

# Copy the feed.py script
COPY feed.py /usr/bin/feed.py

# Copy the entrypoint.sh script
COPY entrypoint.sh /entrypoint.sh

# Make entrypoint.sh executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint script
ENTRYPOINT ["/entrypoint.sh"]

