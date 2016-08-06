<?xml version="1.0"?>
<globals>
    <#assign Collection=extractLetters(objectKind)>
    <#assign collection_name=Collection?lower_case>
    <#include "../common/common_globals.xml.ftl" />

    <global id="activity_layout" value="${Collection?lower_case}" />
    <global id="fragment_layout" value="${Collection?lower_case}" />
    <global id="ActivityName" value="${Collection}Activity" />
    <global id="FragmentName" value="${Collection}Fragment" />
    <global id="PresenterName" value="${Collection}Presenter" />
    <global id="ContractName" value="${Collection}Contract" />

    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />
</globals>
