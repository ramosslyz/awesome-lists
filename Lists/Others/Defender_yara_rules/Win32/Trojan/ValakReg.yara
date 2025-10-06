rule Trojan_Win32_ValakReg_A_2147954081_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/ValakReg.A"
        threat_id = "2147954081"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "ValakReg"
        severity = "Critical"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "powershell.exe " ascii //weight: 1
        $x_1_2 = "New-Item -Path" ascii //weight: 1
        $x_1_3 = "HKCU:\\Software\\ApplicationContainer\\Appsw64\\c2server" ascii //weight: 1
        $x_1_4 = " -Value " ascii //weight: 1
        $x_1_5 = ".cab" ascii //weight: 1
        $x_1_6 = "-Force" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

