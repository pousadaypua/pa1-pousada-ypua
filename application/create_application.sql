prompt --application/create_application
begin
--   Manifest
--     FLOW: 38226
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_MARCIOSENAI')
,p_name=>nvl(wwv_flow_application_install.get_application_name,unistr('Pousada Quinta do Ypu\00E3  - FINAL !!!'))
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'POUSADAQUINTADOYPUA')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'34463C1CDAC5BE287D5AB4B2552C4A1BA42AA575BD9C0C6E10EBA341FCD87016'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'21.2'
,p_flow_language=>'pt-br'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(3340022412554411463)
,p_application_tab_set=>1
,p_logo_type=>'IT'
,p_logo=>'#APP_FILES#app-236183-logo.png'
,p_logo_text=>unistr('Pousada Quinta do Ypu\00E3')
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'v38226'
,p_flow_status=>'AVAILABLE'
,p_flow_unavailable_text=>unistr('O sistema est\00E1 temporariamente indispon\00EDvel.')
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_runtime_api_usage=>'T'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'&EMPRESA. - Gerenciamento de Hospedagens'
,p_substitution_string_02=>'TAB_TITLE'
,p_substitution_value_02=>unistr('Quinta do Ypu\00E3')
,p_substitution_string_03=>'EMPRESA'
,p_substitution_value_03=>unistr('Pousada Quinta do Ypu\00E3')
,p_substitution_string_04=>'APP_TITLE'
,p_substitution_value_04=>'GERENCIAMENTO DE HOSPEDAGENS'
,p_substitution_string_05=>'NOT_FOUND'
,p_substitution_value_05=>'Nenhum registro encontrado.'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>14
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_description=>unistr('Sistema de gerenciamento de hospedagens da Pousada Quinta do Ypu\00E3.')
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
);
wwv_flow_imp.component_end;
end;
/
