Add-Type -AssemblyName System.Windows.Forms
# Create the main GUI
$mainForm = New-Object System.Windows.Forms.Form
$mainForm.Text = "Main Form"
$mainForm.Width = 400
$mainForm.Height = 300

# Create the settings button
$settingsButton = New-Object System.Windows.Forms.Button
$settingsButton.Location = New-Object System.Drawing.Point(150, 100)
$settingsButton.Size = New-Object System.Drawing.Size(100, 30)
$settingsButton.Text = "Settings"
$settingsButton.Add_Click({
    # Create the settings GUI
    $settingsForm = New-Object System.Windows.Forms.Form
    $settingsForm.Text = "Settings Form"
    $settingsForm.Width = 300
    $settingsForm.Height = 200
    
    # Add 5 tick boxes to the settings form
        $checkBox1 = New-Object System.Windows.Forms.CheckBox
        $checkBox1.Location = New-Object System.Drawing.Point(10, 10)
        $checkBox1.Size = New-Object System.Drawing.Size(100, 20)
        $checkBox1.Text = "Option 1"
        $settingsForm.Controls.Add($checkBox1)
    
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
})

Function ButtonTest{
    $textBox1.text = "Saved Bitch"
}

# Add the settings button to the main GUI
$mainForm.Controls.Add($settingsButton)

# Show the main GUI
$mainForm.ShowDialog()


