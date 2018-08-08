# PRTG Admin PowerShell Module

**Content**

* [Introduction](#intro)
* [Installation](#install)
* [Functions](#functions)
* [Usage Examples](#usage)
* [Versions and Updates](#version)

## <a name=intro>Introduction</a>

The PRTG Admin PowerShell module contains a series of functions which utilize the PRTG API to make the administration of PRTG much easier.  By utilizing the API you are able to create robust scripts to do everything you'd want to do in your PRTG deployment.

## <a name=install>Installation</a>

Installation is as simple as downloading the git repository, unzipping, and storing the files in your PowerShell modules directory.  On Windows, this is typically in the location "$env:USERPROFILE/Documents/WindowsPowerShell/Modules".  Once installed to that folder, the following import command can be run to load the module into memory.

```PowerShell
Import-Module PRTG
```

Once Imported, the module will then need to be configured for your PRTG Environment.  You'll need to specify the PRTG server, and if you're using a self signed certificate for SSL, you'll need to add an exception for it.  To this effect, you have two cmdlets you can use.

```PowerShell
PS> Set-PRTGServer -PasswordHash "XXXXXXXXXX" -Server "10.0.0.1"
PS> Add-PRTGEnvironmentTrust
```

## <a name="functions">Functions</a>

### Public functions

* Add-PRTGDevice
* Add-PRTGEnvironmentTrust
* Add-PRTGSensorToDevice
* Export-PRTGChannelDetail
* Get-PRTGActiveAdvancedSchedule
* Get-PRTGChannelSettings
* Get-PRTGDeviceProperty
* Get-PRTGDevicesInGroup
* Get-PRTGGroupsInGroup
* Get-PRTGSensorChannelIDs
* Get-PRTGSensorChannels
* Get-PRTGSensorData
* Get-PRTGSensorInGroup
* Resume-PRTGObject
* Resume-PRTGServer
* Set-PRTGAdvancedSchedules
* Set-PRTGChannelSettings
* Set-PRTGDeviceProperty
* Set-PRTGServer
* Suspend-PRTGObject
* Suspend-PRTGServer 

### Private functions


## <a name=usage>Usage Examples</a>


## <a name=version>Versions and Updates</a>
