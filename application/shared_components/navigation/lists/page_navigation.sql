prompt --application/shared_components/navigation/lists/page_navigation
begin
--   Manifest
--     LIST: Page Navigation
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
 p_id=>wwv_flow_imp.id(3340524218678415637)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
,p_version_scn=>15540567325780
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340524610907415638)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Reservas'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340525851022415639)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('M\00E9todos de Pagamento')
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dollar'
,p_parent_list_item_id=>wwv_flow_imp.id(3340524610907415638)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340526281604415639)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Status de Reserva'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-check'
,p_parent_list_item_id=>wwv_flow_imp.id(3340524610907415638)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340525065777415638)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Clientes'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-id-card-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340525419526415638)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('Acomoda\00E7\00F5es')
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bed'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340526649611415639)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Status de Disponibilidade'
,p_list_item_link_target=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-check-square-o'
,p_parent_list_item_id=>wwv_flow_imp.id(3340525419526415638)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340527061849415639)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('Status de Manuten\00E7\00E3o')
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-wrench'
,p_parent_list_item_id=>wwv_flow_imp.id(3340525419526415638)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3340527451596415639)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Status de Limpeza'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tint'
,p_parent_list_item_id=>wwv_flow_imp.id(3340525419526415638)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
