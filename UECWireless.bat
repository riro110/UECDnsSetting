@echo off
setlocal enabledelayedexpansion
    setx HTTP_PROXY proxy.uec.ac.jp:8080
    setx HTTPS_PROXY proxy.uec.ac.jp:8080
    netsh interface ipv4 set add name="Wi-Fi" source=dhcp
    netsh interface ipv4 set dnsservers name="Wi-Fi" source=static addr="130.153.8.60" register=non validate=no
    netsh interface ipv4 add dnsservers name="Wi-Fi" addr="130.153.8.40" index=2 validate=no
    REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f