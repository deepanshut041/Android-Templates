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

    <instantiate from="${resIn}/layout/navigation_view.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    
    <instantiate from="${resIn}/layout/navigation_header.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${navHeaderLayoutName}.xml" />
    
    <instantiate from="${resIn}/menu/drawer.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/menu/${drawerMenu}.xml" />

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


    <open file="${srcOut}/${newPackage}/${className}ActivityListener.java"/>
    <open file="${srcOut}/${newPackage}/${className}ViewModel.java"/>
    <open file="${srcOut}/${newPackage}/${className}Activity.java"/>
    <open file="${srcOut}/${newPackage}/${className}Status.java"/>
    <open file="${srcOut}/${newPackage}/${className}ActivityModule.java"/>
</recipe>