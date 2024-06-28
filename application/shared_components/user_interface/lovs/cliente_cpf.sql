prompt --application/shared_components/user_interface/lovs/cliente_cpf
begin
--   Manifest
--     CLIENTE.CPF
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3340350082179411806)
,p_lov_name=>'CLIENTE.CPF'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CLIENTE'
,p_return_column_name=>'ID'
,p_display_column_name=>'CPF'
,p_default_sort_column_name=>'CPF'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15538721395976
);
wwv_flow_imp.component_end;
end;
/
