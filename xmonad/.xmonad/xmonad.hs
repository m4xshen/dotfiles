import XMonad
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86
import XMonad.Layout.Gaps
import XMonad.Layout.Spacing

main :: IO()
main = xmonad $ def
    { terminal = myTerminal
    , modMask = myModMask
    , borderWidth = myBorderWidth
    , manageHook = myManageHook
    , layoutHook = spacingWithEdge 10 $ myLayout
    }
    `additionalKeys` [
        -- bright control
        ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 10")
        , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 10")

        -- volume control
        , ((0, xF86XK_AudioLowerVolume), spawn "amixer set Master 2%-")
        , ((0, xF86XK_AudioRaiseVolume), spawn "amixer set Master 2%+")
        , ((0, xF86XK_AudioMute), spawn "amixer set Master toggle")
        
        -- take screenshot
        , ((0, xK_Print), spawn "import -window root ~/Pictures/$(date '+%Y-%m-%d_%H:%M:%S').png")
        
        -- launch rofi
        , ((mod4Mask, xK_p), spawn "rofi -show drun")

	-- suspend
        , ((mod4Mask, xK_x), spawn "systemctl suspend") ]

myTerminal    = "urxvt"
myModMask     = mod4Mask
myBorderWidth = 0
myLayout      = gaps [(U, 45)] $ Tall 1 (3/100) (1/2) ||| Mirror (Tall 1 (3/100) (1/2)) ||| Full
myManageHook = composeAll
    [ appName =? "polybar" --> doIgnore]
