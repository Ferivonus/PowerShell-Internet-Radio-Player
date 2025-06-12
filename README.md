# PowerShell Radio Player

This is a simple PowerShell script that allows you to play various online radio stations directly from your terminal using **mpv**.

## 🎵 Features

* **Select from a curated list**: Choose from a predefined list of popular radio stations.
* **Simple text-based menu**: Easy to navigate interface.
* **mpv integration**: Leverages the powerful mpv media player for audio playback.

## ⚙️ Prerequisites

Before running this script, you need to have **mpv** installed on your system.

### Windows

You can download mpv from its official website or install it via Chocolatey:

```powershell
choco install mpv
```

### macOS

Install mpv via Homebrew:

```bash
brew install mpv
```

### Linux

Install mpv using your distribution's package manager:

#### Debian/Ubuntu

```bash
sudo apt install mpv
```

#### Fedora

```bash
sudo dnf install mpv
```

#### Arch Linux

```bash
sudo pacman -S mpv
```

## 🚀 Usage

1. **Save the script**: Save the provided PowerShell code into a file named `radio_player.ps1`.

2. **Open PowerShell**: Navigate to the directory where you saved the script.

3. **Run the script**:

   ```powershell
   ./radio_player.ps1
   ```

   If you encounter an execution policy error, temporarily bypass it with:

   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
   ./radio_player.ps1
   ```

4. **Select a station**: The script will display a menu of available radio stations with corresponding numbers. Enter the number of the station you wish to play and press `Enter`.

5. **Stop playback**: Press `Ctrl+C` in the PowerShell terminal where the script is running.

## 🛠️ Customization

You can customize the list of radio stations by editing the `$radios` array in the script. Each station is a hashtable with `Name` and `Link` properties:

```powershell
$radios = @(
    @{ Name = "J-Pop Sakura"; Link = "https://igor.torontocast.com:1710/;?type=http&nocache=1614591246" }
    # Add more stations here
)
```

* **Name**: The name displayed in the menu.
* **Link**: The direct streaming URL (e.g., `.mp3`, `.ogg`, `.pls`).

## 🤝 Contributing

Feel free to fork this repository, add more radio stations, improve the script, or report issues. Pull requests are welcome!

## 📄 License

This project is open-source and available under the [MIT License](LICENSE).
