---
external help file: PRTG-help.xml
Module Name: PRTG
online version:
schema: 2.0.0
---

# Set-PRTGServer

## SYNOPSIS
{{Creates environment variables to store API authentication string and server location.}}

## SYNTAX

```
Set-PRTGServer [-username <Object>] -Hash <Object> -Server <Object> [<CommonParameters>]
```

## DESCRIPTION
{{Set-PRTGServer uses built-in environment variables to create authentication details for the PRTG Server.  The authentication string consists of some syntax as well as the username and password hash of an API user.  See PRTG documentation for more details on how to create these.  The server parameter is any FQDN, Computer Name, or IP Address of your PRTG server that you can use to access it.  Keep in mind that if you use something like the Computer Name then decide to move off network, you won't be able to make API calls to your server.}}

## EXAMPLES

### Example 1
```powershell
PS C:\> {{Set-PRTGServer}}
```

{{The only use for this cmdlet is to call it natively.  It has no parameters or other inputs/outputs.}}

## PARAMETERS

### -Hash
{{Fill Hash Description}}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -Server
{{Fill Server Description}}

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByPropertyName, ByValue)
Accept wildcard characters: False
```

### -username
{{Fill username Description}}

```yaml
Type: Object
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

### None
## NOTES

## RELATED LINKS
