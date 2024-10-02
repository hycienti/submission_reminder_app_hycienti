#!/bin/bash

# Create the main application directory
mkdir -p submission_reminder_app/{app,modules,assets,config,bin}

# Create the necessary files
touch submission_reminder_app/app/reminder.sh
touch submission_reminder_app/modules/functions.sh
touch submission_reminder_app/config/config.env
touch submission_reminder_app/assets/submissions.txt
touch submission_reminder_app/startup.sh

# Move the existing submissions.txt file into the 'assets' directory in the newly created directory
cp submissions.txt submission_reminder_app/assets/

# Append student records to the correct 'submissions.txt' in the 'assets' directory
echo "Daniel, Shell Navigation, not submitted" >> submission_reminder_app/assets/submissions.txt
echo "osas, Shell Navigation, not submitted" >> submission_reminder_app/assets/submissions.txt
echo "evelyn, Shell Navigation, not submitted" >> submission_reminder_app/assets/submissions.txt
echo "ozor, Shell Navigation, submitted" >> submission_reminder_app/assets/submissions.txt
echo "Hycient, Shell Navigation, submitted" >> submission_reminder_app/assets/submissions.txt

# Populate other files with content
cat reminder.sh >> submission_reminder_app/app/reminder.sh
cat functions.sh >> submission_reminder_app/modules/functions.sh
cat config.env >> submission_reminder_app/config/config.env

# Add content to the startup.sh file
echo '#!/bin/bash' > submission_reminder_app/startup.sh
echo '' >> submission_reminder_app/startup.sh
echo '# Source the config file to load environment variables' >> submission_reminder_app/startup.sh
echo 'source config/config.env' >> submission_reminder_app/startup.sh
echo '' >> submission_reminder_app/startup.sh
echo '# Run the reminder script' >> submission_reminder_app/startup.sh
echo 'bash app/reminder.sh' >> submission_reminder_app/startup.sh
echo '' >> submission_reminder_app/startup.sh
echo 'echo "Reminder app started successfully!"' >> submission_reminder_app/startup.sh

# Make the startup.sh executable
chmod +x submission_reminder_app/startup.sh

# Give a message when done
echo "Environment setup complete and startup.sh added!"
