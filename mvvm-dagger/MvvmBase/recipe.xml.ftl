<?xml version="1.0"?>
<recipe>

    <instantiate from="${srcIn}/App.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/App.java" />

    <instantiate from="${srcIn}/AppComponent.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/components/AppComponent.java" />

    <instantiate from="${srcIn}/AppModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/modules/AppModule.java" />

    <instantiate from="${srcIn}/ActivityBuilderModule.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/di/modules/ActivityBuilderModule.java" />

    <instantiate from="${srcIn}/package-info.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/ui/package-info.java" />

</recipe>