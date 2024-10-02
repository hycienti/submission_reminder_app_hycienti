#!/bin/bash

# Source the config file to load environment variables
source config/config.env

# Run the reminder script
bash app/reminder.sh

echo "Reminder app started successfully!"
