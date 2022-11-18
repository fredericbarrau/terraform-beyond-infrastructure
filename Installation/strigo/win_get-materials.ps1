$DestDir = 'C:\Users\Administrator\Desktop'
$SlidesFileId='1Xmqn8NoORSK1HMvRt-5lI3YBs-KH-Nqy'
$WorkbookFileId='1zBNHOr-oj8Kf8IPVs2zCwmnPaWsr6PkV'
$WorkspacesFileId='1mGy8Es4me3hIhvwBmH0FJDtoVAf9id2A'

Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=$SlidesFileId" -OutFile "$DestDir\Zenika-training-template-Slides.pdf"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=$WorkbookFileId" -OutFile "$DestDir\Zenika-training-template-Workbook.pdf"
Invoke-WebRequest -Uri "https://drive.google.com/uc?export=download&id=$WorkspacesFileId" -OutFile "$DestDir\workspaces.zip"
Expand-Archive -Path "$DestDir\workspaces.zip" -DestinationPath $DestDir
