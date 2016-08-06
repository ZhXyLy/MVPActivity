<?xml version="1.0"?>
<recipe>
    <merge from="root/AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

        <#if !(hasDependency('com.google.guava:guava:19.0'))>
                <dependency mavenUrl="com.google.guava:guava:19.0"/>
         </#if>
        <#if !(hasDependency('io.reactivex:rxandroid:1.2.1'))>
                <dependency mavenUrl="io.reactivex:rxandroid:1.2.1"/>
         </#if>
        <#if !(hasDependency('io.reactivex:rxjava:1.1.8'))>
                <dependency mavenUrl="io.reactivex:rxjava:1.1.8"/>
         </#if>
        <#if  !(hasDependency('com.squareup.retrofit2:retrofit:2.1.0'))>
                <dependency mavenUrl="com.squareup.retrofit2:retrofit:2.1.0"/>
         </#if>
        <#if !(hasDependency('com.squareup.retrofit2:converter-gson:2.1.0'))>
                <dependency mavenUrl="com.squareup.retrofit2:converter-gson:2.1.0"/>
         </#if>
        <#if !(hasDependency('com.squareup.retrofit2:adapter-rxjava:2.1.0'))>
                <dependency mavenUrl="com.squareup.retrofit2:adapter-rxjava:2.1.0"/>
         </#if>

    <instantiate from="root/res/layout/activity_main.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/activity_${activity_layout}.xml" />
    <instantiate from="root/res/layout/fragment_main.xml.ftl"
                   to="${escapeXmlAttribute(resOut)}/layout/fragment_${fragment_layout}.xml" />

    <instantiate from="root/src/app_package/MainActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ActivityName}.java" />
    <instantiate from="root/src/app_package/MainFragment.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${FragmentName}.java" />
    <instantiate from="root/src/app_package/MainPresenter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${PresenterName}.java" />
    <instantiate from="root/src/app_package/MainContract.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${ContractName}.java" />


</recipe>

