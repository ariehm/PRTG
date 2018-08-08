# will return ALL Devices listed in PRTG, for a given Group (via its ID) (limited to 2500)
#default is the root (ID=0)
#if you want to find 1 device(ID=8011), then use: Get-prtgDevicesInGroup | where {$_.ID -eq 8011}
#anther example, seaching for an IP
#Get-prtgDevicesInGroup | where {$_.host -eq "10.81.8.36"}
#you may also want to return many devices, eg
#Get-prtgDevicesInGroup | where {$_.host -like "10.81.8.*"}
function Get-PRTGDevicesInGroup {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$false,
                   ValueFromPipeLine=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [string]$GroupID=0,
        [Parameter(Mandatory=$false,
                   ValueFromPipeLine=$true,
                   ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [string]$Count=2500
    )
    try {
        $query = "table.xml?content=devices&output=csvtable&columns=objid,probe,groupid,device,host,downsens,partialdownsens,downacksens,upsens,warnsens,pausedsens,unusualsens,undefinedsens,tags,comments&id=$GroupID&count=$Count&"
        $url = New-PRTGApiCall -query $query
        $request = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore
        $response = convertFrom-csv ($request.content) -WarningAction SilentlyContinue
        return $response
    } catch {
        throw $_
    }
}