@echo off

rem console
set console=PayrollConsole
if not "%PayrollConsole%" == "" set console=%PayrollConsole%

call %console% TenantDelete StartTenant /trydelete
call %console% PayrollImport Basic.json
call %console% PayrollImport Insurance.json
call %console% PayrunEmployeeTest Insurance.Test.et.json /showall /wait
