import XMonad
import XMonad.Config.Gnome
import XMonad.ManageHook

myManageHook :: [ManageHook]
myManageHook =
	[ resource =? "Do"	--> doIgnore ]

main = xmonad gnomeConfig
	{ manageHook = manageHook gnomeConfig <+> composeAll myManageHook }

