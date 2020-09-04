$script = @'
   $player = New-Object -ComObject 'MediaPlayer.MediaPlayer'
   $player.Open("https://cdn.discordapp.com/attachments/725845314614984736/751405474632564746/Jul_-_Folie_Clip_Officiel_2020.mp3")
   $player
'@

try {
    [console]::beep(350,300)
    [console]::beep(350,300)
    [console]::beep(350,300)
    [console]::beep(400,300)
    [console]::beep(450,800)
    [console]::beep(400,700)
    [console]::beep(350,300)
    [console]::beep(450,300)
    [console]::beep(400,300)
    [console]::beep(400,300)
    [console]::beep(350,300)
    [console]::beep(350,800)
    $bgPowerShell = [PowerShell]::Create()
    $player = @($bgPowerShell.AddScript($script).Invoke())[0]
}
finally {
    Clear-Host
    $player.Stop()
    $bgPowerShell.Dispose()
}
