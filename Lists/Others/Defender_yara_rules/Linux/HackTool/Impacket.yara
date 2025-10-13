rule HackTool_Linux_Impacket_A_2147765165_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Linux/Impacket.A"
        threat_id = "2147765165"
        type = "HackTool"
        platform = "Linux: Linux platform"
        family = "Impacket"
        severity = "High"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "56"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "python" wide //weight: 1
        $x_5_2 = "atexec" wide //weight: 5
        $x_5_3 = "dcomexec" wide //weight: 5
        $x_5_4 = "smbexec" wide //weight: 5
        $x_5_5 = "wmiexec" wide //weight: 5
        $x_5_6 = "psexec" wide //weight: 5
        $x_50_7 = "-hashes " wide //weight: 50
    condition:
        (filesize < 20MB) and
        (
            ((1 of ($x_50_*) and 1 of ($x_5_*) and 1 of ($x_1_*))) or
            ((1 of ($x_50_*) and 2 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule HackTool_Linux_Impacket_C_2147765342_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Linux/Impacket.C"
        threat_id = "2147765342"
        type = "HackTool"
        platform = "Linux: Linux platform"
        family = "Impacket"
        severity = "High"
        signature_type = "SIGNATURE_TYPE_CMDHSTR_EXT"
        threshold = "55"
        strings_accuracy = "High"
    strings:
        $x_50_1 = "python" wide //weight: 50
        $x_5_2 = "atexec.py " wide //weight: 5
        $x_5_3 = "dcomexec.py " wide //weight: 5
        $x_5_4 = "wmiexec.py " wide //weight: 5
        $x_5_5 = "smbexec.py " wide //weight: 5
        $x_5_6 = "psexec.py " wide //weight: 5
        $x_5_7 = "smbclient.py " wide //weight: 5
        $x_5_8 = "rpcdump.py " wide //weight: 5
        $n_100_9 = "yum " wide //weight: -100
        $n_100_10 = {67 00 72 00 65 00 70 00 20 00 90 00 01 00 ff 00 2f 00 6c 00 69 00 62 00 2f 00 70 00 79 00 74 00 68 00 6f 00 6e 00 90 00 01 00 10 00 2f 00 73 00 69 00 74 00 65 00 2d 00 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 73 00 2f 00 90 00 01 00 ff 00 65 00 78 00 65 00 63 00 2e 00 70 00 79 00}  //weight: -100, accuracy: High
        $n_100_11 = {66 00 69 00 6e 00 64 00 20 00 90 00 01 00 ff 00 2f 00 6c 00 69 00 62 00 2f 00 70 00 79 00 74 00 68 00 6f 00 6e 00 90 00 01 00 10 00 2f 00 73 00 69 00 74 00 65 00 2d 00 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 73 00 2f 00 90 00 01 00 ff 00 65 00 78 00 65 00 63 00 2e 00 70 00 79 00}  //weight: -100, accuracy: High
        $n_100_12 = {6c 00 73 00 20 00 90 00 01 00 ff 00 2f 00 6c 00 69 00 62 00 2f 00 70 00 79 00 74 00 68 00 6f 00 6e 00 90 00 01 00 10 00 2f 00 73 00 69 00 74 00 65 00 2d 00 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 73 00 2f 00 90 00 01 00 ff 00 65 00 78 00 65 00 63 00 2e 00 70 00 79 00}  //weight: -100, accuracy: High
        $n_100_13 = {73 00 74 00 61 00 74 00 20 00 90 00 01 00 ff 00 2f 00 6c 00 69 00 62 00 2f 00 70 00 79 00 74 00 68 00 6f 00 6e 00 90 00 01 00 10 00 2f 00 73 00 69 00 74 00 65 00 2d 00 70 00 61 00 63 00 6b 00 61 00 67 00 65 00 73 00 2f 00 90 00 01 00 ff 00 65 00 78 00 65 00 63 00 2e 00 70 00 79 00}  //weight: -100, accuracy: High
    condition:
        (filesize < 20MB) and
        (not (any of ($n*))) and
        (
            ((1 of ($x_50_*) and 1 of ($x_5_*))) or
            (all of ($x*))
        )
}

rule HackTool_Linux_Impacket_A_2147767697_0
{
    meta:
        author = "defender2yara"
        detection_name = "HackTool:Linux/Impacket.gen!A!!Impacket.gen!A"
        threat_id = "2147767697"
        type = "HackTool"
        platform = "Linux: Linux platform"
        family = "Impacket"
        severity = "High"
        info = "gen: malware that is detected using a generic signature"
        info = "Impacket: an internal category used to refer to some threats"
        info = "gen: malware that is detected using a generic signature"
        info = "A: an internal category used to refer to some threats"
        signature_type = "SIGNATURE_TYPE_ARHSTR_EXT"
        threshold = "4"
        strings_accuracy = "High"
    strings:
        $x_1_1 = "impacket.dcerpc.v5" ascii //weight: 1
        $x_1_2 = "impacket.smb" ascii //weight: 1
        $x_1_3 = "impacket.krb5" ascii //weight: 1
        $x_1_4 = "impacket.version" ascii //weight: 1
        $x_1_5 = "cme.conf" ascii //weight: 1
    condition:
        (filesize < 20MB) and
        (4 of ($x*))
}

