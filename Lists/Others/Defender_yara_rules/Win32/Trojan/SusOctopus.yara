rule Trojan_Win32_SusOctopus_A_2147954159_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/SusOctopus.A"
        threat_id = "2147954159"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "SusOctopus"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell.exe -c" ascii //weight: 1
        $x_1_2 = "Unblock-File" ascii //weight: 1
        $x_1_3 = "AppData\\Local\\Temp" ascii //weight: 1
        $x_1_4 = "octopusInfoGather.ps1" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

