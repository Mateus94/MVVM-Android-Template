<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />
    <@kt.addAllKotlinDependencies />

    <instantiate from="root/src/app_package/SimpleActivityViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}ViewModel.java" />


<#if generateLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if generateKotlin>
    <instantiate from="root/src/app_package/SimpleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.kt" />
<#else>
    <instantiate from="root/src/app_package/SimpleActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</#if>

<#if generateInterfaceNavigator>
    <instantiate from="root/src/app_package/SimpleActivityNavigator.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}Navigator.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}Navigator.java" />
</#if>

</recipe>
