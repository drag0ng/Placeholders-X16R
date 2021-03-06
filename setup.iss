; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Placeholders"
#define MyAppVersion "2.0.28.1"
#define MyAppPublisher "placeh.io"
#define MyAppURL "https://www.placeh.io"
#define MyAppExeName "placeh-qt.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2FC5017F-DA83-446A-AED0-AE7A9E9D109B}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=setup-placeh-rc2.0.28.1
Compression=lzma
SolidCompression=yes

[InstallDelete]
Type: Files; Name:{userappdata}\placeh\chainstate
Type: Files; Name:{userappdata}\placeh\blocks
Type: Files; Name:{userappdata}\placeh\database
Type: Files; Name:{userappdata}\placeh\peers.dat
Type: Files; Name:{userappdata}\placeh\banlist.dat
Type: Files; Name:{userappdata}\placeh\debug.log
Type: Files; Name:{userappdata}\placeh\placeh.conf

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\git\repo\Placeholders-X16R\src\qt\placeh-qt.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\repo\Placeholders-X16R\placeh.conf"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\repo\Placeholders-X16R\placeh.conf"; DestDir: "{userappdata}\placeh\"; Flags: ignoreversion
Source: "C:\git\repo\Placeholders-X16R\src\placeh-cli.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\repo\Placeholders-X16R\src\placehd.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\git\repo\Placeholders-X16R\README.md"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

