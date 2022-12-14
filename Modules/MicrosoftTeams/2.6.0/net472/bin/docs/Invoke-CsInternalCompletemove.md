---
external help file:
Module Name: Microsoft.Teams.ConfigAPI.Cmdlets
online version: https://docs.microsoft.com/en-us/powershell/module/Teams/invoke-csinternalcompletemove
schema: 2.0.0
---

# Invoke-CsInternalCompletemove

## SYNOPSIS
Complete Move

## SYNTAX

### InternalExpanded (Default)
```
Invoke-CsInternalCompletemove -MajorVersion <String> -UserSipUri <String> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

### Internal
```
Invoke-CsInternalCompletemove -Body <ICompleteMoveRequestBody> [-PassThru] [-Confirm] [-WhatIf]
 [<CommonParameters>]
```

## DESCRIPTION
Complete Move

## EXAMPLES

### Example 1: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

### Example 2: {{ Add title here }}
```powershell
PS C:\> {{ Add code here }}

{{ Add output here }}
```

{{ Add description here }}

## PARAMETERS

### -Body
.
To construct, see NOTES section for BODY properties and create a hash table.

```yaml
Type: Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICompleteMoveRequestBody
Parameter Sets: Internal
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -MajorVersion
.

```yaml
Type: System.String
Parameter Sets: InternalExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -PassThru
Returns true when the command succeeds

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -UserSipUri
.

```yaml
Type: System.String
Parameter Sets: InternalExpanded
Aliases:

Required: True
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Confirm
Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: cf

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -WhatIf
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
Parameter Sets: (All)
Aliases: wi

Required: False
Position: Named
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICompleteMoveRequestBody

## OUTPUTS

### System.Boolean

## NOTES

ALIASES

COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.


BODY <ICompleteMoveRequestBody>: .
  - `MajorVersion <String>`: 
  - `UserSipUri <String>`: 

## RELATED LINKS

