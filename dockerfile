# Use a minimal base image
FROM alpine:latest

# Install necessary dependencies
RUN apk add --no-cache bash

# Copy the bore binary into the container
COPY target/release/bore /usr/local/bin/bore

# Expose the control port (default: 7835)
EXPOSE 7835

# Run the bore server
CMD ["bore", "server"]
