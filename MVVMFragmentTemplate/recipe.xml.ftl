<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<recipe>
    <@kt.addAllKotlinDependencies />


<#if generateLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</#if>

<#if generateKotlin>
    <instantiate from="root/src/app_package/SimpleFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/${className}.kt" />
    <open file="${escapeXmlAttribute(srcOut)}/fragment/${className}.kt" />
<#else>
    <instantiate from="root/src/app_package/SimpleFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/fragment/${className}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/fragment/${className}.java" />
</#if>

<#if generateInterfaceNavigator>
    <#if generateKotlin>
        <instantiate from="root/src/app_package/SimpleFragmentNavigator.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/viewmodel/${navigatorName}.kt" />
        <open file="${escapeXmlAttribute(srcOut)}/viewmodel/${navigatorName}.kt" />
    <#else>
        <instantiate from="root/src/app_package/SimpleFragmentNavigator.java.ftl"
                    to="${escapeXmlAttribute(srcOut)}/viewmodel/${navigatorName}.java" />
        <open file="${escapeXmlAttribute(srcOut)}/viewmodel/${navigatorName}.java" />
    </#if>
</#if>

<#if generateClassKey>
    <instantiate from="root/src/app_package/SimpleFragmentKey.kt.ftl"
                    to="${escapeXmlAttribute(srcOut)}/key/${keyName}.kt" />
        <open file="${escapeXmlAttribute(srcOut)}/key/${keyName}.kt" />
</#if>

<#if generateKotlin>
    <instantiate from="root/src/app_package/SimpleFragmentViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${className}ViewModel.kt" />
<#else>
   <instantiate from="root/src/app_package/SimpleFragmentViewModel.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/viewmodel/${className}ViewModel.java" />
</#if>

</recipe>
