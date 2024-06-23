prompt --application/shared_components/plugins/template_component/theme_42_badge
begin
--   Manifest
--     PLUGIN: THEME_42$BADGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>208491
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(2237304636840261027)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$BADGE'
,p_display_name=>'Badge'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$BADGE'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <span class="t-Badge is-placeholder{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}"></span>',
'{else/}',
'  {if ?LINK/}<a href="#LINK#" #LINK_ATTR#{else/}<span{endif/} class="t-Badge{if ?STATE/} t-Badge--#STATE#{endif/}{if ?STYLE/} #STYLE#{endif/}{if ?SIZE/} #SIZE#{endif/}{if ?SHAPE/} #SHAPE#{endif/}" role="status" aria-label="#LABEL!STRIPHTML# #VALUE#" '
||'title="#LABEL!STRIPHTML# #VALUE#">',
'    {if ?ICON/}<span class="t-Badge-icon #ICON#" aria-hidden="true"></span>{endif/}',
'    {if LABEL_DISPLAY/}<span class="t-Badge-label">#LABEL#</span>{endif/}',
'    <span class="t-Badge-value">#VALUE#</span>',
'  {if ?LINK/}</a>{else/}</span>{endif/}',
'{endif/}',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>true
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if !APEX$HAS_MESSAGE/}',
'  <ul class="t-Badges #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>',
'{endif/}'))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Badges-item" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>1
,p_standard_attributes=>'REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1564377533892414278
,p_version_scn=>133929097
,p_subscribe_plugin_settings=>true
,p_help_text=>'Display content within a badge. Available for multiple report rows or a single row.'
,p_version_identifier=>'1.0'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237304944019261029)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237305247367261029)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_help_text=>'Select a source column for the badge value.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237305529312261029)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237305812512261030)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237306139006261030)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237306412265261030)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237306753094261031)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237306412265261030)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237307140515261031)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237306412265261030)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237307612987261033)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237307904575261033)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237307612987261033)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237308343848261033)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237307612987261033)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237308796422261034)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237307612987261033)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237309167793261034)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237309479769261034)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237309167793261034)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237309889845261035)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237309167793261034)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237310215346261035)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237309167793261034)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(3748786955678363218)
,p_plugin_id=>wwv_flow_imp.id(2237304636840261027)
,p_name=>'Link'
,p_static_id=>'LINK'
,p_display_sequence=>10
,p_type=>'LINK'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
