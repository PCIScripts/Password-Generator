$version = "1.0"
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

$Form.controls.AddRange(@($GenerateBTN,$PasswordLBL,$PasswordTXT,$GenerateSafeNoteBTN,$SafeNoteLBL,$SafeNoteTXT,$GenerateEmailBTN,$ReadCountTXT,$LifetimeTXT,$ReadCountLBL,$LifetimeLBL))

$GenerateBTN.Add_Click({ GenerateQlicPassword })
$GenerateSafeNoteBTN.Add_Click({ GenerateSafeNote})
$GenerateEmailBTN.Add_Click({ NewOutlookEmail})



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

###################################
#           Main Code             #
###################################

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