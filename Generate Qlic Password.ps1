$version = "1.1"
$BuildType = "Dev"
############################################
#                GUI Code                  #
############################################
Add-Type -AssemblyName System.Windows.Forms
#Add-Type -AssemblyName System.Drawing
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = New-Object System.Drawing.Point(680,240)
$Form.text                       = "Qlic Password Generator V$version $BuildType"
$Form.TopMost                    = $false
$Form.BringToFront()

$GenerateBTN                     = New-Object system.Windows.Forms.Button
$GenerateBTN.text                = "Generate Password"
$GenerateBTN.width               = 310
$GenerateBTN.height              = 30
$GenerateBTN.location            = New-Object System.Drawing.Point(10,110)
$GenerateBTN.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$GenerateSafeNoteBTN                     = New-Object system.Windows.Forms.Button
$GenerateSafeNoteBTN.text                = "Generate SafeNote"
$GenerateSafeNoteBTN.width               = 310
$GenerateSafeNoteBTN.height              = 30
$GenerateSafeNoteBTN.location            = New-Object System.Drawing.Point(340,110)
$GenerateSafeNoteBTN.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$GenerateEmailBTN                     = New-Object system.Windows.Forms.Button
$GenerateEmailBTN.text                = "Generate Email"
$GenerateEmailBTN.width               = 310
$GenerateEmailBTN.height              = 30
$GenerateEmailBTN.location            = New-Object System.Drawing.Point(340,160)
$GenerateEmailBTN.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$SettingsBTN                     = New-Object system.Windows.Forms.Button
$SettingsBTN.text                = "Settings"
$SettingsBTN.width               = 310
$SettingsBTN.height              = 30
$SettingsBTN.location            = New-Object System.Drawing.Point(340,210)
$SettingsBTN.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$PasswordLBL                        = New-Object system.Windows.Forms.Label
$PasswordLBL.text                   = "Password:"
$PasswordLBL.AutoSize               = $true
$PasswordLBL.width                  = 25
$PasswordLBL.height                 = 10
$PasswordLBL.location               = New-Object System.Drawing.Point(12,20)
$PasswordLBL.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$SafeNoteLBL                        = New-Object system.Windows.Forms.Label
$SafeNoteLBL.text                   = "Link:"
$SafeNoteLBL.AutoSize               = $true
$SafeNoteLBL.width                  = 25
$SafeNoteLBL.height                 = 10
$SafeNoteLBL.location               = New-Object System.Drawing.Point(12,70)
$SafeNoteLBL.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$SafeNoteTXT                     = New-Object system.Windows.Forms.TextBox
$SafeNoteTXT.multiline           = $false
$SafeNoteTXT.text                = ""
$SafeNoteTXT.width               = 514
$SafeNoteTXT.height              = 21
$SafeNoteTXT.enabled             = $true
$SafeNoteTXT.ReadOnly            = $true
$SafeNoteTXT.location            = New-Object System.Drawing.Point(138,70)
$SafeNoteTXT.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$PasswordTXT                     = New-Object system.Windows.Forms.TextBox
$PasswordTXT.multiline           = $false
$PasswordTXT.text                = "$fullpass"
$PasswordTXT.width               = 514
$PasswordTXT.height              = 21
$PasswordTXT.enabled             = $true
$PasswordTXT.ReadOnly            = $true
$PasswordTXT.location            = New-Object System.Drawing.Point(138,20)
$PasswordTXT.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$ReadCountTXT                     = New-Object system.Windows.Forms.TextBox
$ReadCountTXT.multiline           = $false
$ReadCountTXT.text                = "3"
$ReadCountTXT.width               = 60
$ReadCountTXT.height              = 20
$ReadCountTXT.enabled             = $true
$ReadCountTXT.ReadOnly            = $false
$ReadCountTXT.location            = New-Object System.Drawing.Point(160,160)
$ReadCountTXT.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$ReadCountTXT.TextAlign              = "Center" 

$LifetimeTXT                     = New-Object system.Windows.Forms.TextBox
$LifetimeTXT.multiline           = $false
$LifetimeTXT.text                = "73"
$LifetimeTXT.width               = 60
$LifetimeTXT.height              = 20
$LifetimeTXT.enabled             = $true
$LifetimeTXT.ReadOnly            = $false
$LifetimeTXT.location            = New-Object System.Drawing.Point(160,200)
$LifetimeTXT.Font                = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))
$LifetimeTXT.TextAlign              = "Center" 

$ReadCountLBL                        = New-Object system.Windows.Forms.Label
$ReadCountLBL.text                   = "Read Count:"
$ReadCountLBL.AutoSize               = $true
$ReadCountLBL.width                  = 25
$ReadCountLBL.height                 = 10
$ReadCountLBL.location               = New-Object System.Drawing.Point(12,160)
$ReadCountLBL.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

