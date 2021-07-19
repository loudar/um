CLS: CLOSE
$RESIZE:ON
REM $DYNAMIC

'$INCLUDE: 'um.bi'

REDIM SHARED AS INTEGER activeLayer
REDIM SHARED AS _BYTE mainexit, linemode, pointsize
REDIM SHARED AS _INTEGER64 activeGrab, activeHandleGrab, roundsSinceEdit, keyhit
REDIM SHARED AS DOUBLE frameTimes(50), frameTimesFull(200)

RANDOMIZE TIMER

'_SCREENSHOW

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
LOOP UNTIL mainexit = -1 OR restart = -1
IF restart = -1 THEN GOTO start

'$INCLUDE: 'um.bm'
'$INCLUDE: 'um_dependent.bm'
