rule Trojan_Win32_QuasarRAT_A_2147893085_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/QuasarRAT.A!MTB"
        threat_id = "2147893085"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "QuasarRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {8b 45 f4 8b 44 85 d0 89 45 ec 8b 45 ec 89 04 24 e8 ?? ?? ?? ?? 89 45 e8 8d 45 cc 89 44 24 08 8b 45 e8 89 44 24 04 8b 45 ec 89 04 24 e8 ?? ?? ?? ?? 89 45 e4 83 7d e4}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_QuasarRAT_AYA_2147940213_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/QuasarRAT.AYA!MTB"
        threat_id = "2147940213"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "QuasarRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "141.98.7.51/stub/Shell.exe" ascii //weight: 2
        $x_1_2 = "XWORM NOT FIXED" ascii //weight: 1
        $x_1_3 = "powershell -inputformat none -outputformat none -NonInteractive -Command" ascii //weight: 1
        $x_1_4 = "Add-MpPreference -ExclusionPath C:\\Windows\\PowerShell" ascii //weight: 1
        $x_1_5 = "Injection completed!" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_QuasarRAT_DC_2147941678_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/QuasarRAT.DC!MTB"
        threat_id = "2147941678"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "QuasarRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Process already elevated." ascii //weight: 1
        $x_1_2 = "get_PotentiallyVulnerablePasswords" ascii //weight: 1
        $x_1_3 = "GetKeyloggerLogsDirectory" ascii //weight: 1
        $x_1_4 = "set_PotentiallyVulnerablePasswords" ascii //weight: 1
        $x_1_5 = "BQuasar.Client.Extensions." ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_QuasarRAT_SK_2147954282_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/QuasarRAT.SK!MTB"
        threat_id = "2147954282"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "QuasarRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {46 0f b6 4c 04 5c 4e 8d 14 00 41 83 e2 7f 45 31 ca 48 89 c1 83 e1 01 41 d3 e2 46 88 54 04 5c 48 83 f8 01 75 10}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

