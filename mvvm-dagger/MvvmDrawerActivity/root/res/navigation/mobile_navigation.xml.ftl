<?xml version="1.0" encoding="utf-8"?>
<navigation xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    android:id="@+id/${classToResource(className)}_navigation"
    app:startDestination="@+id/nav_home">

    <fragment
        android:id="@+id/nav_home"
        android:name="${packageName}.${newPackage}.home.HomeFragment"
        android:label="@string/menu_home"
        tools:layout="@layout/fragment_${classToResource(className)}_home" />

    <fragment
        android:id="@+id/nav_gallery"
        android:name="${packageName}.${newPackage}.gallery.GalleryFragment"
        android:label="@string/menu_gallery"
        tools:layout="@layout/fragment_${classToResource(className)}_gallery" />

    <fragment
        android:id="@+id/nav_slideshow"
        android:name="${packageName}.${newPackage}.slideshow.SlideshowFragment"
        android:label="@string/menu_slideshow"
        tools:layout="@layout/fragment_${classToResource(className)}_slideshow" />

    <fragment
        android:id="@+id/nav_tools"
        android:name="${packageName}.${newPackage}.tools.ToolsFragment"
        android:label="@string/menu_tools"
        tools:layout="@layout/fragment_${classToResource(className)}_tools" />

    <fragment
        android:id="@+id/nav_share"
        android:name="${packageName}.${newPackage}.share.ShareFragment"
        android:label="@string/menu_share"
        tools:layout="@layout/fragment_${classToResource(className)}_share" />

    <fragment
        android:id="@+id/nav_send"
        android:name="${packageName}.${newPackage}.send.SendFragment"
        android:label="@string/menu_send"
        tools:layout="@layout/fragment_${classToResource(className)}_send" />
</navigation>