prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
--   Manifest
--     REGION TEMPLATE: INLINE_DIALOG
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
 p_id=>wwv_flow_imp.id(2236595430141260921)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#" class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_LANDMARK_ATTRIBUTES# #REGION_ATTRIBUTES# #APEX_CSP_DISPLAY_NONE# title="#TITLE!ATTR#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY##SUB_REGIONS#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2236595796810260921)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plug_tmpl_display_point(
 p_id=>wwv_flow_imp.id(2236596033707260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
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
 p_id=>wwv_flow_imp.id(2236596383757260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
,p_name=>'Create'
,p_placeholder=>'CREATE'
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
 p_id=>wwv_flow_imp.id(2236596674345260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
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
 p_id=>wwv_flow_imp.id(2236596925330260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
,p_name=>'Edit'
,p_placeholder=>'EDIT'
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
 p_id=>wwv_flow_imp.id(2236597256272260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
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
 p_id=>wwv_flow_imp.id(2236597505575260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
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
 p_id=>wwv_flow_imp.id(2236597818845260922)
,p_plug_template_id=>wwv_flow_imp.id(2236595430141260921)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>false
,p_has_button_support=>false
,p_glv_new_row=>true
,p_created_on=>wwv_flow_imp.dz('20240621004346Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004346Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp.component_end;
end;
/
