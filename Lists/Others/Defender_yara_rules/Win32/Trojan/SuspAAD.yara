rule Trojan_Win32_SuspAAD_A_2147954135_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspAAD.A"
        threat_id = "2147954135"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspAAD"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "nltest.exe /dclist:" ascii //weight: 1
        $x_1_2 = "nltest.exe /domain_trusts /all_trusts" ascii //weight: 1
        $x_1_3 = "net.exe localgroup administrators" ascii //weight: 1
        $x_1_4 = "whoami /groups" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_SuspAAD_B_2147954136_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspAAD.B"
        threat_id = "2147954136"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspAAD"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell.exe -c" ascii //weight: 1
        $x_1_2 = "Get-WMIObject Win32_NTDomain" ascii //weight: 1
        $x_1_3 = "findstr DomainController" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_SuspAAD_C_2147954137_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspAAD.C"
        threat_id = "2147954137"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspAAD"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "ipconfig.exe /all" ascii //weight: 1
        $x_1_2 = "net.exe user" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

rule Trojan_Win32_SuspAAD_D_2147954138_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspAAD.D"
        threat_id = "2147954138"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspAAD"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "cmd.exe /c" ascii //weight: 1
        $x_1_2 = "AppData\\Local\\Temp" ascii //weight: 1
        $x_1_3 = "qbotDiscovery.bat" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_SuspAAD_E_2147954139_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SuspAAD.E"
        threat_id = "2147954139"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SuspAAD"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "arp -a" ascii //weight: 1
        $x_1_2 = "ipconfig.exe /all" ascii //weight: 1
        $x_1_3 = "getmac.exe" ascii //weight: 1
        $x_1_4 = "route PRINT" ascii //weight: 1
        $x_1_5 = "netstat -nao" ascii //weight: 1
        $x_1_6 = "net.exe localgroup" ascii //weight: 1
        $x_1_7 = "whoami.exe /all" ascii //weight: 1
        $x_1_8 = "netsh.exe advfirewall firewall show rule name=all" ascii //weight: 1
        $x_1_9 = "tasklist.exe /svc" ascii //weight: 1
        $x_1_10 = "powershell.exe -enc" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (1 of ($x*))
}

