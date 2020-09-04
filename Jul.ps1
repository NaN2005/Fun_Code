$script = @'
   $player = New-Object -ComObject 'MediaPlayer.MediaPlayer'
   $player.Open("https://cdn.discordapp.com/attachments/725845314614984736/751405474632564746/Jul_-_Folie_Clip_Officiel_2020.mp3")
   $player
'@

$bgPowerShell = [PowerShell]::Create()
$player = @($bgPowerShell.AddScript($script).Invoke())[0]
