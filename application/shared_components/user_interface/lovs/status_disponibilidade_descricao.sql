prompt --application/shared_components/user_interface/lovs/status_disponibilidade_descricao
begin
--   Manifest
--     STATUS_DISPONIBILIDADE.DESCRICAO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>236183
,p_default_id_offset=>6939050361125969998
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3340392555634412903)
,p_lov_name=>'STATUS_DISPONIBILIDADE.DESCRICAO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'STATUS_DISPONIBILIDADE'
,p_return_column_name=>'ID'
,p_display_column_name=>'DESCRICAO'
,p_default_sort_column_name=>'DESCRICAO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>15538721411650
);
wwv_flow_imp.component_end;
end;
/
