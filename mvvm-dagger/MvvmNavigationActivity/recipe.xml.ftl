<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}Activity.java" />

    <instantiate from="src/app_package/Status.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}Status.java" />


    <instantiate from="src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ViewModel.java" />


    <instantiate from="src/app_package/ActivityListener.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ActivityListener.java" />

                   
    <instantiate from="src/app_package/ActivityModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ActivityModule.java" />

    <instantiate from="res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    
    <instantiate from="res/layout/nav_header.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/nav_${layoutName}_header.xml" />
    
    <instantiate from="res/layout/nav_menu.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/menu/nav_${layoutName}_menu.xml" />


    <open file="${srcOut}/${newPackage}/${className}ActivityListener.java"/>
    <open file="${srcOut}/${newPackage}/${className}ViewModel.java"/>
    <open file="${srcOut}/${newPackage}/${className}Activity.java"/>
    <open file="${srcOut}/${newPackage}/${className}Status.java"/>
    <open file="${srcOut}/${newPackage}/${className}ActivityModule.java"/>
</recipe>