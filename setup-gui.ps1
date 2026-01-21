Add-Type -AssemblyName PresentationFramework

$window = New-Object Windows.Window
$window.Title = "Ultimate Emulation Platform v1.0"
$window.Width = 500
$window.Height = 650

$stack = New-Object Windows.Controls.StackPanel
$stack.Margin = 10

# Liste aller Module
$checks = @(
 "RetroArch","DuckStation","PCSX2","RPCS3","PPSSPP","Vita3K",
 "Dolphin","Cemu","Ryujinx","mGBA","MAME",
 "DS4Windows","BetterJoy","Playnite"
)

# Checkboxen erzeugen
$boxes = @{}
foreach ($c in $checks) {
 $cb = New-Object Windows.Controls.CheckBox
 $cb.Content = $c
 $cb.IsChecked = $true
 $boxes[$c] = $cb
 $stack.Children.Add($cb)
}

# Installationsbutton
$btn = New-Object Windows.Controls.Button
$btn.Content = "Start Installation"
$btn.Margin = "10,20,10,10"
$btn.Add_Click({
 foreach ($k in $boxes.Keys) {
   if ($boxes[$k].IsChecked) {
     powershell -File install_modules.ps1 $k
   }
 }
 [System.Windows.MessageBox]::Show("Installation completed!","v1.0")
})

$stack.Children.Add($btn)
$window.Content = $stack
$window.ShowDialog()
