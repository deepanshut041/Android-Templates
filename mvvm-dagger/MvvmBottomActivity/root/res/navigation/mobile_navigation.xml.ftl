<?xml version="1.0" encoding="utf-8"?>
<navigation xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/${classToResource(className)}_navigation"
    app:startDestination="@+id/navigation_home">

    <fragment
        android:id="@+id/navigation_home"
        android:name="${packageName}.${newPackage}.home.HomeFragment"
        android:label="@string/title_home"
        tools:layout="@layout/fragment_${classToResource(className)}_home" />

    <fragment
        android:id="@+id/navigation_dashboard"
        android:name="${packageName}.${newPackage}.dashboard.DashboardFragment"
        android:label="@string/title_dashboard"
        tools:layout="@layout/fragment_${classToResource(className)}_dashboard" />

    <fragment
        android:id="@+id/navigation_notifications"
        android:name="${packageName}.${newPackage}.notifications.NotificationsFragment"
        android:label="@string/title_notifications"
        tools:layout="@layout/fragment_${classToResource(className)}_notifications" />
</navigation>