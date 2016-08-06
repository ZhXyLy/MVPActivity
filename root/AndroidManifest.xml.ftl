<manifest xmlns:android="http://schemas.android.com/apk/res/android" >

    <application>
        <!--给buildApi gte 126是为了不设置，如果直接去掉合并会出错，不清楚怎么改，(⊙﹏⊙)b-->
        <activity android:name="${relativePackage}.${ActivityName}"
            <#if buildApi gte 126 && isNewProject>
            android:label="@string/app_name"
            
            </#if>
            android:screenOrientation="portrait"
            android:configChanges="orientation|keyboardHidden|screenSize"
            <#if buildApi gte 126 && ActivityName != "">
            android:theme="@style/AppTheme"</#if>>
            <#if buildApi gte 126 && ActivityName != "">android:parentActivityName="${ActivityName}"</#if>>
            <#if buildApi gte 126 && ActivityName != "">
            <meta-data android:name="android.support.PARENT_ACTIVITY"
                android:value="${ActivityName}" />
            </#if>
            <#if isLauncher && !(isLibraryProject!false)>
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
            </#if>
        </activity>
    </application>

</manifest>