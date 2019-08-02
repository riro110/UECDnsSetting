@echo off
setlocal enabledelayedexpansion
    setx HTTP_PROXY ""
    setx HTTPS_PROXY ""
    netsh interface ipv4 set add name="Wi-Fi" source=dhcp
    netsh interface ipv4 set dnsservers name="Wi-Fi" source=dhcp
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f