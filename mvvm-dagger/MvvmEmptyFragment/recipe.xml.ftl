<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}Fragment.java" />

    <instantiate from="src/app_package/Status.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}Status.java" />

    <instantiate from="src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}ViewModel.java" />
                
    <instantiate from="src/app_package/FragmentModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${newPackage}/${className}FragmentModule.java" />

    <instantiate from="res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <open file="${srcOut}/${newPackage}/${className}ViewModel.java"/>
    <open file="${srcOut}/${newPackage}/${className}Fragment.java"/>
    <open file="${srcOut}/${newPackage}/${className}FragmentModule.java"/>
</recipe>