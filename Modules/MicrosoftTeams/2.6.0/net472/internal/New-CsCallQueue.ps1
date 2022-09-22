
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create call queue.
POST Teams.VoiceApps/callqueues.
.Description
Create call queue.
POST Teams.VoiceApps/callqueues.
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}
.Example
PS C:\> {{ Add code here }}

{{ Add output here }}

.Inputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueRequest
.Outputs
Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueResponse
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

AGENT <IAgent[]>: Gets or sets the Call Queue's agents list.
  [ObjectId <String>]: 
  [OptIn <Boolean?>]: 

BODY <ICreateCallQueueRequest>: CallQueue creation request DTO class.
  [Agent <IAgent[]>]: Gets or sets the Call Queue's agents list.
    [ObjectId <String>]: 
    [OptIn <Boolean?>]: 
  [AgentAlertTime <Int32?>]: Gets or sets the number of seconds that a call can remain unanswered.
  [AllowOptOut <Boolean?>]: Gets or sets a value indicating whether to allow agent optout on CallQueue.
  [ConferenceMode <Boolean?>]: Gets or sets a value indicating whether to allow Conference Mode on CallQueue.
  [DistributionList <String[]>]: Gets or sets the Call Queue's Distribution Lists.
  [EnableOverflowSharedVoicemailTranscription <Boolean?>]: Gets or sets a value indicating if transcription should be turned on or not.
  [EnableResourceAccountsForObo <Boolean?>]: Gets or sets a value indicating whether to allow CQ+Chanined RA's as permissioned RA's.
  [EnableTimeoutSharedVoicemailTranscription <Boolean?>]: Gets or sets a value indicating if transcription should be turned on or not.
  [LanguageId <String>]: Gets or sets the language Id used for TTS.
  [MusicOnHoldAudioFileId <String>]: Gets or sets music on hold audio file id.
  [Name <String>]: Gets or sets The Call Queue's name.
  [OverflowAction <Int32?>]: Gets or sets the action to take when the overflow threshold is reached.
  [OverflowActionTarget <String>]: Gets or sets the target of the overflow action.
  [OverflowSharedVoicemailAudioFilePrompt <String>]: Gets or sets the audio file to be played when forwarding callers to shared voicemai.
  [OverflowSharedVoicemailTextToSpeechPrompt <String>]: Gets or sets the TTS to be played when forwarding callers to shared voicemail.
  [OverflowThreshold <Int32?>]: Gets or sets the number of simultaneous calls that can be in the queue at any one time.
  [PresenceAwareRouting <Boolean?>]: Gets or sets a value indicating whether to enable presence aware routing.
  [RoutingMethod <Int32?>]: Gets or sets the routing method for the  Call Queue.
  [ShouldOverwriteCallableChannelProperty <Boolean?>]: Gets or sets ShouldOverwriteCallableChannelProperty flag that indicates user intention to whether overwirte the current callableChannel property value on chat service or not.
  [ThreadId <String>]: Gets or sets teams channel thread id if user choose to sync CQ with a channel.
  [TimeoutAction <Int32?>]: Gets or sets the action to take if the timeout threshold is reached.
  [TimeoutActionTarget <String>]: Gets or sets the target of the timeout action.
  [TimeoutSharedVoicemailAudioFilePrompt <String>]: Gets or sets the audio file to be played when forwarding callers to shared voicemai.
  [TimeoutSharedVoicemailTextToSpeechPrompt <String>]: Gets or sets the TTS to be played when forwarding callers to shared voicemail.
  [TimeoutThreshold <Int32?>]: Gets or sets the number of minutes that a call can be in the queue before it times out.
  [UseDefaultMusicOnHold <Boolean?>]: Gets or sets a value indicating whether to use default music on hold audio file.
  [User <String[]>]: Gets or sets the Call Queue's Users.
  [WelcomeMusicAudioFileId <String>]: Gets or sets welcome music audio file id.
