prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_180200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2018.05.24'
,p_release=>'18.2.0.00.12'
,p_default_workspace_id=>1605208534500359
,p_default_application_id=>367
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 367 - test mobile
--
-- Application Export:
--   Application:     367
--   Name:            test mobile
--   Date and Time:   12:36 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      4
--     Items:                   35
--     Processes:                6
--     Regions:                  5
--     Buttons:                  7
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Lists:                  1
--       Breadcrumbs:            1
--       NavBar Entries:         1
--     Security:
--       Authentication:         1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 2
--         Region:              16
--         Label:                3
--         List:                 4
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               1
--       Shortcuts:              1
--     Globalization:
--     Reports:
--     E-Mail:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,367)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'test mobile')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_367')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'289B36A4AC5D6AA7679B418082506FE74DD9D61132906A3950BD8FD7DC9C5A20'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'es-gt'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'dd/mm/yyyy'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(79410717901585923)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:test mobile'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20200109171058'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/navigation
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(79416232683586118)
,p_name=>'Navigation'
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8841916550075449)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8842042515075449)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8842128459075450)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8842333028075450)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8842467009075450)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8842578837075450)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(79407116962585700)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(79410608953585915)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(79412715978586071)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_TVALES'
,p_tab_text=>'Tvales'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'2'
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(79411829412585957)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79407202529585764)
,p_theme_id=>50
,p_name=>'Page'
,p_internal_name=>'PAGE'
,p_is_popup=>false
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_50/css/4_2.css'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'  <meta charset="utf-8" />',
'  <meta name="apple-mobile-web-app-capable" content="yes">',
'  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scaleable=no">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'#TEMPLATE_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="c" data-url="#REQUESTED_URL#">',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'#REGION_POSITION_01#',
'',
'<div data-role="content" data-theme="c">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'',
'#REGION_POSITION_08#',
'',
'#FORM_CLOSE#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" style="margin-bottom:20px;" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS# apex-grid-debug">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(79407332610585770)
,p_theme_id=>50
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_css_file_urls=>'#IMAGE_PREFIX#themes/theme_50/css/4_2.css'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'  <meta charset="utf-8" />',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'#TEMPLATE_CSS#',
'  #APEX_JAVASCRIPT#',
'  #THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'  #APPLICATION_JAVASCRIPT#',
'  #HEAD#',
'</head>',
'<body #ONLOAD#>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#PAGE_STATIC_ID#" data-role="page" data-apex-page-transition="#PAGE_TRANSITION#" data-apex-popup-transition="#POPUP_TRANSITION#" data-theme="c">',
'#PAGE_CSS#',
'#FORM_OPEN#',
'',
'<div data-role="content" data-theme="b">',
'  <div id="messages">',
'    #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  </div>',
'  #BODY#',
'</div><!-- /content -->',
'#FORM_CLOSE#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</div><!-- /page -->',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-d success" id="success-message">',
'  <h4 style="display:inline-block;margin-top:5px;">#SUCCESS_MESSAGE#</h4>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ui-bar ui-bar-b notification" id="notification-message">',
'  <h4 style="display:inline-block; margin-top:5px;">#MESSAGE#</h4>',
'</div>'))
,p_theme_class_id=>17
,p_grid_type=>'VARIABLE'
,p_grid_max_columns=>5
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>false
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'<div class="ui-grid-#USED_COLUMNS_ALPHA_MINUS#">#ROWS#</div>'
,p_grid_row_template=>'#COLUMNS#'
,p_grid_column_template=>'<div class="ui-block-#COLUMN_ALPHA#">#CONTENT#</div>'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document).on("apex-devbar-grid-debug-on", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").addClass("ui-bar-e"); });',
'',
'apex.jQuery(document).on("apex-devbar-grid-debug-off", function(){',
'    apex.jQuery(".apex-grid-debug > [class*=''ui-block-'']").removeClass("ui-bar-e"); });',
''))
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button/100_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79409820561585809)
,p_template_name=>'100% Button'
,p_internal_name=>'100%_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" onclick="#JAVASCRIPT#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-theme="b" onclick="#JAVASCRIPT#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>50
);
end;
/
prompt --application/shared_components/user_interface/templates/button/header_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79409930004585812)
,p_template_name=>'Header Button'
,p_internal_name=>'HEADER_BUTTON'
,p_template=>'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
,p_hot_template=>'<a href="#LINK#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" data-theme="b" #BUTTON_ATTRIBUTES#>#LABEL#</a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>'It looks like that the <button> tag when used in the header creates a bigger header bar! Have to investigate that'
,p_theme_id=>50
);
end;
/
prompt --application/shared_components/user_interface/templates/button/inline_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(79410010387585812)
,p_template_name=>'Inline Button'
,p_internal_name=>'INLINE_BUTTON'
,p_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" onclick="#JAVASCRIPT#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_hot_template=>'<button id="#BUTTON_ID#" type="button" data-inline="true" data-theme="b" onclick="#JAVASCRIPT#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#>#LABEL#</button>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>50
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_group_horizontal
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79407424651585770)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" data-type="horizontal" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Horizontal)'
,p_internal_name=>'BUTTON_GROUP_HORIZONTAL'
,p_theme_id=>50
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_group_vertical
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79407506076585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="controlgroup" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Button Group (Vertical)'
,p_internal_name=>'BUTTON_GROUP_VERTICAL'
,p_theme_id=>50
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible_setnormal
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79407614488585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set-Normal'
,p_internal_name=>'COLLAPSIBLE_SETNORMAL'
,p_theme_id=>50
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible_setsmaller
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79407701670585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible-set" data-mini="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'#SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Collapsible Set-Smaller'
,p_internal_name=>'COLLAPSIBLE_SETSMALLER'
,p_theme_id=>50
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsiblenormal_closed
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79407828404585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible-Normal (Closed)'
,p_internal_name=>'COLLAPSIBLENORMAL_CLOSED'
,p_theme_id=>50
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsiblenormal_open
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79407910138585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible-Normal (Open)'
,p_internal_name=>'COLLAPSIBLENORMAL_OPEN'
,p_theme_id=>50
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsiblesmaller_closed
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408024252585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-mini="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible-Smaller (Closed)'
,p_internal_name=>'COLLAPSIBLESMALLER_CLOSED'
,p_theme_id=>50
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsiblesmaller_open
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408131982585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="collapsible" data-collapsed="false" data-mini="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'Collapsible-Smaller (Open)'
,p_internal_name=>'COLLAPSIBLESMALLER_OPEN'
,p_theme_id=>50
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/footer_toolbar_displays_at_bottom_of_page
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408232741585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Displays at Bottom of Page)'
,p_internal_name=>'FOOTER_TOOLBAR_DISPLAYS_AT_BOTTOM_OF_PAGE'
,p_theme_id=>50
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/footer_toolbar_fixed
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408302017585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fixed)'
,p_internal_name=>'FOOTER_TOOLBAR_FIXED'
,p_theme_id=>50
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/footer_toolbar_fullscreen
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408401391585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="footer" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #CHANGE#',
'  #BODY#',
'</div> <!-- /footer -->'))
,p_page_plug_template_name=>'Footer Toolbar (Fullscreen)'
,p_internal_name=>'FOOTER_TOOLBAR_FULLSCREEN'
,p_theme_id=>50
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/header_toolbar_fixed
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408531417585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="b" data-position="fixed" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#PAGE_TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fixed)'
,p_internal_name=>'HEADER_TOOLBAR_FIXED'
,p_theme_id=>50
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/header_toolbar_fullscreen
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408629495585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" data-id="#REGION_STATIC_ID#" data-role="header" data-theme="b" data-position="fixed" data-fullscreen="true" class="#REGION_CSS_CLASSES#" #REGION_ATTRIBUTES#>',
'  #PREVIOUS#',
'  <h1>#TITLE#</h1>',
'  #NEXT#',
'  #BODY#',
'</div> <!-- /header -->'))
,p_page_plug_template_name=>'Header Toolbar (Fullscreen)'
,p_internal_name=>'HEADER_TOOLBAR_FULLSCREEN'
,p_theme_id=>50
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/plain_no_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408719424585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#">',
'#BODY#',
'#SUB_REGIONS#',
'#CLOSE#',
'#DELETE#',
'#CREATE#',
'#EDIT#',
'#CHANGE#',
'</div>'))
,p_page_plug_template_name=>'Plain (No Title)'
,p_internal_name=>'PLAIN_NO_TITLE'
,p_theme_id=>50
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_with_title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408830593585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="ui-collapsible #REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'  <h3 class="ui-collapsible-heading ui-btn ui-corner-top ui-btn-up-a">',
'    <span class="ui-btn-inner ui-corner-top ui-corner-bottom">',
'      <span lass="ui-btn-text">#TITLE#</span>',
'    </span>',
'  </h3>',
'  <div class="ui-collapsible-content ui-body-c ui-corner-bottom">',
'    #BODY#',
'    #SUB_REGIONS#',
'    #EDIT#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Region (With Title Bar)'
,p_internal_name=>'REGION_WITH_TITLE_BAR'
,p_theme_id=>50
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_with_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(79408904037585792)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" class="#REGION_CSS_CLASSES#" data-theme="b" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'#SUB_REGIONS#',
'#EDIT#',
'</div>'))
,p_page_plug_template_name=>'Region (With Title)'
,p_internal_name=>'REGION_WITH_TITLE'
,p_theme_id=>50
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_control_group
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79409116235585800)
,p_list_template_current=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#" rel="external" data-role="button" data-icon="#A01#">#TEXT_ESC_SC#</a>'
,p_list_template_name=>'Button Control Group'
,p_internal_name=>'BUTTON_CONTROL_GROUP'
,p_theme_id=>50
,p_theme_class_id=>9
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="navgroup">',
'   <div data-role="controlgroup" data-type="horizontal">'))
,p_list_template_after_rows=>'</div></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/list_view
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79409219670585803)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View'
,p_internal_name=>'LIST_VIEW'
,p_theme_id=>50
,p_theme_class_id=>9
,p_list_template_before_rows=>'<ul data-role="listview">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/list_view_inset
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79409302314585803)
,p_list_template_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'List View (Inset)'
,p_internal_name=>'LIST_VIEW_INSET'
,p_theme_id=>50
,p_theme_class_id=>10
,p_list_template_before_rows=>'<ul data-role="listview" data-inset="true">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul data-inset="true">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li data-theme="b"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-theme="b">',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
,p_sub_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<a href="#LINK#">#TEXT_ESC_SC#</a>',
'#SUB_LISTS#',
'</li>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(79409413793585803)
,p_list_template_current=>'<li><a href="#LINK#" class="ui-btn-active" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#" data-transition="flow" data-icon="#IMAGE#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>50
,p_theme_class_id=>11
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-role="navbar">',
'  <ul>',
''))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div><!-- /navbar -->'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(79409014617585793)
,p_row_template_name=>'Standard Report'
,p_internal_name=>'STANDARD_REPORT'
,p_row_template1=>'<div class="list-view-cell" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_VALUE#</div>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'<ul data-role="listview">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<li data-role="list-divider">'
,p_column_heading_template=>'<div class="list-view-cell" id="#COLUMN_HEADER_NAME#" style="width:#COLUMN_WIDTH_VAL#%">#COLUMN_HEADER#</div>'
,p_after_column_heading=>'</li>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-r" data-iconpos="right" data-transition="slide">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" data-role="button" data-icon="arrow-l" data-iconpos="left" data-transition="slide" data-direction="reverse">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>50
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(79409014617585793)
,p_row_template_before_first=>'<li>'
,p_row_template_after_last=>'</li>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label/no_label_for_screenreaders
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79409517750585804)
,p_template_name=>'No Label (For Screenreaders)'
,p_internal_name=>'NO_LABEL_FOR_SCREENREADERS'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-field-contain" class="ui-hide-label" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>50
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79409616917585807)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-field-contain" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>50
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(79409732570585807)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#">'
,p_template_body2=>'</label>'
,p_before_item=>'<div class="ui-field-contain" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_before_label=>' '
,p_on_error_after_label=>' '
,p_theme_id=>50
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(79410127287585814)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>50
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(79410321585585871)
,p_popup_icon=>'#IMAGE_PREFIX#list.gif'
,p_popup_icon_attr=>'width=13 height=13 alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#"'
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css>',
'',
'</head>'))
,p_page_body_attr=>'bgcolor=white OnLoad=first_field()'
,p_before_field_text=>' '
,p_page_heading_text=>'<link rel=stylesheet href=#IMAGE_PREFIX#platform2.css type=text/css><style>a:link { color:#336699; text-decoration:none; padding:2px;} a:visited { color:#336699; text-decoration:none;} a:hover { color:red; text-decoration:underline;} body { font-fami'
||'ly:arial; background-color:#ffffff;} </style>'
,p_page_footer_text=>'</center></td></tr></table>'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next'
,p_prev_button_text=>'Previous'
,p_after_field_text=>'</div><br />'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'Row(s) #FIRST_ROW# - #LAST_ROW#'
,p_result_rows_per_pg=>10
,p_theme_id=>50
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/basic_calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(79410205676585818)
,p_cal_template_name=>'Basic Calendar'
,p_internal_name=>'BASIC_CALENDAR'
,p_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="m-Calendar" id="calendar_month_#REGION_STATIC_ID#" data-enhance=false>',
'<tr><th scope="colgroup" class="m-MonthTitle" colspan="7" >#IMONTH# #YYYY#</th></tr>',
''))
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="7">',
'<div id="calendar_day_details_#REGION_STATIC_ID#"></div>',
'</td>',
'</tr>',
'</table>',
'<script>',
'apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageinit", function() {',
'',
'    // Initialize calendar data as list view as soon as that section has been refreshed',
'    // Use Swipe Left and Right to go to the next or previous month',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ )',
'        .on( "apexafterrefresh", function() {',
'            apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'                .find( "[data-role=''listview'']")',
'                .listview(); })',
'        .on( "swipeleft", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''next''); } )',
'        .on( "swiperight", function() {',
'            apex.widget.calendar.ajax_calendar(''S'', ''previous''); } );',
'',
'    // Load calendar data of date if it''s tapped',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "tap", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function () {',
'        var lDate     = apex.jQuery( this ).data( "date" ),',
'            lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery(".apex-calendar-today-has-data")',
'            .addClass(''apex-calendar-has-data'')',
'            .removeClass("apex-calendar-today-has-data");',
'        apex.jQuery( ".m-Today" )',
'            .addClass("m-Day")',
'            .removeClass( "m-Today" );',
'        apex.jQuery( this ).addClass( "m-Today" );',
'',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", lDate, {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'    // New calendar entries can be added with tab and hold',
'    apex.jQuery( "##REGION_STATIC_ID#", apex.gPageContext$ ).on( "taphold", "#calendar_month_#REGION_STATIC_ID# td[class*=m-]", function (e) {',
'       apex.widget.calendar.ajaxAddData(e);',
'    });',
'',
'    // Get the data of the current day as soon as the page gets displayed',
'    apex.jQuery( "##PAGE_STATIC_ID#" ).on( "pageshow", function() {',
'        var lDetails$ = apex.jQuery( "#calendar_day_details_#REGION_STATIC_ID#", apex.gPageContext$ );',
'        apex.jQuery( ".m-Today", apex.gPageContext$ )',
'            .addClass( "m-Day" )',
'            .removeClass( "m-Today" );',
'        apex.jQuery( "#calendar_month_#REGION_STATIC_ID#", apex.gPageContext$ )',
'            .find( "td[data-date=#CURRENT_DATE#]" )',
'            .addClass( "m-Today" );',
'        apex.widget.calendar.getDayData( "#REGION_STATIC_ID#", "#CURRENT_DATE#", {',
'            clear: function() {',
'                lDetails$.empty();',
'            },',
'            success: function( pData ) {',
'                lDetails$.html( pData );',
'            }',
'        });',
'    });',
'',
'});',
'</script>'))
,p_day_title_format=>'<div class="content-primary" class="m-DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="m-Day #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="m-Today #HAS_DATA#" data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="content-primary" class="m-WeekendDayTitle">#DD#</div>',
''))
,p_weekend_open_format=>'<td class="m-WeekendDay #HAS_DATA#"  data-date="#CANONICAL_DATE#">#TITLE_FORMAT#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="content-primary" class="m-NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="m-NonDay"  data-date="#CANONICAL_DATE#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="m-WeekCalendar">',
'	<tr>',
'        <th scope="colgroup" class="m-monthTitle" colspan="7" >#WTITLE#</th>',
'	</tr>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="m-DayOfWeek" >#IDY# #MM#/#DD#</th>',
''))
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_weekly_day_open_format=>'<td class="m-Day">'
,p_weekly_day_close_format=>'</td>'
,p_weekly_today_open_format=>'<td class="m-Today">'
,p_weekly_weekend_open_format=>'<td class="m-NonDay">'
,p_weekly_weekend_close_format=>'</td>'
,p_weekly_time_open_format=>'<th scope="row" class="m-hour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr rowspan="2">'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="m-DayOfWeek">#IDAY# #DD# #IMONTH# #YYYY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="#CALENDAR_TITLE# #START_DL#" class="m-DayCalendar"><tr>',
''))
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<script>',
'    // register a delegated event on the table listening for all taphold in TD''s',
'    apex.jQuery( "##REGION_STATIC_ID#" ).on( "taphold", "td[class^=m-]", function (e) {',
'        apex.widget.calendar.ajaxAddData(e);',
'    });',
'</script>'))
,p_daily_day_open_format=>'<td class="m-Day">'
,p_daily_day_close_format=>'</td>'
,p_daily_today_open_format=>'<td class="m-ToDay">'
,p_daily_time_open_format=>'<th scope="row" class="m-hour">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr rowspan="2" >'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul data-role="listview">',
'#DAYS#',
'</ul>',
''))
,p_agenda_past_day_format=>'<li data-role="list-divider" data-theme="d">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_today_day_format=>'<li data-role="list-divider" data-theme="b">#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_future_day_format=>'<li  data-role="list-divider" >#IDAY# #IMONTH# #DD# #YYYY#</li>'
,p_agenda_past_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_today_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_agenda_future_entry_format=>'<li >#DATA#<p class="ui-li-aside">#TIME#</p></li>'
,p_month_data_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul id="listview_#REGION_STATIC_ID#" data-role="listview" data-inset="true" data-theme="c">#DAYS#</ul>',
''))
,p_month_data_entry_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li align="left" >#LINK##DATA#<p class="ui-li-aside">#TIME#</p></li>',
' '))
,p_theme_id=>50
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(79410431359585893)
,p_theme_id=>50
,p_theme_name=>'jQuery Mobile Smartphone'
,p_theme_internal_name=>'JQUERY_MOBILE_SMARTPHONE'
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(79407202529585764)
,p_error_template=>wwv_flow_api.id(79407202529585764)
,p_printer_friendly_template=>wwv_flow_api.id(79407202529585764)
,p_default_button_template=>wwv_flow_api.id(79410010387585812)
,p_default_region_template=>wwv_flow_api.id(79408719424585792)
,p_default_chart_template=>wwv_flow_api.id(79408719424585792)
,p_default_form_template=>wwv_flow_api.id(79408719424585792)
,p_default_reportr_template=>wwv_flow_api.id(79408904037585792)
,p_default_tabform_template=>wwv_flow_api.id(79408719424585792)
,p_default_wizard_template=>wwv_flow_api.id(79408719424585792)
,p_default_irr_template=>wwv_flow_api.id(79408719424585792)
,p_default_report_template=>wwv_flow_api.id(79409014617585793)
,p_default_label_template=>wwv_flow_api.id(79409616917585807)
,p_default_calendar_template=>wwv_flow_api.id(79410205676585818)
,p_default_list_template=>wwv_flow_api.id(79409302314585803)
,p_default_option_label=>wwv_flow_api.id(79409616917585807)
,p_default_header_template=>wwv_flow_api.id(79408531417585792)
,p_default_footer_template=>wwv_flow_api.id(79408302017585792)
,p_default_required_label=>wwv_flow_api.id(79409732570585807)
,p_default_page_transition=>'SLIDE'
,p_default_popup_transition=>'POP'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(50),'')
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(79417025073586150)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(79410717901585923)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(79410514356585904)
,p_ui_type_name=>'JQM_SMARTPHONE'
,p_display_name=>'jQuery Mobile Smartphone'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>50
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_JQM_SMARTPHONE:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_global_page_id=>0
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_nav_bar_type=>'NAVBAR'
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(79410514356585904)
,p_name=>'Global Page - jQuery Mobile Smartphone'
,p_step_title=>'Global Page - jQuery Mobile Smartphone'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_upd_yyyymmddhh24miss=>'20200109171053'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79412108535586012)
,p_plug_name=>'Header'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79408531417585792)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>'Header'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79412408666586062)
,p_plug_name=>'Footer'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79408302017585792)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_display_condition_type=>'CURRENT_PAGE_NOT_IN_CONDITION'
,p_plug_display_when_condition=>'101'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
,p_plug_comment=>'Footer'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79412327923586062)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79412108535586012)
,p_button_name=>'LOGOUT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79409930004585812)
,p_button_image_alt=>'Logout'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:location.href="&LOGOUT_URL.";'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79412215967586057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79412108535586012)
,p_button_name=>'HOME'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79409930004585812)
,p_button_image_alt=>'Home'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_button_cattributes=>'data-icon="home" data-iconpos="notext" data-direction="reverse"'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(79410514356585904)
,p_tab_set=>'TS1'
,p_name=>'Tvales'
,p_step_title=>'Tvales'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Tvales'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200109171053'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(79412812962586090)
,p_name=>'TVALES'
,p_template=>wwv_flow_api.id(79408904037585792)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ROWID",',
'"NMVALE",',
'"FECHA",',
'"NOTAVIAJE",',
'"CDCLASACT",',
'"CORRACT",',
'"CANTDESPACHA",',
'"CANTPROMEDIO",',
'"CDDESPACHA",',
'"CDRECIBE",',
'"CDEMPRESA",',
'"CDTIPCOMB",',
'"NMBOMBA",',
'"OBSERVACIONES",',
'"NMORDENC",',
'"KMSALE",',
'"KMRETORNO",',
'"RECORRIDO",',
'"COD_GRUPO",',
'"CDDELEGACION",',
'"CDCLASE_COMP",',
'"CORRELCOMP",',
'"CREADO",',
'"RENDIMIENTO_REAL",',
'"RENDIMIENTO_ESTIMADO",',
'"NOBOMBA",',
'"PRECIO_GALON",',
'"ORIGEN",',
'"NOFACTURA",',
'"GRABA",',
'"AUDITADO",',
'"FECHA_ACTUALIZADO",',
'"RECORRIDO_ANT"',
' from   "TVALES" ',
''))
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(79409014617585793)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Spread Sheet'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79412916913586095)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>0
,p_column_heading=>'<br />'
,p_column_link=>'f?p=&APP_ID.:2:#APP_SESSION#::::P2_ROWID:#ROWID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="Edit" />'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'ROWID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413012426586103)
,p_query_column_id=>2
,p_column_alias=>'NMVALE'
,p_column_display_sequence=>1
,p_column_heading=>'Nmvale'
,p_column_alignment=>'RIGHT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'NMVALE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413131107586103)
,p_query_column_id=>3
,p_column_alias=>'FECHA'
,p_column_display_sequence=>2
,p_column_heading=>'Fecha'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'FECHA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413200242586103)
,p_query_column_id=>4
,p_column_alias=>'NOTAVIAJE'
,p_column_display_sequence=>3
,p_column_heading=>'Notaviaje'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'NOTAVIAJE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413305365586104)
,p_query_column_id=>5
,p_column_alias=>'CDCLASACT'
,p_column_display_sequence=>4
,p_column_heading=>'Cdclasact'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDCLASACT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413427010586104)
,p_query_column_id=>6
,p_column_alias=>'CORRACT'
,p_column_display_sequence=>5
,p_column_heading=>'Corract'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CORRACT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413529413586104)
,p_query_column_id=>7
,p_column_alias=>'CANTDESPACHA'
,p_column_display_sequence=>6
,p_column_heading=>'Cantdespacha'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CANTDESPACHA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413606651586106)
,p_query_column_id=>8
,p_column_alias=>'CANTPROMEDIO'
,p_column_display_sequence=>7
,p_column_heading=>'Cantpromedio'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CANTPROMEDIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413715316586106)
,p_query_column_id=>9
,p_column_alias=>'CDDESPACHA'
,p_column_display_sequence=>8
,p_column_heading=>'Cddespacha'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDDESPACHA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413827646586106)
,p_query_column_id=>10
,p_column_alias=>'CDRECIBE'
,p_column_display_sequence=>9
,p_column_heading=>'Cdrecibe'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDRECIBE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79413917387586106)
,p_query_column_id=>11
,p_column_alias=>'CDEMPRESA'
,p_column_display_sequence=>10
,p_column_heading=>'Cdempresa'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDEMPRESA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414017558586107)
,p_query_column_id=>12
,p_column_alias=>'CDTIPCOMB'
,p_column_display_sequence=>11
,p_column_heading=>'Cdtipcomb'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDTIPCOMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414117910586107)
,p_query_column_id=>13
,p_column_alias=>'NMBOMBA'
,p_column_display_sequence=>12
,p_column_heading=>'Nmbomba'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'NMBOMBA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414226796586107)
,p_query_column_id=>14
,p_column_alias=>'OBSERVACIONES'
,p_column_display_sequence=>13
,p_column_heading=>'Observaciones'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'OBSERVACIONES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414322592586107)
,p_query_column_id=>15
,p_column_alias=>'NMORDENC'
,p_column_display_sequence=>14
,p_column_heading=>'Nmordenc'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'NMORDENC'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414405099586109)
,p_query_column_id=>16
,p_column_alias=>'KMSALE'
,p_column_display_sequence=>15
,p_column_heading=>'Kmsale'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'KMSALE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414507978586109)
,p_query_column_id=>17
,p_column_alias=>'KMRETORNO'
,p_column_display_sequence=>16
,p_column_heading=>'Kmretorno'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'KMRETORNO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414628092586109)
,p_query_column_id=>18
,p_column_alias=>'RECORRIDO'
,p_column_display_sequence=>17
,p_column_heading=>'Recorrido'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'RECORRIDO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414702718586109)
,p_query_column_id=>19
,p_column_alias=>'COD_GRUPO'
,p_column_display_sequence=>18
,p_column_heading=>'Cod Grupo'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'COD_GRUPO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414808803586110)
,p_query_column_id=>20
,p_column_alias=>'CDDELEGACION'
,p_column_display_sequence=>19
,p_column_heading=>'Cddelegacion'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDDELEGACION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79414910915586110)
,p_query_column_id=>21
,p_column_alias=>'CDCLASE_COMP'
,p_column_display_sequence=>20
,p_column_heading=>'Cdclase Comp'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CDCLASE_COMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415032361586110)
,p_query_column_id=>22
,p_column_alias=>'CORRELCOMP'
,p_column_display_sequence=>21
,p_column_heading=>'Correlcomp'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CORRELCOMP'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415111463586110)
,p_query_column_id=>23
,p_column_alias=>'CREADO'
,p_column_display_sequence=>22
,p_column_heading=>'Creado'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'CREADO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415200209586112)
,p_query_column_id=>24
,p_column_alias=>'RENDIMIENTO_REAL'
,p_column_display_sequence=>23
,p_column_heading=>'Rendimiento Real'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'RENDIMIENTO_REAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415312051586112)
,p_query_column_id=>25
,p_column_alias=>'RENDIMIENTO_ESTIMADO'
,p_column_display_sequence=>24
,p_column_heading=>'Rendimiento Estimado'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'RENDIMIENTO_ESTIMADO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415431944586112)
,p_query_column_id=>26
,p_column_alias=>'NOBOMBA'
,p_column_display_sequence=>25
,p_column_heading=>'Nobomba'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'NOBOMBA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415505827586112)
,p_query_column_id=>27
,p_column_alias=>'PRECIO_GALON'
,p_column_display_sequence=>26
,p_column_heading=>'Precio Galon'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'PRECIO_GALON'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415609692586114)
,p_query_column_id=>28
,p_column_alias=>'ORIGEN'
,p_column_display_sequence=>27
,p_column_heading=>'Origen'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'ORIGEN'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415720486586114)
,p_query_column_id=>29
,p_column_alias=>'NOFACTURA'
,p_column_display_sequence=>28
,p_column_heading=>'Nofactura'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'NOFACTURA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415820945586114)
,p_query_column_id=>30
,p_column_alias=>'GRABA'
,p_column_display_sequence=>29
,p_column_heading=>'Graba'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'GRABA'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79415906492586117)
,p_query_column_id=>31
,p_column_alias=>'AUDITADO'
,p_column_display_sequence=>30
,p_column_heading=>'Auditado'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'AUDITADO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79416027055586117)
,p_query_column_id=>32
,p_column_alias=>'FECHA_ACTUALIZADO'
,p_column_display_sequence=>31
,p_column_heading=>'Fecha Actualizado'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'FECHA_ACTUALIZADO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(79416104225586117)
,p_query_column_id=>33
,p_column_alias=>'RECORRIDO_ANT'
,p_column_display_sequence=>32
,p_column_heading=>'Recorrido Ant'
,p_column_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_report_column_width=>3.03030303030303030303030303030303030303
,p_ref_schema=>'TRANSPORTE'
,p_ref_table_name=>'TVALES'
,p_ref_column_name=>'RECORRIDO_ANT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79423920173586337)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(79412812962586090)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79410010387585812)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:2'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(79410514356585904)
,p_tab_set=>'TS1'
,p_name=>'Tvales'
,p_step_title=>'Tvales'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_upd_yyyymmddhh24miss=>'20200109171054'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79416506874586145)
,p_plug_name=>'Edit TVALES'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79408719424585792)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79416829103586148)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79416506874586145)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79410010387585812)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79416918906586148)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(79416506874586145)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79410010387585812)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79416703319586148)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(79416506874586145)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79410010387585812)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(79417124364586159)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79417200583586231)
,p_name=>'P2_ROWID'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79417312050586231)
,p_name=>'P2_NMVALE'
,p_item_sequence=>1
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nmvale'
,p_source=>'NMVALE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79417526655586264)
,p_name=>'P2_FECHA'
,p_item_sequence=>2
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'DATE'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79417704731586264)
,p_name=>'P2_NOTAVIAJE'
,p_item_sequence=>3
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Notaviaje'
,p_source=>'NOTAVIAJE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79417917250586264)
,p_name=>'P2_CDCLASACT'
,p_item_sequence=>4
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdclasact'
,p_source=>'CDCLASACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79418110065586264)
,p_name=>'P2_CORRACT'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Corract'
,p_source=>'CORRACT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79418330835586265)
,p_name=>'P2_CANTDESPACHA'
,p_item_sequence=>6
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantdespacha'
,p_source=>'CANTDESPACHA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79418529233586265)
,p_name=>'P2_CANTPROMEDIO'
,p_item_sequence=>7
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantpromedio'
,p_source=>'CANTPROMEDIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79418713300586265)
,p_name=>'P2_CDDESPACHA'
,p_item_sequence=>8
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cddespacha'
,p_source=>'CDDESPACHA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79418907281586265)
,p_name=>'P2_CDRECIBE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdrecibe'
,p_source=>'CDRECIBE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79419117446586267)
,p_name=>'P2_CDEMPRESA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdempresa'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79419312480586267)
,p_name=>'P2_CDTIPCOMB'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdtipcomb'
,p_source=>'CDTIPCOMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79419529867586267)
,p_name=>'P2_NMBOMBA'
,p_item_sequence=>12
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nmbomba'
,p_source=>'NMBOMBA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79419731999586267)
,p_name=>'P2_OBSERVACIONES'
,p_item_sequence=>13
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Observaciones'
,p_source=>'OBSERVACIONES'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79419909596586268)
,p_name=>'P2_NMORDENC'
,p_item_sequence=>14
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nmordenc'
,p_source=>'NMORDENC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79420105471586268)
,p_name=>'P2_KMSALE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Kmsale'
,p_source=>'KMSALE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79420314633586268)
,p_name=>'P2_KMRETORNO'
,p_item_sequence=>16
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Kmretorno'
,p_source=>'KMRETORNO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79420513499586268)
,p_name=>'P2_RECORRIDO'
,p_item_sequence=>17
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recorrido'
,p_source=>'RECORRIDO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79420713905586270)
,p_name=>'P2_COD_GRUPO'
,p_item_sequence=>18
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cod Grupo'
,p_source=>'COD_GRUPO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79420930264586271)
,p_name=>'P2_CDDELEGACION'
,p_item_sequence=>19
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cddelegacion'
,p_source=>'CDDELEGACION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79421114433586271)
,p_name=>'P2_CDCLASE_COMP'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdclase Comp'
,p_source=>'CDCLASE_COMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79421309243586271)
,p_name=>'P2_CORRELCOMP'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Correlcomp'
,p_source=>'CORRELCOMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79421502961586271)
,p_name=>'P2_CREADO'
,p_item_sequence=>22
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Creado'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'CREADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'DATE'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79421706122586271)
,p_name=>'P2_RENDIMIENTO_REAL'
,p_item_sequence=>23
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rendimiento Real'
,p_source=>'RENDIMIENTO_REAL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79421904123586273)
,p_name=>'P2_RENDIMIENTO_ESTIMADO'
,p_item_sequence=>24
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rendimiento Estimado'
,p_source=>'RENDIMIENTO_ESTIMADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79422126566586273)
,p_name=>'P2_NOBOMBA'
,p_item_sequence=>25
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nobomba'
,p_source=>'NOBOMBA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79422316574586273)
,p_name=>'P2_PRECIO_GALON'
,p_item_sequence=>26
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio Galon'
,p_source=>'PRECIO_GALON'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79422523816586273)
,p_name=>'P2_ORIGEN'
,p_item_sequence=>27
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Origen'
,p_source=>'ORIGEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79422730836586275)
,p_name=>'P2_NOFACTURA'
,p_item_sequence=>28
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nofactura'
,p_source=>'NOFACTURA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79422928699586275)
,p_name=>'P2_GRABA'
,p_item_sequence=>29
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Graba'
,p_source=>'GRABA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79423121359586275)
,p_name=>'P2_AUDITADO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Auditado'
,p_source=>'AUDITADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79423317818586282)
,p_name=>'P2_FECHA_ACTUALIZADO'
,p_item_sequence=>31
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Actualizado'
,p_format_mask=>'YYYY-MM-DD'
,p_source=>'FECHA_ACTUALIZADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_HTML5'
,p_cSize=>30
,p_cMaxlength=>30
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_01=>'DATE'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79423518266586282)
,p_name=>'P2_RECORRIDO_ANT'
,p_item_sequence=>32
,p_item_plug_id=>wwv_flow_api.id(79416506874586145)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Recorrido Ant'
,p_source=>'RECORRIDO_ANT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'No help available for this page item.'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79423726794586284)
,p_process_sequence=>1
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TVALES'
,p_attribute_02=>'TVALES'
,p_attribute_03=>'P2_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79423826373586287)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TVALES'
,p_attribute_02=>'TVALES'
,p_attribute_03=>'P2_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(79410514356585904)
,p_name=>'Login'
,p_alias=>'LOGIN_JQM_SMARTPHONE'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20200109171052'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(79411013591585932)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(79408719424585792)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(79411307182585951)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(79411013591585932)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(79410010387585812)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79411103772585940)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(79411013591585932)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(79411211369585951)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(79411013591585932)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(79409616917585807)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79411501947585956)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79411407426585953)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79411704953585957)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(79411611797585957)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
