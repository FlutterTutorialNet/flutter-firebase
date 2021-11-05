# Flutter Firebase Integration Example Project
In this video we have shown how to create #Firebase app from firebase console and integrate that into #Flutter android app including  SHA-1 code taking process. It is very easy to integrate firebase services in flutter like Realtime Database, Google Auth, Analytics and Crash report. After integration we have shown basic database operation with Firebase #RealtimeDatabase. 

Source Code: https://github.com/FlutterTutorialNet/flutter-firebase

## Tools & Environment 
OS: Windows 10
IDE: Android Studio Arctic Fox 2020.3.1
Flutter: 2.5.2 & Dart: 2.14.3

## Timestamps:
00:00 Intro <br />
00:08 Expected Output <br />
01:32 Source code at GitHub <br />
02:07 Main Tutorial <br />
04:52 SHA-1 Code collection <br />
13:13 Final output <br />
 
## Use following kotlin version at build.gradle file for avoiding compilation error
ext.kotlin_version = '1.4.32'
  
## Following code need to add at the end of settings.gradle file for fixing plugins loading error.
 

def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()<br />
<br />
def plugins = new Properties()<br />
def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')<br />
if (pluginsFile.exists()) {<br />
    pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }<br />
}<br />
<br />
plugins.each { name, path -><br />
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()<br />
    include ":$name"<br />
    project(":$name").projectDir = pluginDirectory<br />
}<br />
<br />
Please Subscribe to our YouTube channel and follow us on social medias. <br />

## Other Social Media
⭐ Website: https://fluttertutorial.net<br />
⭐ Reddit: https://fluttertutorial.net/s/reddit<br />
⭐ Facebook: https://fluttertutorial.net/s/facebook<br />
⭐ GitHub: https://fluttertutorial.net/s/github<br />
⭐ Twitter: https://fluttertutorial.net/s/twitter<br />
⭐ Quora: https://fluttertutorial.net/s/quora<br />
<br />
<br />
Please give star our GitHub projects and Subscribe to our YouTube Channel for latest video tutorial that will inspire us for more advanced tutorial.

#flutter<br />
#flutter_ui<br />
#flutter_tutorial_net<br />
