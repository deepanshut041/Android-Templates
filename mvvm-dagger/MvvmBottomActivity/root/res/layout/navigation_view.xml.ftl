<?xml version="1.0" encoding="utf-8"?>

<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools"
    tools:context="${packageName}.${newPackage}.${activityClass}">

    <LinearLayout
        android:id="@+id/fragment_container"
        android:orientation="vertical"
        android:layout_width="match_parent"
        android:layout_height="match_parent">

        <fragment
            app:navGraph="@navigation/${classToResource(className)}"
            app:defaultNavHost="true"
            android:name="androidx.navigation.fragment.NavHostFragment"
            android:layout_width="match_parent"
            android:id="@+id/fragment"
            android:layout_height="0dp"
            android:layout_weight="1" />

        <com.google.android.material.bottomnavigation.BottomNavigationView
            android:id="@+id/bottomNav"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"
            app:menu="@menu/${classToResource(className)}_bottom"/>
    </LinearLayout>
</layout>
