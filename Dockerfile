FROM mcr.microsoft.com/windows/servercore:1809


SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]

ADD zips /windows/temp/

RUN mkdir C:\TDM-GCC

RUN Get-ChildItem C:\Windows\Temp\*.zip | %{Expand-Archive $_ -DestinationPath C:\TDM-GCC\ -ErrorAction SilentlyContinue }

RUN setx path '%path%;C:\TDM-GCC\bin'
