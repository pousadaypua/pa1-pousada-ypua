prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>unistr('Cadastro de Acomoda\00E7\00E3o')
,p_alias=>'ACOMODACAO-NEW'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Cadastro de Acomoda\00E7\00E3o')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(3340023538035411464)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340390380550412900)
,p_plug_name=>unistr('Acomoda\00E7\00E3o')
,p_title=>unistr('Acomoda\00E7\00E3o')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3340059626164411480)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'ACOMODACAO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340397124876412906)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3340062460066411481)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340397531438412906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3340397124876412906)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340399073373412907)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3340397124876412906)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340399495381412908)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3340397124876412906)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340399833224412908)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3340397124876412906)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340390625367412901)
,p_name=>'P7_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340391000777412901)
,p_name=>'P7_ID_STATUS_LIMPEZA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>'Status de Limpeza'
,p_source=>'ID_STATUS_LIMPEZA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_LIMPEZA.DESCRICAO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3340197378426411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340391773724412902)
,p_name=>'P7_ID_STATUS_MANUTENCAO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>unistr('Status de Manuten\00E7\00E3o')
,p_source=>'ID_STATUS_MANUTENCAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_MANUTENCAO.DESCRICAO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(3340197378426411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340392416502412902)
,p_name=>'P7_ID_STATUS_DISPONIBILIDADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>'Status de Disponibilidade'
,p_source=>'ID_STATUS_DISPONIBILIDADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_DISPONIBILIDADE.DESCRICAO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3340197378426411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340393155199412903)
,p_name=>'P7_NOME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>'Nome'
,p_source=>'NOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340393531769412903)
,p_name=>'P7_DESCRICAO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>unistr('Descri\00E7\00E3o')
,p_source=>'DESCRICAO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340393990042412904)
,p_name=>'P7_CAPACIDADE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>'Capacidade'
,p_source=>'CAPACIDADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3340197378426411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340394364202412904)
,p_name=>'P7_VALOR_DIARIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_item_source_plug_id=>wwv_flow_imp.id(3340390380550412900)
,p_prompt=>unistr('Valor da Di\00E1ria (R$)')
,p_source=>'VALOR_DIARIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3340397692354412906)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3340397531438412906)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3340398497256412907)
,p_event_id=>wwv_flow_imp.id(3340397692354412906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3340400606032412909)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3340390380550412900)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Acomodacao'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3340400606032412909
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3340401043806412909)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3340401043806412909
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3340400299567412908)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3340390380550412900)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Acomodacao'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3340400299567412908
);
wwv_flow_imp.component_end;
end;
/
