@ECHO off
TITLE InsideProvider
cls
color a


:MenuInicial
cls
ECHO.
ECHO    ---------------------------------------
ECHO    --       BACKUP BANCO DE DADOS       --
ECHO	   --	        INSIDEPROVIDER          -- 
ECHO    ---------------------------------------
ECHO.  
ECHO    [1] BACKUP
ECHO    [2] SAIR
ECHO.
set /p MenuInicial=
if '%MenuInicial%'=='1' goto MenuInicial_backup
if '%MenuInicial%'=='2' goto sair_MenuInicial
if not %MenuInicial%=="1,2" (
ECHO    Opcao [%MenuInicial%] invalida.
ECHO    Verifique o menu acima.

goto MenuInicial
)

:MenuInicial_backup
MKDIR C:\Backup_InsideProvider
cd C:\Backup_InsideProvider
ECHO %date:~6,4%.%date:~3,2%.%date:~0,2% - %time:~0,2%:%time:~-8,2%: BACKUP iniciado >> sgbd.log
ECHO Em execucao...
"c:\Program Files\PostgreSQL\14\bin\pg_dump.exe" -Fc -U postgres -d inside_provider_db -C -Fp -f  backup.bak >> sgbd.log
ren "C:\Backup_InsideProvider\backup.bak" "Backup_insideprovider_%date:~6,4%.%date:~3,2%.%date:~0,2%_%time:~0,2%%time:~-8,2%.bak" >> sgbd.log

ECHO %date:~6,4%.%date:~3,2%.%date:~0,2% - %time:~0,2%:%time:~-8,2%: BACKUP concluido >> sgbd.log
goto MenuInicial

