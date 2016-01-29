# New-Item -path Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\BuildBot
New-Item -path Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\BuildBot\Parameters
New-ItemProperty -path Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\services\BuildBot\Parameters -Name directories -PropertyType String -Value "C:\Users\vagrant\slave"
$key = [Microsoft.Win32.Registry]::LocalMachine.OpenSubKey("SYSTEM\CurrentControlSet\services\BuildBot",[Microsoft.Win32.RegistryKeyPermissionCheck]::ReadWriteSubTree,[System.Security.AccessControl.RegistryRights]::ChangePermissions)
$acl = $key.GetAccessControl()
$rule = New-Object System.Security.AccessControl.RegistryAccessRule ("vagrant","FullControl","Allow")
$acl.SetAccessRule($rule)
$key.SetAccessControl($acl)

