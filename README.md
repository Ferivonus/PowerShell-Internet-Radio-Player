# PowerShell Radio Player
This is a simple PowerShell script that allows you to play various online radio stations directly from your terminal using mpv.

Features
Select from a curated list: Choose from a predefined list of popular radio stations.

Simple text-based menu: Easy to navigate interface.

mpv integration: Leverages the powerful mpv media player for audio playback.

Prerequisites
Before running this script, you need to have mpv installed on your system.

Windows: You can download mpv from its official website or install it via a package manager like Chocolatey:

choco install mpv

macOS: Install mpv via Homebrew:

brew install mpv

Linux: Install mpv using your distribution's package manager (e.g., apt for Debian/Ubuntu, dnf for Fedora, pacman for Arch):

# Debian/Ubuntu
sudo apt install mpv

# Fedora
sudo dnf install mpv

# Arch Linux
sudo pacman -S mpv

Usage
Save the script: Save the provided PowerShell code into a file named radio_player.ps1 (or any other .ps1 extension).

Open PowerShell: Navigate to the directory where you saved the script using PowerShell.

Run the script: Execute the script from your PowerShell terminal:

./radio_player.ps1

If you encounter an error related to execution policy, you might need to set it. For more information, refer to the Microsoft documentation on About Execution Policies. A common temporary workaround for the current session is:

Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
./radio_player.ps1

Select a station: The script will display a menu of available radio stations with corresponding numbers. Enter the number of the station you wish to play and press Enter.

Stop playback: To stop playback, press Ctrl+C in the PowerShell terminal where the script is running.

Customization
You can easily customize the list of radio stations by editing the $radios array in the script. Each radio station is represented by a PowerShell hashtable with Name and Link properties:

$radios = @(
    @{ Name = "J-Pop Sakura"; Link = "[https://igor.torontocast.com:1710/;?type=http](https://igor.torontocast.com:1710/;?type=http)`&nocache=1614591246" }
    # Add more stations here
)

Name: The display name for the radio station in the menu.

Link: The direct streaming URL for the radio station. Ensure this is a direct link to an audio stream (e.g., .mp3, .ogg, .pls).

Contributing
Feel free to fork this repository, add more radio stations, improve the script, or report any issues. Pull requests are welcome!

License
This project is open-source and available under the MIT License.
