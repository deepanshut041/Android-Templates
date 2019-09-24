# Android Studio MVVM Template

This is an Android Studio template for MVVM.It is inspired by [u2020-mvp-android-studio-template](https://github.com/LiveTyping/u2020-mvp-android-studio-template) and follows [Google I/O Android App](https://github.com/google/iosched).

When I follow the Android sample MVVM, for each module/feature, I need to create an Activity, a Fragment, a ViewModel, Module, Listener. Oh, and also the layout file for the activity and fragment.

Taking advantage of the template of Android studio, I created a live template for Android studio so that those files can be created automatically as a starting point. The main goal of this template is to speed up the development process using android MVVM template. This is just a template, so feel free to make changes according to your needs. It also shows how to create a set of files using template files in Android Studio. This template was successfully tested with Android Studio 3.5.

## Prerequisites

- You must use [Dagger 2](http://google.github.io/dagger/) for dependency injection and `AppCompat` for annotations and base classes.
- You must use [Android X](https://developer.android.com/jetpack/androidx) instead of Support Library.
- You must use [ViewBinding](https://developer.android.com/jetpack/androidx) for accessing view rather than programmatically(i.e no need of findViewbyId).
- You must use [ViewModel](https://developer.android.com/topic/libraries/architecture/viewmodel) to store and manage UI-related data in a lifecycle conscious way.
- You must use [Navigation component](https://developer.android.com/guide/navigation/navigation-getting-started) to navigate through your app.

## Installation

### For Mac

Just copy all directories inside mvvm-dagger to `$ANDROID_STUDIO_FOLDER$/Contents/plugins/android/lib/templates/other/`

### For Windows

Just copy all directories inside mvvm-dagger to `$ANDROID_STUDIO_FOLDER$\plugins\android\lib\templates\other\`

### For Linux

Just copy all directories inside mvvm-dagger to `$ANDROID_STUDIO_FOLDER$\plugins\android\lib\templates\other\`

## How to use

### 1. Getting started

First of all, create a new app with no actvity and android x support. Than add below dependencies and enable ViewBinding and source compablity to java 1.8 to your build.gradle

Enabling ViewBinding
```
android {
    defaultConfig {
        .....
        multiDexEnabled true
    }
    ......
    dataBinding {
        enabled = true
    }
    compileOptions {
        sourceCompatibility = 1.8
        targetCompatibility = 1.8
    }
}
```

Dependencies
```
dependencies {
    final DAGGER_VERSION = '2.22.1'
    final ARCHITECTURE_COMPONENT_VERSION = '2.1.0'


    // Android
    implementation 'androidx.appcompat:appcompat:1.1.0'
    implementation 'androidx.constraintlayout:constraintlayout:1.1.3'

    // Dagger 2
    implementation "com.google.dagger:dagger:$DAGGER_VERSION"
    implementation "com.google.dagger:dagger-android-support:$DAGGER_VERSION"
    annotationProcessor "com.google.dagger:dagger-compiler:$DAGGER_VERSION"
    annotationProcessor "com.google.dagger:dagger-android-processor:$DAGGER_VERSION"
    androidTestAnnotationProcessor "com.google.dagger:dagger-compiler:$DAGGER_VERSION"

    // MultiDex Support
    implementation 'androidx.multidex:multidex:2.0.1'

    // Android Architecture Components
    implementation "androidx.lifecycle:lifecycle-extensions:$ARCHITECTURE_COMPONENT_VERSION"
    implementation "androidx.lifecycle:lifecycle-common-java8:$ARCHITECTURE_COMPONENT_VERSION"
    implementation "androidx.lifecycle:lifecycle-reactivestreams:$ARCHITECTURE_COMPONENT_VERSION"
}
```

![Getting Started](static/createboilerplate.png "Create MVP Boilerplate")

### 2. Generate base boilerplate

First of all, create the base hierarchy and classes using `MVP Boilerplate` from the **root package folder**. This needs to be done only once per project:

![Create MVP Boilerplate](static/createboilerplate.png "Create MVP Boilerplate")

It will generate an `App` class that you should use as your Application, an `ActivityBuilderModule`, `AppComponent`, `AppModule` for injection.

> Be sure to use the generated `App` as your Application into your manifest!

### 2. Create your first activity

Then you can create a new `MVP Activity` from ui folder. It will create:

- An `Activity`
- A layout for your Activity
- A `Component` and a `Module` for Dagger 2 injection
- A `View` interface for your Activity
- A `Presenter` interface and default implementation class
- An `Interactor` interface and default implementation class for your model

> It's important that you **create it from the root package**, otherwise it will re-create the whole MVP hierarchy under your subpackage which is not what you want.

## Contributors

- [Deepanshu Tyagi](https://github.com/deepanshut041)

## License

```
Copyright 2019 Squrlabs

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
