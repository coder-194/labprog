p6

Delete pom.xml

Download Gradle(version 8.x.x and above)
 Go to the official site: https://gradle.org/releases/
 Download the binary-only ZIP (not the complete source code).

1. Extract the zip file to C:\Gradle\gradle-8.x.x folder location. (8.x.x - > specify the
downloaded version )
2. Set environment variables using setx (as explained below)
3. Open Command Prompt (Run as Administrator) and execute the following :

setx GRADLE_HOME "C:\Gradle\gradle-8.x.x" /M
[Note: 8.x.x - > specify the downloaded version]
> setx PATH "%PATH%;%GRADLE_HOME%\bin" /M

gradle -v

File 1: build.gradle

plugins {
    id 'java'
}

group = 'com.example'
version = '1.0-SNAPSHOT'

repositories {
    mavenCentral()
}

dependencies {
    testImplementation 'junit:junit:4.13.2'
}


File 2: settings.gradle
rootProject.name = 'demo-project

The Project Structure looks as below
demo-project/
├── build.gradle
├── settings.gradle
└── src/
├── main/java/com/example/App.java
└── test/java/com/example/AppTest.java

gradle build
gradle test
