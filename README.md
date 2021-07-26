# Acknowledgments
Targon Universal Menu uses code by <a href=https://www.qb64.org/forum/index.php?action=profile;u=9>SMcNeill</a>.

# Included Files
<b>um_dependent.bm</b> - Everything that might have to be modified, depending on your program<br>
<b>um.bm</b> - (hopefully) static functions that will be used by the framework<br>
<b>um.bi</b> - Initialization of variables. I suggest not using this file for your own variables, keep it separate! :D<br>
<b>um_demo.bas</b> - A little demo of what the framework can do<br>

# Framework files
<b>.dui</b> files - Defines a view.<br>
<b>views.dui</b> file - Has to list all the other .dui files you want to use<br>
<b>config.dst</b> file - Keeps settings stored between sessions.<br>
<b>/fonts</b> files - Default fonts and those used by schemes.<br>

# Elements in .dui files
<b>title</b> - Big text, although modifiable how you display it (maybe it's too big or too small for your taste?)<br>
<b>text</b> - Standard text, currently does not have overflow<br>
<b>input</b> - Inline input, currently does not have overflow<br>
<b>radiobutton</b> - Can be assigned to a group, works like radio buttons do<br>
<b>checkbox</b> - Toggles like a normal checkbox, assign it a variable via the "name" attribute!<br>
<b>slider</b> - Slides. Value from 0-1. Also assign a variable via the "name" attribute.<br>
<b>gradient</b> - Attribute "color" syntax: color1/color2/color3/etc., will be split evenly<br>
<b>button</b> - Performs an action that you or the framework defined when clicked<br>
<b>dropdown</b> - "name" is the modified variable, "options" syntax: option1/option2/etc.<br>

# Element attributes in .dui files
<b>type</b> - Defines the type of element (see above)<br>
<b>x</b> - Supports numbers or the following values: (previousright, prevr, flex), (previousleft, prevl, -flex), (previous, p, prev), (right, r), (margin, m, left, l, 0)<br>
<b>y</b> - Supports numbers or the following values: (previousbottom, prevb, flex), (previoustop, prevt, -flex), (nexttop, nextt, nt), (previous, p, prev), (bottom, b), (margin, m, top, t, 0)<br>
<b>w</b> - Supports numbers or the following values: (flex, f), full<br>
<b>h</b> - Supports numbers or the following values: (nextt, next.top, nt), 0<br>
<b>padding</b> - Supports numbers<br>
<b>color</b> - Supports all values defined in the selected internal/schemes/[active_scheme].colors file<br>
<b>hovercolor</b> - Supports all values defined in the selected internal/schemes/[active_scheme].colors file<br>
<b>text</b> - Supports text<br>
<b>name</b> - Supports text or references to variables<br>
<b>action</b> - Action to perform when clicked<br>
<b>group</b> - Supports Integer numbers, only used for radiobuttons at the moment<br>
<b>value</b> - Supports values from 0-1, only used for sliders at the moment<br>
<b>style</b> - Only used for buttons and other elements consisting of rectangles. Supports the following values: b, bf<br>
<b>textalign</b> - Supports the following values: topleft, left, bottomleft, topcenter, center, bottomcenter, topright, right, bottomright<br>
<b>url</b> - Used for buttons that are supposed to open the browser<br>
<b>allownumbers</b> - Supports the following values: -1 [true], 0 [false]<br>
<b>allowtext</b> - Supports the following values: -1 [true], 0 [false]<br>
<b>allowspecial</b> - Supports the following values: -1 [true], 0 [false]<br>

# Custom elements and attributes
Feel free to add those and refine the framework! I also highly encourage adding more functionality and robustness to the overall project - I would love to make this even more universally usable!

# The demo program
![Screenshot 2021-07-19 234816](https://user-images.githubusercontent.com/35202909/126231806-03f0ae63-8a11-4796-a7ac-459fed1b0f36.png)