.Link
https://docs.microsoft.com/en-us/powershell/module/teams/new-cscallqueue
#>
function New-CsCallQueue {
[OutputType([Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueResponse])]
[CmdletBinding(DefaultParameterSetName='NewExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='New', Mandatory, ValueFromPipeline)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.ICreateCallQueueRequest]
    # CallQueue creation request DTO class.
    # To construct, see NOTES section for BODY properties and create a hash table.
    ${Body},

    [Parameter(ParameterSetName='NewExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Models.IAgent[]]
    # Gets or sets the Call Queue's agents list.
    # To construct, see NOTES section for AGENT properties and create a hash table.
    ${Agent},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the number of seconds that a call can remain unanswered.
    ${AgentAlertTime},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to allow agent optout on CallQueue.
    ${AllowOptOut},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to allow Conference Mode on CallQueue.
    ${ConferenceMode},

    [Parameter(ParameterSetName='NewExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # Gets or sets the Call Queue's Distribution Lists.
    ${DistributionList},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating if transcription should be turned on or not.
    ${EnableOverflowSharedVoicemailTranscription},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to allow CQ+Chanined RA's as permissioned RA's.
    ${EnableResourceAccountsForObo},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating if transcription should be turned on or not.
    ${EnableTimeoutSharedVoicemailTranscription},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the language Id used for TTS.
    ${LanguageId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets music on hold audio file id.
    ${MusicOnHoldAudioFileId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets The Call Queue's name.
    ${Name},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the action to take when the overflow threshold is reached.
    ${OverflowAction},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the target of the overflow action.
    ${OverflowActionTarget},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the audio file to be played when forwarding callers to shared voicemai.
    ${OverflowSharedVoicemailAudioFilePrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the TTS to be played when forwarding callers to shared voicemail.
    ${OverflowSharedVoicemailTextToSpeechPrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the number of simultaneous calls that can be in the queue at any one time.
    ${OverflowThreshold},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to enable presence aware routing.
    ${PresenceAwareRouting},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the routing method for the Call Queue.
    ${RoutingMethod},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets ShouldOverwriteCallableChannelProperty flag that indicates user intention to whether overwirte the current callableChannel property value on chat service or not.
    ${ShouldOverwriteCallableChannelProperty},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets teams channel thread id if user choose to sync CQ with a channel.
    ${ThreadId},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the action to take if the timeout threshold is reached.
    ${TimeoutAction},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the target of the timeout action.
    ${TimeoutActionTarget},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the audio file to be played when forwarding callers to shared voicemai.
    ${TimeoutSharedVoicemailAudioFilePrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets the TTS to be played when forwarding callers to shared voicemail.
    ${TimeoutSharedVoicemailTextToSpeechPrompt},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Int32]
    # Gets or sets the number of minutes that a call can be in the queue before it times out.
    ${TimeoutThreshold},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Gets or sets a value indicating whether to use default music on hold audio file.
    ${UseDefaultMusicOnHold},

    [Parameter(ParameterSetName='NewExpanded')]
    [AllowEmptyCollection()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String[]]
    # Gets or sets the Call Queue's Users.
    ${User},

    [Parameter(ParameterSetName='NewExpanded')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Body')]
    [System.String]
    # Gets or sets welcome music audio file id.
    ${WelcomeMusicAudioFileId},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Teams.ConfigAPI.Cmdlets.Generated.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            New = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsCallQueue_New';
            NewExpanded = 'Microsoft.Teams.ConfigAPI.Cmdlets.private\New-CsCallQueue_NewExpanded';
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}

# SIG # Begin signature block
# MIIjiQYJKoZIhvcNAQcCoIIjejCCI3YCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBOQxB0UCNMHGER
# kaotkjt1nku64hW8Yopmp8gh3SFsmKCCDXMwggXxMIID2aADAgECAhMzAAACGYwK
# n7IWKxDmAAAAAAIZMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjEwNDI5MTkxMjU1WhcNMjIwNDI4MTkxMjU1WjByMQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMRwwGgYDVQQDExNTa3lw
# ZSBTb2Z0d2FyZSBTYXJsMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
# nxMscK0w8ebaayvQhxPtLTkomfivSX4yNLmQJGXG+1yUKU4fmdQAhZm5mSIdFAEv
# sjAwCP3vUmh2N5R5TrAN/whfjGcDDlCYonKcrmuSaXxGuyjXKlELlRmPOaobqeo1
# 1Amcz6SRbNYBtKtRiP5ip2PfAvtJp7AvH0mZfGXKehE4C+5t8XYZ3K1JU3Tdb+3Z
# z+smovI8h/ZPe+uV2ORTxxa9kBLDvueJZbzKkn/WAIX/8rq/ywHtffSTXSueUmoe
# NJ0UCyoNBr90xtnozaCVknyRG8qWzHEZlc43FPNwIW6y8k1JSuspq+SML/HP7Fjv
# 7zcTLtM1HBBX/I9KxBJSBQIDAQABo4IBcjCCAW4wEwYDVR0lBAwwCgYIKwYBBQUH
# AwMwHQYDVR0OBBYEFAZqNYGuvWVnCVhV5aJBAvx4cJdwMFAGA1UdEQRJMEekRTBD
# MSkwJwYDVQQLEyBNaWNyb3NvZnQgT3BlcmF0aW9ucyBQdWVydG8gUmljbzEWMBQG
# A1UEBRMNMjMwMjU0KzQ2NDU2MjAfBgNVHSMEGDAWgBRIbmTlUAXTgqoXNzcitW2o
# ynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20v
# cGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3JsMGEGCCsG
# AQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDovL3d3dy5taWNyb3NvZnQuY29t
# L3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDExXzIwMTEtMDctMDguY3J0MAwG
# A1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIBABRKE3yDcJHa8xnyFn9Z+0m8
# vQLeUGC9933o78aSOWDkvcPFPczSqvw4cUmQnHPcRwDS1mwlYs5TmCdIS6Ij++Or
# uWxfgMdPRpveO6zT8rDWBL2sqCT/k5yCO75DVhT4kE/qEe81T4OY/Ejx3lZbBE1a
# z2k5dOL/ZWqNu8FdKSDmBZEeENOYy9UIyLf6coV2KLERB2IZ3W8U3z37fPA5nRMw
# +9sWWb98Gdm8exr4UwmnU0q8Y0KvJx/xwqOPShgiDjHsWev3fzsKSYzebkfBdLbw
# DZl9880mrGr03CfEWGDWa0tJui3LRh4csIuxWHkUrFw/R2N8baMDGPEUCh7dE+qf
# nuuMJ5tRUmnMOqyqj8dLXUZa+yxxpS91qde5asle0+WfzjLQ1D+T6ElhLBQU9LNh
# 5nhbD1+kJkVHFAU2tM3MXa2tgMVWFWQP4IqcQDWMW68M90VkGUrJ+t63oRO8HwbL
# 4IZJxG0wW/527ypSQTmpLSX6mM2vIyFHsO4zCvjDq8yfnDk25bpUNJbfOpqVkkWP
# UE+4bNIQbzcWgKgPIZDOka3pxq4vI05ns3tnvWS7TKiG+7ZYr5ZBSS6pr1Wykt0U
# aXxaUZuAWwikj2gvZAXR35f5bDg+36WoJTpQKNqzsY7dyL6SxkcZI8DcEKWEfbWd
# BX8q+w5hzEWqh7TrYJ93MIIHejCCBWKgAwIBAgIKYQ6Q0gAAAAAAAzANBgkqhkiG
# 9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAO
# BgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEy
# MDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5IDIw
# MTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEwOTA5WjB+MQswCQYDVQQGEwJV
# UzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UE
# ChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYDVQQDEx9NaWNyb3NvZnQgQ29k
# ZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKC
# AgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+laUKq4BjgaBEm6f8MMHt03a8YS
# 2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc6Whe0t+bU7IKLMOv2akrrnoJ
# r9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4Ddato88tt8zpcoRb0RrrgOGSs
# bmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+lD3v++MrWhAfTVYoonpy4BI6
# t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nkkDstrjNYxbc+/jLTswM9sbKv
# kjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6A4aN91/w0FK/jJSHvMAhdCVf
# GCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmdX4jiJV3TIUs+UsS1Vz8kA/DR
# elsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL5zmhD+kjSbwYuER8ReTBw3J6
# 4HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zdsGbiwZeBe+3W7UvnSSmnEyim
# p31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3T8HhhUSJxAlMxdSlQy90lfdu
# +HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS4NaIjAsCAwEAAaOCAe0wggHp
# MBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRIbmTlUAXTgqoXNzcitW2oynUC
# lTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYDVR0T
# AQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBDuRQFTuHqp8cx0SOJNDBaBgNV
# HR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9w
# cm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3JsMF4GCCsGAQUF
# BwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3Br
# aS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFfMDNfMjIuY3J0MIGfBgNVHSAE
# gZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEFBQcCARYzaHR0cDovL3d3dy5t
# aWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1hcnljcHMuaHRtMEAGCCsGAQUF
# BwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkAYwB5AF8AcwB0AGEAdABlAG0A
# ZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn8oalmOBUeRou09h0ZyKbC5YR
# 4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7v0epo/Np22O/IjWll11lhJB9
# i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0bpdS1HXeUOeLpZMlEPXh6I/MT
# faaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/KmtYSWMfCWluWpiW5IP0wI/z
# Rive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvyCInWH8MyGOLwxS3OW560STkK
# xgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBpmLJZiWhub6e3dMNABQamASoo
# PoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJihsMdYzaXht/a8/jyFqGaJ+HN
# pZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYbBL7fQccOKO7eZS/sl/ahXJbY
# ANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbSoqKfenoi+kiVH6v7RyOA9Z74
# v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sLgOppO6/8MO0ETI7f33VtY5E9
# 0Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtXcVZOSEXAQsmbdlsKgEhr/Xmf
# wb1tbWrJUnMTDXpQzTGCFWwwghVoAgEBMIGVMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTECEzMAAAIZjAqfshYrEOYAAAAAAhkwDQYJYIZIAWUDBAIBBQCg
# gaYwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwG
# CisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIHRh1n5z8JkcAiy6IN81WH6RAciF
# bY+fTnWkxhELkhLhMDoGCisGAQQBgjcCAQwxLDAqoAyACgBTAGsAeQBwAGWhGoAY
# aHR0cDovL3d3dy5taWNyb3NvZnQuY29tMA0GCSqGSIb3DQEBAQUABIIBAJUBiCTI
# qgpUcvNEPyukYj0gJ4ft1Lz2cHkYRv49D8iW8L/nSB5ndHscbkN3v/CEu9hLC3b/
# Dllh8R6aE2/HMXqy8DlVXwtO2p4xzgERtkLd9FP3a183hVGeGmWcZPpo4FTAjmMk
# 96EhUH0K/mO89j+10TxcSHKN2V//C5+KlfbavtE725BqgaGvYwaQe0qgDLQsxRxp
# IqHufeDPaaVT/Ebb6GD9qAPWeUM1UpHC/oEHtAQ2PnKYxy1RRnLQXMDVjjbROYy2
# 3jcbNZHGh0aCHqFLRss1SGIrg/z72x4DaViX+85LNwZMfslk4o+ufCed0sHZ+Gr2
# ub0cH1+juV326CGhghL+MIIS+gYKKwYBBAGCNwMDATGCEuowghLmBgkqhkiG9w0B
# BwKgghLXMIIS0wIBAzEPMA0GCWCGSAFlAwQCAQUAMIIBWQYLKoZIhvcNAQkQAQSg
# ggFIBIIBRDCCAUACAQEGCisGAQQBhFkKAwEwMTANBglghkgBZQMEAgEFAAQgP+Gh
# fUgdzpoOHRugSFw6aMDDPM3ztu7e0rKfDqj3EMQCBmFIrgQKrRgTMjAyMTA5MzAx
# NjMyNTkuMTMzWjAEgAIB9KCB2KSB1TCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0
# aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpGQzQxLTRCRDQt
# RDIyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaCCDk0w
# ggT5MIID4aADAgECAhMzAAABQCMZ1l7elSQxAAAAAAFAMA0GCSqGSIb3DQEBCwUA
# MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdS
# ZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNVBAMT
# HU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwMB4XDTIwMTAxNTE3MjgyNloX
# DTIyMDExMjE3MjgyNlowgdIxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5n
# dG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9y
# YXRpb24xLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJhdGlvbnMgTGlt
# aXRlZDEmMCQGA1UECxMdVGhhbGVzIFRTUyBFU046RkM0MS00QkQ0LUQyMjAxJTAj
# BgNVBAMTHE1pY3Jvc29mdCBUaW1lLVN0YW1wIFNlcnZpY2UwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQCufWszcerVL03TPxH5gqpm7bnKSTk6VPxOy7C1
# 0FbIMJEWgBKT18HqyIKiUWFcGHJ6PhzfIjA3RTIlYE5MCMe144hiN8KnHnf2tuAE
# jn8FMe0L6pwFPt+0+SdO1Cfz2U05yk/vR+5hVkuhCwOcuMbHG1b95V7BHlDQjWZZ
# B8nLnE596WTk5aPPdhXgcq2rIhHMll39HNxjzDqqbOhI2xgh2+WJPZ55BlvJhN0l
# CxGjMgpMwsIlQF9WOjDZ8kwO3MMH1cQ51+E9bO9Q5p1iCqqHSWyUBHs1X3QUWZmB
# lYBGsbyPtmdWcLkw5c5L80jnxLjzJyy6DSk3Y0YsuTZhaPELAgMBAAGjggEbMIIB
# FzAdBgNVHQ4EFgQUNUMcLiZ3RiCOjNKqdWz454QtDmcwHwYDVR0jBBgwFoAU1WM6
# XIoxkPNDe3xGG8UzaFqFbVUwVgYDVR0fBE8wTTBLoEmgR4ZFaHR0cDovL2NybC5t
# aWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVjdHMvTWljVGltU3RhUENBXzIwMTAt
# MDctMDEuY3JsMFoGCCsGAQUFBwEBBE4wTDBKBggrBgEFBQcwAoY+aHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNUaW1TdGFQQ0FfMjAxMC0wNy0w
# MS5jcnQwDAYDVR0TAQH/BAIwADATBgNVHSUEDDAKBggrBgEFBQcDCDANBgkqhkiG
# 9w0BAQsFAAOCAQEAYwxSraBC4IL3CvhiEhJ8/Khto1hXc6/hjBaxJ8jP+PXFo31O
# 8sAHYHE+LYK1FuBsFR/jyfTvJF5kifC7avy/Aug0bZO1jN7LTUNHKOOw2iIcX1S5
# EsXIpkKGQoLej2vQ7LbHRhiNSkPFUKFnmrlwB/DzzjA/SJRxicooafx4nSfCmvvO
# v9OW74c6NcNP0LvnhpLgpQU2bwPuLC69ZbNI5WXtcxZ27zYGedOYHuzY5x/cjhp0
# bN2LFDlnHFrfM4C8rOtX7QdxVAhjdJAn0/OMNGXMK+IxOHEDwVQhEvcWdiq9yFaQ
# ShnjDxLsWwZY2VctZDt8cxveXiCO54fI7inq1TCCBnEwggRZoAMCAQICCmEJgSoA
# AAAAAAIwDQYJKoZIhvcNAQELBQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpX
# YXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQg
# Q29ycG9yYXRpb24xMjAwBgNVBAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRl
# IEF1dGhvcml0eSAyMDEwMB4XDTEwMDcwMTIxMzY1NVoXDTI1MDcwMTIxNDY1NVow
# fDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1Jl
# ZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMd
# TWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIwMTAwggEiMA0GCSqGSIb3DQEBAQUA
# A4IBDwAwggEKAoIBAQCpHQ28dxGKOiDs/BOX9fp/aZRrdFQQ1aUKAIKF++18aEss
# X8XD5WHCdrc+Zitb8BVTJwQxH0EbGpUdzgkTjnxhMFmxMEQP8WCIhFRDDNdNuDgI
# s0Ldk6zWczBXJoKjRQ3Q6vVHgc2/JGAyWGBG8lhHhjKEHnRhZ5FfgVSxz5NMksHE
# pl3RYRNuKMYa+YaAu99h/EbBJx0kZxJyGiGKr0tkiVBisV39dx898Fd1rL2KQk1A
# UdEPnAY+Z3/1ZsADlkR+79BL/W7lmsqxqPJ6Kgox8NpOBpG2iAg16HgcsOmZzTzn
# L0S6p/TcZL2kAcEgCZN4zfy8wMlEXV4WnAEFTyJNAgMBAAGjggHmMIIB4jAQBgkr
# BgEEAYI3FQEEAwIBADAdBgNVHQ4EFgQU1WM6XIoxkPNDe3xGG8UzaFqFbVUwGQYJ
# KwYBBAGCNxQCBAweCgBTAHUAYgBDAEEwCwYDVR0PBAQDAgGGMA8GA1UdEwEB/wQF
# MAMBAf8wHwYDVR0jBBgwFoAU1fZWy4/oolxiaNE9lJBb186aGMQwVgYDVR0fBE8w
# TTBLoEmgR4ZFaHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9jcmwvcHJvZHVj
# dHMvTWljUm9vQ2VyQXV0XzIwMTAtMDYtMjMuY3JsMFoGCCsGAQUFBwEBBE4wTDBK
# BggrBgEFBQcwAoY+aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9N
# aWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcnQwgaAGA1UdIAEB/wSBlTCBkjCBjwYJ
# KwYBBAGCNy4DMIGBMD0GCCsGAQUFBwIBFjFodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vUEtJL2RvY3MvQ1BTL2RlZmF1bHQuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwA
# ZQBnAGEAbABfAFAAbwBsAGkAYwB5AF8AUwB0AGEAdABlAG0AZQBuAHQALiAdMA0G
# CSqGSIb3DQEBCwUAA4ICAQAH5ohRDeLG4Jg/gXEDPZ2joSFvs+umzPUxvs8F4qn+
# +ldtGTCzwsVmyWrf9efweL3HqJ4l4/m87WtUVwgrUYJEEvu5U4zM9GASinbMQEBB
# m9xcF/9c+V4XNZgkVkt070IQyK+/f8Z/8jd9Wj8c8pl5SpFSAK84Dxf1L3mBZdmp
# tWvkx872ynoAb0swRCQiPM/tA6WWj1kpvLb9BOFwnzJKJ/1Vry/+tuWOM7tiX5rb
# V0Dp8c6ZZpCM/2pif93FSguRJuI57BlKcWOdeyFtw5yjojz6f32WapB4pm3S4Zz5
# Hfw42JT0xqUKloakvZ4argRCg7i1gJsiOCC1JeVk7Pf0v35jWSUPei45V3aicaoG
# ig+JFrphpxHLmtgOR5qAxdDNp9DvfYPw4TtxCd9ddJgiCGHasFAeb73x4QDf5zEH
# pJM692VHeOj4qEir995yfmFrb3epgcunCaw5u+zGy9iCtHLNHfS4hQEegPsbiSpU
# ObJb2sgNVZl6h3M7COaYLeqN4DMuEin1wC9UJyH3yKxO2ii4sanblrKnQqLJzxlB
# TeCG+SqaoxFmMNO7dDJL32N79ZmKLxvHIa9Zta7cRDyXUHHXodLFVeNp3lfB0d4w
# wP3M5k37Db9dT+mdHhk4L7zPWAUu7w2gUDXa7wknHNWzfjUeCLraNtvTX4/edIhJ
# EqGCAtcwggJAAgEBMIIBAKGB2KSB1TCB0jELMAkGA1UEBhMCVVMxEzARBgNVBAgT
# Cldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29m
# dCBDb3Jwb3JhdGlvbjEtMCsGA1UECxMkTWljcm9zb2Z0IElyZWxhbmQgT3BlcmF0
# aW9ucyBMaW1pdGVkMSYwJAYDVQQLEx1UaGFsZXMgVFNTIEVTTjpGQzQxLTRCRDQt
# RDIyMDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUtU3RhbXAgU2VydmljZaIjCgEB
# MAcGBSsOAwIaAxUAQqXmHvITpjsyl+YykRtDOQlyUVOggYMwgYCkfjB8MQswCQYD
# VQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEe
# MBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3Nv
# ZnQgVGltZS1TdGFtcCBQQ0EgMjAxMDANBgkqhkiG9w0BAQUFAAIFAOUAWxowIhgP
# MjAyMTA5MzAyMzQ5NDZaGA8yMDIxMTAwMTIzNDk0NlowdzA9BgorBgEEAYRZCgQB
# MS8wLTAKAgUA5QBbGgIBADAKAgEAAgInGQIB/zAHAgEAAgIRqjAKAgUA5QGsmgIB
# ADA2BgorBgEEAYRZCgQCMSgwJjAMBgorBgEEAYRZCgMCoAowCAIBAAIDB6EgoQow
# CAIBAAIDAYagMA0GCSqGSIb3DQEBBQUAA4GBACwHcRG7kFMCIIJy9nIGr3H93XAk
# GCqJ2ZH3GLUK6wixAmLqOqW3JsPPMzs7l4KJEYHn0dWHIfPqiN3/K1pbci/ursQt
# NrviitaActAnRTlvk81Ri9zZh1rfKq0V8WV9hkAwqIpDagMcSA5QlN165tdcN1AP
# 0VGw4XyDYxq9HnXlMYIDDTCCAwkCAQEwgZMwfDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAg
# UENBIDIwMTACEzMAAAFAIxnWXt6VJDEAAAAAAUAwDQYJYIZIAWUDBAIBBQCgggFK
# MBoGCSqGSIb3DQEJAzENBgsqhkiG9w0BCRABBDAvBgkqhkiG9w0BCQQxIgQgIJ1C
# yXzqnTAvZ7dlhlMfWSiY5p5pghH0IZP8axcVAlYwgfoGCyqGSIb3DQEJEAIvMYHq
# MIHnMIHkMIG9BCAvNrC16szSpFwk7/Ny8lPt2j/JynxFmxFJOqq2AgiXgzCBmDCB
# gKR+MHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABQCMZ1l7elSQx
# AAAAAAFAMCIEICcLieW4Tkshk6X4rF7sRvUqe2O78IrYkLXKf0eM8EJQMA0GCSqG
# SIb3DQEBCwUABIIBAFnqZ8oVufzveHFHzNdbn66fdX/9aszRgVyrEjITmhn+iXba
# b+f4yMUPomUT+qyls8/x/t6v/138Q00nNz1ZdD6yPXNqDhHlwxMyAL4MR0LcSgJw
# 9ClPkJWfAYGe5AS/7VsAtw2MpCfbp+4Qhuee5wcB8ozOezameRXFa8z9DXQw5Z+t
# gcOy+3qoQ10L3x5NiF4o+7lephvPzZ9E9PkbAUNs6cwWu062sghhViNzThF69Ip/
# RInzOjfw9syqZtoNF1QUSYbDaYTQPfDb0Ktp59nKn4bsBgA++NLgdjATf3xE4Bab
# KAfZLjgutDKpiY6F5oUh22TMvl+JU/G8eI17gO4=
# SIG # End signature block
