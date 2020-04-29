# Windows-Scripts

Here are a bunch of scripts I use to set up a new Windows box.

 - `configure-user.ps1`: configures user-specific settings, e.g. for the
   explorer, start menu, and task bar (run as user)
 - `configure-windows.ps1`: configures system-wide settings, mostly related to
   privacy (run as administrator)
 - `install-software.ps1`: installs the [Chocolatey](https://chocolatey.org/)
   package manager and a bunch of programs (run as administrator)
 - `remove-crap.ps1`: gets rid of all that pre-installed crap Windows comes
   with... Seriously, who bundles their OS with Candy Crush and XING?! (run as
   administrator)
 - `setup-windows.ps1`: bundles `configure-windows.ps1`, `remove-crap.ps1`, and
   `install-software.ps1`

I tried to keep the scripts as simple as possible so that e.g. the registry
paths can easily be copied and don't have to be traced down a chain of
`Join-Path` calls. Still, there is a small `utils.ps1` file that contains a few
helpers.