$LifetimeLBL                        = New-Object system.Windows.Forms.Label
$LifetimeLBL.text                   = "Lifetime:"
$LifetimeLBL.AutoSize               = $true
$LifetimeLBL.width                  = 25
$LifetimeLBL.height                 = 10
$LifetimeLBL.location               = New-Object System.Drawing.Point(12,200)
$LifetimeLBL.Font                   = New-Object System.Drawing.Font('Microsoft Sans Serif',16,[System.Drawing.FontStyle]([System.Drawing.FontStyle]::Bold))

#############
# Tool Tips #
#############
$LifetimeTT                        = New-Object System.Windows.Forms.ToolTip
$LifetimeTT.SetToolTip($LifetimeLBL, "Lifetime is set in hours. `nMax lifetime is 366 Hours.")

$ReadCountTT                       = New-Object System.Windows.Forms.ToolTip
$ReadCountTT.SetToolTip($ReadCountLBL, "Read count is the maximum times the SafeNote can be opened `nMax Read count is 10")

$PasswordTT                       = New-Object System.Windows.Forms.ToolTip
$PasswordTT.SetToolTip($PasswordLBL, "Password is generated by interfacing with the Dinopass API `nPassword uses Dinopass Simple and Strong.")

$SafeNoteTT                       = New-Object System.Windows.Forms.ToolTip
$SafeNoteTT.SetToolTip($SafeNoteLBL, "SafeNote link is generated by interfacing with the SafeNote API `nSafeNote options based on setting below.")

$Form.controls.AddRange(@($GenerateBTN,$PasswordLBL,$PasswordTXT,$GenerateSafeNoteBTN,$SafeNoteLBL,$SafeNoteTXT,$GenerateEmailBTN,$ReadCountTXT,$LifetimeTXT,$ReadCountLBL,$LifetimeLBL,$SettingsBTN))

$GenerateBTN.Add_Click({ GenerateQlicPassword })
$GenerateSafeNoteBTN.Add_Click({ GenerateSafeNote})
$GenerateEmailBTN.Add_Click({ NewOutlookEmail})
$SettingsBTN.Add_Click({ SettingsMenu})


$ReadCountTXT.Add_TextChanged({
    if ($this.Text -match '[^0-9]') {
        $cursorPos = $this.SelectionStart
        $this.Text = $this.Text -replace '[^0-9]',''
        # move the cursor to the end of the text:
        # $this.SelectionStart = $this.Text.Length

        # or leave the cursor where it was before the replace
        $this.SelectionStart = $cursorPos - 1
        $this.SelectionLength = 0
    }
    if($this.Text -gt 10) {
        $cursorPos = $this.SelectionStart
        $this.Text = 10
        $this.SelectionStart = $cursorPos
        $this.SelectionLength = 0
    }
})

$LifetimeTXT.Add_TextChanged({
    if ($this.Text -match '[^0-9]') {
        $cursorPos = $this.SelectionStart
        $this.Text = $this.Text -replace '[^0-9]',''
        # move the cursor to the end of the text:
        # $this.SelectionStart = $this.Text.Length

        # or leave the cursor where it was before the replace
        $this.SelectionStart = $cursorPos - 1
        $this.SelectionLength = 0
    }
    if($this.Text -gt 366) {
        $cursorPos = $this.SelectionStart
        $this.Text = 366
        $this.SelectionStart = $cursorPos
        $this.SelectionLength = 0
    }
})

$EnableHistCHK.Add_CheckStateChanged({EnableHistory})

####################
# Config File Code #
####################
$ScriptLocation = Split-Path -Parent $MyInvocation.MyCommand.Path
$configlocation = "$ScriptLocation\Settings\config.conf"
$ConfigDefaults = "Enable_History=`nEnable_Saving_History="

If(Test-Path $configlocation){
    Write-Host "Config File Found!" -f Green       
}Else {
    Write-Host "Config File Not Found" -f Yellow
    Write-Host "Attempting to create default config file" -f Yellow
    Try{
    New-Item -ItemType File -Path $configlocation -Value $ConfigDefaults -Force
    }Catch{

    }
}

#Import Config File
Foreach ($i in $(Get-Content $configlocation)){
    Set-Variable -Name $i.split("=")[0] -Value $i.split("=",2)[1]
}

Write-Host "Enable History: $Enable_History`nEnable Saving History: $Enable_Saving_History"



###################################
#           Main Code             #
###################################

Function ButtonTest{
    $textBox1.text = "Saved Bitch"
}

