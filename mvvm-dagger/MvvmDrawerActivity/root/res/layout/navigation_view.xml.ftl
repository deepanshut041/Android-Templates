<?xml version="1.0" encoding="utf-8"?>

<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    tools:context="${packageName}.${newPackage}.${activityClass}">

    <androidx.drawerlayout.widget.DrawerLayout
        android:id="@+id/drawer"
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        tools:openDrawer="start">

        <fragment
            android:id="@+id/fragment"
            app:navGraph="@navigation/${classToResource(className)}"
            app:defaultNavHost="true"
            android:name="androidx.navigation.fragment.NavHostFragment"
            android:layout_width="match_parent"
            android:layout_height="match_parent" />

        <com.google.android.material.navigation.NavigationView
            android:id="@+id/nav_view"
            android:layout_width="wrap_content"
            android:layout_height="match_parent"
            android:layout_gravity="start"
            app:headerLayout="@layout/${navHeaderLayoutName}"
            app:menu="@menu/${drawerMenu}" />

    </androidx.drawerlayout.widget.DrawerLayout>
</layout>
