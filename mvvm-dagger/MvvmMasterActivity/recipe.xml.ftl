<?xml version="1.0"?>
<recipe>
    <merge from="${resIn}/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="${resIn}/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />

    <instantiate from="${resIn}/menu/main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/menu/${menuName}.xml" />

    <copy from="${resIn}/drawable"
            to="${escapeXmlAttribute(resOut)}/drawable" />

    <#if !(hasDependency('com.google.android.material:material'))>
        <dependency mavenUrl="com.google.android.material:material:1.0.0"/>
    </#if>

    <#if !(hasDependency('androidx.appcompat:appcompat'))>
        <dependency mavenUrl="androidx.appcompat:appcompat:1.1.0"/>
    </#if>

    <#if !(hasDependency('androidx.navigation:navigation-fragment'))>
        <dependency mavenUrl="androidx.navigation:navigation-fragment:2.1.0"/>
    </#if>

    <#if !(hasDependency('androidx.navigation:navigation-ui'))>
        <dependency mavenUrl="androidx.navigation:navigation-ui:2.1.0"/>
    </#if>

    <instantiate from="${resIn}/layout/navigation_view.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    
    <instantiate from="${resIn}/menu/bottom.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/menu/${bottomMenu}.xml" />

    <instantiate from="${resIn}/layout/navigation_header.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${navHeaderLayoutName}.xml" />
    
    <instantiate from="${resIn}/menu/drawer.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/menu/${drawerMenu}.xml" />

    <instantiate from="${resIn}/navigation/mobile_navigation.xml.ftl"
                    to="${escapeXmlAttribute(resOut)}/navigation/${classToResource(className)}.xml" />


    <#--  Java File start from here  -->

    <instantiate from="${srcIn}/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}Activity.java" />

    <instantiate from="${srcIn}/Status.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}Status.java" />


    <instantiate from="${srcIn}/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ViewModel.java" />


    <instantiate from="${srcIn}/ActivityListener.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ActivityListener.java" />

                   
    <instantiate from="${srcIn}/ActivityModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ActivityModule.java" />

    <#--  Naviagtion Fragment  -->
    <#import "root://other/MvvmNavigation/navigation_common_macros.ftl" as navigation>

    <@navigation.instantiateMvvmFragment fragmentPrefix="home" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="dashboard" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="notifications" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="gallery" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="slideshow" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="tools" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="share" activityPackage="${newPackage}" className="${className}" />
    <@navigation.instantiateMvvmFragment fragmentPrefix="send" activityPackage="${newPackage}" className="${className}" />

</recipe>