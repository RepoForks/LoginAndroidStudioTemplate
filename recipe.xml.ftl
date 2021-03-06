<?xml version="1.0"?>
<recipe>


    <#if !(hasDependency('com.android.support:appcompat-v7'))>
        <dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
    </#if>

    <#if !(hasDependency('com.android.support:design'))>
        <dependency mavenUrl="com.android.support:design:${buildApi}.+"/>
    </#if>

    <#if !(hasDependency('com.android.support.constraint'))>
        <dependency mavenUrl="com.android.support.constraint:constraint-layout:1.0.2"/>
    </#if>

    <!-- <dependency mavenUrl="com.jakewharton:butterknife:8.5.1"/> -->
    <!-- <dependency mavenUrl="com.jakewharton:butterknife-compiler:8.5.1"/> -->

    <merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

    <merge from="res/values/strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/strings.xml" />

    <merge from="res/values/styles.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <!-- Decide what kind of layout(s) to add -->

    <instantiate from="res/layout/activity_login.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${edtActivityLayoutName}.xml" />

    <instantiate from="src/app_package/LoginActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${edtActivityName}.java" />

    <instantiate from="src/app_package/LoginModel.java.ftl"
                      to="${escapeXmlAttribute(srcOut)}/${edtActivityModelName}.java" />

    <instantiate from="src/app_package/LoginPresenter.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/${edtActivityPresenterName}.java" />

    <instantiate from="src/app_package/LoginView.java.ftl"
                      to="${escapeXmlAttribute(srcOut)}/${edtActivityViewName}.java" />


  <instantiate from="src/app_package/ValidationUtils.java.ftl"
                     to="${escapeXmlAttribute(srcOut)}/ValidationUtils.java" />



    <open file="${escapeXmlAttribute(srcOut)}/${edtActivityName}.java" />


    <#if loginstyle == 'solidicon' || loginstyle == 'underlineicon' || loginstyle == 'strokeicon'>

    <copy from="res/drawable/ic_edit_mobile.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/ic_edit_mobile.xml" />

    <copy from="res/drawable/ic_edit_pass.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/ic_edit_pass.xml" />

    </#if>

    <#if loginstyle == 'strokeicon' || loginstyle == 'strokesimple'>

    <copy from="res/drawable/edt_background_white_rounded.xml"
            to="${escapeXmlAttribute(resOut)}/drawable/edt_background_white_rounded.xml" />
    </#if>


</recipe>
