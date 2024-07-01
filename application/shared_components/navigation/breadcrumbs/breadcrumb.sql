prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3340022758891411463)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340022935636411463)
,p_short_name=>'Painel'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340366514136411820)
,p_short_name=>'Reservas'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340384738237412361)
,p_short_name=>'Clientes'
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340407439571412915)
,p_short_name=>unistr('Acomoda\00E7\00F5es')
,p_link=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_page_id=>6
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340420632470413453)
,p_short_name=>unistr('M\00E9todos de Pagamento')
,p_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340431471353413993)
,p_short_name=>'Status de Reserva'
,p_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:::'
,p_page_id=>10
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340442465654414530)
,p_short_name=>'Status de Disponibilidade'
,p_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:::'
,p_page_id=>12
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340453310690415061)
,p_short_name=>unistr('Status de Manuten\00E7\00E3o')
,p_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340465293310415592)
,p_short_name=>'Status de Limpeza'
,p_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.:::'
,p_page_id=>16
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3340546151277415657)
,p_short_name=>unistr('Prefer\00EAncias')
,p_link=>'f?p=&APP_ID.:10000:&SESSION.::&DEBUG.:::'
,p_page_id=>10000
);
wwv_flow_imp.component_end;
end;
/
