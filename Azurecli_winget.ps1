$msiFilePath = "azure-cli.msi"
Invoke-WebRequest https://aka.ms/installazurecliwindows -OutFile $msiFilePath
             
$MSIArguments = @(
    "/i"
    ('"{0}"' -f $msiFilePath)
    "/qn"
    "/norestart"
)               
Start-Process "msiexec.exe" -ArgumentList $MSIArguments -Wait -NoNewWindow
Remove-Item -Path $msiFilePath  -Force
