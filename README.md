# Python Project Generator (PPG)

![Diseño sin título(1)](https://github.com/user-attachments/assets/4c2d7504-2194-480a-8211-da5998ff417c)


**Description:**

This is a Bash project that provides a foundational structure for Python application development. It automates the setup of a virtual environment, installation of dependencies, and configuration of essential directories and files for development. This setup is ideal for developers looking to kickstart their projects quickly and efficiently.

## Features
- **Project Structure**: Automatically creates a main project folder with essential subdirectories such as `src`, `data`, `logs`, and more.
- **Virtual Environment**: Configures a virtual environment using `venv` to manage project dependencies effectively.
- **Dependency Management**: Installs essential Python modules like `requests`, `flask`, and more for web development and data handling.
- **Initial Files**: Generates base files like `README.md`, `requirements.txt`, and starter scripts to facilitate project documentation and dependency management.
- **Error Handling**: Includes robust error handling in the setup script to ensure a smooth initialization process.

## Installation

1. **Clone the Repository**: Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/ROMAsofthub/PythonProjectGenerator.git
   cd PythonProjectGenerator

2. **Edit the `PPG.sh` file**: Edit the file config with your preferred text editor:
   ```bash
   sudo nano PPG.sh

3. **Set Permissions**: Grant execute permissions to the `PPG.sh` file:
   ```bash
   chmod +x PPG.sh
   
4. **Execute the `PPG.sh` file**: Run the generator to create a setup file:
   ```bash
   ./PPG.sh
   
5. **Execute the `setup.sh` file**: After executing it, you should see some installation processes:
   ```bash
   ./(my_project).setup.sh
