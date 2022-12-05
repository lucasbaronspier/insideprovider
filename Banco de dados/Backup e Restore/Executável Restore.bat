@ECHO off
TITLE InsideProvider
cls
color a


:MenuInicial
cls
ECHO.
ECHO    ---------------------------------------
ECHO    --       RESTORE BANCO DE DADOS      --
ECHO	   --	        INSIDEPROVIDER          -- 
ECHO    ---------------------------------------
ECHO.  
ECHO    [1] RESTORE
ECHO    [2] SAIR
ECHO.
set /p MenuInicial=
if '%MenuInicial%'=='1' goto MenuInicial_restore
if '%MenuInicial%'=='2' goto sair_MenuInicial
if not %MenuInicial%=="1,2" (
ECHO    Opcao [%MenuInicial%] invalida.
ECHO    Verifique o menu acima.

goto MenuInicial
)

:MenuInicial_restore
cd C:\Backup_InsideProvider
cls
ECHO O nome da base restaurada deve ser "Backup.bak". >> sgbd.log
:Menu_restore
ECHO.
color a
ECHO    --------------------------------------------------------
ECHO    --          O NOME DO ARQUIVO DEVE SER MUDADO         --
ECHO    --               PARA "backup.bak"                    --
ECHO    --         O ARQUIVO DEVE ESTAR PRESENTE              --
ECHO    --           EM C:\Backup_InsideProvider              --
ECHO    --------------------------------------------------------
ECHO.  
ECHO    [1] PROSSEGUIR 
ECHO    [2] SAIR
ECHO.
set /p Menu_restore=
if '%Menu_restore%'=='1' goto Restore_prosseguir
if '%Menu_restore%'=='2' goto MenuInicial
:Restore_prosseguir
cd C:\Backup_InsideProvider
ECHO.
ECHO Em execucao o processo de restauracao...
ECHO.
ECHO %date:~6,4%.%date:~3,2%.%date:~0,2% - %time:~0,2%:%time:~-8,2%: RESTORE iniciado >> sgbd.log
ECHO Informe a senha para apagar a base de dados existente:
"c:\Program Files\PostgreSQL\14\bin\dropdb.exe" -U postgres inside_provider_db
ECHO.
ECHO Informe a senha para restaurar o backup...
"c:\Program Files\PostgreSQL\14\bin\psql.exe" -U postgres -d postgres < "backup.bak" >> sgbd.log
ECHO %date:~6,4%.%date:~3,2%.%date:~0,2% - %time:~0,2%:%time:~-8,2%: RESTORE concluido >> sgbd.log
ECHO %date:~6,4%.%date:~3,2%.%date:~0,2% - %time:~0,2%:%time:~-8,2%: Base restaurada >> sgbd.log

goto MenuInicial
