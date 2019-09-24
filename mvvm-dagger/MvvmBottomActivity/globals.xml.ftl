<?xml version="1.0"?>
<globals>
    <global id="requireTheme" type="boolean" value="true" />
    <global id="resIn" type="string" value="res" />
    <global id="srcIn" type="string" value="src/app_package" />
    <global id="menuName" value="${classToResource(activityClass)}" />
    <global id="resOut" value="${resDir}" />
    <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />
    <global id="viewModelClass" value="${className}ViewModel" />
    <global id="bindingClass" value="${underscoreToCamelCase(layoutName)}Binding" />
    <global id="statusClass" value="${className}Status" />
    <global id="listenerClass" value="${className}ActivityListener" />
    <global id="moduleClass" value="${className}ActivityModule" />
</globals>