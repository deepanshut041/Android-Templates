<#macro instantiateMvvmFragment fragmentPrefix activityPackage className >
    <global id="activityPackage" value="${activityPackage}" />
    <global id="layoutName" value="fragment_${classToResource(className)}_${fragmentPrefix}" />
    <#assign layoutName="fragment_${classToResource(className)}_${fragmentPrefix}"/>
    
    <global id="newPackage" value="${fragmentPrefix}" />
    <#assign newPackage="${fragmentPrefix}"/>

    <global id="fragmentTitle" value="${underscoreToCamelCase(fragmentPrefix)} Fragment" />

    <global id="fragmentClass" value="${underscoreToCamelCase(fragmentPrefix)}Fragment" />
    <#assign fragmentClass="${underscoreToCamelCase(fragmentPrefix)}Fragment"/>

    <global id="viewModelClass" value="${underscoreToCamelCase(fragmentPrefix)}ViewModel" />
    <#assign viewModelClass="${underscoreToCamelCase(fragmentPrefix)}ViewModel"/>

    <global id="fragmentBinding" value="${underscoreToCamelCase(layoutName)}Binding" />

    <global id="statusClass" value="${underscoreToCamelCase(fragmentPrefix)}Status" />
    <#assign statusClass="${underscoreToCamelCase(fragmentPrefix)}Status"/>

    <global id="moduleClass" value="${underscoreToCamelCase(fragmentPrefix)}FragmentModule" />
    <#assign moduleClass="${underscoreToCamelCase(fragmentPrefix)}FragmentModule"/>

    <#assign inputDir="root://other/MvvmNavigation" /> 
    <instantiate from="${inputDir}/res/layout/simple.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />

    <instantiate from="${inputDir}/src/app_package/Fragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPackage}/${newPackage}/${fragmentClass}.java" />

    <instantiate from="${inputDir}/src/app_package/Status.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPackage}/${newPackage}/${statusClass}.java" />

    <instantiate from="${inputDir}/src/app_package/ViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPackage}/${newPackage}/${viewModelClass}.java" />
                
    <instantiate from="${inputDir}/src/app_package/FragmentModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityPackage}/${newPackage}/${moduleClass}.java" />

</#macro>