prompt --application/shared_components/user_interface/templates/region/standard
begin
--   Manifest
--     REGION TEMPLATE: STANDARD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>208491
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_plug_template(
 p_id=>wwv_flow_imp.id(2237219837049260934)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading" data-apex-heading>#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     <div class="t-Region-orderBy">#ORDER_BY_ITEM#</div>',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_default_landmark_type=>'region'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237220159991260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237220414761260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Change'
,p_placeholder=>'CHANGE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237220737840260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Close'
,p_placeholder=>'CLOSE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237221058951260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Copy'
,p_placeholder=>'COPY'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237221317116260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Create'
,p_placeholder=>'CREATE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237221614605260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Delete'
,p_placeholder=>'DELETE'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237221967521260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237222214099260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Help'
,p_placeholder=>'HELP'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>false
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237222589609260935)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Next'
,p_placeholder=>'NEXT'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237222872038260936)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Sort Order'
,p_placeholder=>'ORDER_BY_ITEM'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237223121594260936)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Previous'
,p_placeholder=>'PREVIOUS'
,p_has_grid_support=>false
,p_has_region_support=>false
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2237223425208260936)
,p_plug_template_id=>wwv_flow_imp.id(2237219837049260934)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp.component_end;
end;
/
