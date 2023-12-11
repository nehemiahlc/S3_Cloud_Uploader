## S3 File Upload Tool

## Overview

A Bash-based CLI tool for uploading files to an S3 bucket. 

## Prerequisites

- [AWS CLI](https://aws.amazon.com/cli/) installed and configured with the necessary credentials.
- Bash shell environment.

## Usage
To use the tool, run the following command:

./uploadtos3.sh <local-file> <destination-path>
<local-file>: The path to the local file you want to upload.
<destination-path>: The destination path in the S3 bucket.

## Manual Configuration

Please note that you'll need to manually edit the script before using it. Open the script (`uploadtos3.sh`) in a text editor and look for the variable `s3_bucket`. 
Replace the placeholder value (`your-s3-bucket-name`) with your actual S3 bucket name. 
Save the file and then run the script using the provided instructions in the Usage section.

Example:

```bash `
Open the script in a text editor
nano uploadtos3.sh

Find and replace the placeholder with your S3 bucket name
Before: s3_bucket="your-s3-bucket-name"
After: s3_bucket="your-actual-bucket-name"
Save the file and exit the text editor

Run the script
./uploadtos3.sh ./example.txt uploads/ your-actual-bucket-name

Examples:
./uploadtos3.sh ./example.txt uploads/

## Common Issues
Issue 1: Bucket Not Public or Policy Doesn't Allow PUT Object

Solution: Ensure that your S3 bucket is public, and the bucket policy allows the s3:PutObject action. You can modify the bucket policy using the AWS S3 Management Console.

Issue 2: AWS CLI Configuration

Solution: When running 'aws configure', ensure that you provide the correct AWS access key, secret key, region, and output format. Double-check the configuration using 'aws configure list'.

## Distribution
To package and distribute the script, you can create a simple installation script or provide instructions for adding it to the user's $PATH.

Installation Tips:

Download the script:
curl (https://github.com/nehemiahlc/s3-upload-tool/blob/a42617f2d25a846aaffc85792a11aa5b862bbfce/S3%20Tool)

Make it executable:
chmod +x uploadtos3.sh

Move it to a directory in your $PATH:
mv uploadtos3.sh /usr/local/bin/

Now users can run the script from any directory.

## Troubleshooting
If you encounter issues, try the following:

Ensure AWS CLI is installed and configured.
Check your AWS credentials.
Verify that the S3 bucket is public, and the bucket policy allows s3:PutObject.

## Future Enhancements
In the upcoming releases, I have exciting plans to enhance this tool with the following features:

File Synchronization: Users will have the ability to choose whether to overwrite, skip, or rename existing files in the cloud during uploads.

Multiple File Uploads: Enjoy the convenience of uploading multiple files in a single command, streamlining the process.

Progress Tracking: A progress tracking feature will be introduced, allowing users to monitor the status of their file uploads.

Shareable Links: After uploading, generate and display shareable links effortlessly, making it simple to share files with others.

File Encryption: For added security, an encryption feature will be implemented to safeguard your files during the upload process.

Stay tuned for these exciting enhancements in future updates! Your feedback and suggestions are welcome; feel free to open an issue to share your thoughts or propose additional features.

## Contributing
Feel free to contribute by opening an issue or submitting a pull request.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
