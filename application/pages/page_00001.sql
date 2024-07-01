prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Painel'
,p_alias=>'PAINEL'
,p_step_title=>'&TAB_TITLE.'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340347637776411667)
,p_plug_name=>'Painel Principal'
,p_title=>'Gerenciamento de Hospedagens'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3340092951420411493)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340527788893415640)
,p_plug_name=>'Dashboard'
,p_title=>'&TAB_TITLE.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--iconsSquare:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_imp.id(3340059626164411480)
,p_plug_display_sequence=>30
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3340524218678415637)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3340175608561411526)
);
wwv_flow_imp.component_end;
end;
/
