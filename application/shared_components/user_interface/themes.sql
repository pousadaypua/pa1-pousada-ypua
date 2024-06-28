prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 236183
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(3340308486422411638)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_imp.id(3340049526282411476)
,p_default_dialog_template=>wwv_flow_imp.id(3340044333590411474)
,p_error_template=>wwv_flow_imp.id(3340034183291411470)
,p_printer_friendly_template=>wwv_flow_imp.id(3340049526282411476)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(3340034183291411470)
,p_default_button_template=>wwv_flow_imp.id(3340199878533411537)
,p_default_region_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_chart_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_form_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_reportr_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_tabform_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_wizard_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_menur_template=>wwv_flow_imp.id(3340138676716411511)
,p_default_listr_template=>wwv_flow_imp.id(3340126251269411506)
,p_default_irr_template=>wwv_flow_imp.id(3340116463742411502)
,p_default_report_template=>wwv_flow_imp.id(3340164681225411522)
,p_default_label_template=>wwv_flow_imp.id(3340197378426411536)
,p_default_menu_template=>wwv_flow_imp.id(3340201447161411538)
,p_default_calendar_template=>wwv_flow_imp.id(3340201559635411538)
,p_default_list_template=>wwv_flow_imp.id(3340181250707411529)
,p_default_nav_list_template=>wwv_flow_imp.id(3340193040433411534)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(3340193040433411534)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(3340187690313411532)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(3340062460066411481)
,p_default_dialogr_template=>wwv_flow_imp.id(3340059626164411480)
,p_default_option_label=>wwv_flow_imp.id(3340197378426411536)
,p_default_required_label=>wwv_flow_imp.id(3340198660655411536)
,p_default_navbar_list_template=>wwv_flow_imp.id(3340187202269411531)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
