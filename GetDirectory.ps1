$predir = "DIRECTORY THAT HOLDS THE FILES" #Sets the desired directory as a variable
$directory = Get-ChildItem $predir #Creates an object with all file names within the desired directory

foreach ($i in $directory){
    $tostring = $i.ToString() #Converts the filetype into a string
    $merged = "File " + "'" + $predir + $tostring + "'" #Adds the strings together
    Write-Host $merged #Shows the merged string in the terminal
    Add-Content -Path "PATH TO DESIRED OUTPUT TEXT FILE" -Value $merged #Adds the merged string as a new line in the chose output file
}

Read-Host -Prompt "Press Enter to exit" #Stops the terminal from closing until you press Enter
