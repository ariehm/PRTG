function Get-PRTGGroupsInGroup {
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
        $query = "table.xml?content=groups&output=csvtable&columns=objid,probe,group,name,downsens,partialdownsens,downacksens,upsens,warnsens,pausedsens,unusualsens,undefinedsens&count=$Count&id=$GroupID"
        $url = New-PRTGApiCall -query $query
        $request = Invoke-WebRequest -Uri $url -MaximumRedirection 0 -ErrorAction Ignore
        $response = ConvertFrom-Csv ($request.content) -WarningAction SilentlyContinue
        return $response
    } catch {
        throw $_
    }
} 