@echo off
setlocal enabledelayedexpansion
    set netshresult=
        for /f "usebackq tokens=*" %%i in (`netsh wlan show interface`) do (
            set netshresult=!netshresult!^
        %%i)
    set ssid=UECWireless
    call set compare=%%netshresult:%ssid%=%%
    if not "%netshresult%" == "%compare%" goto CHANGE

    set ssid=AIA-Wireless
    call set compare=%%netshresult:%ssid%=%%
    if not "%netshresult%" == "%compare%" goto CHANGE

    set ssid=other

    :CHANGE
    call %~dp0\%ssid%.bat
    :END

    netsh wlan refresh hostednetowrk key
endlocal
exit