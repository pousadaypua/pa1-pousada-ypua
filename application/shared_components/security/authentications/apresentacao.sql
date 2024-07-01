prompt --application/shared_components/security/authentications/apresentacao
begin
--   Manifest
--     AUTHENTICATION: APRESENTACAO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(3004664503489538)
,p_name=>'APRESENTACAO'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_01=>'USUARIO_PADRAO'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15540582045229
);
wwv_flow_imp.component_end;
end;
/
