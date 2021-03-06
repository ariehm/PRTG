---
external help file: PRTG-help.xml
Module Name: PRTG
online version:
schema: 2.0.0
---

# Get-PRTGDevicesInGroup

## SYNOPSIS
{{Returns all devices (limiited to 2,500) listed in PRTG for a given group via the Group ID.}}

## SYNTAX

```
Get-PRTGDevicesInGroup [-GroupID <String>] [-Count <String>] [<CommonParameters>]
```

## DESCRIPTION
{{Returns all devices (limiited to 2,500) listed in PRTG for a given group via the Group ID.  The default group is the root group (ID=0).  It is important to remember that in PRTG a group can also be a device, probe, etc.}}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{ Get-PRTGDevicesInGroup -GroupID "8001"}}
```

{{ By specifying the starting ID of "8001", we will get all PRTG devices that belong to that group's ID. }}

## PARAMETERS

### -Count
{{Number of returned results.  Maximum is 2500, which is the default.}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -GroupID
{{The ID of the group to query the sensors of.}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None
## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
