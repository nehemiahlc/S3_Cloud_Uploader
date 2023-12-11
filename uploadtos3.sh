#!/bin/bash

# Function to display usage information
display_usage() {
    echo "Usage: $0 <local-file> <destination-path>"
    echo "Uploads a file to an S3 Bucket"
}

# Function to handle errors
handle_error() {
    echo "Error: $1"
    exit 1
}

# Check if the right number of arguments is provided
if [ "$#" -ne 2 ]; then
    display_usage
    exit 1
fi

# Parse command-line arguments
local_file="$1"
destination_path="$2"

# Check if the local file exists
if [ ! -f "$local_file" ]; then
    handle_error "Local file not found: $local_file"
fi

# Prompt user for S3 bucket name
read -p "Enter the S3 bucket name: " s3_bucket

# Perform file upload to S3
if aws s3 cp "$local_file" "s3://$s3_bucket/$destination_path"; then
    echo "Upload completed successfully."
else
    handle_error "Upload failed."
fi

# Check the exit status of the "aws s3 cp" command to determine success
if [ $? -eq 0 ]; then
    echo "Upload successful"
else
    echo "Error: Upload failed"
    exit 1
fi

