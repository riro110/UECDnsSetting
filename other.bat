@echo off
setlocal enabledelayedexpansion
    netsh interface ipv4 set add name="Wi-Fi" source=dhcp
    netsh interface ipv4 set dnsservers name="Wi-Fi" source=dhcp
    setx HTTP_PROXY ""
    setx HTTPS_PROXY ""