rule Trojan_Win64_ValleyRAT_PAHM_2147947493_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ValleyRAT.PAHM!MTB"
        threat_id = "2147947493"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ValleyRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {48 8d 4c 24 40 ?? ?? 48 8b 44 24 40 48 2b 44 24 30 0f 57 c9 f2 48 0f 2a c8 0f 57 c0 f2 48 0f 2a 44 24 38 f2 0f 5e c8 66 0f 2f f1}  //weight: 2, accuracy: Low
        $x_2_2 = {48 8b 44 24 48 48 2b 44 24 30 0f 57 c9 f2 48 0f 2a c8 0f 57 c0 f2 48 0f 2a 44 24 38 f2 0f 5e c8 f2 ?? ?? ?? ?? ?? ?? ?? f2 0f 2c c1 3d 88 13 00 00 7e}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ValleyRAT_TBK_2147948769_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ValleyRAT.TBK!MTB"
        threat_id = "2147948769"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ValleyRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "3"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "yehbe253" ascii //weight: 1
        $x_1_2 = "\\Telegram.lnk" ascii //weight: 1
        $x_1_3 = "C:\\Users\\Public\\Desktop\\QQ.lnk" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ValleyRAT_ABK_2147948770_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ValleyRAT.ABK!MTB"
        threat_id = "2147948770"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ValleyRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "6"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {0f 10 04 02 66 0f ef c1 0f 11 04 02 0f ?? 44 02 10 66 0f ef c1 0f 11 44 02 ?? 83 c0 ?? 3b c6 72}  //weight: 2, accuracy: Low
        $x_2_2 = {80 34 10 58 40 3b c1 72}  //weight: 2, accuracy: High
        $x_2_3 = "xyz/" ascii //weight: 2
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

rule Trojan_Win64_ValleyRAT_CBK_2147955196_0
{
    meta:
        author = "defender2yara"
        detection_name = "Trojan:Win64/ValleyRAT.CBK!MTB"
        threat_id = "2147955196"
        type = "Trojan"
        platform = "Win64: Windows 64-bit platform"
        family = "ValleyRAT"
        severity = "Critical"
        info = "MTB: Microsoft Threat Behavior"
        signature_type = "SIGNATURE_TYPE_PEHSTR_EXT"
        threshold = "4"
        strings_accuracy = "Low"
    strings:
        $x_2_1 = {89 d1 d3 e8 89 c1 48 8b 44 24 ?? 33 08 89 08 48 8b 44 24 ?? 48 83 c0 01 48 89 44 24}  //weight: 2, accuracy: Low
        $x_2_2 = {d3 e0 89 c0 48 31 c2 48 8b 44 24 ?? 8b 08 48 01 d1 89 08 48 8b 44 24 ?? 48 83 c0 ?? 48 89 44 24 ?? e9}  //weight: 2, accuracy: Low
    condition:
        (filesize < 20MB) and
        (all of ($x*))
}

