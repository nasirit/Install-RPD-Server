# RDP Server Installer for Non-Supported Windows Versions

This batch script is designed to install an RDP server on non-supported Windows versions, enabling remote desktop access to the machine. Please note that this script is provided as-is and may have limitations or compatibility issues. Use it at your own risk.

## Prerequisites

- Windows operating system (Home Edition or non-supported version)
- Administrative access to the system

## Usage

1. Download the repository files to your local machine.

2. Ensure that all files, including "RDPWInst.exe" and "rdpwrap.ini," are present in the same directory as the batch script.

3. Right-click on the batch script and choose "Run as administrator" from the context menu.

4. If User Account Control (UAC) prompts for permission, click "Yes" to continue.

5. The script will perform the following actions:
   - Check if the script is run as administrator.
   - Verify the existence of "RDPWInst.exe."
   - Install RDP Wrapper using "RDPWInst.exe."
   - Stop the "termservice" (Remote Desktop Services) if it's running.
   - Delete the existing "C:\Program Files\RDP Wrapper\rdpwrap.ini" file if it exists.
   - Copy the "rdpwrap.ini" file to "C:\Program Files\RDP Wrapper\rdpwrap.ini."
   - Start the "termservice" again.
   - Display a message indicating that the RDP server is ready.
   - Wait for a key press to proceed with checking RDP on the localhost.
   - Open the Remote Desktop Connection window to connect to localhost.

6. Follow the on-screen prompts and messages displayed by the script.

## Disclaimer

- Using RDP on a non-supported Windows version may violate licensing agreements or terms of service. Ensure you have the necessary rights and permissions before proceeding.

- This script is provided for informational purposes only. The author and repository maintainers are not responsible for any damage or legal consequences that may arise from using this script.

