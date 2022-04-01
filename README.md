# Helper Script to enable Touch ID for Sudo

### By Austin Slade Getz

Sometimes when rebooting or updating an m1 Mac laptop, the authenticatioon requirements for sudoers gets reset. This script (requiring super priveleges) checks if the touchid is a valid authenticator for sudo, and if not, adds it.

The file being modified by this script is `/etc/pam.d/sudo'

The hardware tag for the m1 laptop touch id is `pam_tid.so`

The following will be added after the first line in the sudo file.
#### (1)
```
auth       sufficient     pam_tid.so
```

## USAGE
In order to run this script 
```
cd <pathto>/MacM1_SudoTID/
chmod +x sudo_tid.sh
sudo ./sudo_tid.sh
```

Thanks for viewing/using!
