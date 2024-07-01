prompt --application/pages/page_10000
begin
--   Manifest
--     PAGE: 10000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_page.create_page(
 p_id=>10000
,p_name=>unistr('Prefer\00EAncias')
,p_alias=>'PREFERENCIAS'
,p_step_title=>'HTML_TITLE'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3340335550694411655)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3340335239157411655)
,p_protection_level=>'C'
,p_deep_linking=>'N'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The administration page allows application owners (Administrators) to configure the application and maintain common data used across the application.',
'By selecting one of the available settings, administrators can potentially change how the application is displayed and/or features available to the end users.</p>',
'<p>Access to this page should be limited to Administrators only.</p>'))
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340545631065415656)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3340138676716411511)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3340022758891411463)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3340201447161411538)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340547747026415658)
,p_plug_name=>'Column 1'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(3340061041664411481)
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340548166748415658)
,p_plug_name=>unistr('Configura\00E7\00F5es')
,p_parent_plug_id=>wwv_flow_imp.id(3340547747026415658)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(3340126251269411506)
,p_plug_display_sequence=>40
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3340546323390415657)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3340182843943411529)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(3340334184339411654)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340548568598415658)
,p_plug_name=>unistr('Interface Gr\00E1fica')
,p_parent_plug_id=>wwv_flow_imp.id(3340547747026415658)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(3340126251269411506)
,p_plug_display_sequence=>50
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3340547013596415657)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3340182843943411529)
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(3340334555864411654)
);
wwv_flow_imp.component_end;
end;
/