function GenerateQlicPassword {     
    Do{
        $simplepass = Invoke-RestMethod -uri "http://www.dinopass.com/password/simple"
        $strongpass = Invoke-RestMethod -uri "http://www.dinopass.com/password/strong"
        $script:fullpass = $simplepass+$strongpass
    }While($script:fullpass -notmatch '[^a-z0-9A-Z]+')
    $PasswordTXT.text                = "$script:fullpass"
    $SafeNoteTXT.text                = ''
    }

Function GenerateSafeNote{
    if($null -eq $ReadCountTXT){
        $script:ReadCount = 3
    } else {$script:ReadCount = $ReadCountTXT.Text}

    if($null -eq $LifetimeTXT){
        $script:Lifetime = 73
    } else {$script:Lifetime = $LifetimeTXT.Text}

    $RequestBody = @{
        note = "$script:fullpass"
        lifetime = "$script:Lifetime"
        read_count = "$script:ReadCount"
    }
    $JsonBody = $RequestBody | ConvertTo-Json
    $RequestParams = @{
        Method = "POST"
        Uri = "https://safenote.co/api/note"
        Body = $JsonBody
        ContentType = "application/json"
    }
    $JsonBody
    $RequestParams
    $SafenoteRequest = Invoke-RestMethod @RequestParams
    $SafeNoteLink = $SafenoteRequest.link
    $SafeNoteTXT.text                = "$SafeNoteLink"
}

Function EnableHistory{
    If($EnableHistCHK.Checked){
        ((Get-Content -Path $configlocation -Raw) -replace '"Enable_History=" value="False"','"Enable_History" value="True"') | Set-Content -Path $configlocation
    #$ConfFileContent = switch -regex -File $configlocation {
    #    '\bEnable_History\b' {$_ -replace "True", "False"}
    #    default{$_}
    #}
    #$ConfFileContent | Set-Content -Path $configlocation
    }Else{
        ((Get-Content -Path $configlocation -Raw) -replace '"Enable_History=" value="True"','"Enable_History" value="False"') | Set-Content -Path $configlocation
        #    $ConfFileContent = switch -regex -File $configlocation {
        #'\bEnable_History\b' {$_ -replace "False", "True"}
        #default{$_}
    }
    #$ConfFileContent | Set-Content -Path $configlocation
}

Function SettingsMenu{

    
    # Create the settings GUI
    $settingsForm = New-Object System.Windows.Forms.Form
    $settingsForm.Text = "Settings Form"
    $settingsForm.Width = 300
    $settingsForm.Height = 200
    
    # Add 5 tick boxes to the settings form
        $EnableHistCHK = New-Object System.Windows.Forms.CheckBox
        $EnableHistCHK.Location = New-Object System.Drawing.Point(10, 10)
        $EnableHistCHK.Size = New-Object System.Drawing.Size(100, 20)
        $EnableHistCHK.Text = "Option 1"
        $settingsForm.Controls.Add($EnableHistCHK)
    
    # Add 2 text boxes to the settings form
    $textBox1 = New-Object System.Windows.Forms.TextBox
    $textBox1.Location = New-Object System.Drawing.Point(10, 150)
    $textBox1.Size = New-Object System.Drawing.Size(100, 20)
    $settingsForm.Controls.Add($textBox1)
    
    $textBox2 = New-Object System.Windows.Forms.TextBox
    $textBox2.Location = New-Object System.Drawing.Point(120, 150)
    $textBox2.Size = New-Object System.Drawing.Size(100, 20)
    $settingsForm.Controls.Add($textBox2)
    
    # Add 2 buttons to the settings form
    $button1 = New-Object System.Windows.Forms.Button
    $button1.Location = New-Object System.Drawing.Point(10, 180)
    $button1.Size = New-Object System.Drawing.Size(100, 30)
    $button1.Text = "Save"
    $button1.Add_Click({ ButtonTest})
    $settingsForm.Controls.Add($button1)
    
    $button2 = New-Object System.Windows.Forms.Button
    $button2.Location = New-Object System.Drawing.Point(120, 180)
    $button2.Size = New-Object System.Drawing.Size(100, 30)
    $button2.Text = "Cancel"
    $button2.Add_Click({ $settingsForm.Close() })
    $settingsForm.Controls.Add($button2)
    
    $settingsForm.ShowDialog()
}

Function NewOutlookEmail{
    $outlook = New-Object -ComObject Outlook.Application
    $mail = $outlook.CreateItem(0)
    $mail.CC = "support@qlicit.com"
    $mail.Body = "Hi {USER},`nPlease see below for the user's credentials: `n$SafeNoteLink"
    $mail.display()
    $inspector = $mail.GetInspector
    $inspector.Activate()
 }
[void]$Form.ShowDialog()