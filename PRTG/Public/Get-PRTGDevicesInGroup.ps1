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