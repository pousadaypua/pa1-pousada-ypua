prompt --application/shared_components/plugins/template_component/theme_42_content_row
begin
--   Manifest
--     PLUGIN: THEME_42$CONTENT_ROW
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.05.31'
,p_release=>'24.1.0'
,p_default_workspace_id=>123520941329165394883
,p_default_application_id=>208491
,p_default_id_offset=>0
,p_default_owner=>'WKSP_MARCIOSENAI'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(2237323660539261056)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '42')
,p_name=>'THEME_42$CONTENT_ROW'
,p_display_name=>'Content Row'
,p_supported_component_types=>'PARTIAL:REPORT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('TEMPLATE COMPONENT','THEME_42$CONTENT_ROW'),'')
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div class="t-ContentRow-wrap" aria-hidden="true">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-ContentRow-selection is-placeholder"></div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL:=',
'          VALUE:=',
'          SIZE:=#BADGE_SIZE#',
'          SHAPE:=#BADGE_SHAPE#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar">',
'        {with/}',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE%assigned/}<div class="t-ContentRow-overline is-placeholder"></div>{endif/}',
'        {if ?TITLE%assigned/}<div class="t-ContentRow-title is-placeholder"></div>{endif/}',
'        {if ?DESCRIPTION%assigned/}<div class="t-ContentRow-description is-placeholder"></div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc is-placeholder"></div>{endif/}',
'      {if ?PRIMARY_ACTIONS%assigned/}<div class="t-ContentRow-actions is-placeholder"></div>{endif/}',
'    </div>',
'  </div>',
'{else/}',
'  {if ?FULL_ROW_LINK/}<a class="t-ContentRow-fullLink" href="#FULL_ROW_LINK#" #FULL_ROW_LINK_ATTR#></a>{endif/}',
'  <div class="t-ContentRow-wrap #ITEM_CSS_CLASSES#">',
'    {if ?APEX$SELECTOR%assigned/}<div class="t-ContentRow-selection">#APEX$SELECTOR#</div>{endif/}',
'    {if DISPLAY_BADGE/}',
'      <div class="t-ContentRow-badge #BADGE_COL_WIDTH# #BADGE_POS# #BADGE_ALIGNMENT#">',
'        {with/}',
'          LABEL_DISPLAY:=#BADGE_LABEL_DISPLAY#',
'          LABEL:=#BADGE_LABEL#',
'          VALUE:=#BADGE_VALUE#',
'          ICON:=#BADGE_ICON#',
'          STATE:=#BADGE_STATE#',
'          SIZE:=#BADGE_SIZE#',
'          STYLE:=#BADGE_STYLE#',
'          SHAPE:=#BADGE_SHAPE#',
'          LINK:=#BADGE_LINK#',
'          LINK_ATTR:=#BADGE_LINK_ATTR#',
'        {apply THEME$BADGE/}',
'      </div>',
'    {endif/}',
'    {if DISPLAY_AVATAR/}',
'      <div class="t-ContentRow-avatar" aria-hidden="true">',
'        {with/}',
'          TYPE:=#AVATAR_TYPE#',
'          IMAGE:=#AVATAR_IMAGE#',
'          DESCRIPTION:=#AVATAR_DESCRIPTION#',
'          INITIALS:=#AVATAR_INITIALS#',
'          ICON:=#AVATAR_ICON#',
'          SHAPE:=#AVATAR_SHAPE#',
'          SIZE:=#AVATAR_SIZE#',
'          CSS_CLASSES:=#AVATAR_CSS_CLASSES#',
'          LINK:=#AVATAR_LINK#',
'          LINK_ATTR:=#AVATAR_LINK_ATTR#',
'        {apply THEME$AVATAR/}',
'      </div>',
'    {endif/}',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        {if ?OVERLINE/}<div class="t-ContentRow-overline">#OVERLINE#</div>{endif/}',
'        {if ?TITLE/}<h3 class="t-ContentRow-title">{if ?TITLE_LINK/}<a href="#TITLE_LINK#" #TITLE_LINK_ATTR#>{endif/}#TITLE#{if ?TITLE_LINK/}</a>{endif/}</h3>{endif/}',
'        {if ?DESCRIPTION/}<div class="t-ContentRow-description">#DESCRIPTION#</div>{endif/}',
'      </div>',
'      {if ?MISC%assigned/}<div class="t-ContentRow-misc">#MISC#</div>{endif/}',
'      {if ?PRIMARY_ACTIONS/}<div class="t-ContentRow-actions">#PRIMARY_ACTIONS#</div>{endif/}',
'    </div>',
'  </div>',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>'<ul class="t-ContentRow{if ?STYLE/} #STYLE#{endif/}{if REMOVE_PADDING/} t-ContentRow--removePadding{endif/}{if HIDE_BORDERS/} t-ContentRow--hideBorders{endif/}{if APPLY_THEME_COLORS/} u-colors{endif/} #APEX$COMPONENT_CSS_CLASSES#">#APEX$ROWS#</ul>'
,p_report_row_template=>'<li class="t-ContentRow-item{if ?ITEM_CLASSES/} #ITEM_CLASSES#{endif/}" #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>'
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_reference_id=>1568468153344837456
,p_version_scn=>76107179
,p_subscribe_plugin_settings=>true
,p_is_quick_pick=>true
,p_help_text=>'Display content in a formatted row with a title, description, and more. Supports avatars and badges. Available for a single row or as a report with multiple rows.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(4164561472700332755)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_title=>'Avatar'
,p_display_sequence=>10
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(4164560917688332754)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_title=>'Badge'
,p_display_sequence=>20
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(3907668853958059241)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_title=>'Appearance'
,p_display_sequence=>30
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237324512619261061)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'OVERLINE'
,p_prompt=>'Overline'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Category'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to display at the top of each row above the title and description.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237324870910261062)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'TITLE'
,p_prompt=>'Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Lorem ipsum dolor sit amet'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the title in each row.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237325132234261062)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_demo_value=>'Nunc sit amet nunc quis magna ornare suscipit. Etiam aliquet maximus sapien, at sagittis sem gravida nec.'
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter some text and/or column substitution strings to be used as the description in each row.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237325462791261062)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'MISC'
,p_prompt=>'Miscellaneous'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_help_text=>'Enter miscellaneous content such as additional text and/or column substitution strings to display in each row.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237325729712261063)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'DISPLAY_AVATAR'
,p_prompt=>'Display Avatar'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the avatar for each row. When set to Yes, an avatar will be displayed with the assigned image, icon, or initials. When set to No, no avatar will be displayed.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237326087808261063)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'DISPLAY_BADGE'
,p_prompt=>'Display Badge'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_help_text=>'Specify whether to display or hide the badge for each row. When set to Yes, a badge will be displayed in each row. When set to No, no badge will be displayed.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237326349056261064)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'AVATAR_TYPE'
,p_prompt=>'Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'icon'
,p_demo_value=>'icon'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237325729712261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>'Select the type of content that will be displayed in the avatar.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237326631991261064)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237326349056261064)
,p_display_sequence=>10
,p_display_value=>'Image'
,p_return_value=>'image'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237327043858261065)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237326349056261064)
,p_display_sequence=>20
,p_display_value=>'Initials'
,p_return_value=>'initials'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237327498083261065)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237326349056261064)
,p_display_sequence=>30
,p_display_value=>'Icon'
,p_return_value=>'icon'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237327819369261065)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'AVATAR_IMAGE'
,p_prompt=>'Image'
,p_attribute_type=>'MEDIA'
,p_is_required=>true
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326349056261064)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'image'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the Media popup dialog to select a source for the avatar image.</p>',
'',
'<p>Available options include:',
'<ul>',
'<li>URL</li>',
'<li>BLOB Column</li>',
'<li>URL Column</li>',
'</ul>',
'</p>'))
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237328123651261066)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>115
,p_static_id=>'AVATAR_DESCRIPTION'
,p_prompt=>'Description'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>'Enter a short description of the image or select a source column from the quick pick options. This will be used as alt text for the avatar image.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237328486257261066)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'AVATAR_INITIALS'
,p_prompt=>'Initials'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326349056261064)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'initials'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>'Select the source column to be displayed within each avatar. Only varchar2 data types are supported.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237328715767261066)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'AVATAR_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>true
,p_default_value=>'fa-user'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326349056261064)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'icon'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the avatar.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237329089169261067)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_static_id=>'AVATAR_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-Avatar--rounded'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237325729712261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>'Select the shape of the avatar. Default inherits the shape set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237329342125261067)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237329089169261067)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Avatar--rounded'
,p_help_text=>'Displayed within a square with rounded corners.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237329784392261068)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237329089169261067)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Avatar--circle'
,p_help_text=>'Displayed within a circular shape.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237330187977261068)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237329089169261067)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Avatar--square'
,p_help_text=>'Displayed within a square shape.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237330553041261068)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237329089169261067)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237330999214261069)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_static_id=>'BADGE_LABEL'
,p_prompt=>'Label'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'RAW'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_help_text=>'Enter a value for the badge label or select a source column from the quick pick options.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237331261566261069)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_static_id=>'BADGE_VALUE'
,p_prompt=>'Value'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>true
,p_escape_mode=>'STRIPHTML'
,p_column_data_types=>'VARCHAR2:NUMBER:DATE:INTERVAL_Y2M:INTERVAL_D2S'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_help_text=>'Select a source column for the badge value.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237331516226261069)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_static_id=>'BADGE_STATE'
,p_prompt=>'State'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_help_text=>'Select the source column for the state of the badge. Substitute column value with "danger", "warning", "success" or "info" for default styling.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237331810847261070)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>16
,p_display_sequence=>160
,p_static_id=>'BADGE_ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_help_text=>'Enter an icon class or use the Pick Icon dialog to select the icon you want to add to display in the badge.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237332160906261070)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>17
,p_display_sequence=>170
,p_static_id=>'BADGE_LABEL_DISPLAY'
,p_prompt=>'Display Label'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_help_text=>'Specify whether to display or hide the badge label. When set to Yes, the badge label will be displayed in addition to the badge value. When set to No, only the badge value will be displayed.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237332447911261070)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>18
,p_display_sequence=>180
,p_static_id=>'BADGE_STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_null_text=>'Default'
,p_help_text=>'Select the badge style. Default inherits the style set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237332768683261070)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237332447911261070)
,p_display_sequence=>10
,p_display_value=>'Subtle'
,p_return_value=>'t-Badge--subtle'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237333152014261071)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237332447911261070)
,p_display_sequence=>20
,p_display_value=>'Outline'
,p_return_value=>'t-Badge--outline'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237333567590261071)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>190
,p_static_id=>'BADGE_SHAPE'
,p_prompt=>'Shape'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_null_text=>'Default'
,p_help_text=>'Select the shape of the badge. Default inherits the shape set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237333800534261071)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237333567590261071)
,p_display_sequence=>10
,p_display_value=>'Rounded'
,p_return_value=>'t-Badge--rounded'
,p_help_text=>'Displayed with rounded corners.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237334252918261072)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237333567590261071)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'t-Badge--circle'
,p_help_text=>'Displayed with circular edges.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237334647276261072)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237333567590261071)
,p_display_sequence=>30
,p_display_value=>'Square'
,p_return_value=>'t-Badge--square'
,p_help_text=>'Displayed with squared edges.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237335024087261072)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237333567590261071)
,p_display_sequence=>40
,p_display_value=>'No Shape'
,p_return_value=>'t-Avatar--noShape'
,p_help_text=>'Displayed inline without a containing shape.'
,p_created_on=>wwv_flow_imp.dz('20240621004347Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004347Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237335418067261073)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>20
,p_display_sequence=>200
,p_static_id=>'AVATAR_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237325729712261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the avatar. The default inherits the sizing set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237335774723261073)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>10
,p_display_value=>'Extra Extra Small'
,p_return_value=>'t-Avatar--xxs'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237336199354261073)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>20
,p_display_value=>'Extra Small'
,p_return_value=>'t-Avatar--xs'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237336515746261074)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>30
,p_display_value=>'Small'
,p_return_value=>'t-Avatar--sm'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237336987113261074)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>40
,p_display_value=>'Medium'
,p_return_value=>'t-Avatar--md'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237337341908261074)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>50
,p_display_value=>'Large'
,p_return_value=>'t-Avatar--lg'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237337730888261075)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>60
,p_display_value=>'Extra Large'
,p_return_value=>'t-Avatar--xl'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237338137421261075)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237335418067261073)
,p_display_sequence=>70
,p_display_value=>'Extra Extra Large'
,p_return_value=>'t-Avatar--xxl'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237338513210261075)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>21
,p_display_sequence=>210
,p_static_id=>'BADGE_SIZE'
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_null_text=>'Default'
,p_help_text=>'Set the size of the badge. The default inherits the sizing set by the containing template.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237338843977261076)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237338513210261075)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-Badge--sm'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237339226961261076)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237338513210261075)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-Badge--md'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237339649691261076)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237338513210261075)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-Badge--lg'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237340027925261077)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>22
,p_display_sequence=>220
,p_static_id=>'BADGE_COL_WIDTH'
,p_prompt=>'Column Width'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'t-ContentRow-badge--md'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_null_text=>'Default'
,p_help_text=>'Set the width of the content row columns. Default width is medium.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237340336011261077)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237340027925261077)
,p_display_sequence=>10
,p_display_value=>'Small'
,p_return_value=>'t-ContentRow-badge--sm'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237340750924261077)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237340027925261077)
,p_display_sequence=>20
,p_display_value=>'Medium'
,p_return_value=>'t-ContentRow-badge--md'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237341174974261078)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237340027925261077)
,p_display_sequence=>30
,p_display_value=>'Large'
,p_return_value=>'t-ContentRow-badge--lg'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237341566735261078)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237340027925261077)
,p_display_sequence=>40
,p_display_value=>'Auto'
,p_return_value=>'t-ContentRow-badge--auto'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237341936340261078)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>24
,p_display_sequence=>240
,p_static_id=>'BADGE_POS'
,p_prompt=>'Position'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_null_text=>'Start'
,p_help_text=>'Positions the Badge column to either the "Start" or "End" of the row.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237342203560261079)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237341936340261078)
,p_display_sequence=>10
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--posEnd'
,p_help_text=>'Positions the Badge column to the "end" of the row.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237342676130261079)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>25
,p_display_sequence=>250
,p_static_id=>'BADGE_ALIGNMENT'
,p_prompt=>'Alignment'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237326087808261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(4164560917688332754)
,p_null_text=>'Start'
,p_help_text=>'Changes the alignment of the badge within its column.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237342991019261080)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237342676130261079)
,p_display_sequence=>10
,p_display_value=>'Center'
,p_return_value=>'t-ContentRow-badge--alignCenter'
,p_help_text=>'Aligns the badge to the "center" of its column.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237343373452261080)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237342676130261079)
,p_display_sequence=>20
,p_display_value=>'End'
,p_return_value=>'t-ContentRow-badge--alignEnd'
,p_help_text=>'Aligns the badge to the "end" of its column.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237343788243261080)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>31
,p_display_sequence=>310
,p_static_id=>'ITEM_CSS_CLASSES'
,p_prompt=>'Item CSS Classes'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237344022385261080)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>32
,p_display_sequence=>320
,p_static_id=>'AVATAR_CSS_CLASSES'
,p_prompt=>'CSS Classes'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(2237325729712261063)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(4164561472700332755)
,p_help_text=>'Enter CSS classes to add to the visual. You may add multiple classes by separating them with a space.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237344312325261081)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>23
,p_display_sequence=>230
,p_static_id=>'APPLY_THEME_COLORS'
,p_prompt=>'Apply Theme Colors'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(3907668853958059241)
,p_help_text=>'Specify whether to use the Universal Theme colors for avatar and badge row items. When set to Yes, the u-colors class will be applied to each row. When set to No, a default color will be used instead.'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237344689212261081)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>27
,p_display_sequence=>270
,p_static_id=>'STYLE'
,p_prompt=>'Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_attribute_group_id=>wwv_flow_imp.id(3907668853958059241)
,p_null_text=>'Default'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(2237344921440261081)
,p_plugin_attribute_id=>wwv_flow_imp.id(2237344689212261081)
,p_display_sequence=>10
,p_display_value=>'Compact'
,p_return_value=>'t-ContentRow--styleCompact'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237345312457261082)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>28
,p_display_sequence=>280
,p_static_id=>'HIDE_BORDERS'
,p_prompt=>'Hide Borders'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(3907668853958059241)
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2237345637433261082)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>30
,p_display_sequence=>300
,p_static_id=>'REMOVE_PADDING'
,p_prompt=>'Remove Padding'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(3907668853958059241)
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(4045775362916154369)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Button'
,p_type=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'LINK_URL:=#LINK_URL#',
'LINK_ATTR:=#LINK_ATTR#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'IS_DISABLED:=#IS_DISABLED#',
'{apply THEME$BUTTON/}'))
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_template(
 p_id=>wwv_flow_imp.id(4045776622436158517)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Menu'
,p_type=>'MENU'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{with/}',
'MENU_ID:=#MENU_ID#',
'LABEL:=#LABEL#',
'ICON_CLASSES:=#ICON_CLASSES#',
'CSS_CLASSES:=#CSS_CLASSES#',
'IS_HOT:=#IS_HOT#',
'IS_DISABLED:=#IS_DISABLED#',
'IS_ICON_ONLY:=#IS_ICON_ONLY#',
'{apply THEME$BUTTON/}',
'#MENU#'))
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(3748823848020395939)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Badge Link'
,p_static_id=>'BADGE_LINK'
,p_display_sequence=>50
,p_type=>'LINK'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(4032181734241747636)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Title Link'
,p_static_id=>'TITLE_LINK'
,p_display_sequence=>30
,p_type=>'LINK'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(4032861034971830740)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Full Row Link'
,p_static_id=>'FULL_ROW_LINK'
,p_display_sequence=>40
,p_type=>'LINK'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(4045773427849109383)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Avatar Link'
,p_static_id=>'AVATAR_LINK'
,p_display_sequence=>10
,p_type=>'LINK'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
wwv_flow_imp_shared.create_plugin_act_position(
 p_id=>wwv_flow_imp.id(4045774761239123240)
,p_plugin_id=>wwv_flow_imp.id(2237323660539261056)
,p_name=>'Primary Actions'
,p_static_id=>'PRIMARY_ACTIONS'
,p_display_sequence=>20
,p_type=>'TEMPLATE'
,p_created_on=>wwv_flow_imp.dz('20240621004348Z')
,p_updated_on=>wwv_flow_imp.dz('20240621004348Z')
,p_created_by=>'MKSDEVELOPER@HOTMAIL.COM'
,p_updated_by=>'MKSDEVELOPER@HOTMAIL.COM'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
