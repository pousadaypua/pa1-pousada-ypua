prompt --application/shared_components/navigation/lists/user_interface
begin
--   Manifest
--     LIST: User Interface
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3340547013596415657)
,p_name=>'User Interface'
,p_list_status=>'PUBLIC'
,p_required_patch=>wwv_flow_imp.id(3340334555864411654)
,p_version_scn=>15538721433873
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340547469210415658)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Theme Style Selection'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&APP_SESSION.::&DEBUG.:10020::'
,p_list_item_icon=>'fa-paint-brush'
,p_list_text_01=>'Set the default application look and feel'
,p_required_patch=>wwv_flow_imp.id(3340334555864411654)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
