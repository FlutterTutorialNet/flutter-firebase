# flutter_firebase
In this video we have shown how to create #Firebase app from firebase console and integrate that into #Flutter android app including  SHA-1 code taking process. It is very easy to integrate firebase services in flutter like Realtime Database, Google Auth, Analytics and Crash report. After integration we have shown basic database operation with Firebase #RealtimeDatabase. 

Source Code: https://github.com/FlutterTutorialNet/flutter-firebase

Timestamps:
00:00 Intro
00:08 Expected Output
01:32 Source code at GitHub
02:07 Main Tutorial
04:52 SHA-1 Code collection
13:13 Final output

/****
Use following kotlin version at build.gradle file for avoiding compilation error
ext.kotlin_version = '1.4.32'
***/

/***
Following code need to add into settings.gradle file for fixing error.
***/

def flutterProjectRoot = rootProject.projectDir.parentFile.toPath()

def plugins = new Properties()
def pluginsFile = new File(flutterProjectRoot.toFile(), '.flutter-plugins')
if (pluginsFile.exists()) {
    pluginsFile.withReader('UTF-8') { reader -> plugins.load(reader) }
}

plugins.each { name, path ->
    def pluginDirectory = flutterProjectRoot.resolve(path).resolve('android').toFile()
    include ":$name"
    project(":$name").projectDir = pluginDirectory
}

Please Subscribe to our YouTube channel and follow us on social medias. 

Other Social Media
⭐ Website: https://fluttertutorial.net
⭐ Reddit: https://fluttertutorial.net/s/reddit
⭐ Facebook: https://fluttertutorial.net/s/facebook
⭐ GitHub: https://fluttertutorial.net/s/github
⭐ Twitter: https://fluttertutorial.net/s/twitter
⭐ Quora: https://fluttertutorial.net/s/quora


Please give star our GitHub projects and Subscribe to our YouTube Channel for latest video tutorial that will inspire us for more advanced tutorial.

#flutter
#flutter_ui
#flutter_tutorial_net
