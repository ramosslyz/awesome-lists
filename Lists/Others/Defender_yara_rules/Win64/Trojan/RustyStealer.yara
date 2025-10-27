rule Trojan_Win64_RustyStealer_A_2147912272_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.A!MTB"
        threat_id = "2147912272"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "2"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {29 c1 f7 d0 41 89 c7 41 21 cf 66 0f bc c0 0f b7 c0 48 c1 e0 05 48 89 fe 48 29 c6 48 8b 56 f0 4c 8b 46 f8}  //weight: 1, accuracy: High
        $x_1_2 = "encryptedPassword" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_ZX_2147913787_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.ZX!MTB"
        threat_id = "2147913787"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {45 89 e0 45 21 d8 42 33 3c 82 33 79 e8 45 89 e0 41 c1 e8 18 45 89 f1 41 c1 e9 10 45 21 d9 46 8b 3c 8e 47 33 3c 82 41 89 e8 41 c1 e8 08 45 21 d8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_GPXB_2147938495_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.GPXB!MTB"
        threat_id = "2147938495"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "7"
        strings_accuracy = "High"
    strings:
        $x_2_1 = "Prysmax Stealer Cookies" ascii //weight: 2
        $x_2_2 = "Windows DefenderC:\\Program Files\\Windows DefenderKasperskyC:\\Program Files (x86)\\Kaspersky LabAvast" ascii //weight: 2
        $x_1_3 = "LOCALAPPDATAsrc/modules/cookies.rs" ascii //weight: 1
        $x_1_4 = "chromeGoogle\\Chrome\\Application\\chrome.exeGoogle\\Chrome\\User Dataedge" ascii //weight: 1
        $x_1_5 = "schtasks/Delete/TN/Create/SC/RLHIGHEST/RUNT AUTHORITY\\SYSTEM/TR[CLIPPER]" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_RCB_2147938566_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.RCB!MTB"
        threat_id = "2147938566"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {49 39 d5 0f 83 fe 00 00 00 49 83 fd 40 0f 83 e8 00 00 00 42 32 34 28 42 88 b4 2c c0 01 00 00 eb ac}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_MMR_2147939052_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.MMR!MTB"
        threat_id = "2147939052"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "cmd/C96.9.125.200" ascii //weight: 1
        $x_1_2 = "Users\\Public\\Libraries\\systemhelper.exe" ascii //weight: 1
        $x_1_3 = "revshell.pdb" ascii //weight: 1
        $x_1_4 = "RustBacktraceMutex" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_SMW_2147941644_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.SMW!MTB"
        threat_id = "2147941644"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {4c 8b 44 11 08 4c 33 44 08 08 4c 89 84 0d 48 24 00 00 48 83 c1 08 48 83 f9 50 72 e4}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_IDK_2147948755_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.IDK!MTB"
        threat_id = "2147948755"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "Set-MpPreference -DisableRealtimeMonitoring" ascii //weight: 1
        $x_1_2 = "DontStopIfGoingOnBatteries" ascii //weight: 1
        $x_1_3 = "Telegram notification sent successfully" ascii //weight: 1
        $x_1_4 = "Payload execution failed" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_RustyStealer_GXL_2147956082_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/RustyStealer.GXL!MTB"
        threat_id = "2147956082"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "RustyStealer"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "discord_control.pdb" ascii //weight: 1
        $x_1_2 = "missionsL3B" ascii //weight: 1
        $x_1_3 = "reactionuespemosarenegylmodnarodsetybdet" ascii //weight: 1
        $x_1_4 = "idalert_system_mesrule_trigger" ascii //weight: 1
        $x_1_5 = "Asec-websocket-vesec-websocket-kebsocket-protocolsec" ascii //weight: 1
        $x_1_6 = "GetAdaptersAddresses" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

