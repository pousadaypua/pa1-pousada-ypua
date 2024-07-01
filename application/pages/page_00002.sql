prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_name=>'Reservas'
,p_alias=>'RESERVAS-LIST'
,p_step_title=>'Reservas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340360714475411814)
,p_plug_name=>'Lista de Reservas'
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'VIEW_LISTA_RESERVAS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>unistr('"C\00F3digo de Reserva" ASC')
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6843125290876924910)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'&NOT_FOUND.'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>unistr('f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,:P3_ID:#C\00F3digo de Reserva#')
,p_detail_link_text=>'<span role="img" aria-label="Editar" class="fa fa-edit" title="Editar"></span>'
,p_owner=>'KAH.B.RAMOS@GMAIL.COM'
,p_internal_uid=>6843125290876924910
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882077924856712607)
,p_db_column_name=>unistr('C\00F3digo de Reserva')
,p_display_order=>20
,p_column_identifier=>'AB'
,p_column_label=>'Reserva'
,p_alternative_label=>unistr('C\00F3digo de Reserva')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078013281712608)
,p_db_column_name=>'Status'
,p_display_order=>30
,p_column_identifier=>'AC'
,p_column_label=>'Status'
,p_alternative_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078180841712609)
,p_db_column_name=>'Cliente'
,p_display_order=>40
,p_column_identifier=>'AD'
,p_column_label=>'Cliente'
,p_alternative_label=>'Cliente'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#Cliente#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078295812712610)
,p_db_column_name=>'Cliente (CPF)'
,p_display_order=>60
,p_column_identifier=>'AE'
,p_column_label=>'CPF'
,p_alternative_label=>'CPF'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_column_linktext=>'#Cliente (CPF)#'
,p_column_link_attr=>'target="_blank"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078340763712611)
,p_db_column_name=>unistr('Acomoda\00E7\00E3o')
,p_display_order=>70
,p_column_identifier=>'AF'
,p_column_label=>unistr('Acomoda\00E7\00E3o')
,p_alternative_label=>unistr('Acomoda\00E7\00E3o')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078443811712612)
,p_db_column_name=>'Data de Entrada'
,p_display_order=>80
,p_column_identifier=>'AG'
,p_column_label=>'Entrada'
,p_alternative_label=>'Data de Entrada'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078574535712613)
,p_db_column_name=>unistr('Data de Sa\00EDda')
,p_display_order=>90
,p_column_identifier=>'AH'
,p_column_label=>unistr('Sa\00EDda')
,p_alternative_label=>unistr('Data de Sa\00EDda')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078641368712614)
,p_db_column_name=>unistr('N\00FAmero de Di\00E1rias')
,p_display_order=>100
,p_column_identifier=>'AI'
,p_column_label=>unistr('Di\00E1rias')
,p_alternative_label=>unistr('N\00FAmero de Di\00E1rias')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078744813712615)
,p_db_column_name=>unistr('Valor da Di\00E1ria (R$)')
,p_display_order=>110
,p_column_identifier=>'AJ'
,p_column_label=>'Valor/dia (R$)'
,p_alternative_label=>unistr('Valor da Di\00E1ria (R$)')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078877102712616)
,p_db_column_name=>'Total (R$)'
,p_display_order=>120
,p_column_identifier=>'AK'
,p_column_label=>'Total (R$)'
,p_alternative_label=>'Total (R$)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6882078952598712617)
,p_db_column_name=>unistr('M\00E9todo de Pagamento')
,p_display_order=>130
,p_column_identifier=>'AL'
,p_column_label=>unistr('M\00E9todo de Pagamento')
,p_alternative_label=>unistr('M\00E9todo de Pagamento')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6842559384921186177)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'68425594'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('C\00F3digo de Reserva:Status:Cliente:Cliente (CPF):Acomoda\00E7\00E3o:Data de Entrada:Data de Sa\00EDda:N\00FAmero de Di\00E1rias:Valor da Di\00E1ria (R$):Total (R$):M\00E9todo de Pagamento:')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340366044956411819)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3340138676716411511)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3340022758891411463)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(3340201447161411538)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3340364853242411818)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3340360714475411814)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(3340199953561411537)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Adicionar'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3340365194952411819)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3340360714475411814)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3340365649900411819)
,p_event_id=>wwv_flow_imp.id(3340365194952411819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3340360714475411814)
);
wwv_flow_imp.component_end;
end;
/
