@echo off

rem console
set console=PayrollConsole
if not "%PayrollConsole%" == "" set console=%PayrollConsole%

call %console% TenantDelete CaseDefPayroll /trydelete
call %console% PayrollImport Payroll.json %1
call %console% ChangePassword CaseDefPayroll lucy.smith@foo.com @ayroll3ngine
