prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 208491
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>208491
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(2237410396742261159)
,p_group_name=>'Administration'
);
wwv_flow_imp.component_end;
end;
/
