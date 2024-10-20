# Python Project Generator (PPG)

![PPGscreen1](https://github.com/user-attachments/assets/c80f75ba-f438-4675-b90f-88ba25be3a5c)
![PPGscreenshot2](https://github.com/user-attachments/assets/a42cf887-191a-4264-83e9-2ba59d260e2f)
![PPGscreenshot3](https://github.com/user-attachments/assets/01bd24dd-1228-4622-a418-a66f38fba45f)

**Description:**

This is a Python project that provides a foundational structure for application development. It automates the setup of a virtual environment, installation of dependencies, and configuration of essential directories and files for development. This setup is ideal for developers looking to kickstart their projects quickly and efficiently.

## Features
- **Project Structure**: Automatically creates a main project folder with essential subdirectories such as `src`, `data`, `logs`, and more.
- **Virtual Environment**: Configures a virtual environment using `venv` to manage project dependencies effectively.
- **Dependency Management**: Installs essential Python modules like `requests`, `flask`, and more for web development and data handling.
- **Initial Files**: Generates base files like `README.md`, `requirements.txt`, and starter scripts to facilitate project documentation and dependency management.
- **Error Handling**: Includes robust error handling in the setup script to ensure a smooth initialization process.

## Installation

1. **Clone the Repository**: Clone this repository to your local machine using:
   ```bash
   git clone https://github.com/ROMAsofthub/Python-Project-Generator.git
   cd Python-Project-Gnerator

2. **Edit the `PPG.sh` file**: Edit the file config with your preferred text editor:
   ```bash
   sudo nano PPG.sh

3. **Switch to Super User**: Enter as a super user to ensure you have the necessary permissions:
   ```bash
   su

4. **Set Permissions**: Grant execute permissions to the `PPG.sh` file:
   ```bash
   chmod +x PPG.sh
   
5. **Execute the `PPG.sh` file**: Run the generator to create an installation file:
   ```bash
   ./PPG.sh
   
6. **Execute the `setup.sh` file**: After executing it, you should see some installation processes:
   ```bash
   ./setup.sh
