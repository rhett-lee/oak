CD /d %~dp0
SET CURRENT_BAT_PATH=%~dp0

SET NIM_Duilib_Framework_SRC_PATH=%CURRENT_BAT_PATH%..\..\NIM_Duilib_Framework
SET NIM_Duilib_Framework_DEST_PATH=%CURRENT_BAT_PATH%..\third_party\NIM_Duilib_Framework

IF NOT EXIST "%NIM_Duilib_Framework_DEST_PATH%" (
    MD "%NIM_Duilib_Framework_DEST_PATH%" 
)

XCOPY /S /Y /EXCLUDE:exclude_files.txt "%NIM_Duilib_Framework_SRC_PATH%\base\*.h"          "%NIM_Duilib_Framework_DEST_PATH%\include\base\"
XCOPY /S /Y /EXCLUDE:exclude_files.txt "%NIM_Duilib_Framework_SRC_PATH%\duilib\*.h"        "%NIM_Duilib_Framework_DEST_PATH%\include\duilib\"
XCOPY /S /Y /EXCLUDE:exclude_files.txt "%NIM_Duilib_Framework_SRC_PATH%\ui_components\*.h" "%NIM_Duilib_Framework_DEST_PATH%\include\ui_components\"
XCOPY /S /Y /EXCLUDE:exclude_files.txt "%NIM_Duilib_Framework_SRC_PATH%\third_party\*.h"   "%NIM_Duilib_Framework_DEST_PATH%\include\third_party\"

XCOPY /S /Y "%NIM_Duilib_Framework_SRC_PATH%\libs\*.lib" "%NIM_Duilib_Framework_DEST_PATH%\libs\"
XCOPY /S /Y "%NIM_Duilib_Framework_SRC_PATH%\libs\*.pdb" "%NIM_Duilib_Framework_DEST_PATH%\libs\"

pause