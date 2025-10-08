rule Trojan_Win32_Fugrafa_RPY_2147888910_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fugrafa.RPY!MTB"
        threat_id = "2147888910"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fugrafa"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "1"
        strings_accuracy = "High"
    strings:
        $x_1_1 = {99 f7 f9 6a 00 89 85 ac fd ff ff 8b c3 99 f7 fe 0f af 8d ac fd ff ff 89 85 b0 fd ff ff 0f af b5 b0 fd ff ff 2b f9 8b c7 99 2b de 2b c2 d1 f8 89 85 a0 fd ff ff 8b c3 99 2b c2 d1 f8}  //weight: 1, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Fugrafa_GN_2147896247_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fugrafa.GN!MTB"
        threat_id = "2147896247"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fugrafa"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_4_1 = {8a 04 0e 32 04 1a 43 88 01 8b 45 e8 3b df 72 ed}  //weight: 4, accuracy: High
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Fugrafa_KAA_2147900776_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fugrafa.KAA!MTB"
        threat_id = "2147900776"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fugrafa"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "QbvThecHeJ" ascii //weight: 1
        $x_1_2 = "d5BlessedYisn.tfspirit4she.dj" ascii //weight: 1
        $x_1_3 = "dry.fitbrought" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win32_Fugrafa_SX_2147954518_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win32/Fugrafa.SX!MTB"
        threat_id = "2147954518"
        type = "Trojan"
        platform = "Win32: Windows 32-bit platform"
        family = "Fugrafa"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "5"
        strings_accuracy = "Low"
    strings:
        $x_3_1 = {89 11 0f b6 85 6b ff ff ff 03 45 a4 03 85 50 ff ff ff 0f b7 4d 88 03 c1 83 c8 ?? 88 85 3f ff ff ff}  //weight: 3, accuracy: Low
        $x_2_2 = {2b f2 0b f1 a1 ?? ?? ?? ?? 66 c1 fe ?? 66 c1 e6 ?? 03 ce 8b f8 c0 e9 ?? c0 e1 ?? 97 8b 5d bc 53 ff d0}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

