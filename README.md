# PS-Commander

A extensive scripted Tool to use in Addition to Photoshop

A while ago i have written this extensive Script for the use with Photoshop. Mainly it was written as a Tool to overcome the limitation of Express Keys you have when using a Graphic Tablet, but it could also used as a tool for the use with a mouse.

When i am painting with my tablet i do not want my second Hand on the keyboard, so i want to get the most out of the avaible Keys of my Wacom Tablet. Also i do not want to remember a lot of keys or complicated shortcut Combinations. This Script was my attempt to solve this problem and after i have written some smaller scripts it was the first bigger Project to learn and understand the scripting language of Autohotkey.

In the final stage of this Project i decided concentrate more on FLOSS Graphic Software and dropped the work on this Script. From one point of view this work is complete, but there were some annyoing thinks that i wanted to improve. I don’t think that i will invest more time on it, so therefor i present the code as it is. Do with it what you want…

## Installation
 
If you want to use the .ahk Version it is needed to install Autohotkey first. The compiled executable Version could be used without any other installation. There is no other Installation method needed. Just keep the files in the File Structure as they are in the unzipped Folder.
 

**Setup**

 
PSC Commander is mainly made for the use with a Tablet, but it could also be an option to use it with amouse. Independent from the used input device it is needet to setup the used Hotkey Buttons for your Device and to Change your the Photoshop Keys for F2, F3 and F4 if they were used. The following is the suggested Configuration:

Key Konfiguration (Mouse)

- F2 – 4. Mouth Button/Tablet – Lower Pen Button)
- F3 – 5. Mouth Button
- F4 – near your second Hand…

Key Konfiguration (Pen Tablet)

- F2 – Lower Pen Button
- F3 – Upper Pen Button
- F4 – One of the Express Keys
 

**Using the Settings.ini**

The Settings.ini could be found in the location PSCommander_(YourVersion)/Scripts

I have tried to make all Buttons/Shortcuts/Buttonlabels customizable and actually it should work. Important is to mention that the Settings use the same Code for Key modifiers as Autohotkey does. If you want to change a shortcut you have to use these Symbols instead of Ctrl or Alt. Example: Shortcut: Shift+Alt+F2 = +!F2 or = +!{F2}

- Shift = +
- Alt = !
- Ctrl = ^
 

**The Layout Buttons**

In the Settings.ini you can define the x/y coord where the GUI’s should appear in the layout, together with a shortcut for a saved Photoshop Layout, which you have defined inside PS.
 

**The Executable Buttons**

The executable Buttons activate the Run command for anything you define in the Settings.ini. This could be any file or executable software or a folder to open or an URL. Surely this files or folders will open via your defined standard programs (file explorer/browser). The Files can be on any location of your system/harddisc. If you place them into the Scripts folder, you have just to enter the name of the file in the Settings. For any other location you have to enter the full path to the file/folder.

 

**The Guide Functions**

The Guide Scripts are very simple. They call for a function that is located in the same folder and should not be changed until you know what you are doing… But you can change the Scripts (.jsx) on your own if you want. You need an application that can open the Scripts for editing (e.g. Notpad++) – Every line activates one horizontal or a vertical Guide in a defined percentage of the actual document. Just take a look the code – It’s self-explanatory…


**Compatibility**

If you want to use PSCommander with custom Shortcuts or other Keyboard Layouts you have to adjust the Settings.ini to your configuration.

Other Photoshop Versions

For other Versions of Photoshop applies the same as above. Additionally the included Javascripts that are actually part of some internal features may not work correctly. Unfortunately I could not test this.
