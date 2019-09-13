<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Fragment.java" />

    <instantiate from="src/app_package/Status.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Status.java" />

    <instantiate from="src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.java" />

                   
    <instantiate from="src/app_package/FragmentModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}FragmentModule.java" />

    <instantiate from="res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${srcOut}/${className}ViewModel.java"/>
    <open file="${srcOut}/${className}Fragment.java"/>
    <open file="${srcOut}/${className}Status.java"/>
    <open file="${srcOut}/${className}FragmentModule.java"/>
</recipe>