# EyeCare

Eye Blink Reminder

## Overview

The Eye Blink Reminder is a simple bash script that displays an image at regular intervals, reminding users to blink their eyes and avoid potential eye strain caused by prolonged computer usage. The script periodically opens a window with an image, giving your eyes a brief rest and lubrication.
Motivation

In today's digital age, people spend a substantial amount of time in front of computer screens, leading to increased risks of eye strain, dryness, and potential damage. Prolonged computer usage often results in reduced blinking frequency, leading to dry eyes and discomfort. This script aims to address this issue by prompting users to blink their eyes regularly.

## Features:
 
 Displays an image at specified intervals to remind users to blink their eyes.
 The image is shown within a window at the center of the screen, allowing a quick break from the computer screen.
 Customizable image path, padding, and time interval between reminders.


Usage

Requirements:
Ensure you have the required dependencies installed: feh, xdotool, and wmctrl.
    Image Selection: Set the image_path variable in the script to the desired image's path.
    Padding: You can adjust the padding variable to control the space between the image and the window.
    Interval: Modify the interval variable to set the time interval (in seconds) between reminders.
    # Set the path to your PNG file
    

    image_path="your_image.png"
    # Set the padding in pixels
    padding=10
    
    # Set the time interval in seconds
    interval=5


Execution: Run the script in a terminal. The script will display the image at the specified interval, reminding you to blink your eyes.

    chmod +x eyecare.sh
    ./eyecare.sh


Disclaimer

The Eye Blink Reminder is intended to provide a simple reminder for eye blinking and should not replace professional advice. It's important to practice good computer habits, including regular breaks, proper lighting, and maintaining an ergonomic setup.
Contributing

Contributions, suggestions, and improvements are welcome! Feel free to fork this repository, make changes, and submit a pull request.
