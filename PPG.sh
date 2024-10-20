#!/bin/bash

# --- Configuration Variables ---
# Name of the folder where everything will be created
PROJECT_DIR="my_project"

# Name of the virtual environment directory
VENV_DIR="venv"

# List of required Python modules
MODULES=("requests" "flask" "numpy")

# List of folders to be created inside the project folder
FOLDERS=("images" "src" "data" "logs")

# List of files to be created inside the project folder
FILES=("README.md" "requirements.txt" "src/main.py")

# --- Generating the Setup Script ---
SETUP_FILE="setup.sh"
echo "#!/bin/bash" > $SETUP_FILE
echo "clear" >> $SETUP_FILE
echo "" >> $SETUP_FILE

# Definición de colores
echo "RED=\"\e[0;31m\"" >> $SETUP_FILE
echo "GREEN=\"\e[0;32m\"" >> $SETUP_FILE
echo "YELLOW=\"\e[0;33m\"" >> $SETUP_FILE
echo "WHITE=\"\e[0;37m\"" >> $SETUP_FILE

# Function to handle errors
echo "error_exit() {" >> $SETUP_FILE
echo "    echo -e \"\${RED}✘✘ Error: \$1\"; exit 1;" >> $SETUP_FILE
echo "}" >> $SETUP_FILE

# Function to handle success messages
echo "success_msg() {" >> $SETUP_FILE
echo "    echo -e \"\${GREEN}✓ \$1\";" >> $SETUP_FILE
echo "}" >> $SETUP_FILE

# Check if project directory already exists / Check for spaces in the project directory name and replace them with underscores
echo "PROJECT_DIR=\"\$(echo \$PROJECT_DIR | tr ' ' '_')\"" >> $SETUP_FILE
echo "if [ -d \"$PROJECT_DIR\" ]; then" >> $SETUP_FILE
echo "    error_exit \"Project directory already exists: $PROJECT_DIR\"" >> $SETUP_FILE
echo "fi" >> $SETUP_FILE

# Create the main project directory
echo "echo -e \"\${YELLOW}↻ Creating project directory: $PROJECT_DIR...\"" >> $SETUP_FILE
echo "mkdir -p $PROJECT_DIR || error_exit \"Failed to create project directory: $PROJECT_DIR\" && success_msg \"Project directory created: $PROJECT_DIR\"" >> $SETUP_FILE
echo "PROJECT_DIR=\"$PROJECT_DIR\"" >> $SETUP_FILE

# Create a virtual environment inside the project directory
echo "echo -e \"\${YELLOW}↻ Creating virtual environment: $VENV_DIR...\"" >> $SETUP_FILE
echo "python3 -m venv \$PROJECT_DIR/$VENV_DIR || error_exit \"Failed to create virtual environment: $VENV_DIR\" && success_msg \"Virtual environment created: $VENV_DIR\"" >> $SETUP_FILE

# Activate the virtual environment
echo "echo -e \"\${YELLOW}↻ Activating virtual environment...\"" >> $SETUP_FILE
echo "source \$PROJECT_DIR/$VENV_DIR/bin/activate || error_exit \"Failed to activate virtual environment: $VENV_DIR\" && success_msg \"Virtual environment activated: $VENV_DIR\"" >> $SETUP_FILE

# Install modules
for MODULE in "${MODULES[@]}"; do
  echo "echo -e \"\${YELLOW}↻ Installing the module '$MODULE'...\${WHITE}\"" >> $SETUP_FILE
  echo "pip install \"$MODULE\" || error_exit \"Failed to install module: $MODULE\" && success_msg \"Module installed: $MODULE\"" >> $SETUP_FILE
done

# Create folders inside the project directory
for FOLDER in "${FOLDERS[@]}"; do
  echo "echo -e \"\${YELLOW}↻ Creating folder: $FOLDER...\${RED}\"" >> $SETUP_FILE
  echo "mkdir -p \$PROJECT_DIR/$FOLDER || error_exit \"Failed to create folder: $FOLDER\" && success_msg \"Folder created: $FOLDER\"" >> $SETUP_FILE
done

# Create files inside the project directory
for FILE in "${FILES[@]}"; do
  echo "echo -e \"\${YELLOW}↻ Creating file: $FILE...\${RED}\"" >> $SETUP_FILE
  echo "touch \$PROJECT_DIR/$FILE || error_exit \"Failed to create file: $FILE\" && success_msg \"File created: $FILE\"" >> $SETUP_FILE
done

# Inform the user
echo "echo -e \"\${GREEN}✓ Setup complete. Virtual environment created and files/folders initialized in \$PROJECT_DIR.\"" >> $SETUP_FILE

# Make the setup script executable
chmod +x $SETUP_FILE

# Final message
echo "$SETUP_FILE has been generated. Run it to install everything"
