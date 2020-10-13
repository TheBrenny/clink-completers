@echo off
setlocal EnableDelayedExpansion

:: First run
if not exist .\.settings (
    echo First run detected!
    set /P "clink_dir=Enter your Clink installation directory: "
    call :norm "!clink_dir!\"
    set clink_dir=!_rv!
    echo !clink_dir!> .\.settings
) else (
    set /P "clink_dir=" < .\.settings
)

call :norm "%cd%\"
set _cd=!_rv!

:: Loop through em all and link em
for %%f in (*) do (
    set l=%%f
    if "!l:~-3!"=="lua" (
        if not exist "!clink_dir!!l!" (
            mklink "!clink_dir!!l!" "!_cd!!l!"
        ) else (
            echo Skipping "!l!" - already exists.
        )
    )
)

exit /b

:norm
    set _rv=%~f1
    exit /b