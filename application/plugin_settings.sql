prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340018246279411461)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15538721392041
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340018540807411461)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'FULL'
,p_attribute_02=>'POPUP'
,p_version_scn=>15538721392042
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340018874673411461)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attribute_01=>'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON'
,p_attribute_02=>'VISIBLE'
,p_attribute_03=>'15'
,p_attribute_04=>'FOCUS'
,p_version_scn=>15538721392043
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340019176472411461)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_attribute_02=>'N'
,p_attribute_03=>'POPUP:ITEM'
,p_attribute_04=>'default'
,p_attribute_06=>'LIST'
,p_version_scn=>15538721392043
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340019476438411461)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attribute_01=>'separated'
,p_version_scn=>15538721392043
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340019735563411462)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_version_scn=>15538721392043
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340020055929411462)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
,p_version_scn=>15538721392046
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340020318725411462)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
,p_version_scn=>15538721392047
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340020602571411462)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15538721392050
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340020977842411462)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15538721392050
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340021246873411462)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15538721392050
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340021532483411463)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15538721392054
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(3340021867014411463)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15538721392054
);
wwv_flow_imp.component_end;
end;
/
