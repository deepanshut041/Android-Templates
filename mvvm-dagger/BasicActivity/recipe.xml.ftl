<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/Activity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.java" />

    <instantiate from="src/app_package/Status.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Status.java" />


    <instantiate from="src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.java" />


    <instantiate from="src/app_package/ActivityListener.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ActivityListener.java" />

                   
    <instantiate from="src/app_package/ActivityModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ActivityModule.java" />

    <instantiate from="res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />


    <open file="${srcOut}/${className}ActivityListener.java"/>
    <open file="${srcOut}/${className}ViewModel.java"/>
    <open file="${srcOut}/${className}Activity.java"/>
    <open file="${srcOut}/${className}Status.java"/>
    <open file="${srcOut}/${className}ActivityModule.java"/>
</recipe>