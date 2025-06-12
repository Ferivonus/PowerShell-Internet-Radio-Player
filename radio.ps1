$radios = @(
    @{ Name = "J-Pop Sakura"; Link = "https://igor.torontocast.com:1710/;?type=http`&nocache=1614591246" }
    @{ Name = "Jazz Sakura"; Link = "https://kathy.torontocast.com:3330/;?type=http`&nocache=1614660640" }
    @{ Name = "listen.moe"; Link = "https://listen.moe/stream" }
    @{ Name = "plaza.one"; Link = "https://radio.plaza.one/ogg?nocache=1670987768673" }
    @{ Name = "r/a/dio"; Link = "https://relay0.r-a-d.io/main.mp3" }
    @{ Name = "radio vocaloid"; Link = "https://curiosity.shoutca.st/tunein/vocaloid-320.pls" }
    @{ Name = "BBC Radio 1"; Link = "http://bbcmedia.ic.llnwd.net/stream/bbcmedia_radio1_mf_p" }
    @{ Name = "NPR"; Link = "https://npr-ice.streamguys1.com/live.mp3" }
    @{ Name = "Classical KDFC"; Link = "http://kdfc.streamguys1.com/kdfc.mp3" }
    @{ Name = "KEXP 90.3 FM"; Link = "http://live-mp3-128.kexp.org:8000/" }
    @{ Name = "Radio Paradise"; Link = "http://stream-uk1.radioparadise.com/mp3-128" }
)

function ShowMenu {
    Write-Host "Select the radio station to play:`n"
    for ($i = 0; $i -lt $radios.Count; $i++) {
        Write-Host "($i): $($radios[$i].Name)"
    }
    Write-Host ""
}

while ($true) {
    ShowMenu
    $selection = Read-Host " >"

    $selectionInt = 0  # Burada değişkeni tanımlıyoruz
    if (-not [int]::TryParse($selection, [ref]$selectionInt)) {
        Write-Host "Please enter a valid number."
        continue
    }
    if ($selectionInt -lt 0 -or $selectionInt -ge $radios.Count) {
        Write-Host "Invalid selection, try again."
        continue
    }

    $link = $radios[$selectionInt].Link
    Write-Host "`nPlaying: $link`nPress Ctrl+C to stop playback and exit.`n"

    try {
        & mpv --no-video $link
    } catch [System.Management.Automation.PipelineStoppedException] {
        Write-Host "`nPlayback interrupted by user."
    }

    break
}
