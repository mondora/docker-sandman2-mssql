FROM python

# Install non-pip dependencies for sandman2 and pymssql
RUN apt-get update \
    && apt-get install -y freetds-dev \
    && rm -rf /var/lib/apt/lists/*

# Install sandman2 and pymssql
RUN pip install sandman2 pymssql

# Copy start file
COPY start.sh /start.sh

# Configure the listening port
ENV PORT 80
EXPOSE 80

# Set start command
CMD ["/start.sh"]
