prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 208491
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>208491
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(2237383782480261140)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(2236543071775260892)
,p_default_dialog_template=>wwv_flow_imp.id(2236537872127260890)
,p_error_template=>wwv_flow_imp.id(2236527834998260884)
,p_printer_friendly_template=>wwv_flow_imp.id(2236543071775260892)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(2236527834998260884)
,p_default_button_template=>wwv_flow_imp.id(2237293429602260971)
,p_default_region_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_chart_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_form_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_reportr_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_tabform_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_wizard_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_menur_template=>wwv_flow_imp.id(2237232204446260940)
,p_default_listr_template=>wwv_flow_imp.id(2237219837049260934)
,p_default_irr_template=>wwv_flow_imp.id(2237210010714260930)
,p_default_report_template=>wwv_flow_imp.id(2237258227283260953)
,p_default_label_template=>wwv_flow_imp.id(2237290909077260970)
,p_default_menu_template=>wwv_flow_imp.id(2237295079084260972)
,p_default_calendar_template=>wwv_flow_imp.id(2237295187003260972)
,p_default_list_template=>wwv_flow_imp.id(2237274876939260961)
,p_default_nav_list_template=>wwv_flow_imp.id(2237286643625260967)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(2237286643625260967)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(2237281293313260965)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(2236555927103260900)
,p_default_dialogr_template=>wwv_flow_imp.id(2236553190875260898)
,p_default_option_label=>wwv_flow_imp.id(2237290909077260970)
,p_default_required_label=>wwv_flow_imp.id(2237292213654260971)
,p_default_navbar_list_template=>wwv_flow_imp.id(2237280826098260964)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240623000737Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp.component_end;
end;
/
