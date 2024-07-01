prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>'Cadastro de Reserva'
,p_alias=>'RESERVA-NEW'
,p_page_mode=>'MODAL'
,p_step_title=>'Cadastro de Reserva'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(3340023538035411464)
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340349230358411805)
,p_plug_name=>'Reserva '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3340059626164411480)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'RESERVA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340356351761411811)
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
 p_id=>wwv_flow_imp.id(3340356758092411812)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3340356351761411811)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340358119792411813)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3340356351761411811)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_image_alt=>'Excluir'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340358512622411813)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3340356351761411811)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340358922611411813)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3340356351761411811)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(3340199878533411537)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Salvar'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340349504166411806)
,p_name=>'P3_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340349970254411806)
,p_name=>'P3_CLIENTE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>'Cliente (CPF)'
,p_source=>'CLIENTE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CLIENTE.CPF'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340350682648411807)
,p_name=>'P3_ACOMODACAO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>unistr('Acomoda\00E7\00E3o')
,p_source=>'ACOMODACAO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ACOMODACAO.NOME'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340351314354411808)
,p_name=>'P3_METODO_PGTO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>unistr('M\00E9todo de Pagamento')
,p_source=>'METODO_PGTO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'METODO_PAGAMENTO.DESCRICAO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340352003451411808)
,p_name=>'P3_STATUS_RESERVA_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>'Status da Reserva'
,p_source=>'STATUS_RESERVA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'STATUS_RESERVA.DESCRICAO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(3340197378426411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340352714645411808)
,p_name=>'P3_DATA_INICIO'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>'Data de Entrada'
,p_source=>'DATA_INICIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'STATIC'
,p_attribute_04=>'+1d'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340353169884411809)
,p_name=>'P3_DATA_FIM'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>unistr('Data de Sa\00EDda')
,p_source=>'DATA_FIM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(3340198660655411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'STATIC'
,p_attribute_04=>'+2d'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3340353595217411809)
,p_name=>'P3_VALOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_item_source_plug_id=>wwv_flow_imp.id(3340349230358411805)
,p_prompt=>'Valor Total (R$)'
,p_source=>'VALOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(3340197378426411536)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3340356899305411812)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3340356758092411812)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3340357601752411812)
,p_event_id=>wwv_flow_imp.id(3340356899305411812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6882079140949712619)
,p_name=>unistr('Acomoda\00E7\00E3o selecionada')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ACOMODACAO_ID'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return $(''#P3_ACOMODACAO_ID'').val() !== '''' && $(''#P3_DATA_INICIO'').val() !== '''' && $(''#P3_DATA_FIM'').val() !== '''';',
''))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_required_patch=>wwv_flow_imp.id(3340022121240411463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6882079383729712621)
,p_event_id=>wwv_flow_imp.id(6882079140949712619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Calcular valor total da reserva'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
unistr('  -- Obter o valor da di\00E1ria da acomoda\00E7\00E3o e calcular o valor total da reserva'),
'  SELECT (:P3_DATA_FIM - :P3_DATA_INICIO) * VALOR_DIARIA',
'  INTO :P3_VALOR',
'  FROM ACOMODACAO',
'  WHERE ID = :P3_ACOMODACAO_ID;',
'END;'))
,p_attribute_02=>'P3_ACOMODACAO_ID,P3_DATA_INICIO,P3_DATA_FIM'
,p_attribute_03=>'P3_VALOR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(3340022121240411463)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3340359711880411814)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3340349230358411805)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Reserva'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Cadastro conclu\00EDdo com sucesso!')
,p_internal_uid=>3340359711880411814
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3340360180479411814)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3340360180479411814
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3340359392361411813)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3340349230358411805)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Reserva'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3340359392361411813
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6882079003993712618)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('Processamento p\00F3s-cadastro de Reserva')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('    -- Obter o valor da di\00E1ria da acomoda\00E7\00E3o e calcular o valor total da reserva'),
'    SELECT (:P3_DATA_FIM - :P3_DATA_INICIO) * VALOR_DIARIA',
'    INTO :P3_VALOR',
'    FROM ACOMODACAO',
'    WHERE ID = :P3_ACOMODACAO_ID;',
'',
'    -- Define o status como "Aguardando Pagamento"',
'    SELECT ID',
'    INTO :P3_STATUS_RESERVA_ID',
'    FROM STATUS_RESERVA',
'    WHERE DESCRICAO = ''Aguardando Pagamento'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        htp.p(''Erro: '' || SQLERRM);',
'        RAISE;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Ocorreu um erro ao processar o cadastro da Reserva.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'O cadastro da Reserva foi processado com sucesso!'
,p_required_patch=>wwv_flow_imp.id(3340022121240411463)
,p_internal_uid=>6882079003993712618
,p_process_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Ap\00F3s o envio do form de cadastro da Reserva, antes de salvar os dados no BD, as seguintes a\00E7\00F5es ser\00E3o executadas:'),
'- Configurar o ''Status da Reserva'' para ''Aguardando Pagamento'';',
unistr('- Calcular o valor total da reserva (com base no c\00E1lculo do n\00BA de di\00E1rias) e salv\00E1-lo.')))
);
wwv_flow_imp.component_end;
end;
/
