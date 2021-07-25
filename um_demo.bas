CLS: CLOSE
$RESIZE:ON
REM $DYNAMIC

'$INCLUDE: 'code\um.bi'

REDIM SHARED AS _INTEGER64 keyhit

resetAllValues
REDIM SHARED AS INTEGER screenresx, screenresy, winresx, winresy
screenresx = _DESKTOPWIDTH
screenresy = _DESKTOPHEIGHT
winresx = INT(screenresx * global.windowsize) 'to be replaced with config-based factor
winresy = INT(screenresy * global.windowsize)
PRINT "resizing window to "; winresx; "x"; winresy
SCREEN _NEWIMAGE(winresx, winresy, 32)
COLOR _RGBA(255, 255, 255, 255), _RGBA(0, 0, 0, 255)
DO: LOOP UNTIL _SCREENEXISTS
_SCREENMOVE (screenresx / 2) - (winresx / 2), (screenresy / 2) - (winresy / 2)
_TITLE "UM_Demo"

start:

loadUI
DO
    CLS

    checkResize
    checkMouse
    keyhit = checkKeyboard
    displayView keyhit

    _DISPLAY
    _LIMIT internal.setting.fps
LOOP

'$INCLUDE: 'code\um.bm'
'$INCLUDE: 'code\um_dependent.bm'
