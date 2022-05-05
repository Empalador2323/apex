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
,p_default_application_id=>298
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 298 - LP_Montaje_Llantas
--
-- Application Export:
--   Application:     298
--   Name:            LP_Montaje_Llantas
--   Date and Time:   12:27 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      3
--     Items:                   12
--     Processes:                7
--     Regions:                  3
--     Buttons:                  3
--     Dynamic Actions:          2
--   Shared Components:
--     Logic:
--     Navigation:
--       Breadcrumbs:            1
--       NavBar Entries:         2
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                17
--         Region:              18
--         Label:                7
--         List:                14
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               6
--         Report:              11
--       Plug-ins:               1
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,298)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'LP_Montaje_Llantas')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_298')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'980455CCF308D35B8CF18A519399B27A8D96AB5C0BAE6689C38A5829A945E3D5'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'es-gt'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD/MM/YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(11830506438115912)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:MONTAJE'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210322121120'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8727294357049125)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8727362712049125)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8727488785049125)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8727601824049125)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8727799671049125)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8727882243049125)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11261924287476173)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(11466327424640032)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'PLUGIN_COM_SKILLBUILDERS_SUPER_LOV'
,p_attribute_01=>'CONTAINS_IGNORE'
,p_attribute_03=>'DEFAULT'
,p_attribute_04=>'drip-circle'
,p_attribute_06=>'400'
,p_attribute_07=>'Y'
,p_attribute_08=>'Your search returned no results.'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(11831019365125070)
,p_icon_sequence=>10
,p_icon_subtext=>'Inicio'
,p_icon_target=>'f?p=112:1:&SESSION.::&DEBUG.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(11279927461476306)
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
null;
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
 p_id=>wwv_flow_api.id(11281118803476328)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11262025605476181)
,p_theme_id=>25
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      <div id="uLoginContainer">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="apex.jQuery(''#uNotificationMessage'').remove();"></a>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262101960476195)
,p_page_template_id=>wwv_flow_api.id(11262025605476181)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11262201337476201)
,p_theme_id=>25
,p_name=>'No Tabs - Left Sidebar'
,p_internal_name=>'NO_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #REGION_POSITION_05#',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'      <div class="uFooterBG">',
'        <div class="uLeft"></div>',
'        <div class="uRight"></div>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262324613476201)
,p_page_template_id=>wwv_flow_api.id(11262201337476201)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262418920476201)
,p_page_template_id=>wwv_flow_api.id(11262201337476201)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262510394476201)
,p_page_template_id=>wwv_flow_api.id(11262201337476201)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262615198476201)
,p_page_template_id=>wwv_flow_api.id(11262201337476201)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262703055476201)
,p_page_template_id=>wwv_flow_api.id(11262201337476201)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11262820849476201)
,p_theme_id=>25
,p_name=>'No Tabs - Left and Right Sidebar'
,p_internal_name=>'NO_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11262913765476201)
,p_page_template_id=>wwv_flow_api.id(11262820849476201)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263005723476201)
,p_page_template_id=>wwv_flow_api.id(11262820849476201)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263121113476201)
,p_page_template_id=>wwv_flow_api.id(11262820849476201)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263228344476201)
,p_page_template_id=>wwv_flow_api.id(11262820849476201)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263313486476201)
,p_page_template_id=>wwv_flow_api.id(11262820849476201)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263411255476201)
,p_page_template_id=>wwv_flow_api.id(11262820849476201)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITOIN_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_no_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11263510030476201)
,p_theme_id=>25
,p_name=>'No Tabs - No Sidebar'
,p_internal_name=>'NO_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263609246476201)
,p_page_template_id=>wwv_flow_api.id(11263510030476201)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263709036476201)
,p_page_template_id=>wwv_flow_api.id(11263510030476201)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263815295476201)
,p_page_template_id=>wwv_flow_api.id(11263510030476201)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11263902820476201)
,p_page_template_id=>wwv_flow_api.id(11263510030476201)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11264012122476201)
,p_theme_id=>25
,p_name=>'No Tabs - Right Sidebar'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264129578476201)
,p_page_template_id=>wwv_flow_api.id(11264012122476201)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264201970476201)
,p_page_template_id=>wwv_flow_api.id(11264012122476201)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264320503476201)
,p_page_template_id=>wwv_flow_api.id(11264012122476201)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264404287476201)
,p_page_template_id=>wwv_flow_api.id(11264012122476201)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264513824476201)
,p_page_template_id=>wwv_flow_api.id(11264012122476201)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_content_frame
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11264630000476203)
,p_theme_id=>25
,p_name=>'One Level Tabs - Content Frame'
,p_internal_name=>'ONE_LEVEL_TABS_CONTENT_FRAME'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'initContentFrameTabs();'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'      <div class="uRegionHeading">',
'        <h1>#TITLE#</h1>',
'        <span class="uButtonContainer">',
'        #REGION_POSITION_02#',
'        </span>',
'      </div>',
'      <div class="uFrameContent">',
'        <div class="uFrameMain">',
'            #BODY#',
'        </div>',
'        <div class="uFrameSide">',
'          <div class="apex_cols apex_span_2 alpha omega">',
'            #REGION_POSITION_03#',
'          </div>',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_sidebar_def_reg_pos=>'BODY_3'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>10
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264721129476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264822735476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11264920462476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Content Frame Buttons'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265000544476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265108857476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265226630476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265322651476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265423137476203)
,p_page_template_id=>wwv_flow_api.id(11264630000476203)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11265523554476204)
,p_theme_id=>25
,p_name=>'One Level Tabs - Left Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265603296476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265731020476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265806516476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11265909878476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266011308476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266128070476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266201127476204)
,p_page_template_id=>wwv_flow_api.id(11265523554476204)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11266307195476204)
,p_theme_id=>25
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266424469476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266532424476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266618436476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266703942476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266813934476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11266905187476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267001851476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267128854476204)
,p_page_template_id=>wwv_flow_api.id(11266307195476204)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITON_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_no_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11267201213476206)
,p_theme_id=>25
,p_name=>'One Level Tabs - No Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>'class="regionColumns"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267315196476206)
,p_page_template_id=>wwv_flow_api.id(11267201213476206)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267417869476206)
,p_page_template_id=>wwv_flow_api.id(11267201213476206)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267519283476206)
,p_page_template_id=>wwv_flow_api.id(11267201213476206)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267627787476206)
,p_page_template_id=>wwv_flow_api.id(11267201213476206)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267714949476206)
,p_page_template_id=>wwv_flow_api.id(11267201213476206)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11267831547476206)
,p_page_template_id=>wwv_flow_api.id(11267201213476206)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11267906247476206)
,p_theme_id=>25
,p_name=>'One Level Tabs - Right Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// show / hide grid',
'function showGrid() {',
'  apex.jQuery(''.apex_grid_container'').addClass(''showGrid'');',
'};',
'function hideGrid() {',
'  apex.jQuery(''.apex_grid_container'').removeClass(''showGrid'');',
'};',
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268003435476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268104440476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268223022476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268325373476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268401609476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268500245476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268605800476206)
,p_page_template_id=>wwv_flow_api.id(11267906247476206)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_wizard_page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11268731224476206)
,p_theme_id=>25
,p_name=>'One Level Tabs - Wizard Page'
,p_internal_name=>'ONE_LEVEL_TABS_WIZARD_PAGE'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'loadWizardTrain();'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div class="cWizard">',
'      <div class="cWizardHeader">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="cWizardContentContainer">',
'        <div class="cWizardContent">',
'            #BODY#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #REGION_POSITION_05#',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268813685476206)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Wizard Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>11
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11268930012476206)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269015402476207)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Wizard Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269110613476207)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269225328476207)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269328461476207)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269422311476207)
,p_page_template_id=>wwv_flow_api.id(11268731224476206)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11269515332476207)
,p_theme_id=>25
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# id="uPopup">',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269616630476207)
,p_page_template_id=>wwv_flow_api.id(11269515332476207)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/printer_friendly
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11269718878476207)
,p_theme_id=>25
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD# class="printerFriendly">',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>5
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_12">',
'  <section class="uRegion uNoHeading uErrorRegion">',
'    <div class="uRegionContent">',
'      <p class="errorIcon"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="iconLarge error"/></p>',
'      <p><strong>#MESSAGE#</strong></p>',
'      <p>#ADDITIONAL_INFO#</p>',
'      <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'    </div>',
'    <div class="uRegionHeading">',
'      <span class="uButtonContainer">',
'        <button onclick="#BACK_LINK#" class="uButtonLarge uHotButton" type="button"><span>#OK#</span></button>',
'      </span>',
'    </div>',
'  </section>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269801641476207)
,p_page_template_id=>wwv_flow_api.id(11269718878476207)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11269914980476207)
,p_page_template_id=>wwv_flow_api.id(11269718878476207)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270028364476207)
,p_page_template_id=>wwv_flow_api.id(11269718878476207)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270130238476207)
,p_page_template_id=>wwv_flow_api.id(11269718878476207)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11270215170476207)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Left Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideLeftCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270311230476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270427083476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270502857476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270613877476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270719299476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270806317476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11270917452476207)
,p_page_template_id=>wwv_flow_api.id(11270215170476207)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11271003046476207)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_2" id="uLeftCol">',
'      <aside>',
'        #REGION_POSITION_02#',
'      </aside>',
'    </div>',
'    <div class="apex_cols apex_span_8" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271130281476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271223831476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271319162476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271415935476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271518851476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271622376476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271726766476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11271813796476207)
,p_page_template_id=>wwv_flow_api.id(11271003046476207)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITON_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_no_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11271911711476207)
,p_theme_id=>25
,p_name=>'Two Level Tabs - No Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_12">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272018625476207)
,p_page_template_id=>wwv_flow_api.id(11271911711476207)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272131427476207)
,p_page_template_id=>wwv_flow_api.id(11271911711476207)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272210202476207)
,p_page_template_id=>wwv_flow_api.id(11271911711476207)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272319141476207)
,p_page_template_id=>wwv_flow_api.id(11271911711476207)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272416213476207)
,p_page_template_id=>wwv_flow_api.id(11271911711476207)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272518129476207)
,p_page_template_id=>wwv_flow_api.id(11271911711476207)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11272613170476207)
,p_theme_id=>25
,p_name=>'Two Level Tabs - Right Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MODERNIZR_URL#',
'[if lt IE 9]#IMAGE_PREFIX#libraries/respond-js/1.1.0/respond.min.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/js/4_2#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#themes/theme_25/css/4_2.css?v=#APEX_VERSION#',
'#IMAGE_PREFIX#themes/theme_25/css/responsive_grid.css?v=#APEX_VERSION#'))
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!--[if HTML5]><![endif]-->',
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3 no-js" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'<!--[if !HTML5]>',
'  ',
'<![endif]-->',
'  <meta charset="UTF-8">',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'#APEX_CSS#',
'#THEME_CSS#',
'#TEMPLATE_CSS#',
'#THEME_STYLE_CSS#',
'#APPLICATION_CSS#',
'#PAGE_CSS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#HEAD#',
'  <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
'<div class="uParentTabs">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <ul>',
'        #PARENT_TAB_CELLS#',
'      </ul>',
'    </div>',
'  </div>  ',
'</div>',
'<header id="uHeader">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      #REGION_POSITION_07#',
'      <div class="logoBar">',
'        <h1><a href="#HOME_LINK#" id="uLogo">#LOGO#</a></h1>',
'        <div class="userBlock">',
'          <img src="#IMAGE_PREFIX#f_spacer.gif" class="navIcon user" alt="">',
'          <span>&APP_USER.</span>',
'          #NAVIGATION_BAR#',
'        </div>',
'      </div>',
'    </div>',
'  </div>',
'  <nav>',
'    <div class="apex_grid_container clearfix">',
'      <div class="apex_cols apex_span_12">',
'        <ul class="uMainNav">',
'          #TAB_CELLS#',
'          #REGION_POSITION_06#',
'        </ul>',
'        #REGION_POSITION_08#',
'      </div>',
'    </div>',
'  </nav>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBodyContainer">',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns" class="sideRightCol">',
'  <div class="apex_grid_container">',
'    <div class="apex_cols apex_span_10" id="uMidCol">',
'    #BODY#',
'    </div>',
'    <div class="apex_cols apex_span_2" id="uRightCol">',
'      <aside>',
'        #REGION_POSITION_03#',
'      </aside>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="apex_grid_container clearfix">',
'    <div class="apex_cols apex_span_12">',
'      <div class="uFooterContent">',
'        #REGION_POSITION_05#',
'        <div id="customize">#CUSTOMIZE#</div>',
'        #SCREEN_READER_TOGGLE#',
'        <span class="uFooterVersion">',
'          #APP_VERSION#',
'        </span>',
'      </div>',
'    </div>',
'  </div>',
'</footer>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion successMessage clearfix" id="uSuccessMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uSuccessMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#SUCCESS_MESSAGE_HEADING#</h2>',
'          #SUCCESS_MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <section class="uMessageRegion errorMessage clearfix" id="uNotificationMessage">',
'      <div class="uRegionContent clearfix">',
'        <a href="javascript:void(0)" onclick="apex.jQuery(''#uNotificationMessage'').remove();" class="uCloseMessage"><span class="visuallyhidden">#CLOSE_NOTIFICATION#</span></a>',
'        <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'        <div class="uMessageText">',
'          <h2 class="visuallyhidden">#ERROR_MESSAGE_HEADING#</h2>',
'          #MESSAGE#',
'        </div>',
'      </div>',
'    </section>',
'  </div>',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>#EDIT#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_template=>'#ROWS#'
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_cols apex_span_#COLUMN_SPAN_NUMBER# #FIRST_LAST_COLUMN_ATTRIBUTES#">',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_grid_javascript_debug_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(document)',
'    .on("apex-devbar-grid-debug-on", showGrid)',
'    .on("apex-devbar-grid-debug-off", hideGrid);'))
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272708845476207)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272830962476209)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11272902282476209)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11273017532476209)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11273119392476209)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11273210192476209)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11273323125476209)
,p_page_template_id=>wwv_flow_api.id(11272613170476207)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11278809055476256)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>'<button class="uButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_hot_template=>'<button class="uButton uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11278920052476262)
,p_template_name=>'Button - Icon'
,p_internal_name=>'BUTTON_ICON'
,p_template=>'<button class="uButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_hot_template=>'<button class="uButton uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>6
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_icon_only
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11279004110476264)
,p_template_name=>'Button - Icon Only'
,p_internal_name=>'BUTTON_ICON_ONLY'
,p_template=>'<button class="uButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_hot_template=>'<button class="uButton uHotButton iconOnly iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>7
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/button/large_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11279102908476264)
,p_template_name=>'Large Button'
,p_internal_name=>'LARGE_BUTTON'
,p_template=>'<button class="uButtonLarge #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span>#LABEL#</span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/button/large_button_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11279222813476264)
,p_template_name=>'Large Button - Icon'
,p_internal_name=>'LARGE_BUTTON_ICON'
,p_template=>'<button class="uButtonLarge iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton iconButton #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button"><span><i class="iL"></i>#LABEL#<i class="iR"></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/button/large_button_icon_only
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11279304960476264)
,p_template_name=>'Large Button - Icon Only'
,p_internal_name=>'LARGE_BUTTON_ICON_ONLY'
,p_template=>'<button class="uButtonLarge iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_hot_template=>'<button class="uButtonLarge uHotButton iconButton iconOnly #BUTTON_CSS_CLASSES#" onclick="#JAVASCRIPT#" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#" type="button" title="#LABEL#"><span><i></i></span></button> '
,p_translate_this_template=>'N'
,p_theme_class_id=>8
,p_theme_id=>25
);
end;
/
prompt --application/shared_components/user_interface/templates/region/accessible_region_with_heading
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11273401450476214)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Accessible Region with Heading'
,p_internal_name=>'ACCESSIBLE_REGION_WITH_HEADING'
,p_theme_id=>25
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11273502611476223)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'</section>'))
,p_page_plug_template_name=>'Alert Region'
,p_internal_name=>'ALERT_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Used for alerts and confirmations.  Please use a region image for the success/warning icon'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/borderless_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11273601434476223)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_theme_id=>25
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content without a border.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/breadcrumb_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11273719177476225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div class="uBreadcrumbs">',
'      #BODY#',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>25
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#',
'',
'',
'',
'<div id="uBreadcrumbsContainer #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'<div class="apex_grid_container">',
'  <div class="apex_cols apex_span_12">',
'    <div id="uBreadcrumbs">',
'      #BODY#',
'      <div class="uBreadcrumbsBG">',
'        <div class="uLeft"></div>',
'        <div class="uRight"></div>',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_with_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11273828482476225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>25
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_without_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11273916512476225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>25
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_frame_body_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274024763476225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer" class="#REGION_CSS_CLASSES# #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'#SUB_REGIONS#',
'</div>'))
,p_sub_plug_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uFrameRegionSelector clearfix">',
'  <ul>',
'    <li><a href="javascript:void(0);" class="showAllLink active"><span>Show All</span></a></li>',
'    #ENTRIES#',
'  </ul>',
'</div>'))
,p_sub_plug_header_entry_templ=>'<li><a href="javascript:void(0);" id="sub_#SUB_REGION_ID#"><span>#SUB_REGION_TITLE#</span></a></li>'
,p_page_plug_template_name=>'Content Frame Body Container'
,p_internal_name=>'CONTENT_FRAME_BODY_CONTAINER'
,p_theme_id=>25
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/div_region_with_id
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274118892476225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_internal_name=>'DIV_REGION_WITH_ID'
,p_theme_id=>25
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/form_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274215880476225)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>25
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(11274330438476225)
,p_plug_template_id=>wwv_flow_api.id(11274215880476225)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_expanded
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274404074476226)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Expanded)'
,p_internal_name=>'HIDE_AND_SHOW_REGION_EXPANDED'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_hidden
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274514701476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>',
'      <a href="javascript:void(0)" class="uRegionControl uRegionCollapsed"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="Hide/Show"/></a>',
'      #TITLE#',
'    </h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix" style="display: none;">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Hide and Show Region (Hidden)'
,p_internal_name=>'HIDE_AND_SHOW_REGION_HIDDEN'
,p_theme_id=>25
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274624171476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uIRRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'  <h1 class="visuallyhidden">#TITLE#</h1>',
'  #BODY#',
'</section>'))
,p_page_plug_template_name=>'Interactive Report Region'
,p_internal_name=>'INTERACTIVE_REPORT_REGION'
,p_theme_id=>25
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/modal_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274729539476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="apex_grid_container modal_grid">',
'  <div class="apex_cols apex_span_8 modal_col">',
'    <section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'      <div class="uRegionHeading">',
'        <h1>#TITLE#</h1>',
'      </div>',
'      <div class="uRegionContent clearfix">',
'        #BODY#',
'      </div>',
'        <span class="uButtonContainer">',
'          #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </span>',
'    </section>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Modal Region'
,p_internal_name=>'MODAL_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(11274830712476228)
,p_plug_template_id=>wwv_flow_api.id(11274729539476228)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11274919136476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>25
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11275006127476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>25
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tl_img.gif" border="0" width="4" height="18" alt="" /></td>',
'          <td bgcolor="#000000" height="1"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="2" valign="top" width="4" bgcolor="#FF0000"><img src="#IMAGE_PREFIX#tr_img.gif" border="0" width="4" height="18" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#FF0000" height="16">',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%">',
'              <tr>',
'                <td align=middle valign="top">',
'                  <div align="center">',
'                     <font color="#ffffff" face="Arial, Helvetica, sans-serif" size="1">',
'                      <b>#TITLE# </b></font></div>',
'                </td>',
'              </tr>',
'            </table>',
'          </td>',
'        </tr>',
'</table>',
'<table border="0" cellpadding="0" cellspacing="0">',
'   <tr>',
'   <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'   <td valign="top" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="146" height="1" border="0" alt="" /><br />',
'            <table border="0" cellpadding="1" cellspacing="0" width="146" summary="">',
'              <tr>',
'                <td colspan="2">',
'                  <table border="0" cellpadding="2" cellspacing="0" width="124" summary="">',
'                    <tr>',
'                      <td>&nbsp;</td>',
'                      <td valign="top" width="106">',
'                        <P><FONT face="arial, helvetica" size="1">',
'                            #BODY#',
'                           </font>',
'                        </P>',
'                      </td>',
'                    </tr>',
'                  </table>',
'            </table>',
'          </td>',
'          <td bgcolor="#000000" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#9a9c9a" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'          <td bgcolor="#b3b4b3" width="1" height="96"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'      </table>',
'      <table border="0" cellpadding="0" cellspacing="0">',
'        <tr>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#bl_img.gif" border="0" width="4" height="6" alt="" /></td>',
'          <td bgcolor="#ffffff" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="142" height="1" border="0" alt="" /></td>',
'          <td rowspan="4" valign="top" width="4"><img src="#IMAGE_PREFIX#br_img.gif" border="0" width="4" height="6" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#000000" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#9a9c9a" width="1"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'        <tr>',
'          <td bgcolor="#b3b4b3" width="1" height="2"><img src="#IMAGE_PREFIX#stretch.gif" width="1" height="1" border="0" alt="" /></td>',
'        </tr>',
'</table>',
''))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11275107952476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Standard Region'
,p_internal_name=>'STANDARD_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(11275204057476228)
,p_plug_template_id=>wwv_flow_api.id(11275107952476228)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(11275331673476228)
,p_plug_template_id=>wwv_flow_api.id(11275107952476228)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard_region_no_padding
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11275401242476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Standard Region - No Padding'
,p_internal_name=>'STANDARD_REGION_NO_PADDING'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>25
,p_theme_class_id=>13
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_buttons
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11275513501476228)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="cWizardButtons cWizardButtonsLeft">',
'#PREVIOUS##CLOSE#',
'</div>',
'<div class="cWizardButtons cWizardButtonsRight">',
'#NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'Wizard Buttons'
,p_internal_name=>'WIZARD_BUTTONS'
,p_theme_id=>25
,p_theme_class_id=>28
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11276703437476242)
,p_list_template_current=>'<button onclick="javascript:location.href=''#LINK#''" class="uButton uHotButton #A01#" type="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<button onclick="javascript:location.href=''#LINK#''" class="uButton #A01#" type="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>25
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/featured_list_with_subtext
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11276817218476246)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <a href="#LINK#">',
'    <h3>#TEXT#</h3>',
'    <p>#A01#</p>',
'  </a>',
'</li>'))
,p_list_template_name=>'Featured List with Subtext'
,p_internal_name=>'FEATURED_LIST_WITH_SUBTEXT'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="featuredLinksList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11276930355476246)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>25
,p_theme_class_id=>4
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uImagesList uHorizontalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277011084476246)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>25
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_wizard_progress_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277103809476248)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Horizontal Wizard Progress List'
,p_internal_name=>'HORIZONTAL_WIZARD_PROGRESS_LIST'
,p_theme_id=>25
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList hidden-phone">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/page_level_tabs_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277205197476248)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_internal_name=>'PAGE_LEVEL_TABS_LIST'
,p_theme_id=>25
,p_theme_class_id=>7
,p_list_template_before_rows=>' '
,p_list_template_after_rows=>' '
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277305566476248)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>25
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uHorizontalTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277403195476248)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="active">',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li>',
'      <a href="#LINK#">',
'        <img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" />',
'        <span>#TEXT#</span>',
'      </a>',
'    </li>'))
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>25
,p_theme_class_id=>5
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uImagesList uVerticalImagesList clearfix">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_list_with_subtext_and_icon
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277522775476248)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li>',
'    <a href="#LINK#">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="#A02#" alt="#LIST_LABEL#"/>',
'      <h3>#TEXT#</h3>',
'      <h4>#A01#</h4>',
'    </a>',
'  </li>'))
,p_list_template_name=>'Vertical List with Subtext and Icon'
,p_internal_name=>'VERTICAL_LIST_WITH_SUBTEXT_AND_ICON'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277612797476248)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>25
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277711785476248)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>25
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277803530476248)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>25
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11277929078476248)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITHOUT_BULLETS'
,p_theme_id=>25
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_vertical
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11278002196476248)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_internal_name=>'WIZARD_PROGRESS_LIST_VERTICAL'
,p_theme_id=>25
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/borderless_report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11275603826476231)
,p_row_template_name=>'Borderless Report'
,p_internal_name=>'BORDERLESS_REPORT'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer uBorderlessReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportBorderless">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(11275603826476231)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/comment_bubbles
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11275721772476240)
,p_row_template_name=>'Comment Bubbles'
,p_internal_name=>'COMMENT_BUBBLES'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#1#">',
'<div>',
'	<em>#2#</em>',
'	#3##4##5##6##7#',
'</div>',
'<span>',
'	#8# (#9#) #10#',
'</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="commentBubbles">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/fixed_headers
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11275808738476240)
,p_row_template_name=>'Fixed Headers'
,p_internal_name=>'FIXED_HEADERS'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<div class="uFixedHeadersContainer">',
'<table summary="#REGION_TITLE#" class="uReport uReportFixedHeaders">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</div>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(11275808738476240)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/horizontal_border
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11275929901476240)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportHorizontal">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(11275929901476240)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/one_column_unordered_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276012706476240)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportList" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<ul class="uReportList">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(11276012706476240)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results_report_select_link_text_link_target_detail1_detail2_last_modified
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276117187476240)
,p_row_template_name=>'Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_internal_name=>'SEARCH_RESULTS_REPORT_SELECT_LINK_TEXT,_LINK_TARGET,_DETAIL1,_DETAIL2,_LAST_MODIFIED'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="sSearchResultsReport">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="uPaginationTable">',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276200919476240)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportStandard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(11276200919476240)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_alternative
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276323123476240)
,p_row_template_name=>'Standard - Alternative'
,p_internal_name=>'STANDARD_ALTERNATIVE'
,p_row_template1=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template3=>'<td #ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="uOddRow">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="uReportContainer" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" summary="">',
'<tbody class="uReportPagination">',
'#TOP_PAGINATION#',
'</tbody>',
'<tbody class="uReportBody">',
'<tr><td>',
'<table summary="#REGION_TITLE#" class="uReport uReportAlternative">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody>',
'</table>',
'</td>',
'</tr>',
'</tbody>',
'<tbody class="uReportPagination">',
'#PAGINATION#',
'</tbody>',
'</table>',
'<div class="uReportDownloadLinks">#EXTERNAL_LINK##CSV_LINK#</div>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="uPaginationNext">#PAGINATION_NEXT_SET# <img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="#LINK#" class="uPaginationPrev"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /> #PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>25
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(11276323123476240)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/two_column_portlet
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276416403476240)
,p_row_template_name=>'Two Column Portlet'
,p_internal_name=>'TWO_COLUMN_PORTLET'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #1#',
'  </span>',
'  <span class="uValue">',
'    #2#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276509823476240)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <span class="uValueHeading">',
'    #COLUMN_HEADER#',
'  </span>',
'  <span class="uValue">',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="uValuePairs" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_left_aligned
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11276630797476240)
,p_row_template_name=>'Value Attribute Pairs - Left Aligned'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_LEFT_ALIGNED'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li>',
'  <label>',
'    #COLUMN_HEADER#',
'  </label>',
'  <span>',
'    #COLUMN_VALUE#',
'  </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="vapList tableBased" #REPORT_ATTRIBUTES# id="report_#REPORT_STATIC_ID#">'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>25
,p_theme_class_id=>6
,p_translate_this_template=>'N'
,p_row_template_comment=>'shrahman 03/12/2012 Making table based '
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_readers
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278114081476250)
,p_template_name=>'Hidden Label (Read by Screen Readers)'
,p_internal_name=>'HIDDEN_LABEL_READ_BY_SCREEN_READERS'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="visuallyhidden">'
,p_template_body2=>'</label>'
,p_before_item=>'<div id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_horizontal_left_aligned
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278200159476254)
,p_template_name=>'Optional (Horizontal - Left Aligned)'
,p_internal_name=>'OPTIONAL_HORIZONTAL_LEFT_ALIGNED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_horizontal_right_aligned
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278310658476254)
,p_template_name=>'Optional (Horizontal - Right Aligned)'
,p_internal_name=>'OPTIONAL_HORIZONTAL_RIGHT_ALIGNED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button"  title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_label_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278406104476254)
,p_template_name=>'Optional (Label Above)'
,p_internal_name=>'OPTIONAL_LABEL_ABOVE'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_horizontal_left_aligned
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278532278476254)
,p_template_name=>'Required (Horizontal - Left Aligned)'
,p_internal_name=>'REQUIRED_HORIZONTAL_LEFT_ALIGNED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_horizontal_right_aligned
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278608068476254)
,p_template_name=>'Required (Horizontal - Right Aligned)'
,p_internal_name=>'REQUIRED_HORIZONTAL_RIGHT_ALIGNED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer horizontal rightlabels" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_label_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11278701429476256)
,p_template_name=>'Required (Label Above)'
,p_internal_name=>'REQUIRED_LABEL_ABOVE'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" class="uAsterisk" />'
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="visuallyhidden">(#VALUE_REQUIRED#)</span></label>',
'<button class="uButton iconButton iconOnly altButton help itemHelpButton" onclick="uShowItemHelp(''#CURRENT_ITEM_NAME#'');return false;" id="hb_#CURRENT_ITEM_NAME#" type="button" title="#CURRENT_ITEM_HELP_LABEL#"><span><i></i></span></button>',
'<span class="uItemHelp" data-item-id="#CURRENT_ITEM_NAME#">#CURRENT_ITEM_HELP_TEXT#</span>',
'<div class="fieldControls">'))
,p_before_item=>'<div class="fieldContainer vertical" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'</div>'))
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>25
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(11279426896476264)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'<li class="uStartCap"><span></span></li>'))
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><span></span></li>'
,p_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="uEndCap"><span></span></li>',
'</ul>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(11279606701476276)
,p_popup_icon=>'#IMAGE_PREFIX#f_spacer.gif'
,p_popup_icon_attr=>'alt="#LIST_OF_VALUES#" title="#LIST_OF_VALUES#" class="uPopupLOVIcon"'
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
'<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" />',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_25/css/4_2.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="lovButton hotButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="lovButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="lovButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="lovButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>25
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(11279529044476268)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th id="#DY#" scope="col" class="uCalDayCol">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_day_open_format=>'<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="uDay today" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_weekend_open_format=>'<td class="uDay" headers="#DY#">#TITLE_FORMAT#<div class="uDayData">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="aCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_weekly_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_weekly_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="uCalHour">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="aCalDayCol">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly uCalDaily">',
'<h1 class="uMonth">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="uCal">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_daily_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_daily_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="listCalendar">',
'  <li class="monthHeader">',
'    <h1>#IMONTH# #YYYY#</h1>',
'  </li>',
'  #DAYS#',
'  <li class="listEndCap"></li>',
'</ul>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="dayHeader past">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="dayHeader today">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="dayHeader future">',
'    <h2>#IDAY# <span>#IMONTH# #DD#</span></h2>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="dayData past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="dayData today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="dayData future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>25
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(11279705046476285)
,p_theme_id=>25
,p_theme_name=>'Blue Responsive'
,p_theme_internal_name=>'BLUE_RESPONSIVE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(11267201213476206)
,p_error_template=>wwv_flow_api.id(11263510030476201)
,p_printer_friendly_template=>wwv_flow_api.id(11269718878476207)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(11262025605476181)
,p_default_button_template=>wwv_flow_api.id(11278809055476256)
,p_default_region_template=>wwv_flow_api.id(11275107952476228)
,p_default_chart_template=>wwv_flow_api.id(11275107952476228)
,p_default_form_template=>wwv_flow_api.id(11274215880476225)
,p_default_reportr_template=>wwv_flow_api.id(11275107952476228)
,p_default_tabform_template=>wwv_flow_api.id(11275107952476228)
,p_default_wizard_template=>wwv_flow_api.id(11274215880476225)
,p_default_menur_template=>wwv_flow_api.id(11273719177476225)
,p_default_listr_template=>wwv_flow_api.id(11275107952476228)
,p_default_irr_template=>wwv_flow_api.id(11274624171476228)
,p_default_report_template=>wwv_flow_api.id(11276200919476240)
,p_default_label_template=>wwv_flow_api.id(11278310658476254)
,p_default_menu_template=>wwv_flow_api.id(11279426896476264)
,p_default_calendar_template=>wwv_flow_api.id(11279529044476268)
,p_default_list_template=>wwv_flow_api.id(11277803530476248)
,p_default_option_label=>wwv_flow_api.id(11278310658476254)
,p_default_required_label=>wwv_flow_api.id(11278608068476254)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(25),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
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
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(11280020956476309)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(11830506438115912)
,p_name=>' CUSTOM'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_auth'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=LPSIG:101:&SESSION.:LOGOUT'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/item_type/com_skillbuilders_super_lov
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(35184271759786640911)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM_SKILLBUILDERS_SUPER_LOV'
,p_display_name=>'SkillBuilders Super LOV (2.0.2)'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM_SKILLBUILDERS_SUPER_LOV'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION apex_super_lov_render (',
'   p_item                IN APEX_PLUGIN.T_PAGE_ITEM,',
'   p_plugin              IN APEX_PLUGIN.T_PLUGIN,',
'   p_value               IN VARCHAR2,',
'   p_is_readonly         IN BOOLEAN,',
'   p_is_printer_friendly IN BOOLEAN ',
')',
'',
'   RETURN APEX_PLUGIN.T_PAGE_ITEM_RENDER_RESULT',
'   ',
'IS',
'',
'   l_retval                  APEX_PLUGIN.T_PAGE_ITEM_RENDER_RESULT;',
'   lc_not_enterable          CONSTANT VARCHAR2(30) := ''NOT_ENTERABLE'';',
'   lc_enterable_unrestricted CONSTANT VARCHAR2(30) := ''ENTERABLE_UNRESTRICTED'';',
'   lc_enterable_restricted   CONSTANT VARCHAR2(30) := ''ENTERABLE_RESTRICTED'';',
'   l_name                    VARCHAR2(30);',
'   l_dialog_title            VARCHAR2(32767) := NVL(p_item.attribute_02, p_item.plain_label);',
'   l_dis_ret_cols            VARCHAR2(10) := NVL(p_item.attribute_03, ''2,1'');',
'   l_searchable_cols         VARCHAR2(32767) := p_item.attribute_04;',
'   l_hidden_cols             VARCHAR2(32767) := p_item.attribute_05;',
'   l_map_from_cols           VARCHAR2(32767) := p_item.attribute_06;',
'   l_map_to_items            VARCHAR2(32767) := p_item.attribute_07;',
'   l_enterable               VARCHAR2(30) := NVL(p_item.attribute_08, lc_not_enterable);',
'   l_max_rows_per_page       PLS_INTEGER := NVL(p_item.attribute_09, 15);',
'   l_search_type             VARCHAR2(32767) := NVL(p_plugin.attribute_01, apex_plugin_util.c_search_contains_ignore);',
'   l_loading_image_type      VARCHAR2(30) := NVL(p_plugin.attribute_03, ''DEFAULT'');',
'   l_loading_image_def       VARCHAR2(30) := NVL(p_plugin.attribute_04, ''bar'');',
'   l_loading_image_cust      VARCHAR2(32767) := NVL(p_plugin.attribute_05, apex_application.g_image_prefix || ''processing3.gif'');',
'   l_effects_speed           NUMBER := NVL(p_plugin.attribute_06, 400);',
'   l_clear_protection        VARCHAR2(1) := NVL(p_plugin.attribute_07, ''Y'');',
'   l_no_data_found_msg       VARCHAR2(32767) := NVL(p_plugin.attribute_08, ''Your search returned no results.'');',
'   l_return_col_num          PLS_INTEGER;',
'   l_display_col_num         PLS_INTEGER;',
'   l_loading_image_src       VARCHAR2(32767);',
'   l_display_value           VARCHAR2(32767);',
'   l_onload_code             VARCHAR2(32767);',
'   l_sql_handler             APEX_PLUGIN_UTIL.T_SQL_HANDLER;',
'   l_display_values          WWV_FLOW_GLOBAL.VC_ARR2;',
'   l_search_values           WWV_FLOW_GLOBAL.VC_ARR2;',
'   l_js_headers_array        VARCHAR2(32767);',
'   l_crlf                    CHAR(2) := CHR(13)||CHR(10);',
'   ',
'BEGIN',
'',
'   IF apex_application.g_debug',
'   THEN',
'      apex_plugin_util.debug_page_item (',
'         p_plugin              => p_plugin,',
'         p_page_item           => p_item,',
'         p_value               => p_value,',
'         p_is_readonly         => p_is_readonly,',
'         p_is_printer_friendly => p_is_printer_friendly',
'      );',
'   END IF;',
'   ',
'   IF l_loading_image_type = ''DEFAULT''',
'   THEN',
'      l_loading_image_src := p_plugin.file_prefix || l_loading_image_def || ''.gif'';',
'   ELSE',
'      l_loading_image_src := REPLACE(l_loading_image_cust, ''#IMAGE_PREFIX#'', apex_application.g_image_prefix);',
'      l_loading_image_src := REPLACE(l_loading_image_src, ''#PLUGIN_PREFIX#'', p_plugin.file_prefix);',
'   END IF;',
'   ',
'   l_display_col_num := SUBSTR(l_dis_ret_cols, 1, INSTR(l_dis_ret_cols, '','') - 1);',
'   ',
'   IF l_searchable_cols IS NOT NULL',
'      AND INSTR('','' || l_searchable_cols || '','', '','' || l_display_col_num || '','') = 0',
'   THEN',
'      --User forgot to add display column as a searchable column, let''s do it for them',
'      l_searchable_cols := l_display_col_num || '','' || l_searchable_cols;',
'   END IF;',
'   ',
'   IF l_hidden_cols IS NOT NULL',
'   THEN',
'      l_hidden_cols := '','' || l_hidden_cols || '','';',
'      ',
'      IF INSTR(l_hidden_cols, '','' || l_display_col_num || '','') > 0',
'      THEN',
'         --User mared display column as hidden, let''s remove it for them',
'         l_hidden_cols := REPLACE(l_hidden_cols, '','' || l_display_col_num || '','', '''');',
'      END IF;',
'      ',
'      l_hidden_cols := TRIM(BOTH '','' FROM l_hidden_cols);',
'   END IF;',
'   ',
'   l_return_col_num := SUBSTR(l_dis_ret_cols, INSTR(l_dis_ret_cols, '','') + 1);',
'   l_search_values(1) := p_value;',
'',
'   l_sql_handler := apex_plugin_util.get_sql_handler (',
'      p_sql_statement  => p_item.lov_definition,',
'      p_min_columns    => 2,',
'      p_max_columns    => 100,',
'      p_component_name => p_item.name',
'   ); ',
'   ',
'   l_display_values := apex_plugin_util.get_display_data(',
'      p_sql_handler       => l_sql_handler,',
'      p_display_column_no => l_display_col_num,',
'      p_search_column_no  => l_return_col_num,',
'      p_search_value_list => l_search_values,',
'      p_display_extra     => p_item.lov_display_extra ',
'   );',
'   ',
'   IF l_display_values.exists(1) ',
'   THEN',
'      l_display_value := l_display_values(1);',
'   ELSIF l_enterable = lc_enterable_unrestricted',
'   THEN',
'      l_display_value := p_value;',
'   END IF;',
'   ',
'   l_js_headers_array := ''['''''';',
'   ',
'   FOR x IN 1 .. l_sql_handler.column_list.count',
'   LOOP',
'      l_js_headers_array := l_js_headers_array || apex_javascript.escape(l_sql_handler.column_list(x).col_name) || '''''','''''';',
'   END LOOP;',
'   ',
'   l_js_headers_array := RTRIM(l_js_headers_array, '''''','''''') || '''''']'';',
'   ',
'   apex_plugin_util.free_sql_handler(l_sql_handler);',
'',
'   IF p_is_readonly OR p_is_printer_friendly',
'   THEN',
'      apex_plugin_util.print_hidden_if_readonly (',
'         p_item_name           => p_item.name,',
'         p_value               => p_value,',
'         p_is_readonly         => p_is_readonly,',
'         p_is_printer_friendly => p_is_printer_friendly',
'      );',
'      ',
'      apex_plugin_util.print_display_only (',
'         p_item_name        => p_item.name,',
'         p_display_value    => l_display_value,',
'         p_show_line_breaks => FALSE,',
'         p_escape           => TRUE,',
'         p_attributes       => p_item.element_attributes',
'      );',
'   ELSE',
'      l_name := apex_plugin.get_input_name_for_page_item(FALSE);',
'      ',
'      sys.htp.p(',
'            ''<input type="hidden" name="'' || l_name || ''" id="'' || p_item.name || ''_HIDDENVALUE" value="'' || sys.htf.escape_sc(p_value) || ''" />'' || l_crlf',
'         || ''<fieldset id="'' || p_item.name || ''_fieldset" class="superlov-controls lov '' ||',
'            CASE l_enterable',
'               WHEN lc_not_enterable THEN ''super-lov-not-enterable''',
'               WHEN lc_enterable_unrestricted THEN ''super-lov-enterable-unrestricted''',
'               WHEN lc_enterable_restricted THEN ''super-lov-enterable-restricted''',
'            END',
'         || ''">'' || l_crlf',
'         || ''   <table cellspacing="0" cellpadding="0" border="0" id="'' || p_item.name || ''_holder" class="lov" summary="">'' || l_crlf',
'         || ''      <tbody>'' || l_crlf',
'         || ''         <tr>'' || l_crlf',
'         || ''            <td class="lov">'' || l_crlf',
'         || ''               <input class="superlov-input popup_lov" type="text" '' || ',
'                               CASE',
'                                  WHEN l_enterable = lc_not_enterable',
'                                  THEN ''disabled="disabled" onfocus="this.blur();"''',
'                               END',
'                            || '' value="'' || sys.htf.escape_sc(l_display_value) || ''" maxlength="'' || p_item.element_max_length || ''" size="''',
'                            || p_item.element_width || ''" id="'' || p_item.name || ''" '' || p_item.element_attributes',
'                            || '' />'' || l_crlf',
'         || CASE ',
'               WHEN l_enterable IN (lc_enterable_unrestricted, lc_enterable_restricted)',
'               THEN ''               <script>'' || l_crlf ||',
'                    ''                  $("#'' || p_item.name || ''").bind("change", function(evnt) {'' || l_crlf ||',
'                    ''                     if (!$(this).apex_super_lov("changePropagationAllowed")) {'' || l_crlf ||',
'                    ''                        evnt.stopImmediatePropagation();'' || l_crlf ||',
'                    ''                     }'' || l_crlf ||',
'                    ''                  });'' || l_crlf ||',
'                    ''               </script>'' || l_crlf',
'            END',
'         || ''            </td>'' || l_crlf',
'         || ''            <td>'' || l_crlf',
'         || ''               <div class="superlov-control-buttons">'' || l_crlf',
'         || ''                  <button type="button" class="superlov-modal-delete">&nbsp;</button>'' || l_crlf',
'         || ''                  <button type="button" class="superlov-modal-open">&nbsp;</button>'' || l_crlf',
'         || ''                  '' || l_crlf',
'         || ''               </div>'' || l_crlf',
'         || ''            </td>'' || l_crlf',
'         || ''         </tr>'' || l_crlf',
'         || ''      </tbody>'' || l_crlf',
'         || ''   </table>'' || l_crlf',
'         || ''</fieldset>'' || l_crlf',
'      );',
'      ',
'      apex_css.add_file(',
'         p_name      => ''apex_super_lov'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => NULL',
'      );',
'',
'      apex_javascript.add_library(',
'         p_name      => ''jquery.ui.button'',',
'         p_directory => ''#JQUERYUI_DIRECTORY#ui/'',',
'         p_version   => NULL',
'      );',
'',
'      apex_javascript.add_library(',
'         p_name      => ''apex_super_lov.min'',',
'         --p_name      => ''apex_super_lov'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => NULL',
'      );',
'',
'      l_onload_code := ''apex.jQuery("input#'' || p_item.name || ''").apex_super_lov({'' || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''enterable'', l_enterable) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''returnColNum'', l_return_col_num) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''displayColNum'', l_display_col_num) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''hiddenCols'', sys.htf.escape_sc(l_hidden_cols)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''searchableCols'', l_searchable_cols) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''mapFromCols'', l_map_from_cols) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''mapToItems'', l_map_to_items) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''maxRowsPerPage'', l_max_rows_per_page) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''noDataFoundMsg'', sys.htf.escape_sc(l_no_data_found_msg)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''dialogTitle'', sys.htf.escape_sc(l_dialog_title)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''effectsSpeed'', l_effects_speed) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''useClearProtection'', l_clear_protection) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''loadingImageSrc'', sys.htf.escape_sc(l_loading_image_src)) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''dependingOnSelector'', sys.htf.escape_sc(apex_plugin_util.page_item_names_to_jquery(p_item.lov_cascade_parent_items))) || l_crlf',
'         || ''   '' || apex_javascript.add_attribute(''pageItemsToSubmit'', sys.htf.escape_sc(apex_plugin_util.page_item_names_to_jquery(p_item.ajax_items_to_submit))) || l_crlf',
'         || ''   "ajaxIdentifier": "'' || apex_plugin.get_ajax_identifier() || ''",'' || l_crlf',
'         || ''   "reportHeaders": '' || l_js_headers_array || l_crlf',
'         || ''});'';',
'         ',
'      apex_javascript.add_onload_code(',
'         p_code => l_onload_code',
'      ); ',
'   END IF;',
'',
'   IF l_enterable = lc_not_enterable',
'   THEN',
'      l_retval.is_navigable := FALSE;',
'   ELSE',
'      l_retval.is_navigable := TRUE;',
'   END IF;',
'        ',
'   RETURN l_retval;',
'',
'EXCEPTION',
'',
'   WHEN OTHERS',
'   THEN',
'      apex_plugin_util.free_sql_handler(l_sql_handler);',
'    ',
'END apex_super_lov_render;',
'',
'FUNCTION apex_super_lov_ajax (',
'   p_item   IN APEX_PLUGIN.T_PAGE_ITEM,',
'   p_plugin IN APEX_PLUGIN.T_PLUGIN',
')',
'',
'   RETURN APEX_PLUGIN.T_PAGE_ITEM_AJAX_RESULT',
'',
'IS',
'',
'   l_column_value_list APEX_PLUGIN_UTIL.T_COLUMN_VALUE_LIST2;     ',
'   l_dis_ret_cols      VARCHAR2(10) := NVL(p_item.attribute_03, ''2,1'');',
'   l_searchable_cols   VARCHAR2(32767) := p_item.attribute_04;',
'   l_hidden_cols       VARCHAR2(32767) := p_item.attribute_05;',
'   l_map_from_cols     VARCHAR2(32767) := p_item.attribute_06;',
'   l_map_to_items      VARCHAR2(32767) := p_item.attribute_07;',
'   l_max_rows_per_page PLS_INTEGER := NVL(p_item.attribute_09, 15); ',
'   l_show_null_as      VARCHAR2(10) := NVL(p_item.attribute_10, ''&nbsp;'');',
'   l_map_from_parts    WWV_FLOW_GLOBAL.VC_ARR2;',
'   l_map_to_parts      WWV_FLOW_GLOBAL.VC_ARR2;',
'   l_search_type       VARCHAR2(32767) := NVL(p_plugin.attribute_01, apex_plugin_util.c_search_contains_ignore);',
'   l_return_col_num    PLS_INTEGER;',
'   l_display_col_num   PLS_INTEGER;',
'   l_lov_base_query    VARCHAR2(32767) := p_item.lov_definition;',
'   l_ajax_function     VARCHAR2(32767) := apex_application.g_x01;',
'   l_pagination        VARCHAR2(32767) := apex_application.g_x02;',
'   l_search_column_no  VARCHAR2(32767) := apex_application.g_x03;',
'   l_search_string     VARCHAR2(32767) := apex_application.g_x04;',
'   l_fetch_lov_id      NUMBER := apex_application.g_x05;',
'   l_return_val_search VARCHAR2(32767) := apex_application.g_x06;',
'   l_pagination_parts  WWV_FLOW_GLOBAL.VC_ARR2;',
'   l_crlf              CHAR(2) := CHR(13)||CHR(10);',
'',
'   FUNCTION column_row_value (',
'      p_row           IN PLS_INTEGER,',
'      p_column_values IN APEX_PLUGIN_UTIL.T_COLUMN_VALUES',
'   )',
'',
'      RETURN VARCHAR2',
'',
'   IS',
'',
'   BEGIN',
'',
'      IF p_column_values.data_type = apex_plugin_util.c_data_type_varchar2',
'      THEN',
'         RETURN p_column_values.value_list(p_row).varchar2_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_number',
'      THEN',
'         RETURN p_column_values.value_list(p_row).number_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_date',
'      THEN',
'         RETURN p_column_values.value_list(p_row).date_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_timestamp',
'      THEN',
'         RETURN p_column_values.value_list(p_row).timestamp_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_timestamp_tz',
'      THEN',
'         RETURN p_column_values.value_list(p_row).timestamp_tz_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_timestamp_ltz',
'      THEN',
'         RETURN p_column_values.value_list(p_row).timestamp_ltz_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_interval_y2m',
'      THEN',
'         RETURN p_column_values.value_list(p_row).interval_y2m_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_interval_d2s',
'      THEN',
'         RETURN p_column_values.value_list(p_row).interval_d2s_value;',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_blob',
'      THEN',
'         RETURN ''[BLOB_DATATYPE]'';',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_bfile',
'      THEN',
'         RETURN ''[BFILE_DATATYPE]'';',
'      ELSIF p_column_values.data_type = apex_plugin_util.c_data_type_clob',
'      THEN',
'         RETURN p_column_values.value_list(p_row).clob_value;',
'      ELSE',
'         RETURN ''[INVALID_DATATYPE]'';',
'      END IF;',
'',
'   END column_row_value; ',
'  ',
'BEGIN',
'   ',
'   l_display_col_num := SUBSTR(l_dis_ret_cols, 1, INSTR(l_dis_ret_cols, '','') - 1);',
'   l_return_col_num := SUBSTR(l_dis_ret_cols, INSTR(l_dis_ret_cols, '','') + 1);',
'   l_hidden_cols := '','' || l_hidden_cols || '','';',
'   ',
'   IF l_searchable_cols IS NOT NULL',
'      AND INSTR('','' || l_searchable_cols || '','', '','' || l_display_col_num || '','') = 0',
'   THEN ',
'      --User forgot to add display column as a searchable column, let''s do it for them',
'      l_searchable_cols := l_display_col_num || '','' || l_searchable_cols;',
'   END IF;',
'   ',
'   IF INSTR(l_hidden_cols, '','' || l_display_col_num || '','') > 0',
'   THEN',
'      --User mared display column as hidden, let''s remove it for them',
'      l_hidden_cols := REPLACE(l_hidden_cols, '','' || l_display_col_num || '','', '''');',
'   END IF;',
'   ',
'   l_hidden_cols := TRIM(BOTH '','' FROM l_hidden_cols);',
'   l_hidden_cols := '','' || l_hidden_cols || '',''; --Prep for repeated INSTRs later',
'',
'   IF l_ajax_function = ''FETCH_LOV''',
'   THEN',
'      l_pagination_parts := apex_util.string_to_table(l_pagination);    ',
'',
'      IF l_search_string IS NOT NULL',
'      THEN',
'         IF l_searchable_cols IS NOT NULL ',
'            AND INSTR('','' || l_searchable_cols || '','', '','' || l_search_column_no || '','') = 0',
'         THEN',
'            RAISE_APPLICATION_ERROR(-20001, ''Super LOV Exception: Search attempt on non-searchable column.'');',
'         END IF;',
'      ',
'         l_search_string := apex_plugin_util.get_search_string(',
'            p_search_type   => l_search_type,',
'            p_search_string => l_search_string ',
'         );',
'      ',
'         l_column_value_list := apex_plugin_util.get_data2(',
'            p_sql_statement    => l_lov_base_query, ',
'            p_min_columns      => 2, ',
'            p_max_columns      => 100, ',
'            p_component_name   => p_item.name,',
'            p_search_type      => l_search_type,',
'            p_search_column_no => l_search_column_no,',
'            p_search_string    => l_search_string,',
'            p_first_row        => l_pagination_parts(1),',
'            p_max_rows         => l_pagination_parts(2) + 1',
'         );',
'      ELSE',
'         l_column_value_list := apex_plugin_util.get_data2(',
'            p_sql_statement  => l_lov_base_query, ',
'            p_min_columns    => 2, ',
'            p_max_columns    => 100, ',
'            p_component_name => p_item.name,',
'            p_first_row      => l_pagination_parts(1),',
'            p_max_rows       => l_pagination_parts(2) + 1',
'         );   ',
'      END IF;',
'      ',
'      sys.htp.p(''<table id="superlov-fetch-results" cellspacing="0" cellpadding="0" border="0" '' || ',
'         ''data-fetch-lov-id="'' || l_fetch_lov_id || ''" class="superlov-table ui-widget ui-widget-content ui-corner-all">'');',
'      sys.htp.p(''<thead>'');',
'      sys.htp.p(''<tr>'');',
'      ',
'',
'      FOR x IN 1 .. l_column_value_list.count',
'      LOOP',
'         IF INSTR(l_hidden_cols, '','' || x || '','') = 0',
'         THEN',
'            sys.htp.prn(''<th class="ui-widget-header">'');',
'            sys.htp.prn(l_column_value_list(x).name);',
'            sys.htp.prn(''</th>'');',
'         END IF;',
'      END LOOP;',
'',
'      sys.htp.p(''</tr>'');',
'      sys.htp.p(''</thead>'');',
'      sys.htp.p(''<tbody>'');',
'      ',
'      FOR x IN 1 .. LEAST(l_column_value_list(1).value_list.count, l_max_rows_per_page)',
'      LOOP ',
'         sys.htp.p(',
'            ''<tr data-return="'' || sys.htf.escape_sc(column_row_value(x, l_column_value_list(l_return_col_num))) ',
'            || ''" data-display="'' || sys.htf.escape_sc(column_row_value(x, l_column_value_list(l_display_col_num))) ',
'            || ''"''',
'         );',
'         ',
'         FOR y IN 1 .. l_column_value_list.count',
'         LOOP',
'            IF INSTR(l_hidden_cols, '','' || y || '','') > 0',
'            THEN',
'               sys.htp.prn('' data-col'' || y || ''-value="'');',
'               sys.htp.prn(NVL(sys.htf.escape_sc(column_row_value(x, l_column_value_list(y))), l_show_null_as));',
'               sys.htp.prn(''"'');',
'            END IF;',
'         END LOOP;',
'         ',
'         sys.htp.p(''>'');',
'         ',
'         IF p_item.escape_output',
'         THEN',
'            FOR y IN 1 .. l_column_value_list.count',
'            LOOP',
'               IF INSTR(l_hidden_cols, '','' || y || '','') = 0',
'               THEN',
'                  sys.htp.prn(''<td class="ui-state-default asl-col'' || y || ''">'');',
'                  sys.htp.prn(NVL(sys.htf.escape_sc(column_row_value(x, l_column_value_list(y))), l_show_null_as));',
'                  sys.htp.prn(''</td>'');',
'               END IF;',
'            END LOOP;',
'         ELSE',
'            FOR y IN 1 .. l_column_value_list.count',
'            LOOP',
'               IF INSTR(l_hidden_cols, '','' || y || '','') = 0',
'               THEN',
'                  sys.htp.prn(''<td class="ui-state-default asl-col'' || y || ''">'');',
'                  sys.htp.prn(NVL(column_row_value(x, l_column_value_list(y)), l_show_null_as));',
'                  sys.htp.prn(''</td>'');',
'               END IF;',
'            END LOOP;',
'         END IF;',
'         ',
'         sys.htp.p(''</tr>'');',
'      END LOOP;',
'      ',
'      sys.htp.p(''</tbody></table>'');',
'      ',
'      IF l_column_value_list(1).value_list.count > l_max_rows_per_page',
'      THEN',
'         sys.htp.p(''<input id="asl-super-lov-more-rows" type="hidden" value="Y" />'');',
'      ELSE',
'         sys.htp.p(''<input id="asl-super-lov-more-rows" type="hidden" value="N" />'');',
'      END IF;',
'   ELSIF l_ajax_function = ''GET_VALUES_BY_RETURN''',
'   THEN',
'      l_search_string := apex_plugin_util.get_search_string(',
'         p_search_type   => apex_plugin_util.c_search_lookup,',
'         p_search_string => l_return_val_search',
'      );',
'   ',
'      l_column_value_list := apex_plugin_util.get_data2(',
'         p_sql_statement    => l_lov_base_query, ',
'         p_min_columns      => 2, ',
'         p_max_columns      => 100, ',
'         p_component_name   => p_item.name,',
'         p_search_type      => apex_plugin_util.c_search_lookup,',
'         p_search_column_no => l_return_col_num,',
'         p_search_string    => l_search_string',
'      );',
'      ',
'      sys.htp.p(''{'');',
'      ',
'      IF l_column_value_list(1).value_list.count = 0 ',
'      THEN',
'         sys.htp.p(''"matchFound": false'');',
'      ELSIF l_column_value_list(1).value_list.count > 1 ',
'      THEN',
'         sys.htp.p(''"matchFound": false,'');',
'         sys.htp.p(''"error": "too many rows"'');',
'      ELSE',
'         sys.htp.p(''"matchFound": true,'');',
'         sys.htp.p(   ''"displayVal": "'' || APEX_JAVASCRIPT.ESCAPE(column_row_value(1, l_column_value_list(l_display_col_num))) || ''",'');',
'         sys.htp.p(   ''"returnVal": "'' || APEX_JAVASCRIPT.ESCAPE(column_row_value(1, l_column_value_list(l_return_col_num))) || ''"'');',
'         ',
'         l_map_from_parts := apex_util.string_to_table(l_map_from_cols, '','');',
'         l_map_to_parts := apex_util.string_to_table(l_map_to_items, '','');',
'         ',
'         IF l_map_from_parts.COUNT > 0 THEN',
'            sys.htp.p('', "mappedColumns": ['');',
'            FOR i IN 1 .. l_map_from_parts.COUNT',
'            LOOP',
'               IF i != 1 THEN',
'                  sys.htp.p('','');',
'               END IF;',
'               sys.htp.p(''{'');',
'               sys.htp.p(   ''"mapItem": "'' || APEX_JAVASCRIPT.ESCAPE(l_map_to_parts(i)) || ''",'');',
'               sys.htp.p(   ''"mapVal": "'' || APEX_JAVASCRIPT.ESCAPE(column_row_value(1, l_column_value_list(l_map_from_parts(i)))) || ''"'');',
'               sys.htp.p(''}'');',
'            END LOOP;',
'            sys.htp.p('']'');',
'         END IF;',
'      END IF;',
'      ',
'      sys.htp.p(''}'');',
'   END IF;',
'',
'   RETURN NULL;',
'',
'END apex_super_lov_ajax;',
'',
'FUNCTION apex_super_lov_validation (',
'   p_item   IN APEX_PLUGIN.T_PAGE_ITEM,',
'   p_plugin IN APEX_PLUGIN.T_PLUGIN,',
'   p_value  IN VARCHAR2',
')',
'',
'   RETURN APEX_PLUGIN.T_PAGE_ITEM_VALIDATION_RESULT',
'',
'IS',
'',
'   l_retval                  APEX_PLUGIN.T_PAGE_ITEM_VALIDATION_RESULT;',
'   lc_not_enterable          CONSTANT VARCHAR2(30) := ''NOT_ENTERABLE'';',
'   lc_enterable_unrestricted CONSTANT VARCHAR2(30) := ''ENTERABLE_UNRESTRICTED'';',
'   l_return_value            VARCHAR2(32767);',
'   l_validate_value          VARCHAR2(1) := NVL(p_item.attribute_01, ''Y'');',
'   l_dis_ret_cols            VARCHAR2(10) := NVL(p_item.attribute_03, ''2,1'');',
'   l_enterable               VARCHAR2(30) := NVL(p_item.attribute_08, lc_not_enterable);',
'   l_return_col_num          PLS_INTEGER;',
'',
'BEGIN',
'',
'',
'   IF p_value IS NOT NULL',
'      AND l_enterable != lc_enterable_unrestricted',
'      AND l_validate_value = ''Y'' ',
'   THEN',
'      l_return_col_num := SUBSTR(l_dis_ret_cols, INSTR(l_dis_ret_cols, '','') + 1);',
'   ',
'      l_return_value := apex_plugin_util.get_display_data (',
'         p_sql_statement     => p_item.lov_definition,',
'         p_min_columns       => 1,',
'         p_max_columns       => 100,',
'         p_component_name    => p_item.name,',
'         p_display_column_no => l_return_col_num,',
'         p_search_column_no  => l_return_col_num,',
'         p_search_string     => p_value,',
'         p_display_extra     => FALSE --Can''t trust this value',
'      );',
'      ',
'      IF l_return_value IS NULL',
'      THEN',
'         l_retval.message := ''#LABEL# contains a value that was not in the list of values.'';',
'      END IF;',
'   END IF;',
'   ',
'   RETURN l_retval;',
'',
'END apex_super_lov_validation;'))
,p_api_version=>1
,p_render_function=>'apex_super_lov_render'
,p_ajax_function=>'apex_super_lov_ajax'
,p_validation_function=>'apex_super_lov_validation'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:ELEMENT:WIDTH:ELEMENT_OPTION:LOV:CASCADING_LOV'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<br />',
''))
,p_version_identifier=>'2.0.2'
,p_about_url=>'http://skillbuilders.com/download/download-resource.cfm?file=Oracle-Apex/plugins/sbip_super_lov/instructions.pdf'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37777544921387842956)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Search Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'CONTAINS_IGNORE'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this setting to control how search strings are used to filter the LOV result set. '
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777561433639855936)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>10
,p_display_value=>'Contains/Case (uses INSTR)'
,p_return_value=>'CONTAINS_CASE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777570522688862249)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>20
,p_display_value=>'Contains/Ignore (uses INSTR with UPPER)'
,p_return_value=>'CONTAINS_IGNORE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777572027190863561)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>30
,p_display_value=>'Exact/Case (uses LIKE value%)'
,p_return_value=>'EXACT_CASE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777575433077865283)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>40
,p_display_value=>'Exact/Ignore (uses LIKE VALUE% with UPPER)'
,p_return_value=>'EXACT_IGNORE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777589439657867163)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>50
,p_display_value=>'Like/Case (uses LIKE %value%)'
,p_return_value=>'LIKE_CASE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777592012083868640)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>60
,p_display_value=>'Like/Ignore (uses LIKE %VALUE% with UPPER)'
,p_return_value=>'LIKE_IGNORE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37777604019356870725)
,p_plugin_attribute_id=>wwv_flow_api.id(37777544921387842956)
,p_display_sequence=>70
,p_display_value=>'Lookup (uses = value)'
,p_return_value=>'LOOKUP'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37779289316782409250)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Loading Image Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'DEFAULT'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Use this setting to choose between a default or custom loading image. The loading image is displayed when the LOV is opened, before the result set appears. There are a number of default loading images that can be used (see Loading Image next) but you'
||' can use your own as well.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779301625440411781)
,p_plugin_attribute_id=>wwv_flow_api.id(37779289316782409250)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'DEFAULT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779312929595412944)
,p_plugin_attribute_id=>wwv_flow_api.id(37779289316782409250)
,p_display_sequence=>20
,p_display_value=>'Custom'
,p_return_value=>'CUSTOM'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37779325133882423624)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Loading Image'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'bar'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37779289316782409250)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'DEFAULT'
,p_lov_type=>'STATIC'
,p_help_text=>'Use this setting to specify which loading image you would like to use. Based on the Loading Image Type selection, you will either choose from a number of default images or you will specify the path/name to a custom image.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779469521555505256)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>10
,p_display_value=>'Bar'
,p_return_value=>'bar'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779470826404506631)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>20
,p_display_value=>'Bar 2'
,p_return_value=>'bar2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779472930213507669)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>30
,p_display_value=>'Bert'
,p_return_value=>'bert'
);
end;
/
begin
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779474334022508822)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>40
,p_display_value=>'Bert 2'
,p_return_value=>'bert2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779475438178510005)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>50
,p_display_value=>'Big Snake'
,p_return_value=>'big-snake'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779477710258511460)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>60
,p_display_value=>'Clock'
,p_return_value=>'clock'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779478917184513409)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>70
,p_display_value=>'Drip Circle'
,p_return_value=>'drip-circle'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(37779479821340514649)
,p_plugin_attribute_id=>wwv_flow_api.id(37779325133882423624)
,p_display_sequence=>80
,p_display_value=>'Squares Circle'
,p_return_value=>'squares-circle'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(37780403322369139331)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Loading Image'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'#IMAGE_PREFIX#processing3.gif'
,p_display_length=>40
,p_max_length=>500
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(37779289316782409250)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'CUSTOM'
,p_help_text=>'Enter the path to and name of the image you would like displayed when the dialog opens.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(31633885406661036498)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>25
,p_prompt=>'Effects Speed'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'400'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>unistr('Use this setting to specify the speed at which the modal dialog should perform certain effects such as sizing, resizing, and fading. Selecting \00E2\0080\009Cinstant\00E2\0080\009D will essentially disable any effects.')
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(31633886911162037836)
,p_plugin_attribute_id=>wwv_flow_api.id(31633885406661036498)
,p_display_sequence=>10
,p_display_value=>'Slow'
,p_return_value=>'600'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(31633887514279038678)
,p_plugin_attribute_id=>wwv_flow_api.id(31633885406661036498)
,p_display_sequence=>20
,p_display_value=>'Normal'
,p_return_value=>'400'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(31633888117396039546)
,p_plugin_attribute_id=>wwv_flow_api.id(31633885406661036498)
,p_display_sequence=>30
,p_display_value=>'Fast'
,p_return_value=>'200'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(31633888821898040917)
,p_plugin_attribute_id=>wwv_flow_api.id(31633885406661036498)
,p_display_sequence=>40
,p_display_value=>'Instant'
,p_return_value=>'0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24265329318925487107)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Use Clear Confirm'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Use this setting to enable or disable the Clear Protection feature. Clear Protection requires the user to click the clear button twice to clear the selected value. This is done to help prevent accidental clearings that would require the LOV to be reo'
||'pened.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(14614768395159192783)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'When No Data Found Message'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_default_value=>'Your search returned no results.'
,p_display_length=>60
,p_max_length=>500
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify what message should be displayed to users when the LOV query fails to retrieve any results.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(31067106219375572251)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>85
,p_prompt=>'Use Value Validation'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(24176250706356057909)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'ENTERABLE_UNRESTRICTED'
,p_help_text=>'Use this setting to enable or disable the Value Validation feature. Value Validation will re-check the submitted value against the LOV. If the value is not found then the validation will fail and the user will see a validation error message.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176234312973012488)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Dialog Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>unistr('Use this setting to explicitly set the title of the dialog. If no value is supplied then the item\00E2\0080\0099s label will be used.')
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176236514836022456)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Item Display & Return Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'2,1'
,p_display_length=>10
,p_max_length=>7
,p_is_translatable=>false
,p_help_text=>unistr('Use this setting to specify which column should be used for the item\00E2\0080\0099s display value and which column should be used for the item\00E2\0080\0099s return value. The value should be a comma separated pair of numbers where the numbers refer to the column in the L')
||'OV query. The first number should be the display column and the second number should be the return column. The display column will be used as the default search column.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176242108172039420)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Searchable Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which columns should be displayed in the select list of columns that allows users to filter the LOV result set. The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. If '
||'no value is supplied then all columns will be searchable. If a value is supplied then only those columns will be searchable. The display column (defined via Item Display & Return Columns) will always be searchable and will be the default search colum'
||'n.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176243423063043740)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Hidden Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which columns should be hidden when the LOV is displayed. The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. If no value is supplied then all columns will be visible.'
||' The display column (defined via Item Display & Return Columns) will always be visible.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176244295836045317)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Map From Columns'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_max_length=>100
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which columns should be used to map values to other items (see Map To Items). The value should be a comma separated list of numbers where the numbers refer to columns in the LOV query. Both visible and hidden columns can b'
||'e used when mapping to other items.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176245807610048764)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Map To Items'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>false
,p_display_length=>80
,p_max_length=>1000
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify which items should be used when mapping values from columns (see Map From Columns). The value should be a comma separated list of item names. The order of the items in Map To Items should match the order of the columns in '
||'Map To Columns.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176250706356057909)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Enterable'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'NOT_ENTERABLE'
,p_display_length=>60
,p_max_length=>500
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>Use this setting to make the item "enterable". If enterable, users will be able to type in the actual textbox.',
'',
'If running as "Enterable - Restricted to LOV", any value entered into the textbox will be validated against the LOV. The display column (defined via Item Display & Return Columns) will be the default search column against which values entered will be'
||' validated. If one match is found then the display and return values will be set accordingly. If no match is found or multiple matches are found the modal dialog will open so that the user can make a selection.',
'',
'If running as "Enterable - Not Restricted to LOV", any value entered into the textbox will be submitted into session state.</pre>',
''))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(13549286254772974749)
,p_plugin_attribute_id=>wwv_flow_api.id(24176250706356057909)
,p_display_sequence=>10
,p_display_value=>'Not Enterable'
,p_return_value=>'NOT_ENTERABLE'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(13549324365854977920)
,p_plugin_attribute_id=>wwv_flow_api.id(24176250706356057909)
,p_display_sequence=>20
,p_display_value=>'Enterable - Restrictred to LOV'
,p_return_value=>'ENTERABLE_RESTRICTED'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(13549355174165980334)
,p_plugin_attribute_id=>wwv_flow_api.id(24176250706356057909)
,p_display_sequence=>30
,p_display_value=>'Enterable - Not Restrictred to LOV'
,p_return_value=>'ENTERABLE_UNRESTRICTED'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176290021163081043)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Max Rows Per Page'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_default_value=>'15'
,p_display_length=>3
,p_max_length=>3
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify the maximum number of records that should be displayed at one time.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(24176251717091060961)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Show Null Values As'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'&nbsp;'
,p_display_length=>5
,p_max_length=>10
,p_is_translatable=>false
,p_help_text=>'Use this setting to specify how null values should be displayed in the result set.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(8728619719050178)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_name=>'LOV'
,p_sql_min_column_count=>2
,p_sql_max_column_count=>100
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>SELECT empno AS "Emp No.",',
'   ename AS "Employee",',
'   job AS "Job",',
'   sal AS "Salary"',
'FROM emp</pre>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A2A2A20436F6E74726F6C205374796C6573202A2A2A2A2F0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C73207B0D0A2020206261636B67726F756E643A207472616E73706172656E743B0D0A202020646973706C61793A2069';
wwv_flow_api.g_varchar2_table(2) := '6E6C696E652D626C6F636B3B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C73207461626C65207464207B0D0A20202070616464696E673A203070783B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D63';
wwv_flow_api.g_varchar2_table(3) := '6F6E74726F6C7320646976207B0D0A2020206D617267696E3A20303B0D0A2020206261636B67726F756E643A206E6F6E6520726570656174207363726F6C6C20302030207472616E73706172656E742021696D706F7274616E743B0D0A20202077696474';
wwv_flow_api.g_varchar2_table(4) := '683A206175746F2021696D706F7274616E743B0D0A202020637572736F723A20706F696E7465723B0D0A2020206D696E2D6865696768743A20313270783B0D0A2020206D696E2D77696474683A20313270783B0D0A7D0D0A0D0A6669656C647365742E73';
wwv_flow_api.g_varchar2_table(5) := '757065726C6F762D636F6E74726F6C7320627574746F6E207B0D0A202020626F726465723A2030206E6F6E653B0D0A202020637572736F723A20706F696E7465723B0D0A202020666F6E742D7765696768743A206E6F726D616C3B0D0A20202070616464';
wwv_flow_api.g_varchar2_table(6) := '696E673A20303B0D0A202020746578742D616C69676E3A2063656E7465723B0D0A2020206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A0D0A696E7075742E73757065726C6F762D696E707574207B0D0A20206F75746C696E';
wwv_flow_api.g_varchar2_table(7) := '653A206E6F6E653B0D0A7D0D0A0D0A6669656C647365742E73757065726C6F762D636F6E74726F6C7320646976207370616E207B0D0A202070616464696E673A203070783B0D0A7D0D0A0D0A7370616E2E73757065726C6F762D6C6F6164696E67207B0D';
wwv_flow_api.g_varchar2_table(8) := '0A2020206D617267696E2D6C6566743A203570783B0D0A7D0D0A0D0A2F2A2A2A2A204D6F64616C205374796C6573202A2A2A2A2F0D0A6469762E73757065726C6F762D6469616C6F67207B0D0A2020206D617267696E3A20303B0D0A2020206D61782D77';
wwv_flow_api.g_varchar2_table(9) := '696474683A203930253B0D0A2020206D61782D6865696768743A203930253B0D0A7D0D0A0D0A6469762E73757065726C6F762D6469616C6F67207B0D0A2020206F766572666C6F773A2068696464656E3B0D0A7D0D0A0D0A6469762E73757065726C6F76';
wwv_flow_api.g_varchar2_table(10) := '2D6469616C6F67206469762E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020206D617267696E2D746F703A203070783B0D0A7D0D0A0D0A6469762E73757065726C6F762D6469616C6F6720612E75692D6469616C6F672D7469746C6562';
wwv_flow_api.g_varchar2_table(11) := '61722D636C6F7365207B0D0A2020206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A0D0A6469762E73757065726C6F762D636F6E7461696E6572207B0D0A2020206D617267696E3A20';
wwv_flow_api.g_varchar2_table(12) := '313070783B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A6469762E73757065726C6F762D636F6E7461696E6572207464207B0D0A2020766572746963616C2D616C69676E3A206D6964646C653B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(13) := '0D0A6469762E73757065726C6F762D627574746F6E2D636F6E7461696E6572207B0D0A2020206D617267696E3A20307078206175746F3B0D0A20202070616464696E673A203570782021696D706F7274616E743B0D0A7D0D0A0D0A6469762E7375706572';
wwv_flow_api.g_varchar2_table(14) := '6C6F762D627574746F6E2D636F6E7461696E6572207464207B0D0A202070616464696E673A203370783B0D0A7D0D0A0D0A6469762E73757065726C6F762D7365617263682D636F6E7461696E6572207B0D0A202020666C6F61743A206C6566743B0D0A20';
wwv_flow_api.g_varchar2_table(15) := '202077686974652D73706163653A206E6F777261703B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A2373757065726C6F762D66696C746572207B0D0A2020206F75746C696E653A206E6F6E653B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(16) := '0D0A6469762E73757065726C6F762D7365617263682D69636F6E207B0D0A2020206261636B67726F756E643A207472616E73706172656E742021696D706F7274616E743B0D0A202020626F726465723A206E6F6E652021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(17) := '2020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A6469762E73757065726C6F762D706167696E6174696F6E2D636F6E7461696E6572207B0D0A202020666C6F61743A2072696768743B0D0A20202077686974652D73706163653A206E6F7772';
wwv_flow_api.g_varchar2_table(18) := '61703B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A6469762E73757065726C6F762D706167696E6174696F6E2D636F6E7461696E657220627574746F6E207B0D0A2020206F75746C696E653A206E6F6E6520';
wwv_flow_api.g_varchar2_table(19) := '21696D706F7274616E743B0D0A7D0D0A0D0A6469762E73757065726C6F762D706167696E6174696F6E2D636F6E7461696E657220627574746F6E207370616E207B0D0A20202070616464696E673A20303B0D0A7D0D0A0D0A7370616E2E73757065726C6F';
wwv_flow_api.g_varchar2_table(20) := '762D706167696E6174696F6E2D646973706C6179207B0D0A20202077686974652D73706163653A206E6F777261703B0D0A7D0D0A0D0A6469762E73757065726C6F762D7461626C652D77726170706572207B0D0A2020206D617267696E2D746F703A2031';
wwv_flow_api.g_varchar2_table(21) := '3070783B0D0A2020206F766572666C6F773A206175746F3B0D0A20202070616464696E673A203070782021696D706F7274616E743B0D0A7D0D0A0D0A7461626C652373757065726C6F762D66657463682D726573756C74737B0D0A20202077696474683A';
wwv_flow_api.g_varchar2_table(22) := '206175746F3B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C65207B0D0A202020656D7074792D63656C6C733A2073686F773B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C65202A207B0D0A2020202D7765626B69';
wwv_flow_api.g_varchar2_table(23) := '742D757365722D73656C6563743A206E6F6E653B0D0A2020202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0D0A202020757365722D73656C6563743A206E6F6E653B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C652074';
wwv_flow_api.g_varchar2_table(24) := '68656164202A7B0D0A202020637572736F723A2064656661756C743B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C65207468656164207472207468207B0D0A20202070616464696E673A20347078203870783B0D0A20202077686974';
wwv_flow_api.g_varchar2_table(25) := '652D73706163653A206E6F777261703B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C652074626F6479202A7B0D0A202020637572736F723A20706F696E7465723B0D0A7D0D0A0D0A7461626C652E73757065726C6F762D7461626C65';
wwv_flow_api.g_varchar2_table(26) := '2074626F6479207472207464207B0D0A20202070616464696E673A20347078203870783B0D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(29020230125835643759)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'apex_super_lov.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839612A002A00F50000FFFFFF000000DCDCDCBEBEBED6D6D6C4C4C4929292B0B0B0FCFCFCD0D0D09E9E9EF6F6F6AAAAAAEEEEEEB6B6B6989898A4A4A4CACACAE8E8E8E2E2E27272720000000E0E0E3A3A3A4646461C1C1C606060343434404040';
wwv_flow_api.g_varchar2_table(2) := '7878782828284E4E4E5A5A5A8686866666662E2E2E1616168C8C8C7E7E7E6C6C6C54545400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C000000002A002A000006FF408070482C121F970DA5616C3A9FC64B653A1540AF5800854AF5';
wwv_flow_api.g_varchar2_table(4) := '64BF4D2ED70A2E03C45432118100130683489B6841572444C1410129CCA10E0A820A070B47681F4409068C8C0C7F4D040F1094100A0E4518624C420B0F8D8D09807C95969C431954A24302A08D984F7BA5967879531D4504AE8C075003A4950F6A431A15';
wwv_flow_api.g_varchar2_table(5) := 'A74211BB06AB4E0D82A50FCC43051C4603BB8F57020C0A0F0F82B0440D114610A00F0E904F0B02046F7BC74EAD07110212F16513E4500811136600030A04A80E4082030C0E1018D8448F0206FB001470958EE1348A005AED82504BE08203CADE28E31501';
wwv_flow_api.g_varchar2_table(6) := '1F3F0911148C8433D2008304269F3428A072A5AE5D0A86012450D39528C090A018C42CD380812B086D10FC32A06080218B4210D0F4E6E069A70656A10E41B020EB97825A9DE803BB35814EA213044400B9F0CA04037DCC4EF0EA0481834F8D14A8EB6AC4';
wwv_flow_api.g_varchar2_table(7) := '2828056D9F20000A2ADC9004810F2BFBF7E4A6AB02461CF42AA2D1D564270E944903D0C05B47216F719205706D974EA048C529D3FBA472A307C792BD2A42B8116428B50D44CCB86BF702738D52F38B60E9C069D1441644600071B411B07E5D0D851AFD35';
wwv_flow_api.g_varchar2_table(8) := 'DDB0006417C6DE64302808D3B5224820B9C0F52B41000021F904090A0000002C000000002A002A000006FF408070482C12050307C1C86C3A99838742F1703CAF58A1E001E9421483AC98E95078BB0CC4782D6498CF6963432D26380E09FAB07C56308A0F';
wwv_flow_api.g_varchar2_table(9) := '19151520125807068906100B44126F5D0A4B431D8396160D4F118A8A0745116F0A56430296A6144F109C8A994403660C8D430FA6961EA9AB8913450B6E024521B583B74E0EB906BF9F7F4514C215224F12C71172D44518C29857040AABCB45AD44C21786';
wwv_flow_api.g_varchar2_table(10) := '580B0209110EAAC94FB419221005E56C000802D64F2010F5FD420BE1FC091493E000830393061E39E0275F81550EF40C7CC8C98A806310E8F55B8028178101C7121D8810100B0209A0420E001992418292571A14E8A692C03105EDFA713B96004047B945';
wwv_flow_api.g_varchar2_table(11) := '0C60D66BC060150435085E1900234BA1BD990FAA34050070AA5321081658CD22F1EA930911BA16419020279B0613F0214AE864C2A20265276C6582C0C1034E0ABA6A3552142F5BBA3F158D2292E02F8004C77639B199AB80913B462EE6F2548C27B8A81A';
wwv_flow_api.g_varchar2_table(12) := '01B8CD95D709CB55663B1E25D2E0A65852B91E04DC24B848E0448E9FBCCE07403227DA0B54291AFD0441842F07427396B82002030661C79CEEBB4AA857E68A1ECCF5CABAA2D726080243707E9DEC9D02D39F04010021F904090A0000002C000000002A00';
wwv_flow_api.g_varchar2_table(13) := '2A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53E98E2344051369CD546A4123D3CB415C58983C1886CED55105843026D0544020A8A0A0F6050116D0745055E0C740D0C0A109B100A0450106D060D45800F';
wwv_flow_api.g_varchar2_table(14) := 'A443139A9C9D03A0A213450B6C0945020FACAD500EA2024605784504B8AC0AB54F12A27E4512AE4511AB9B0A0E744E046C954608A844078C8A10875B0B0209110EA1BE59AA0E11020DDC6A080211D54D09F170DAFAFCFD500907181CF8E4AF080412152A';
wwv_flow_api.g_varchar2_table(15) := '744043C90BB582423E249C780140A1361024F8933062A2C7075344193810215F96060534785CB921A42806F8D224E0B0922501510AD4E96B60A06642BD0A0000556160124E020B35494961A360C020880D5426BCA071C882064F210E912040A7187B5A9F';
wwv_flow_api.g_varchar2_table(16) := '4CA807054102AF6A1A4CA0678720940906C29D9D90F50902070FBC28B0B7A02E00327ADD3A4120F48B91048285746913EBC94D43469218B95846D2135E6D8E0D69F0E041D55438C10E71E9052D2008D578DE112D84729553442019EE06194A6103CB5AB7';
wwv_flow_api.g_varchar2_table(17) := 'C90D6041A840AC872088D0E980E9D5441644E043368C68C0658A8685FEDA6F5800B21D5E6F42D80B04E9D7CD2629603D4B100021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB';
wwv_flow_api.g_varchar2_table(18) := '7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F114612034653658F';
wwv_flow_api.g_varchar2_table(19) := '59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211D4430811AD6A50E8EDF0F14509070C0704F24D130EF6F842965EA6E51B12E18182830A8A9D2A0341423E297F204884F040C0B15911C66D69108141C48910125E6CC32081C62C';
wwv_flow_api.g_varchar2_table(20) := '1C19180429518103029F14708B27C023CB07F808556170B25D03C1071F15D0826820E1A181003AFE7170744183A348852068D033CB3B0057DB4D3807A581085AF01A4C3087C71F9402152A70106182E716040E3455D1E30A2A000B69F356786055E71723';
wwv_flow_api.g_varchar2_table(21) := '09CC0E01A1372F03283015194962A444E1B424A0D8F245A4C183070E891C789CB62A809155660A2104618F00CE153C2FAC428A482F2AA9867878CC218B5F03C24CB5C92D4442610B999FA80B79403480DB458B4CF860C10208CF70C67CCA9A8F4C9907D4';
wwv_flow_api.g_varchar2_table(22) := 'E5BDFE1BD50902BF10A0474590204901BB5A82000021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E';
wwv_flow_api.g_varchar2_table(23) := '7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F114612034653658F59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211';
wwv_flow_api.g_varchar2_table(24) := 'D4430811AD6A50E8EDF0ED9009070C0704F14E7D0A0CC242965EA6E52302F00B9F4F10240C5C40A80C8163B3228CD382404204666D06406CC320C1C42C0D747DA23280C02705DCE22DFBC4A92115061FDB3520E3050213296C140C3834100002C15D0F1E';
wwv_flow_api.g_varchar2_table(25) := '38E0B9A001CF9EE9161CDDF24E48CC7813CE296307AFC1047378F06591A0E09B00014FE138D054454F9170461C2850F0602D83944E10B8A4928A48870746083C80C017C25A854F4C2A3242628391097FFAFA2D568B65A50A1516116990B82F3F281BABC0';
wwv_flow_api.g_varchar2_table(26) := '056001B285220D14F3BDFCE4941752443040867CA1C880BD96FD3D992B1BC083D5AB4D1059C0602D5B5AEE22F83DB0B9336EC8A0B339A84DB1C9F1D59B9112790E19B074231F9EB7BEDEA481F1D554B9831641820408EB6282000021F904090A0000002C';
wwv_flow_api.g_varchar2_table(27) := '000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D';
wwv_flow_api.g_varchar2_table(28) := '45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F114612034653658F59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211D4430811AD6A50E8EDF0ED9009070C0704F14E7D0A0CC242965EA6E52302';
wwv_flow_api.g_varchar2_table(29) := 'F00B9F4F10240C5C40A80C8163B3228CD382404204666D06406CC320C1C42C0D747DA23280C02705DCE22DFBC4A92115061FDB3520E3050213296C140C3834100002BD5D0F1E38E019E75D3E040B786E5960B4A71106289A2648D92E01830727485428A1';
wwv_flow_api.g_varchar2_table(30) := '6582014053272875D2E04285B36827C6795A4601BE5F5AD19EDD60440055218DCAB07352422E5A0DC6521139558696130E7ECF5228D2008282895EF3BC439CF84111070A141816D2E0E43B03892B505D06C17131222EA92C7AD2C083DFC5431AFC29ED98';
wwv_flow_api.g_varchar2_table(31) := 'EA82685F9B360071D6025722036697E6E72A02837E4D63C7F4437B784CA74230372F9D3C1F8107CD754287823933BFE7DB85D08930564B100021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC';
wwv_flow_api.g_varchar2_table(32) := '1690A8561DDB7093E1A53EB0E2344051369C8D086618A9940F0F6D851D20382820057B4E7855106842026D05445D5E0C8245116D0745058E760B0F6D0950106D060D45840FA143896D604F9E6D13450B6C9C479F944F0E9F0246050A46929B50129F1146';
wwv_flow_api.g_varchar2_table(33) := '12034653658F59046C8E70A544AB660E904D0B0209110E9EB8598907110212CF6A080211D4430811AD6A50E8EDF0ED901D15F526F14E7D0A0CC24228F500378CC367C90B180700135648156F01A13204FE2904982104B73008244460D666C08789004994';
wwv_flow_api.g_varchar2_table(34) := 'B8B8A581AE4F54063C005981013E00CB3E71F2309164BC0664BC4060D2E00240BB0E125E1241A0EBC1030787F838082A14CE82A44DA3166910EB09820436D3346860CE8182AC46261800847502D42705182858BBCFC8532339AB2820A0C52B84BB101414';
wwv_flow_api.g_varchar2_table(35) := '2B92802EDF4FECF2FDC10BE1413F22498C9C2A43CBC946C285FD0E696094E910B179DE3D26FC5514959D441A7CD2F344C0E0BBFBC6F5A2C250C8C32A8BA0A8643B97C8E22A87012C8836F6DD90040C183808EC3A33910511829F131AD7CB40A9429A9B39';
wwv_flow_api.g_varchar2_table(36) := '0B7DF517E84D10BC86F01C3B80AB490A50CF12040021F904090A0000002C000000002A002A000006FF408070482C12098E4302616C3A9F45C4C040353016D0AC1690A8561DDB7093E1A53EB0E2344051369C8D08E67661F2644492E2A1AD900B05070A10';
wwv_flow_api.g_varchar2_table(37) := '057E4E0D1E1589890244026D05445D5E0C8546148A8A1E4505937E0B0F6D095016988AA2447B6E0D8D6D06604FA58A10450B6CA74304AD075017B1152146050A4611ADB74D0EBE1F461203465365945921BE9508AB45105E0F0E954E120F141ABD15B359';
wwv_flow_api.g_varchar2_table(38) := '8E07110212D86A0008102859081113EE4FEDF7FAFBEF46800C0718F12B024801830843222810B4D0D940219CBC8069200882450806F3EC5B90AA0C81080F2E5E5CE840403E2D0824286C656000489116499A4CD34018CB96022A8E6420501F01B836A100';
wwv_flow_api.g_varchar2_table(39) := '38D0A9E0C0C97B0DC8788120670046080E1FBE13F6801B9A2147A522587055AA5722132278238220414F770D260888B0878096090606999DD0F5090207A0AAF4A155178052BD6EA120E8F8C54882C0915AD97B92EB919124FE74417160AC4883AA1A87C0';
wwv_flow_api.g_varchar2_table(40) := 'E5335608B4326701A4624AA441ABBD4E1C957990AF5861548EA110368070886A2FB5852CD05685B4E0081803EAE14C64410406073B3719FBD74B56AFCDCDF4FDEA5AE2D7E584213CFF5A364981E9598200003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780494126632160766)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'drip-circle.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396180000F00F10000FFFFFF000000B6B6B600000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C0000000080000F000002A3942FA080B7DC';
wwv_flow_api.g_varchar2_table(2) := 'D28A52D17767C45B37FE7908488DA2731A246A756DF89A310BC1B57CD3A59BAB69D50366663EA290370CAE8AC1A41309B53DA551DCD4BAC352B7DAAEAEFAE586BDBBE551CCBC8ED769701B5D32CB7F73635D49CFDB7FEA37F9FC77D707C84658A687B7A7';
wwv_flow_api.g_varchar2_table(3) := '98C83828E81687E82809F908679965A88959C8E9D74999B9191A480ABA386994DA5869FAF93A8A2A1ACB7AE94ABB3A98DB2A6BDB5BFA7B50000021F904090A0000002C0000000080000F000002B09C3FA020EDB2D86B71D26521B695EFD981DF1392A383';
wwv_flow_api.g_varchar2_table(4) := '1CA5B35E4AD66AAF378BB579B3A72BD9FD9332C4863BD94F97E3C18AC4A471E90C26985467F3A8A4619F5AE83626BD7AC7DDB28F7C36E3B6E1EAD78D5EC7916F2BDCD2B6EBEBFC79360D28A786122436F8271848E7C7A588489862E8D89858B978487939';
wwv_flow_api.g_varchar2_table(5) := '99D7872969F9189A290A567837F9A9093ACA9ADAC0C9E8DA7ABA2A5B1A49ABAA4B9ACBBBC708EBD93BFB2B5CBC697A5C3B6CCB3C5C000021F904090A0000002C0000000080000F000002BE9C3FA080B720A2146FCA6AE9CA5A716C8193786D191935C6A3';
wwv_flow_api.g_varchar2_table(6) := '2666F88E71E99D738476905DC3BDFC93B458AA9CF1A6FB208F41DCF2D9140C17D32873E7C302B534AED30AF52633554631AC04ABC5D7341B4D3E2BCAEE3AEFBDB667F55B4E997EC7D725F88567483866F1277718E8B8F7D817393899C208089929A949C9';
wwv_flow_api.g_varchar2_table(7) := '598898B3D8D05699B879DA89FA592A8A40EA699A2ABB0AFB3AD1EA0057ABAB1A4BDB1B7AC908CA3BEB7B6C6B8CBB52FC6B9CEC1C8D8CB4EC92570A3D7DBD1B55000021F904090A0000002C0000000080000F000002CB9C3FA080B7DCD212B48A672BCE77';
wwv_flow_api.g_varchar2_table(8) := 'F29D8196A879A1694592A23E2D5A2A5C277F3045E2370DCC393F7BB1222EE2EE873C2A6B27E668D9E308218D6215EAC3DA9CB168D3FBE4EAC482A9D9484EA6B5DFECFA0DAE9CAF437A7C7C076EF36A3E3B9C37876035F8D7E5E60787B8B8178446555817';
wwv_flow_api.g_varchar2_table(9) := '9948C9D8D68879A999F228E860886709287A98392AD5996A471A6A5ABAF97A0A4BE16940F8A9E8DA3AABC7DBE76857BB52A9DB2B7B1C9BBCCB19AC3AC96AAC1CBD2CFD8BDA8CFD5C6CED0B3AFD2D7C6BEBCD8D4C7DFEFD53000021F904090A0000002C00';
wwv_flow_api.g_varchar2_table(10) := '00000080000F000002D19C3FA080B7DCD28A52898BC5CB7873BD7CA0F5799C99A118F5B053D4C261399F757A77F9A5F2FB0810B91443482376FCF580A2A5530925718A5419D11AA449715B5DD7F7656AB3B6703579451B11CF709BCC857BE560BA788A3D';
wwv_flow_api.g_varchar2_table(11) := 'B35FEA66D4FEE6E7F6279467A85624084838A6E8D8F8A1E7C0B79756B9389889B9F95866276980749908E9D919773A977A015AB1366909CB598A4AAB6A5B578878388AB57A576B8A0B7C8BB77BDCDB371CB8CC286C9C1C2D4BFA1C6C5D7C9D3BDC2A3AED';
wwv_flow_api.g_varchar2_table(12) := 'DBACF9CB5CBDC2EB8D2C2BEE9C4DAC4D7E51000021F904090A0000002C0000000080000F000002D59C3FA080B7DCD28A52D127B21678E7EE819BA891DFE265D7143DABD5B28DC9A1298DDBA13EF2DA0B99C910AE184CA848D59237DF89B983F6A425A700';
wwv_flow_api.g_varchar2_table(13) := '88350689438735477D0294E071337CD566915BEF918B2E93BFF4B8750D6F1B8A6CE0DC0E6816253845588586E7A657B1C897F7672806397916B96499B8D7A5F9A6E8574939185A38FAA376DA87FA08CA2ADA4AFA6A9A3A9B97C9582A199BEBCABB61EBE8';
wwv_flow_api.g_varchar2_table(14) := 'A9AA887B492CA79B461BACCCD9586779DC7B087D27DCFCBB798B1C0D2BBDEB6BCD88DDD96CFC6C1EA834EE4C2EAE854E9DBE6D55000021F904090A0000002C0000000080000F000002DA9C3FA080B7DCD28A52D17797D85CBCCE7DA0A78D227876991561';
wwv_flow_api.g_varchar2_table(15) := 'EDF4B28D3B97A8DDA521BE2B23E91BAD2035198276841589C9E0CD99E36D74532910F01B6A634C87B2D93550AFBFB1D93ADE2ED560B617DAC39AD07478D52E708BBFEF70C58FD4575627F754188597C6A5F7C718B8974838184979C8E1C8070998D9C835';
wwv_flow_api.g_varchar2_table(16) := '6979074A365799B578BA86DAE6492A7A56DA6A9A3ABB4ADB37F4991BBB6B285BFB7BAB1ABCA4DBCB8BE86A8569340CAC897B1C578C3C7D29FC7CDD69AB591DDA3D6A0CB2BCC98CBDFDF7FD9A0C2B9EFDA8ED0C2F18ED4D0F4E3D52000021F904090A0000';
wwv_flow_api.g_varchar2_table(17) := '002C0000000080000F000002D89C3FA080B7DCD28A52D177677CA27BC17D5D28929FE965D6A63518BBBA2DF2CA8A382E38A8E3687EC3A92036226DE6401A6AC75813B0FBF182A55E95FA196A61C6A4D3DB5D2A2B509FF574F648A5DB62FBF9060FA36960';
wwv_flow_api.g_varchar2_table(18) := 'F97A476353DCB8F8FB1746E64746B7676798A7562740C824D717E9C69558697638A5D8E138F618C8095878A9996989B7032AE839280947396AAA47CAD60A3979EB8A0B16BB88B9C6981A5CFBF97A0A7B6C2C22AC4BCCCC5AC48B882C8B3AFC9C8B6D9B1D';
wwv_flow_api.g_varchar2_table(19) := '185D3ADD4BBABC7DAD5DCEFD2D9D4C2D64BDEADE091FFAEBCB384F5A000021F904090A0000002C0000000080000F000002D59C3FA080B7DCD28A52D17767C47B890F0A4F088EA4E89D99D5B10DF76AB18BC0B57C2B27AA9F26F90BAD203362CEE8C02569';
wwv_flow_api.g_varchar2_table(20) := '4BA4C1D6DC054B296055D87256B4D0A7D2CB0473BF5BE995DAB3A6B1C5A13BFB6EC3B3E6351A50C7ABE6F2FE31FEC7779447E873F601D89428B6B8D538F501C9A3A746C916E8A728A899C9486768177938B9F348D6E5B8E9D959066A795748621A96CA8A';
wwv_flow_api.g_varchar2_table(21) := '7A7B3A2AB93B3A3B468B0B9C2B1C4AEA1A7BC989B9ACDCBCCA2C860C7BBC673BFC8BED3B242D5A2CA9AD5A0B2DEEDC5AC96D2C1B1E9CBD7EBD4D7D1E1F52000021F904090A0000002C0000000080000F000002CA9C3FA080B7DCD28A52D17767C45BB727';
wwv_flow_api.g_varchar2_table(22) := '84A2008E61696656B77E1EC2B92DFC3AB511D38A792E3CE9E3A92032A2CE689B2591B85B85F91CFE5023AA6888654173CB6CD17B9C064DD610B8AB3D3795EBAD93DB16EF7865813A9ACE7FF5C77BFD3F36E2F746C886B787D8A72507C0F833680877A898';
wwv_flow_api.g_varchar2_table(23) := '8856194717285207E91659E819DAE9983997C26749A99ACADA365ADA08FB88EA4A3BD97A5B7BF9444AA669662B290CDAF9EA6B5AF56B174CCCFCF92CBA283B7DBA3B0C5DEC1CDA9B8C7CA59D6DDD2CEEDD530E745E000021F904090A0000002C00000000';
wwv_flow_api.g_varchar2_table(24) := '80000F000002BF9C3FA080B7DCD28A52D17767C45B37FE2DC2480A4F496656B7862D02C29EFC3AB35D1B310EA0E3E953415C435A91274CB28EBA5B3357E9F9802825D16AC42297DA2733EA338982DCF2D59C456FCF6C63985AEA46E53B2FDD39577BDFE3';
wwv_flow_api.g_varchar2_table(25) := 'AA3EDFB6961668F7570736D517678877E8D80809F528A9480297C248A9F935C919E9B9C9A71076B7590A8A7A2A242AE5470838182B385BF8DAC94A9A99AAABCABB844B66FBD92B6CAA0BEC2A5BAB0C4BDBBCEC7C9B381ACCDC496C3D7C3CDD5A52000021';
wwv_flow_api.g_varchar2_table(26) := 'F904090A0000002C0000000080000F000002B29C3FA080B7DCD28A52D17767C45B37FE79C82394A690599D1AB2A3E8C006F8BAB13DCB15D402A799E2D58437620EB70B2A57C62433F82B2D7BD361B5783D3669586614F50C53C55672778C2EF7BE5967FA';
wwv_flow_api.g_varchar2_table(27) := 'AC8EC3E7DA36296AD771EB66FEDB2F0758C4D6E71668488728B8A8D878F79387B4E7A8572969B98549F84779E999F919093ABA7938798A29AA5AF878B2CA891ACA9A3AAB509A183BFA6A4A0BBB70CB98BB8BDBCBFB09DCA95BABEC2BDBEC1355000021F9';
wwv_flow_api.g_varchar2_table(28) := '04090A0000002C0000000080000F000002A39C3FA080B7DCD28A52D17767C45B37FE7908488DA2731A246A756DF89A310BC1B57CD3A59BAB69D50366663EA290370CAE8AC1A41309B53DA551DCD4BAC352B7DAAEAEFAE586BDBBE551CCBC8ED769701B5D';
wwv_flow_api.g_varchar2_table(29) := '32CB7F73635D49CFDB7FEA37F9FC77D707C84658A687B7A798C83828E81687E82809F908679965A88959C8E9D74999B9191A480ABA386994DA5869FAF93A8A2A1ACB7AE94ABB3A98DB2A6BDB5BFA7B5000003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780497821672163042)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'bert.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396180000F00F20000FFFFFF000000C6C6C6B2B2B242424200000000000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C0000000080';
wwv_flow_api.g_varchar2_table(2) := '000F000003E708B20BFEAC3D17C5A4F1AA7CABF61D3781A3089918B391AB5949A9FB96EC6B9DF58CCBB9DDF340D54E1823B68C365A107664FA744527B4798B56A94AE4343994FE9E57AE35EB5D86B7E86F590B5EBBCF6AB8992C67CFBB3EBA1EBF1FF3FF';
wwv_flow_api.g_varchar2_table(3) := '7E81587862838285886977878A760C039091031392919495930F98990E9B97959F92A1969A98A390A79C009B9EA5A0AEA2B0A49DA6B2A8B6AAADB4AFBBB1BDB3ABACBCC1C3BAC4BEC7C0C6CBB5BFB7CEB9CDC9C2A9D5B8D6D0D8D3D1C5D2CCC2CADEE2DD';
wwv_flow_api.g_varchar2_table(4) := 'E4C8DFE6E3E8E5E0DAE7E1EBCFDBEDE9EFEAA2C3BF1AF8C9FAC8F917FB02FAE3077020A8040021F904090A0000002C0000000080000F000003FF08B40BFE22C607A5A0CE5EAC31E89CE581145949A318A24C5B6A5B06BF261C7FF3A9CA75CEEFB89EA6C5';
wwv_flow_api.g_varchar2_table(5) := 'A0016D46944EF963068FBEA713B99C5405C4C635696D76A55FAAF7260693A3655B96C03D0BA1EF297A1E0FD32DEBB67ECB1FEFFD7D667F667981697772756E708C898D11858092828688768A83871A059C9D051403A1A203A0A3A1A5A6A8A3AAA2ACA70F';
wwv_flow_api.g_varchar2_table(6) := 'A6AF0EB1A4B0B1AEB5B3B19E9DB8BEB6A9C0ABC2ADC4B200B4BFBAC1CBC3CDA2BC9CCAC8B7C6B9D4CCD8CEDAC5CFC7C9D6D3B4D19FE1E6DED7E0E8E2D5EBE7DCDFBBD1ECD9EAF0E9EDF7F4DBF6FDF2BCFBBAE97BE7AF5EBE82FC0EDE028821DB330F0EB9';
wwv_flow_api.g_varchar2_table(7) := '41DCF6B021458916055664052001010021F904090A0000002C0000000080000F000003FF08B40BFEAC3D276A9DD40A0CF4C61E17829A58929699A257C44CAE948DF359AFF7F5787AFEF913DEAFC30BF2620458CC482336854C9B530ADD15ADCFAB0FA974';
wwv_flow_api.g_varchar2_table(8) := '457153701588A56AC33DF470ACE6429665F1994D9FDBB378B3C7EDE0ABBF697579728381777A1A7E7E8288848D86856B878E168A7064987F71908F9291809E1A05A3A40513A5A41303ABAC03AAADABAFB0B2ADB4ACB6B10FB0B90EBBAEBABBB803A8A3A7';
wwv_flow_api.g_varchar2_table(9) := 'C4C2C8C0B3CAB5CCB7CEBC00BEC9BDC1D0C3C70FC4A6D7D4D2D6D5CBE1CDE3CFE5D1D3DDD7DBC6A8DEE9E7BFF1EFE0DFE2F6E4F8E6FAABECDAD9F3D4051CC84F5E417AF7E015F4E780E141810F092A9C588F62C260EE3064B4C5E10F5EB98EF93E62F0A8';
wwv_flow_api.g_varchar2_table(10) := '0FE43E911C13000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C97422E70BF4BE9EC085A3576AE73791A05949D43BBDD613AADDBDEA368FF939D64F1834F542B4990CB21C1A9DA8E3B31885E26E2269957ABD2599156558DB2562';
wwv_flow_api.g_varchar2_table(11) := '7766E0999CB5B6B9826F6C3C8FA0A76BF77D9B87EFCB785E4D0A83727E6C7F6F7D8B6A8D6948859174877A88969598949A58869D838C8F81A17C8EA2A61A05A9AA0513ABAAADAEAC0F03B4B50313B6B5B8B9B7B3BCBBB9C0B6C2BABEC1C6B6B1B20ECAB0';
wwv_flow_api.g_varchar2_table(12) := 'AEC4B4D0BD0EBCD300D5D2D9C8C5D4BFDBB4CD0FE1CCB1DADDC7E7C3DFD6D8EBE6D7DEE9B5E300F4F4EDF2D1EEFBF9ECF1F0E800AAEB67AF9C3883FDDEE113C88DA1BE84FC1CFACB55F0D9418B10334A54F86F1AA1C78EBF305E4CC541A43C0E014F5E48';
wwv_flow_api.g_varchar2_table(13) := 'C910E5C06D2E1B9E4C000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F102C1B9EEDE050A1F587667388D2959495835BD16F4AE23F9E4BAC3E3AC5D0E6812067D39DAEC66933533C622F2B8194651575595FACB0A944FC6D2';
wwv_flow_api.g_varchar2_table(14) := '19834EA55B74F78C656BD7E9769C032E8BC33005D3DD9BF7E180567C44723C757A6488668A77835E846F827E907F92867B8C798787815C969F9EA16A49989BA5989DA3A285A0AAAE1D05B1B20513B3B2B5B6B40FB9BA0E03BFC00313C1C0C3C4C20FC7C8';
wwv_flow_api.g_varchar2_table(15) := 'BEC7C6C4CEC1D0C0BCB8B6D5B3D7B7C9CDDBCFDDD1DFC5E1BFD2E4E3CB00CAD4BBB9D9B1EEBDE9DCCCDEF4E0F6E2F8E6FAE8CAE503EB1C04043070A0BF73FF12225CC8EF5FC176ECAC45C4C6505E3D8BF730E6D3B88F2B63BF791E1F4A140891E4488F0A';
wwv_flow_api.g_varchar2_table(16) := '1B563CA8B225CA9326DF5D804990A2340D17F1E1CCA8F3424E8D3B8B25000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7C85F7DA07766258929F99A2602561D5E45A902BDB8FB83AFAC8F7939E2008CC157FBAD92D56';
wwv_flow_api.g_varchar2_table(17) := '63C2384F0651373D21AD006175973D7693B8E86BE32443CD5223558DD5B2B9EE2BBCA76C9EEB625A7EEBFBB6BD717E736B721E786863878A61827D818F8091848D028B6596778C90939B7F9C922298697B76A3887A947C436F8EA0839E2205B2B30513B4';
wwv_flow_api.g_varchar2_table(18) := 'B3B6B7B50FBABB0EBD1303C2C303C1C4C2C6C7C9C4CBC3CDC80FC7C2C0BCBAB9B7D7B4D9B8D1D2CFC5DDCAE1CCE3CEE5D00ED203D4BFD6D5D8EFDAF1DCE9DEE7E0F5E2F9E4FBE6FDE800D4B10330B0A0BB76F0FEE10B684FE1B787F7BE194C48F060458A';
wwv_flow_api.g_varchar2_table(19) := '03D5417418B12D23478513E52114799164C6860CF5A5E4B7D25F4B801A23521CE96B9E8699256BF6D3A072E7859E2D79B2DC99000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CAB1620F885C2189AE245962AB97950';
wwv_flow_api.g_varchar2_table(20) := '65C53056BF9C9D036BEAF4AC5F6F02240E1F40D94CC798289D32E8ED893C0A57466C557B756D4954A644BCC43569BB30CFBAE6B6BDDDD3571E07A9EF51F4992CDD15E73E6F7482817F75027853797C7A63668E8684419259709480888B8F6589699A6A91';
wwv_flow_api.g_varchar2_table(21) := 'A16CA26E499FA78AA99E37A496AD83AF2005B3B40513B5B4B7B8B60FBBBC0EBEBAB81303C5C603C4C7C5C9CACCC7CEC6D0C5C1BDBBC2B5D7B9D5C3DBD80FCACBDFE0D2C8E2CDE6CFE8C6D4C0D6DDDAEDDCF1DEF3F000E0E50EF8E4FCEAE1FAE0D8011048';
wwv_flow_api.g_varchar2_table(22) := 'D05DBD59D910FACB776FDCC27E00CF453C5650DE4083172D56A4D7503362C77413A33D1C19721AC68DF6502A3CF8EBA3C8920CF79174F98F26328BF534E0CCB8F29D4E8E2135780C7A61A84BA1CF12000021F904090A0000002C0000000080000F000003';
wwv_flow_api.g_varchar2_table(23) := 'FF08B40BFEAC3D17C9A4F1AA7CABF697208ADA48866699A2E30662AFCBC1B3CC4C9544DF8FD9F63EC1242804FA86C19C0592C3359931A533FA74109147E3CA1AC49AA4D01A78A7B395C7E62537BBDE02AEDA5F7B84AE57D353F11D0D9F9FFC45805E747B';
wwv_flow_api.g_varchar2_table(24) := '8554877A883C82717F6F5D8D818F3E768A678689998B936E7D9C729F8E44959A97966A78619B9EAC908C8005B1B20513B3B2B5B6B40FB9BA0EBCB8B6C0B31303C5C603C4C7C5C9CACCC7CEC6BFBBB9C2B7D3C1D7C3D9D6BED40FCACBDFE0D0E10EE0C8E2';
wwv_flow_api.g_varchar2_table(25) := 'CAD2DDD8ECDAEEDC00EBF2DEF0B1E4E8E6E3E9CFFCC6F8F302D6A3D78EE03B83F1E69DC3C7D05F3900E7041694789062C2810B1DE683B84F2E5F338D16EF6D1369AF174292274D2AECC8F1A3C77E2FFF6944A8A120BC9A076F5EB049F3824B7F1A7EC60C';
wwv_flow_api.g_varchar2_table(26) := 'FA2C010021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D370924A995E6850A27BA8118FC8A333355524CE316848F2BD623287410812BDEEDE793299B3BA6CE06A51A8348D710BB4D4A6B39706F1A7E92C7E2A5EC';
wwv_flow_api.g_varchar2_table(27) := 'D8D55E57D992395D2D7FE7F8FB97FD7603F87F41794E7A848651875681706D2571297D728588948A8395766B5C91908B7E44979693A28999986880A99B9E2505AEAF0513B0AFB2B3B10FB6B70EB9B5B3BDB0BFB40F03C4C50313C6C5C8C9C7C3CCBCB8B6';
wwv_flow_api.g_varchar2_table(28) := 'C1AED3BA00D0BBD2D1BEDBC0CEC9CBE0DFC6E1C6D8D7DAD9DCEADEECC2EED4DDEFE8EB00CCCD0EF7E5CAE3C5E7FFE9E8B513380F60BD73FAFA11DBB750E100830321160C28311E3C6B09F3316388CF27DE338A200F868C387262BD8C1EC5695499925C3D';
wwv_flow_api.g_varchar2_table(29) := '771A5E128C3910E605993259AE6CB84F03B8040021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D378193609ADA895EAAB091AF1833636541760DDB37B6E78FD6CA217405853C9D2C89FB3997401F14562C09AD2D';
wwv_flow_api.g_varchar2_table(30) := 'A694D69C7AB95B49B8371397C9D5630BABD29E95E07737EEAE47E5C4AB5AC53ED99F74777F5F66837169796B7B7E828D80858E8464866688009645949391818F9B9E70957A897C8B2605A8A90513AAA9ACADAB0FB0B10EB3AFADB7AAB9AEB2B01303C0C1';
wwv_flow_api.g_varchar2_table(31) := '03BFC2C0C4C5B6BDB8CABACCBCB5BECEA8BBD3D2B400C90EC5C60FDBC3DDDBD9D8D1D0CBE5CDE7CFE3E6EBE8EDEAE2DEC7C2F3C1E2F7E4EFD5E9FBFAD7F8ECE26DABC74D5BB87C00DD258487B061C07CF2C015233860613F8BFF1C2AD4C8901B5D448313';
wwv_flow_api.g_varchar2_table(32) := '25D263974E03C97726DD95BC70B2A54A0021EB699898000021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D3781A3F80828AAA56A2561E416BB16E496F36DE7BCC9A6931F8A86331177461D2CD963149D48A84328';
wwv_flow_api.g_varchar2_table(33) := '080A8F4BA98CC9D562B75E25F835AE4D85D6DF772D6637C9EE2E5C4C4DB3E2E1B7B9FC9CEBFB7B5F7527576D867F517E7281878B7640846A8D798E898C88598A945A83673F05A0A10513A2A1A4A5A30FA8A90EABA7A5AFA2B1A6AAA8B3A01303BABB03B9';
wwv_flow_api.g_varchar2_table(34) := 'BCBAAEB5B0C2B2C4B4ADB6C6B8CAAC00C1C8C3D0C50EBFBABEBFCFCEC9D2C7DAD1DED3E0DDD9E4DBE2CBD4D5D7BCE5DFEDE1EFE3E6F1E8E7CDD5BD0FF8F4CDFCB7FDF302BA13180EDFBA5DFE98FD5BA8B021B77A09D3FD3A68ED1B370D16C5610C77F10C';
wwv_flow_api.g_varchar2_table(35) := '42C68F1C355E9838921780040021F904090A0000002C0000000080000F000003FF08B40BFEAC3D17C9A4F1AA7CABF61D3781A308998EA0AA1BD99A9584B9B175D27189EF70FEACC09AAEC7630C8D37A212395BCA5E4C0070254C46ABCDAB2FFBC442BBDB';
wwv_flow_api.g_varchar2_table(36) := 'AF8D3B964E05DE74585D04B7CB6C67F98C5EDBDF47B73C0FBFEF7F67715A78567A837F647C8A805382868F7D8489859188621374059A9B05139C9B9E9F9D0FA2A30EA5A19FA99CABA0A4A2AD9AB1A60003B6B703A8AFAABBACBDAEA7B0BFB2C3B4BAC1BC';
wwv_flow_api.g_varchar2_table(37) := 'C8BECAC0B5B8B6C700D1D3C2CCC4D6C6D5D2DAD4C9DBDECFD0DCE3DEDDCBDFE7E6CDEAD7E8CDE1B9E4E9F2EBF4EDECD9E5F6B4F0F8B3FFC5006213E8EEDEBE09F0DC69F0C66CE1B98617182A8CF870622B87CD1C3C0390000021F904090A0000002C0000';
wwv_flow_api.g_varchar2_table(38) := '000080000F000003E708B40BFEAC3D17C9A4F1AA7CABF61D3781A3089918B391AB5949A9FB96EC6B9DF58CCBB9DDF340D54E1823B68C365A107664FA744527B4798B56A94AE4343994FE9E57AE35EB5D86B7E86F590B5EBBCF6AB8992C67CFBB3EBA1EBF';
wwv_flow_api.g_varchar2_table(39) := '1FF3FF7E81587862838285886977878A760C059091051392919495930F98990E9B97959F92A1969A98A390A79C009B9EA5A0AEA2B0A49DA6B2A8B6AAADB4AFBBB1BDB3ABACBCC1C3BAC4BEC7C0C6CBB5BFB7CEB9CDC9C2A9D5B8D6D0D8D3D1C5D2CCC2CA';
wwv_flow_api.g_varchar2_table(40) := 'DEE2DDE4C8DFE6E3E8E5E0DAE7E1EBCFDBEDE9EFEAA2C3BF1AF8C9FAC8F917FB02FAE3077020A804003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780499917790164760)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'bert2.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396132003200F20000FFFFFF0000003636360000009C9C9CE2E2E2C2C2C270707021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C0000000032';
wwv_flow_api.g_varchar2_table(2) := '0032000003FB08BADCFE30CA49ABBD38EB25042B5BC80CC3420C8628921CBA80EAC52A83A710421A57B3311C2DDD6E323B0C08B7DF9057020806A0420D063820970E96D466BC5695D806CB07F4D9BEC0B0B8644C3D75C6B47AC4F69CD2F18F103B531841';
wwv_flow_api.g_varchar2_table(3) := '79261D737D0A806000060702077B4B85868C0A8A1D5E6A9086000538020454844D0E051D079F9AA63198264205060407B0A82BA110ADAF8C568EA9B40E38B00406B23BAA0BAEBA6A0496734B9BC9CECFCBB5CFD3CAD1D61B06C1D715AEC9C1C2DB9AD9CF';
wwv_flow_api.g_varchar2_table(4) := 'DAE1869FADDDE693D9A2E0CBE9EFD60554D9E5EBA754E9F7E6F4E8EDF8F23590078F5EC05A060FBA23188EA1C28710234A9C48B1A2456B09000021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD38E3C2CE619CA61D03B10CC342';
wwv_flow_api.g_varchar2_table(5) := '0C8698ADC222A40A1902B71B15A84C038298C22068E92433E34068187C14C1DCD1B17ACE142B13203B95F0844BE88053083208C6AE8F732D0B49E98340ABAE9500BDE687F804C8FB755B4E7829704045350280813C29062604315589800552473397721C';
wwv_flow_api.g_varchar2_table(6) := '7F671E812474207E8A0B067F695D4D420E654F059107A9753D1064047204976A493BB9529675931168208F9F6AAB1405C71E68B34728BB2A1E0768D34786110606D8C907DE8153B08FE568C5E25EE7E6E5E9EEEE96E1EF0DDCF5C1F31396F5DCF7F8A320';
wwv_flow_api.g_varchar2_table(7) := 'CCB8F96B10EF813C71F10E0E4C38B042C186CB14429C48B1A2C58B18336ADCC8B107A3C78F20E725000021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD38E3C2CE5905A769C6402C82B01082315622500CAA922E8710C76F67A2';
wwv_flow_api.g_varchar2_table(8) := '03540D7053185ABD066110541C062E62EDF871EA928D6775592D2EA3AC1396311B7066B562EE2C38C408D1E4326D96CADA0A563C3C2642014F27372527057879026263252A251F375F8057007C7D363F78062E041F4762950A2158653C4A57A000061E63';
wwv_flow_api.g_varchar2_table(9) := '5A121CA0069C04A52F4CB4640762059C077163731367AABDB749027FAEB2A5A258254D129A649A048AC63F1405D3D470C519A413B1D406CC968034C1E3E50F87EAEDA19AF0F1DDEED9F1F2EEF8EAE4F93021FEFC16FC090488ED1F411807132A5CC8B0A1';
wwv_flow_api.g_varchar2_table(10) := 'C38710234A9C48B1A2C58B18336AAC98000021F904090A0000002C00000000320032000003FB08BADCFE30CA49ABBD38E3C2CE619CA61903B108C2620886588540317C0ABA1C02EC42A459A7BF1B0D6038B4760CD2E03638DA62021FC0A3434E678A5E10';
wwv_flow_api.g_varchar2_table(11) := '406065A3D62E6330E0C8804F9CD9933C62040320375E2B039E025AD74D308AE072702D044D77292B26056C0A7D521A805974241F367B5307218D569057267944831F888C078E0555169067127D1C9A2A048E6F74A80EAEA50B05B106B5A9742FB10A0506';
wwv_flow_api.g_varchar2_table(12) := 'BB5677BF1421C4046EC69C15BBA8BDBE7213BC20C306CD7FC8C9D9DABCD317CF12E0DAE2DC3913A7E84882C6C6DB10ECF4ECF017F5F5F7FBFCFDFEFF00030A1C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58509000021F904090A0000002C00';
wwv_flow_api.g_varchar2_table(13) := '000000320032000003FF08BADCFE30CA49ABBD38E3C208D16063089F72088B711821C52985702CC7AC10C7DB4263090828930D505B1408BA1DA0300812052CA2AD70F0E192CAC3A064D80A15A3A82ADABA2E04034ECC560498DD3E80015BD13A09031BF0';
wwv_flow_api.g_varchar2_table(14) := '2B05AF52046418684E682C782C45312C543E06812D84604D72793F33231C6F8F8215068292445E55722C2A72A472900C740D78793A924C430F2A1C9CAC9F134703BD3EB22EAA64059F73165A4D5168AD10ABA5C61B684D6A20C4D02023BDB417C5CC18AF';
wwv_flow_api.g_varchar2_table(15) := '5E1B5805E4DE1154BD501AE5EC2D31E9E6ACED4A29BD962EF165E9F44A6BFCFF00030A1C48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8310261020021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD38E3';
wwv_flow_api.g_varchar2_table(16) := 'C208D1606308C6721C8B7170E1C40285802A67BAB6D258D28239039E4581F0C2C1043D0541C0AAC10E3B808168EC0C3E5201D6A9DA0DA3211503C989CD9C845F5058B41C0649E9E0CC04A0B1D357C1D076CF4D2440813505503004517B60196F49067F31';
wwv_flow_api.g_varchar2_table(17) := '1F352A1C790A7B7D1306606F6757761F9B521F5F97A21903732F9D473F0F96980C05B3144BA9587670301465A797B41585A981B99910BEB3C61231C36520C9CAB2BE0A23A98B16C91704A973544A7119D1AF0702DC708655202AE5DC32D7E9BC69E670DE';
wwv_flow_api.g_varchar2_table(18) := 'F01743ECDCE8F617EBA9AEFCEED50B48B0A0C18308132A5CC8B0A1C38710234A9C48B1A2C58B18336ADCC8B105A3C78309000021F904090A0000002C00000000320032000003E908BADCFE30CA49ABBD38EB45C8FE4B71189CA71444015EA209748B91AE';
wwv_flow_api.g_varchar2_table(19) := '912190CA7194FC69A8B49360A7201C8030000A073030832F81A9702B4E67CA1FCD40CC0980075352167B02338741D726262609B882F6543863D2DDC3B759852D154E21752078423B2D2F1E322A4E40757615810B8551247E2A72598E8318546A6785542E';
wwv_flow_api.g_varchar2_table(20) := '0F994A9C19360352936A4A168F2B0403AA387A9012A72022B347AE5013923102B3B7BF0D05B36A582F5DC61104C3C9434FCE145CD1AAD519723ADADECED8C9E2E3E2A350E1E4E9B3E6DFEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF00030A1C48B0A0';
wwv_flow_api.g_varchar2_table(21) := '410709000021F904090A0000002C00000000320032000003F308BADCFE30CA49ABBD38EB65CCFE4B71780A418446015EE2A9182E50902B24D22617778C5A878703E7E083717C32E40F6010906E2FD7CC57A8D68C8BA0EFE0C2F214D61A41207C095C84B2';
wwv_flow_api.g_varchar2_table(22) := 'F7A95C1DC88BB4CA40649EA6E0B61B2E0BF63D46786120290C6365631E041E5633792B050267486F655C12838402034E71707A4B106303230A6FA0A1366FA42AA8A92F342F079CAEAF05039C5C4869AF13699BB864B1BD133092C1C4197431C9CD35B3B8';
wwv_flow_api.g_varchar2_table(23) := 'D1D1CC28B51BB392D9C7CC74C065CE0D05A3D29DE03269D29C8BE64CABD1C2EC00E3C1BAF160EF04D6CE5CC3F6FEFF00030A1C48B0A0C18308132A5CC8B0A1C3870413000021F904090A0000002C00000000320032000003F508BADCFE30CA49ABBD38EB';
wwv_flow_api.g_varchar2_table(24) := '55CAFE1CE12986C18CE04598240B74A954AC8B41D42E1C43C57193A21607B573180EAC19ABA4D0159B3F05E130A201982F62912088F67E3661F6C9E046A79E9907EB2403CC4DDF8BC66CC70C44F8157935C1EC29025D65836F516E0D47822E705A888982';
wwv_flow_api.g_varchar2_table(25) := '7C6F548F133382418E95780D3D829A8F05825D9C409510538203023E2EA711360702030307AF15054787B7BC18B2A3C085BD00BFC1980F3DB6C3A8B402BDB907CA24B3B5A0458AB4AB4DD402D6315CD9AB7C3DCDBB88D93E2804D9E68F5835D494CB1CDC';
wwv_flow_api.g_varchar2_table(26) := 'AEF307D9F6CBEBB4EDCBB4F2E635B022B0A0C18308132A5CC8B0A1C3871023CE4B000021F904090A0000002C00000000320032000003EE08BADCFE30CA49ABBD38EB55CAFE9CE1291D688ADC685605A11A46BA5A2D118EE5CC123150A03E95AED162106C';
wwv_flow_api.g_varchar2_table(27) := '0A1849385C180E481F2FD9CB351BCFA8C1E54359AF8C2C690AF032755F71990B042B0ED0701C4076CB05875E796E873CF1234F677D1C0407025C836E6D6380840D02783C2F518F498791927A960E2D98789C135B95A1A5129F99999B96A8A902AB61A611';
wwv_flow_api.g_varchar2_table(28) := '0203B0603F700FB4028A335BB40303020EBB7686C0C2750BBBBD26C1786D04C30AC57D8C65C031CCA50507CF1ED5A1DEC23DDB9C04C10351E19CC1072AE6A14ACBC2B2C4C2CD96ECF600DEBCFC46A6011C48B0A0C18308132A5C4821010021F904090A00';
wwv_flow_api.g_varchar2_table(29) := '00002C00000000320032000003FC08BADCFE30CA49ABBD38EBCD63E9A0537CA156182430969B612C2B9B9D692C7BEFE2C2E9FD18849C0AA5B0F97E4118D1787400853B55EF687C1697531FE1200458BDD966619B547C9B11E081400286D1CAC3FA8D668E';
wwv_flow_api.g_varchar2_table(30) := 'E5F4A37C4D2C12E0487202727D80385B02838615635D8B8F165B7B935C900A04839407028E96188A8B407F0F040302707789A60F050303792D9B02A602650E070307548983855B0D06AE68513AB3AF0CB3A38605B8B91F6DAB8B98A639B31FAE9D3E06B3';
wwv_flow_api.g_varchar2_table(31) := 'B50BDC63D180B30729B80223AEB025C400DC0AB8BA9EEDA61FC103F2F3A70AB3D980E624A5F479DAC6001BBE06F00E32B0A7CE5030650ACD348C48B1A2C58BF812000021F904090A0000002C00000000320032000003F208BADCFE30CA49ABBD38EBCDBB';
wwv_flow_api.g_varchar2_table(32) := 'FFA055846031929D79A295C9B86C6BAC001C4F85612CF62DE53B45CF27A4018BC406811014CE9049E772758C3A0ACB67AD696D18B234EB3037ED2A0807263767567CD187B4B6FD7AC709744835CF77C0E380715C567F81827D19060783376F1107037837';
wwv_flow_api.g_varchar2_table(33) := '3907029607110203611F5F95974C1105030231A0738A0F0403982C734290029C908C2C0595AC2361030351049A02419054A44406C09200B130ABAD37972BB135C59AB5213A0CD2CAAC00BC6DDA06C5E1A55DDA00D5DBC949E6ABE49A9C8DCEDD9BD3BD7C';
wwv_flow_api.g_varchar2_table(34) := '90ADE1F266A3F4E97CE192BDEB438C1C2237DC0E3A81A7B0A1C32809000021F904090A0000002C00000000320032000003EC08BADCFE30CA49ABBD38EBCDBBFF60288E641916A656AC69B6A2EDF5C611BCCCB463183680E7B71DEFC602320A4258D178DC';
wwv_flow_api.g_varchar2_table(35) := 'F580CB85900920109CC7270D69B562A95943D7007E20C9E574A3CBEE6A63ED365A7DB1E60A57C96090E21E0E02077A7C23627F81074383247F0757366211028422513E80026F007B31780281286F932D069F890A805A9C2506987307030796A325800436';
wwv_flow_api.g_varchar2_table(36) := 'B08205810CAB248AA8B1C10400BCB431B90A06030200CBCDBE29C90A9364B0C4C72604C2CADC9328D1AC820BDF3ECCD49439DBE3CBE3E12D05E7C168D931A5C4E830EFF037F2C5E94CDA2DD80785C1273A08135249000021F904090A0000002C00000000';
wwv_flow_api.g_varchar2_table(37) := '320032000003F608BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CBB14B02BC1851CD1B5FDE076DED0328330C6F0B160C22451A7282485CCDF321A3510ACD82BC1B8CA7AB7544CE1605039CB11C3406072120887036132188CACF0F895FB100C';
wwv_flow_api.g_varchar2_table(38) := 'F81C707B0C561204037321530005040207804D6B278D7A359100752606078F398E91070368219C8FA48E078C0F87AA227A0CA98C8F0E05932253B2008773B46F007E981EBA05026C6AAA7E00A28924BACBA3BB88C076C825CFD6D435CA996C249C0CC697';
wwv_flow_api.g_varchar2_table(39) := 'C60ADCC129BC0AD9DCCC28C50239A268DC6ADE9B02CDE2E5760A75C21E3E6CD9E346AD590A35CD342968D5C2489C2261224A3C91000021F904090A0000002C00000000320032000003FC08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE';
wwv_flow_api.g_varchar2_table(40) := '702C03C5EC14786D2B79BFD33DDD0FF79B150CC86452C83A2A95CCA2E42088929C93C3E050C2190860036530B06E8EE0B0C1EC200C042135F34B110CC41F22A340381CD80B06645D067E6B34137604235F07043A7D80346492167C8E780004028B925A5C';
wwv_flow_api.g_varchar2_table(41) := '1F7D999A9C0A02A01064A3674C9B8BA4628E007454B36F24AE3CA7935C02705A8B8A22B90A54626E62BEB65C820371A50A06BB005435CA00B7D45B207C0CD5A67000D776350594B8D0D2AFD76EAF6EE12105D39A77E0D1D9D803AFDC0299DFE2F006DDDB';
wwv_flow_api.g_varchar2_table(42) := '7765DE356D992A7550B7C0CE82762DF4504385488AC58B1D12000021F904090A0000002C00000000320032000003F808BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CCF746DDFF858EC7C0FF7C042C520B4190682A28947112095A0';
wwv_flow_api.g_varchar2_table(43) := '9D613AAD38931F2995089D5CBB19EA8E513058BE1D7099400043D02103DB0C703FE0E9799170B03BF019056C6D0B7C047514668017730C860A0787110703428B156385910A0402669B559D0004480A97188F750707750287020200948A0392A715A9A37D';
wwv_flow_api.g_varchar2_table(44) := 'A39E00B00047AC47B1A64F1A069B0A06AE905807C4BFB203ACC5C418650CAB4502D4D194420503950BC91DCB74CB92CF9CB5ECD42105AB85BDBEC4E1EF4E745107FAEBCD0BD180B55BC20DA0B5592C0AD0AB576880BE177CC8E498487143020021F90409';
wwv_flow_api.g_varchar2_table(45) := '0A0000002C00000000320032000003FB08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CCF746DDF78AE038450DC82C1E0802AFC2804E18030323A2D85835060E838AF1A4370E0D36019C68C41490419CE9BA4B0CA299C8F47A871DB';
wwv_flow_api.g_varchar2_table(46) := 'C5B8D10A0313CACD6F0F71127706717A5581103F41756A4B880E6F0C860A047B10523F52020C524B1388930006075595A2A58063658B929616A1514C05024C079B4955416C9A8FAF046C3C80A2A40007445A44057D0AAC59BF0BB194C2B6CC9BC59E0A9A';
wwv_flow_api.g_varchar2_table(47) := '5EC0C147C6D965B63FB375C5AE1BA36CB3BBD6497B496521D1D2DE65B3F1BA2205CFE00BD4D50BB4706B72C0D2374A0380F592472C9B355154649882B6A3A2C50A09000021F904090A0000002C00000000320032000003F608BADCFE30CA49ABBD38EBCD';
wwv_flow_api.g_varchar2_table(48) := 'BBFF60288E64699E68AAAE6CEBBE702CCF746DDF780E1444711F8381E060A01980C1A0805094F10449656F662040A387A9EC78551E7C18B066B8E02107844B61BD29481B058358B2666BEA48C1DC522F372B0502020A06575F7C760A713E7B0F3E408384';
wwv_flow_api.g_varchar2_table(49) := '4969137D7E4D4C125645900C488D957284539906450407000603A9009D7E19714D3C450544AEA99BAE034DAF6DA2A33E478FA981698191BBC961A6659900A80A07AD64D0680BBE6A730494D094D3D27A0A8262591F55B3B7B884024DABAD213CDDC3D2AD';
wwv_flow_api.g_varchar2_table(50) := 'C6D8BC223C62DCD8F007C90AFD2161AB1B3805BA56D0F2B740E0966E3A224AD490000021F904090A0000002C00000000320032000003DD08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CCF746DDF780E1043EFFFC09FA0C40B1A81';
wwv_flow_api.g_varchar2_table(51) := '439DEB7030146C029FA049331CA252C2B375202C0A846B6FBB2A4405868621CD2AB80FBD03B9E3BE980F0A03D64BAF579E70780A04677C196E5B4E12848003820A7003737F7E058A6B007556007A82810C96877E9C696069045E8C00576C9F1C885F8A60';
wwv_flow_api.g_varchar2_table(52) := '4FA8995D99530BAEA26496897CB5AB82846CAB8E1B7398836CC1615B020264B71EBE0AA6837C7A6C7A8621CA9C5AD8D6D3ABD122D57986C1C20BDA2804C5EBCE6DE1E2795431EB4AFBFC17090021F904090A0000002C00000000320032000003E508BADC';
wwv_flow_api.g_varchar2_table(53) := 'FE30CA49ABBD38EBCDBBFF60288E64699E68AAAE6CEBBE702CC30671CC404108435FBC05C381D71B08082D21B12738187E2ADDB27720405586A9D10A3B309D0C439148BC9182D7B071CDE3997133DB130E581E0DB89AFD9856551741433E2D056D780C41';
wwv_flow_api.g_varchar2_table(54) := '8439434D7D2C050766905B8E283F436F595B2005950B363F3B6F003B029E169D0A73A935005948A44D88871DA9AEA14842A10750A223B668AE489078906FBE21B60687ADA4B03BB4C81EB6AECCCFBC8BA304B4B550C1C2AAD8AE476757DFCDC40B91A71A';
wwv_flow_api.g_varchar2_table(55) := '69CB0BCDCEF0602773AAB0AEE251F6F2E1EC28EFE8081C8822010021F904090A0000002C00000000320032000003ED08BADCFE30CA49ABBD38EBCDBBFF60288E64699E68AAAEAC68106D541CC350C40E510F30BE18BB836F5110D404B7E1EC6868BC58BA';
wwv_flow_api.g_varchar2_table(56) := '5A0F5020D06AC993C13810020C07EE715A2A1E9362C1A1895A0E046CC561DDE29287006B96B115F8FF7E5E2D7D807F827888796B7B78616F0204068C31558E8104932804642F7F9926336A710A05A3293755819FA7073DA190383704B00A607EA65A07B2';
wwv_flow_api.g_varchar2_table(57) := 'B40AB3482205A837064D333DB364A523C15F4D2FB2BABDBC65B5C59154AD0BC8A049C4BD6C6071DB24CCCDB5AE9B0CD7E4DD6C55DD746D59DE54EB8AAB1FE5E6BD53EFF23F719EB5D843AF1EBE7F89122A8C91000021F904090A0000002C000000003200';
wwv_flow_api.g_varchar2_table(58) := '32000003EB08BADCFE30CA49ABBD38EBCDBBFF60288E64C914E6261029260C426BBDB14CD1F60D33069B333845E13018A07E802080505C21933B80E135383CA1B102F57044E20A4D43C3206E290F3E408170A07649CA85A15D84A153710555B02A9BB451';
wwv_flow_api.g_varchar2_table(59) := '0D6C7E320681570E6F637C8C8D564F53026D937C8F88970E838A976D950484886B9D9E579F3C6C7C9B2943928A05A02D47A804AA366B3E6B92693F286C697392B0263D0A73BB73967F626B65C627B51E0528AF283D47CEB6D306D3A6C57732D2C5CDB472';
wwv_flow_api.g_varchar2_table(60) := 'DFAB47AF0B04C7D020E16ADB42DDBC5DF1C5E4F4727E6BED23EFF098D474A186E95FC08308AF24000021F904090A0000002C00000000320032000003F308BADCFE30CA49ABBD38EBCDBBFF506180203110A4370C63BA1DC3E16EC55A2C023A53C2890F82';
wwv_flow_api.g_varchar2_table(61) := 'DDC4B0FA0585925EAB7744424C4726C3D072026A839B54518065AD00986C0B2030AB48EC15A830F47C60404F77EBAE0EB738B1793D37A8482B68613A5706070289792E501006664C02078529588B0C30899397333D320F040483486671206E07A9AA8894';
wwv_flow_api.g_varchar2_table(62) := '7AABAFADA6B243A2B311A992A29CB6220488A9B5B3800B8FAAB305BE049C05BB5622A906CD71C1C8D0B66DC157C9A34222D86887B12ECC86798F68E44EE922E6D9A6E9C300E7C779ECC4EECE8BF1F2D2DD0BF6D7B8E8E3F66E11C06BE9023AE8A7B0A1C3';
wwv_flow_api.g_varchar2_table(63) := '87A612000021F904090A0000002C00000000320032000003FF08BADCFE30CA49ABBD386B5848D920440C446832C2602CDFB90DC332AE2E660CC202D3B575908ADFA187497D0AB016E0502272708A5413901A3A1FA3E12D171C58AF8EDF2A45AB822130C0';
wwv_flow_api.g_varchar2_table(64) := '882B6418785764EEF7692B0A078140E9CCDEA95E322902704E642C7A0A06835367690C473F02077C605B0E05559505852E3F8D323C9C04797B449903956EA47A93049D26373110A59306AA357658AF676E07B0BD200607C4C5C5A0C100C3C6C6C8C9CF16';
wwv_flow_api.g_varchar2_table(65) := '6FB8D00CA4C4AFD3D0A3C7BCD4CA7CDB5FD004D80D05D96706E4C0CF6F77EADDDE009C4A1DE4E83DE7EF70F0D4FAF3B720E1CB57CF9D3C16050782F9F74E611C700E1F1EE4103159C58918336ADCC891025A02003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780501914340166367)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'clock.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '47494638396120002000F50000FFFFFF000000AAAAAA8484846060604C4C4C3E3E3E4848485656567070708E8E8EA0A0A0666666343434323232383838424242747474A6A6A6AEAEAE6A6A6A303030B0B0B02A2A2A5C5C5C949494262626222222888888';
wwv_flow_api.g_varchar2_table(2) := '9898987E7E7E5252527A7A7A1E1E1E2020201C1C1C9C9C9C161616BABABA121212B4B4B4BEBEBECECECED2D2D2D8D8D8C8C8C8C4C4C4E2E2E2ECECECE6E6E6F0F0F0F6F6F6FCFCFCDCDCDC0404040000000A0A0A00000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F90409070000002C00000000200020000006FF408070489C0C108E4BC9416C3A9F800522743A954A56A8962820';
wwv_flow_api.g_varchar2_table(4) := '6C46D7F009B2DD2E0CA1743A7C2D4333978D7A1D3EB89D0BC7462E5A3F08110A0A7745101A1B1A228A0619845014171A9287118E500B1517911A170396500C15999A959F4E020D150EAA1FA64F03AB0D0E0E8DAE4D04B30D0D76B64D050FC00F09BD4D06';
wwv_flow_api.g_varchar2_table(5) := 'C6060F1CC444C706101DCB43CD10B5D1071007D983D10008D9D91EDC0009DF0504E20A0705EA080BDC0205F10808C3DC1105F31804DBCB12F308FA08B8BB4363CB000CFA18304840C2CD8C825A2C3048B8108402145060C878584602818F092280F0A060';
wwv_flow_api.g_varchar2_table(6) := '8185142A56B060F122068C191C0140C44361A1C8011C32749060C1440B44152C35C2A441548B001021410C1890818449132E80B684F172861B0B196E0AEAB040008A143F59BA84E1082B4E0519163C8DAAF205D94F26042C70BA608209942CCA04010021';
wwv_flow_api.g_varchar2_table(7) := 'F90409070000002C00000000200020000006FF408070489C0C308F4AA9D4782040C4A894B8406842A1A5B674124DBF42014323128DB0A191D6A6004F1710CD6683C6AA9737893BDA7968E41B657677251B7B540F17177F7222060C110A0A110407874213';
wwv_flow_api.g_varchar2_table(8) := '0715158A8B07199760090E9BA41511A1600B0FA40D0E0D1CA960140DB5AE50B253020FBCBC08B95F1C06C3060F1DC0530CC406BFC852080710D2A8CE5107D7D76DD54405D807C7DB4305DD0705E0E10008DD0508DAE804051F080803E84211F2081809F6';
wwv_flow_api.g_varchar2_table(9) := '0019FA08081058604F803E0C023DF4038190008304E7B64910C8804282087AD07160F03002880119B759007131C280010A16A4F83283C6250111629E5490618105172A58BC88016346CB42501264A2ECB06082099C3A61C8F819CA0207940A881A45BAB3';
wwv_flow_api.g_varchar2_table(10) := '27D34B284848222A00458A162B6AF05CDAD26528130BB85A389A53ACD219CE4CA040C17645D23D41000021F90409070000002C00000000200020000006FF408070489C70308F4648F478200613A2743A5C602E1BD126341A95BEA7116241A50A28958B46';
wwv_flow_api.g_varchar2_table(11) := '93E586B8DFD2E94428131787B47A2D12BDDF7127372476421D061589177B1B6D255E5F360885000B060E150E988B1014200A0A11041791941305499A9A0719650A1A0394110F06064D0F2094BA0B10B5BE0ABABA09BEB5B9C185020710CA0675C7850A07';
wwv_flow_api.g_varchar2_table(12) := 'D2D21DCF8509D307CED66504050507051EDC7608DF0508ADE454081F08EF64EB53EF08181884F25218F51804EAF94318F423C00018C0212008106460EC20800C0B134410E010C0040A09247EAA084081C4081E0648A83841E380010A4C540C155241860E';
wwv_flow_api.g_varchar2_table(13) := '2A0F5A38C941418705124CA89089D2E6824409265CA8A81103C68C19346858B390210389051682AA60F102860CA4E44C2C781A552855AB58C9A5B020A1EBD4AA5795CA7361422A0BA24691AA95A7622ADCB473CB04010021F90409070000002C00000000';
wwv_flow_api.g_varchar2_table(14) := '200020000006FF408070489C280806C36693240C26C4A874B820342E588D66191A853488C5742A483C2A0E47762B0AB947A51241301E4A3E8D74BE72D16E446D6E71250F62631D070F060F0D796A7D4B6D5E8325220A53120749498C0E0709200A0A200C';
wwv_flow_api.g_varchar2_table(15) := '0D23707138370F52130806109B06081D630A06832704532007BEB1071E75430927370E9805BECB97C3431E08631107CABE03CED8000205DCDC14D9D8191FDC0861E0CE20E5E5DFE7C30C1818084EEDC304F6F6B5F463F70C0C12FAFBFA3148F00FA09404';
wwv_flow_api.g_varchar2_table(16) := '0813443064900808841140E46B3844814210039A5114B240A1878C26360AB1000223870C0C376618C04141061221455A68F972C1841622012C50D0618104470B265488344182844D14295AB088B1D1844FA02E54B0780143C60C1A34009A9800552A55AB';
wwv_flow_api.g_varchar2_table(17) := '590DBA306122EAD4AA5729AA7061F66BDA8D2C569C058B35678C183066E8AD8B2D080021F90409070000002C00000000200020000006FF408070489C281807C8E50231103813A2743A94300C0D47657BD1784517C4824A15440C86C7A391AD74BD1B9168';
wwv_flow_api.g_varchar2_table(18) := '431090AB98263ADD5E7E452121230F6364240807497B6B0E0D7E71802125251A195412888907064D05091E1919200C0F1A8181931A8543130407059A07181D64191022232393250F76430305B0C20377430922BB93045508081FCF0896C5BFBA93363612';
wwv_flow_api.g_varchar2_table(19) := '421E1818CD081CD3520925273706ACDCDC0411E1530E1A521904F3F3ABED42D952030C040C0CECF7A64560408141026901EF4448C03082BD845312448800024414886424821830E022C629153942F948850347050A7C9124D28183820C1DF2ADAC82B203';
wwv_flow_api.g_varchar2_table(20) := '09092E660E3101F3E60455133AAB905820008509154101985820C18209172A6A24453101450AA82C6204756114EA8A1A3160CCD0D9E2A90A162F60C8984183C64C152DCEA65DEB56278BBB6167B04D0AE0C5DCBD7CC3D2ADCB17805EC00183000021F904';
wwv_flow_api.g_varchar2_table(21) := '09070000002C00000000200020000006FF408070489C28128783A391642826C4A8742849400CD887A3C2BD5C2A98C5743A011592576CA3E17078359A0B4130A6120EE743DAF060BB2F701B220662630B0805894907597D6D6F1A2222211719531204081F';
wwv_flow_api.g_varchar2_table(22) := '8A4908110319191E09068082932317854313140818089A050C1D631907922121232506504303AFB1B11C7543111BBA212525047604D00418B5C6C01B23BBCC8503D1D00AD55109BCCC250800160914090C0C1EE05210E4CC122409F6F612EF5119E42727';
wwv_flow_api.g_varchar2_table(23) := '111C1244880062803E290F4AD8B86183C00010203C802071300A820D04F2018838A0239D8A753A0EE0A00005C83A2415843271728C02051D3A2C60D9524A4C120B24D0AC4984DE0256011676F214824202501329580C1DE24242D0142E542C1D62026954';
wwv_flow_api.g_varchar2_table(24) := '162FA6025061E26A8D1730B4AA50B1022B0C1833A6B250813506DA1934682C656156065CB9535FB89D0157AB90B37CF1FA0510783011C1869706010021F90409070000002C00000000200020000006FF408070480464128882C15028501493A2742A497C';
wwv_flow_api.g_varchar2_table(25) := '0E58C8D2F070381E84C5743A19249BD8C3B65B69572882F1504241203E85B47AF968782B17171062630B0C767678697C7D5E811A1A0E1953020C04041888080420031D190309078E901B1B178443162096979809A9451907171AA6A60651430A09099696';
wwv_flow_api.g_varchar2_table(26) := '0A724311B52221C7044313BDCCB0C2441C1B222223231A840A11DADA1DCF4511C621D508002820E71E20C1DE4507C7232523120B03F5F516ECB225C72525111D0A38285030295F9107FDFA150098A1611C834408242CD1A08345120B4C4024E261A20812';
wwv_flow_api.g_varchar2_table(27) := '18254870B17157C21325444EB060A14549210A4E965889C2440A152FA798B0E9C2C58A459C527ABA50A18205D0222A5A14655123C6D1212C8AD6781103C653A82C5EC0802163C6550031A8769D3183C6D7AD6469A8357B352DDBAF00D2C225A276AEDDBB';
wwv_flow_api.g_varchar2_table(28) := '78F3CA09020021F90409070000002C00000000200020000006FF4080704804744004CCE18041241493A2742A00353F85ECF260E83216D3A965906C220ADB03A46B683C1282F07002621092883C7AB9EE362A0E076061121109097677667B6C0F7F151506';
wwv_flow_api.g_varchar2_table(29) := '1D621186870C7609030A241D1C2005068E8F170F8343289F959620A7451D1F0EB217171A10514324031E03032011937242207FB51B1A0C43260A0ABDBD71C2430A15C6C7830BCCD912D145111A1AC71B1800291DE61D19AEDC42071B2221221B12280BF5';
wwv_flow_api.g_varchar2_table(30) := 'F529EB451922EF2321201604089820C0423E291042281481C0824313285C1C2CC240618811064C6874E142C544221E4A282CB12105C7162A587C945662C488122550AA58C1E2C54A210A60EA4CC9A2C68B4918370184D4298245CD1830600425A0B3C483';
wwv_flow_api.g_varchar2_table(31) := '172F92C29811F4038E1B364E7C403A75C60C1A41014C60A0210180AE34D2862DE255ED5AB65FDF4E892B570AD8BA78F3EADDCBB7EFDB200021F90409070000002C00000000200020000006FF4080704804743C0C02A24020443293A2742A185008188476';
wwv_flow_api.g_varchar2_table(32) := '5938782992E9D4A24850AE4DEDA7EB851820118178681924EE89A412B1F61EDC060F050B731303202011771449591F1F7E069281061D53280A0387898A110A19241D0A200807930F0D0E068445A299031E200361531D08810F0E15150751431319190AC3';
wwv_flow_api.g_varchar2_table(33) := '1CAC73001E060D15BA1514432E0B24A1A216C7440A0FBB171715AC2612E10B0BD6D7441115DCDC04002A2816F002E5E6441F171AF81A122D26FDFD2DF48A64C8B7618307152D5C287411508A010D220A22504191E28A8645186C0811D1008B8F1F6B6024';
wwv_flow_api.g_varchar2_table(34) := '3220448811212EBC5819E3458C9143149C1C3142048C9B38610A9149B3A68C54193364C880A11359099A2534005D3AA3288112504B3CA041956A539D0EA296284063088DAB23159C807AE204082254756A2831762CADA24340E0B8511601DC29096EE030';
wwv_flow_api.g_varchar2_table(35) := '76B74882BE80030B1E4CB8B0E18041000021F90409070000002C00000000200020000006FF40807048042C3891040143617832C5A814605124134D0201C12D7C129269D4441A80225786968B281C0A0590402C34653803332881D562101F1F6F07100861';
wwv_flow_api.g_varchar2_table(36) := '53261D0A8B031E677C6A7F8107941010071D52290B2419190A781E03191D0B0B190318829506060787441612129C9F191353240496ADAD05B8432916160202A6C0740307BD0F0D09432A29262628B22674440A060FCD0E0F0B422A2D2E2ED32ED8451EDC';
wwv_flow_api.g_varchar2_table(37) := '0E150E0C00352B2AF3E4E85108ECEC0D022F352CFF2A58D82B92815D850A1706C458D84FE0C02207105EB8400086C585311E1661504183C7033366C8B008432391011A36A4AC10B2A50C9343146C10B1A1268D9B3442C214A24084CF5D9A4372CED80960';
wwv_flow_api.g_varchar2_table(38) := '4088A3222E10A1411400831023468430D0B4C883A35111548D59026A54105B853C2811B58408584D139C28C1F684D6AD204AAC655B02DC560237E69E201056C880BC272ECCE90B00EF884C84FD2A48CCB8B1639841000021F90409070000002C00000000';
wwv_flow_api.g_varchar2_table(39) := '200020000006FF40807048044C3A034F2201020D3AC5A814605A6414830128B26410BE20C934EAB22C3A574E12D4FD621008CF642C6CA104920529ADE57A096F1F050462532A26261616027A691E6C095E700805050824522C2D2E2E888B0B0B12121302';
wwv_flow_api.g_varchar2_table(40) := '7B0980700705071F85442B2AB12E29882E530B09081F07BC071873432F2CC3B02D2A74421C95BD06114330312FD2C32CC84319BC1006DB0B4230DFDF3131D6440307DBDB144232333332DFE44504E80F0602EDF8EDF1441DDB0F0F0E06CCA04190E0BE22';
wwv_flow_api.g_varchar2_table(41) := '1F003AA840C0A0101A07892468E0A0E2018811A50CA8B8F041C629192A54B840F2A31405242F68B86032CA00951A343868598441CC0D1A0CD024626083CF550D08760AC920A2E806111E840238104244D30DAE5A260841956AD09D0346380D314243379A';
wwv_flow_api.g_varchar2_table(42) := '094A9418C17504019A0234885D5BA281809D1770B00D0145A88D1362352850BAD446DBAF7C376078CB5748D4C26382000021F90409070000002C00000000200020000006FF408070480498241D0567C0542C8AD028A0755C74320AC5C013497807022994';
wwv_flow_api.g_varchar2_table(43) := '4545592456ECB69BA010188389585853B55C26333AB90475190404081412622F2C2B2A2A782602122459037E09808208044F5030312F35888B26A1A1284803948108A908854530AE9C2C8A2A521220A8081F05047243333332329B2F2F73420A18A90505';
wwv_flow_api.g_varchar2_table(44) := '0720BDBEBEC130C5431DB807CB05AC34DB34CFD3440ACB07E309423443DDDF450CE30710106144DBEA441DE310060603F4C508F9F90CF8CD89F0CFC0078162383C30F060214229191A3E70D0E061940C0D1A38A850D16291010E425678E0B1480291150E';
wwv_flow_api.g_varchar2_table(45) := '942472E0C2850A1708AC14924183860B37F7CD3CA06183CD540BAC4A461021A2A706992B076C202AC267268F094484602A02A94505064A84D8BAF5413C84081C9418CB758406121E0F9C185B62C4D80B194A32B0C176EC83A71E6DAC5D8BE16B49BD213E';
wwv_flow_api.g_varchar2_table(46) := 'E05D99C1835F2841000021F90409070000002C00000000200020000006FF4080704804B44C13C922C3EC488AD028E0B572B94C166546C11978400A81341AABAD54579460D15128BC91444261190F61B1176BD5BA66495B0320710914116252333332787A';
wwv_flow_api.g_varchar2_table(47) := '68585A6F8372140C0C0B5234348B782C2A2A7D7E0B0A93090C04A84F519B338D2F520203A6A804081413999C764219A7B5080803B932BB43241818C0C0AA459BC5440AC01F1F0511CFCF09D305DB88D76324D40705070ADEBB0407E90709E67620E91010';
wwv_flow_api.g_varchar2_table(48) := '08ED630AF01007F4521D06FDFDFA5132F8FB07B0088707030B1649F0A0E1830F0A891468E0A0228188BC1C54D0E84018C6021A2B5468D0AD60840B284532C038E082060D2931294CB0A1E6CB0B14140A141122844D4303259FB94940A042899E3D6B5620';
wwv_flow_api.g_varchar2_table(49) := '41EF4189A747438C18E1F342067D254E40953A35840199F42068855A62C4060241CD9D58CB360402B0000D9CB850E1C3005C6382000021F90409070000002C00000000200020000006FF4080704804BC582A570A65114C2CC5A85408831D57499345B2C8';
wwv_flow_api.g_varchar2_table(50) := '2816D069744686C58ED96D57C11974C262006D3E9359592B9709355974D8032003137143346531352B2D2926027E0A031E201111128572875589487A127F92200909110298873353261DA1A31411705273980B94A30C040398BB0BB704BF97BB851D14BF';
wwv_flow_api.g_varchar2_table(51) := '04081EC29820BF080818A6CA620B1818CE080AD27114D71F11DA62031F1F050504E0530AE407051FE8521D0507EC07EF511DF3F9F6450AF9F3FB44221880301001C021080C283440E120800E0F161AE0E010C1838811A3ED03E1A06383060D017268D0B1';
wwv_flow_api.g_varchar2_table(52) := '8283070B0046A870A1824B0709F66538A0A166CB0A10341642402082024D0511183C10B1A1A6860B17502A7B50A269D310214488D05054C3830CD26E381D01B5EB86A210522A5B60636B881168896A60A07397061C279C3E1DA10181586D123EB82C71A2';
wwv_flow_api.g_varchar2_table(53) := 'C2030483E204010021F90409070000002C00000000200020000006FF4080704804D0663358ACC652B55CC5A8B47854BE9A2E93C5929A7A8755D855959D481612D3574AABC6C6654927D341AD896DA4B2B672A550130B1D0A840277434832564D7F67190A';
wwv_flow_api.g_varchar2_table(54) := '1C030313875F2E020B8F92110316955F1690032011090A9F5F13A3A4090986A8530BAC09141CB05E1CAD140C0C94B7511209BC040419BF5211C4C420C7510ACA1814CD451D08D60804D34424D7D6DA43D508051F1FDF420A1F050507E5E62007EB07D9E6';
wwv_flow_api.g_varchar2_table(55) := '0407F60709E61D1007FC07A7DF3018300081DFAB6920062ACCA74D8181070A0D2CD016E18145880F22AC11700160940C071C5470E0A0C1830307A7D8C071A20101530A223030A0E1C285912325AE5170A284CF431223468418BA4143CD0A480D74B873E3';
wwv_flow_api.g_varchar2_table(56) := '8453A0418586285AF3E681896B3A387D0A55A8880D456F3248F965C187125C834EFD7A01035654AA10940C31C22282495F82000021F90409070000002C00000000200020000006FF4080704824D2663318EC552B3A9F4FDA51F962A9AED0ACF3285B5A5D';
wwv_flow_api.g_varchar2_table(57) := 'A6944BAB9526635515D8324991A3C7736DA54A99268B05EAFD9C75635F2628020B1D1D267C5A2C6B12850A197B89592E841D190A0324925A2624979803139B59160A1C031E200AA3591DA820110916AC4F1603B009149AB44E1C11B1091CBC4E1909B909';
wwv_flow_api.g_varchar2_table(58) := '20C34524090CCE0CCA440B0C04D504D1430BD618D7D8001D0818E1DDD80308E708D0DE0C1F1FE711DE2405F3F3ABD8040705F90502E507FFFFE03DB99548010408000B487802E24489046F3C1898781042326236709428F12003940E051E4CA4F8A15F91';
wwv_flow_api.g_varchar2_table(59) := '08366C6C5C698081AA0C20121C70D0E081C88907163C91B06165894F10404508D5A0E142850A0D688A3CD021CB82060E4B8C18113404D1A2472BD02CA0538B000C2BA78ED820620351A3471F2430F966C1870D21A86E987BF6C203025D374D306733C406';
wwv_flow_api.g_varchar2_table(60) := '91043888CA12040021F90409070000002C00000000200020000006FF408070482C0E69B49971C96422673058AC495D3EA5AF5A750B784263B5956AC57526A1B0174BE572B5CACC994C5A5BBB4C28179C99B6A75016137B4D2C6D2616120B82834B2A7813';
wwv_flow_api.g_varchar2_table(61) := '891D268C4B2E02910A0B944B020B1D0AA0289B452619A0030312A3451D1CA8030AAB440B031E202003B24312B711BEBA4212BE09C4C00012C4C9C6240914CE09C60A0C04D411C609D4D41E46168C0B08181804181945170F8C0908EBEB024315372725D0';
wwv_flow_api.g_varchar2_table(62) := '70031F08F708DB422127F2F2B9B8643850A060010CAA84602821AF448911F4A80C384091E0817D42265C683822C40803E596744000A122450C8B867408E13084CB101B0C50009121038804071E183060B2802655230A44381CD151C4060D1A2E3858FA40';
wwv_flow_api.g_varchar2_table(63) := 'E74E08100A9068B2E041C78E308F26ADC074E74E04099B0820202284D10D472F54E05AA141530309DC71F9A60126D20B6AB93A30C0202C9C090330ECC45B928182944B82000021F90409070000002C00000000200020000006FF408070482C1A8FC86492';
wwv_flow_api.g_varchar2_table(64) := 'A66C366933A7B40895C1A6521A14168B6197DA9935567B7D8FE1190CF662B1CE4835BBB652A9E0C7394BE54ADDF1456D7C2E262680467C292616132E87442B8A160212868F438B020B1D129798129B1D1D9E4226241D190A19A40026A90A1C1CAC28B003';
wwv_flow_api.g_varchar2_table(65) := 'B6AC12B61EBB431E07118024201E2011B61A2736250D800311CF090A11272725D60A701209DBDB2412D6E00670200C0C14140916001FD5E0095F0A04F2F203420BE021231BF5521D18F3F23A0921602D84C10DC09A7040C010010604FC840870506284C1';
wwv_flow_api.g_varchar2_table(66) := '10220EAC3AD2814181020D1130985084C4851116436CD070E140020F193238FB70A0E681021F1010105824C3054F8C2236ACBCE0C04183070F0C18B0F9112489240B0C045DC9B2E851A50620D42C7060671301043488BD70A18251A458B7822029650186';
wwv_flow_api.g_varchar2_table(67) := '0A642BC87590542984043CB14CE040A066D19B1414B04512040021F90409070000002C00000000200020000006FF408070482C1A8FC8A472C96C3A9FD0288D368B32A7552B724A9DC1B447AC17160317676818ECC5361365EA578DC57213637296AAB5B2';
wwv_flow_api.g_varchar2_table(68) := '0B632C2B7B2E2D7E42832E262986002A892628288C2A90160212060F0F0606662E0297120B252727252519602E0BAC1D1D22A7A7116028AE19B70EB1250460120ABF0A1905A6A70F60191C03031C1D11A62121A85613CA1ECA0B12232523232110561C20';
wwv_flow_api.g_varchar2_table(69) := 'E2E2160008DCDD22B34F1D0911EF090A420B1BDCD01B1C4E0B141409FE091386108076EFC23A250A082864E04FDE10010F3648DCA0E1C2810E48482440804121010611CA11217141A2868A0E1C148830C0D500100410C8E4B850C2910C0E4E5EB850C141';
wwv_flow_api.g_varchar2_table(70) := '03484D9C0E082DF0E1C34C020B922C80B0B342CF9F9C0C081D6A1401059B4A043070EAD4C1264E10861628806040C0260B083C48F9D540D8A109B04299A0804181039CC826C8701649100021F90409070000002C00000000200020000006FF408070482C';
wwv_flow_api.g_varchar2_table(71) := '1A8FC8A472C96C3A9FD0A8744A55D2AACB2BF648A3CDB6C36B77F60503BADE190C00320CB0E4990C462F9C6CA7CB7B3A87C5622F0E25832504547E802C2C2284257B5231358A2B2A8D250A5435942A2A2E8423251C542C2D2EA6268C23212520542A2929';
wwv_flow_api.g_varchar2_table(72) := '26B20F25AA210C542E162816BD0821B6065413120212121620C02122221952260BD2242428121B22CC1B075224191D19DF2600081B1AE71A1150120AEDED0B420B1A1BE61A15A24D121E03FC1C0A284318CC3B57C141AB251D2280F0C0D0030922020C68';
wwv_flow_api.g_varchar2_table(73) := 'B870C181C50F1D904800912041848F1106002442A2C1850A151A3478F0000188011D3A281840810001060C3A7A147024C3034D940E561A187AE04001044811D82440C1A384240B0E3848F9602884A2469362580A82A71201091E08357015EB510418940E';
wwv_flow_api.g_varchar2_table(74) := 'B0E0640183A106CC1628F0016D5729131424A85B5469840C139404010021F90409070000002C00000000200020000006FF408070482C1A8FC8A472C96C3A9FD0A8744A8552AAC9450907C21A11A793ED34F00A25A55369FD310340EA7549E1A5D10AF252';
wwv_flow_api.g_varchar2_table(75) := '836A07D8670F25232325045433763433331A252121251E878B8B3222838F745332309D9D2198229A523031A62F2F1AA0222292533135A82C2C061B22211B0C542C2BBDBD081BC11A10542A2DC72D2A1EC21A1719522A262E29D42A121AD81A1505522616';
wwv_flow_api.g_varchar2_table(76) := '2628E12A000417CD150E5D4F260B1202131326420B1517E80E0FA34B1619240BFF125C0CA150A14283060F0CB852224181820C193A74984044C00107E8121A40D00189000E1E060C70A8A0833C220B0C384068A0E5010C23FF6550002241041021077050';
wwv_flow_api.g_varchar2_table(77) := '80E2480750031A0D403870A00002041808106090C0E64D100328225950402351A246912A65DA34C2000B4B04247089B5C007AD4A9B265000B6898404570B98459A9440020E02A44CC89040A951060C4074688B24080021F90409070000002C0000000020';
wwv_flow_api.g_varchar2_table(78) := '0020000006FF408070482C1A8FC8A472C96C3A9F4C8506DA5C6C70536A72E228956C59AD91E0F5DE36E2E2A2EC1D29D244446934F226E043C9A6140A952078432021237D256F810008847D06894206222122220C8F001A1B9422038F341BA0A019703434';
wwv_flow_api.g_varchar2_table(79) := '00A51A99A9885A3333A5343315A91A171E69AEB93310B51A15146930C2C30417C60E07692F313130CC031715150E0E1D5A2F2C2C2F2F352F020DD20E0D085A2A2A2BD9DA000C0ED30F06B74F2D2E2E2DE62B420B0F0EEF0610AC4B5C58306122450A17F8';
wwv_flow_api.g_varchar2_table(80) := '8424E867C0C0814E4B50489060C1020A142E880828D00FC28103044820B1402203890513055868A1E640438F1F3F30189061C102121D060CE0A0204387589312321AE9E012E6810F08301020C0204104103A79663069228904041F0B684590942985084F';
wwv_flow_api.g_varchar2_table(81) := '3DEC54D0A1AA120120B46EEDCA34815B10501798652221C107A45C9736751B2183052D13328060C0000101A71C16FC4D12040021F90409070000002C00000000200020000006FF408070482C1A8F48E222C9640A30B8A6B4B8789C4EA5E934B3C19E7013';
wwv_flow_api.g_varchar2_table(82) := '2D73B12999CD51F171F2308FCE06F591F00E85CC09B9913C1AD943037A4618217E85798244121B222122220789451E221A8F22199244081B9D1A719A43061A9E0CA1430E1AAA1781A70017B0171599AEB2150E150AAE000FB70E0EADA70715C40D887A34';
wwv_flow_api.g_varchar2_table(83) := '443404BF0D0F1F8934D200D2030E0D06D91D7A33DDD2343302060FD906187A3030DDDD4214E4D907C1533131E9E932420BD91007FDB4522C58D47841AFDE900806FAF52BA0AB898A162A5608AC118388800F0A0F14409060C91117264CB870A122228B3D';
wwv_flow_api.g_varchar2_table(84) := '05346A44808140820C24044C902061C1020116428E5471D20889570F050A7C40808000030A09407818A020438705122CA03091424512090436B22460344104100398C2843AC18455261340102DDA35E9D2A64E17A070A14502080C2D1924D80B56AC8414';
wwv_flow_api.g_varchar2_table(85) := '7A2C7418F0756FD80E024C3009020021F90409070000002C00000000200020000006FF408070489C0C3CC4A472995C7C4AA71B73CA14104AD85389CA1D2E1ED8B08DD0A5662ED851F87428331797D128140A37106EE5C4109AF74B0619794B0C22222187';
wwv_flow_api.g_varchar2_table(86) := '2209834B0B1A1B86221B038C4B048F1B9011954A12171A8F1A6D9C49039FA01A82A4441817AE1710AB490715150E0E8BB2430FB6B794BA420DB60D0DAAC00D0E0D0F0F0AC04206CBD0BFC00506D6069BCE0CD70678CE0306101007071DCE02E3E4070C95';
wwv_flow_api.g_varchar2_table(87) := '344B09EA0505CD793334EE49120507F21F08E66564CCB0E7EEDE1010FC0A204040801E9518300412C42764028102FE1812002181090B163520C2183843C982850B0930A09080C30201264CA47091A2850A162F448E5C42820006550C2A194400E1814386';
wwv_flow_api.g_varchar2_table(88) := '0E122CA0706113644E18530450004A802588010314745890D4840B15374372B1304065820443B31E7D89C2AB8B1535DC08187036C155A31D482C98B07445250B0B140CE09075AB05135C8200003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780504209811168459)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'big-snake.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839611F001F00F50000FFFFFF000000E8E8E8D2D2D2BCBCBCAEAEAEA2A2A2DCDCDCB8B8B89A9A9AE4E4E4D8D8D8AAAAAAA0A0A0B0B0B0CCCCCCF6F6F6A8A8A8D4D4D4E6E6E6363636262626505050C4C4C4707070929292565656FAFAFA686868';
wwv_flow_api.g_varchar2_table(2) := '464646C6C6C6F8F8F848484832323200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C000000001F001F000006FF40807048140C0805038062C1241EC4A874784024AE574065BBE5';
wwv_flow_api.g_varchar2_table(4) := '383E53A982802D6BB95C8C273C5C30CA66341AC460031AF0B89C1B0A2F1A007958677B15770B510A6F0981580E0F0A10000217191A688D0C0A446483091112611B061D8665045479009B766B790742566511137643131170089379A1B643127946700EBF';
wwv_flow_api.g_varchar2_table(5) := '510E70477050C6430F704870ACCDAB70497092D40010704ADACD06D8DFDC650605D2DF0AD69D58CCD4CFA703C4DFC8650302BDD4C1700200B258B48CE1D225E480AA696136BD1AC28ED1275F5324E46A7405D5104559CA3C8AB44DC1837A1913688AF287';
wwv_flow_api.g_varchar2_table(6) := 'A22A41591A209A8207A5493880D8B8718992C14A366304BDAC88D04E150F382F11C0FA660489127304EED909020021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27';
wwv_flow_api.g_varchar2_table(7) := '088AEF70C13067DD09C6420D68C0136577E3BBD8DFF36600210C510A6D785B0E0F0A1000100A0F0E5B001515201E4462640911126A1211789595181F420781697469A3A30E42565B111374431E1DAD151C0002669EB54306B9150F0363AFC0431B1AB967';
wwv_flow_api.g_varchar2_table(8) := '630FC94419B9180563AAD10017B91606638DD9BCB914E1D9DE5BE0D910634CD7E50A634DCFE50F634EC7E5925B4FBED9126650626199956C42A82D084EA5AA95C68C17219ADE74FA140A10012286DE6051C4C811247D1A196013D207D01893931ACC9962';
wwv_flow_api.g_varchar2_table(9) := '070E4A2C7BD4B07109470EC38893DCA08956E5E4980C2EE5781D49B2A4C9133A41000021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C642';
wwv_flow_api.g_varchar2_table(10) := '0D68C0136577E3BBD8DFF3667573440A6D785B0E0F0A1000100A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D3';
wwv_flow_api.g_varchar2_table(11) := '06D1D8B415DEDE1405CBDC17DFDE169758C5D819E6151803BDD81B1AEE09B563B7BF06EE15C5AA5858FDF2D0C11D07210746B94AD3CF979074873471F204C01C860F430ABDC1926851A347C1B27803E1214A1F4063504A0AC1E08B1D382AB1EC51C30626';
wwv_flow_api.g_varchar2_table(12) := '1C390B21623283C658950E9463BA70A37524C992264FE804010021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3BBD8';
wwv_flow_api.g_varchar2_table(13) := 'DFF3667573440A6D785B0E0F0A1000100A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D306D1D88DD605CBDCCE';
wwv_flow_api.g_varchar2_table(14) := '5B4DC4DCC85B4EBDDCC1584FB6D3BA6350AA58ACBFB063B30007A3AE1E80575001B8F446D3970D063A5400146A48A13758122DA2752183860A18175EA114A50F404919436214F4C50E1C00224386A0C3E6644A8C2018B80AE306654A0CFF7E5519633323';
wwv_flow_api.g_varchar2_table(15) := '070F071FB81941A28482050C098AA909020021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3BBD8DFF3667573440A6D';
wwv_flow_api.g_varchar2_table(16) := '785B0E0F0A1000100A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D306D1D88DD605CBDCCE5B4DC4DCC85B4EBD';
wwv_flow_api.g_varchar2_table(17) := 'DCC1584FB6D3BA6350AA58ACBFB063B30007811EAEA6635001B894A54207031BBE74FA7425D49042052B48D490E102144790245DA114A50F00892043021A23E84B889028476ED9A38601089420556E1CA4C60306981564A2F9F5C101870F94F9044E4386';
wwv_flow_api.g_varchar2_table(18) := 'C10285254D9ED009020021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3BBD8DFF3667573440A6D785B0E0F0A100010';
wwv_flow_api.g_varchar2_table(19) := '0A0F0E5B650C694362640911126A12118758045481956A69665E00565B11137443139E5B080002669BAE43126646630EB851915B47630FBF440F634863A4C60A6349638CC64210634AD3D31415DBDB50D8D55B0616DCDB17D800CE5B0518E41519E7C85B';
wwv_flow_api.g_varchar2_table(20) := '62ED1A1BD8C158030FED15D7BFBA63A07068D7C1C32F5863660170C00F9D2B5363507D60C74D8B264E9E00851AE201C436408916357A84EF13A5280C42001AB35252834152ECC06989658F1A3633E1C8797889A51B1134C6AAF894850A9B11244A9838F1';
wwv_flow_api.g_varchar2_table(21) := 'F625080021F904090A0000002C000000001F001F000006FF40807048140C080503C050200C04C4A874784024AE5700F68A384CA70AC216AB1D27088AEF70C13067DD09C6420D68C0136577E3CB08E5CD7F637573441E2015157F0E0F0A1000100A0F0E5B';
wwv_flow_api.g_varchar2_table(22) := '650C69421F1888885A11126A1211785B04430E9B9B00976A69665E001CA8151D1E744313A25B08000FB2154AB64312660209B21A1BC144935B039AA819CA440F630416B217D2430A630514B250DA8F63C0E2CA06638EE210E40563ABD2DC5B4D630FE6D4';
wwv_flow_api.g_varchar2_table(23) := 'A403630EE6CC584F663E491B36068A952D112628C3356617800380E0810994E01500316412780225EA4FA96D6D466159D4E851247F222D4559B0E70E45320D0849B103E7E5953D6AD8D48423C7561813372FD148AB22A8A1456D46902861E224DC972000';
wwv_flow_api.g_varchar2_table(24) := '21F904090A0000002C000000001F001F000006FF408070487C2430160AC050200C04C4A854F871702A582C20C1E5220ED3A907932D6FBB5D82223C6480CA66349AB1600342F0B8BCDB082FFA7959677B09000D75440A0C5C00651A191750100A0F0E6867';
wwv_flow_api.g_varchar2_table(25) := '0C6B430497151D061B61121185680443077B001E76006B7B600008721113AD4213A4680800027B12B743127B0203720EC1449668039C680FC94346A605729AD10A7205067210D142107206DFD1DC68DEDFE1684CD6E4D9684D72D0DFD369C668C8DFCB5D';
wwv_flow_api.g_varchar2_table(26) := '4FBFD1C372A0CC42532B582E39BC00A492E3AAD52B39B10038639420023051A4062538354411C52E0E1E28F036A9D2252E99A2FCD1C89010A343611AB82CE5B20F9B058B08B1EC42C7E1C415937BD4243B30B00BCB2FE47A35DBB6A4C9133B4100003B00';
wwv_flow_api.g_varchar2_table(27) := '0000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780509736972171151)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'squares-circle.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '4749463839617E001600F40000FFFFFF0000003636363232327070706C6C6C5656564242423E3E3E3030302E2E2E4040404848484A4A4A4C4C4C4E4E4E5252525454544444443434343838383A3A3A3C3C3C5C5C5C000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(2) := '00000000000000000021FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7C';
wwv_flow_api.g_varchar2_table(3) := 'EFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258552C18F0865CA295C8EF0D7A62629A68F9257E7B7D7F8483818588872482808C898F8B1393030A6C02440A700C0D0E9E0E5A9FA2A009285AA6A527';
wwv_flow_api.g_varchar2_table(4) := 'A7AAA926ABAEAD25AFB2B124B302931396076D710E0FC00F0303C1C5C20314C9CAC9C3CBCBCDCECCC8D114D0D1D6CED8CFD3D7DCD9DE2293BB55099CBF0F10E993E9ECEC9315F0F1F0EFF2F1F4F515F7F5FAF2FCF613F8E6010CE84F60BC64E1D6F0C264';
wwv_flow_api.g_varchar2_table(5) := '450EB076EBDAB99B60A1A2C58A932E5ECCA81123C58E16387614A991E4C68F2351FF96445901A10085E43AA163174144849B386F8A00696127489F1D816A147A91A845A31591F614C053684B113019269049B3A6809C39956A65FA936B50AF43C116157B';
wwv_flow_api.g_varchar2_table(6) := '946C52B34B2F3E7D7989C8D45F556D62D589766BD3BA78EFEAEDBAB7E25A98030A20783B339DD5B974FB86553C967159C76715FF153C40AAC3C210224ACCACF2244F9316417BFCDC3974E9D120458764E932AA5B730FD54DD82C3B60BE81F80ADEB6ADBB';
wwv_flow_api.g_varchar2_table(7) := '37EE7DBFFB05FF779042C2B60734C10E36CC18736FDBA85583AE4C5B75EAD2A45BCF4E6DFBF465E17421576EEE53A8519E6E8D500FB5D67AF7ED51C967351F562071E3DFC49953070FFF45233462882301425220800921888B36810912D8E0800152328E';
wwv_flow_api.g_varchar2_table(8) := '54699C61E1851866A8211A592007C487208628E2883A2C64C01428A6A8E28A2C3E01C38B30C628E38C3084000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C9';
wwv_flow_api.g_varchar2_table(9) := '6C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1442B69D8EF12FA1DAF9D98E6097E25808224847F7D88818A857289838F027013030A6C02440A93255A0E9E9F9E9DA09F5A28A527A726A99C09A6ADA8AFAAB1AC837096';
wwv_flow_api.g_varchar2_table(10) := '076D710214BC1403030FC1C2C1BFC3C3BFBDC9BE03CABDC8CDCBD0D1D0CFCDD5CAD7C9D722B697448BBB1415E37010E6E7E6E5E8E770E3EEEEEDEFF013F2F3F5E4F4F7F1F5FBF2FDEFFB78715B830B931511BC2A5858A86E1D8486EBE02C9C385122C58A';
wwv_flow_api.g_varchar2_table(11) := '132E62D4C83023478B1A415E1449116405810208FF5679258EA288083063C27C2933A6088E166E72D4A991E7459F2E05E0043A91E8429F2745A834C852615101356D428D1AC1684EA13BB1F6D4FA936BD0A15E9F82A59834A5B783BB9C1E9D1A9566DBB0';
wwv_flow_api.g_varchar2_table(12) := '6BC76695BB956E57BB65550E2880A06950AA55D9D6B44A18EE55BB5FE72AAE3B312FDF014C11B6ECE830DD84CA0F3D86D43C927349CF1B3F82EE889364680B2729283D0B2E213ECC10D1FDB3A72F1F3FDBFE7003D44DFBF6BD0A01554B5A9A49973660C6';
wwv_flow_api.g_varchar2_table(13) := '88214F9ECD19336ACFAD45C736FDB8B4E6BCB04F43D9AD60715D23448D72207ED42A12E7C3CF42BF5EBDABF7B0E0CBE9DEE60D784075F634C89320FF1EFE8D0C048E21913832A081010E77A03580091E02C9809354C25A1A675468E18518668846166701';
wwv_flow_api.g_varchar2_table(14) := 'E1E187208628A20E051930C58928A6A8E28A4FC0E0E28B30C628230C21000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CB';
wwv_flow_api.g_varchar2_table(15) := 'ED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD1392867E2FD1E6F77A7D0975257784248676748A838C87728B8591027013030A6C02440A95255A285A0EA2A3A2A1A4A39F27A926AB9E09A0AFAAB1ACB3AE857098076D710214BE140303BFC3C0';
wwv_flow_api.g_varchar2_table(16) := '030FC7C8C7C1C9C9C1C4BFCECFC5D2D3D2D1CFD7C4D9C3D922B899448DBD1415E570E5E8E87010ECEDECEBEEEDE7E9EA13F4F5F7E6F6F9F3F7FDF4FFD2F5F3E56D8D2E4D5644F8AA60A1219C861021C28B076162BC8711254EC8A891A3C38D1E31721499';
wwv_flow_api.g_varchar2_table(17) := '916444911508FF0A30582516B988223C5A1011A1A6CD9A346FDA8CE99127479F1981C21420532844A30D81A614C112A14B864789F614A07327D5AA1190CE94FA936B50AF438B828D2A36E2D295E012F6829A746C5BAC59AF56D54AD7EDD6B253F176354B';
wwv_flow_api.g_varchar2_table(18) := '81299B0105103C0D3B156ECEB976EBEAFDBA98F05E886713041EE054E1CB8F322DBAD32C0FE448CF25419F14DD312469CCA621AB6C1A8ED0427DF92A707E378122EDD801F1F1DBE78F3740DF0281EB4ED99712EB039C5C431366CD183365CE9F6F5B4E6D';
wwv_flow_api.g_varchar2_table(19) := 'BA2FEBD5B031D75E7D7BF16F07377522D18A7C8253A8CEA377507E447BA6B5CCC39A2F8BBE1CF06DDEF0322E0E911F4081FC07A0208F14D41F24071A5820377F0B262249820CDE67492E2DA571C6851866A8E1866864911610208628E28824EA70900153';
wwv_flow_api.g_varchar2_table(20) := 'A4A8E28A2CB6F8040C30C628E38C34C210020021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF5845';
wwv_flow_api.g_varchar2_table(21) := '8258550C26F0D1443B31CD13F5D25DD2E8FB255A7C7E7D8078767487867A888B8A2477798F8C027013030A6C02440A95255A289F275A0EA4A5A4A3A6A5A126AB9E09A0AFA2B1ACB3AE7A7098076D710214BE140303BFC3C0C2C4BEC10FCACBCAC9CCCBC1';
wwv_flow_api.g_varchar2_table(22) := 'C7C8C6C7D1D2D6D5D4C4D8DBDA22B899448ABE15E570E5E8E8E7E9EA1310EFF0EF70F1F1EBEC15F6ECF9E9FBEDF7E613FEE10B58CED7B735BA34591141CE8243380E2346842871A23B7AF22E62A458D102C78A1F2586B4D8F1E184921E4FFF3AAC605000';
wwv_flow_api.g_varchar2_table(23) := 'C22AB1285490280265CD922222E8DCA93327CF9D373B06AD3894A6009B47712615BAD4024B112F15C69C19B168D5A6467F0215A0B527D6AB48C32A15CB54E25397E116F6A2EAD06ADBAF6FBB46F0A9D5AD05BB78E1DED59BD72C05A86C06144030D52859';
wwv_flow_api.g_varchar2_table(24) := 'A25CBBD2FDD977ACE3B28F11FB853A788054863249961C69126346CF1038A74429BAB4CA8EA623B2FC8B36A1B83CE4000AEC0710F43CCFB407CE26782FB76FDEFA78B79C939613EC5FDC8625473EE019B4E6CE1F2C9F26AD58F5E9D6AF6953EE8DD2845C';
wwv_flow_api.g_varchar2_table(25) := 'BB788D684582FCF804A954A14FEFC03CD45AE5E19F87455FD6ADEFC5DF88879428929C40831002608085F8779023FF2178A03A81944C922083FC7D03C725695D91C5191866A8E1861C7A914654440021E288249668A20E091930C58A2CB6E8E28B4FC020';
wwv_flow_api.g_varchar2_table(26) := 'E38C34D668230C21000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B';
wwv_flow_api.g_varchar2_table(27) := '31CD13F5D23D4FBA4B1A8081125A7F8180837876748A897A8B8E8D7D8F027013030A6C02440A95255A289F27A1265A0EA6A7A6A5A8A7A39E09A0AFA2B1A4B3AE7A7098076D710214BE140303BFC3C0C2C4BEC1C7C8030FCDCECDC1CFCFC9CAD4C7D6C4D8';
wwv_flow_api.g_varchar2_table(28) := 'C3DABFD822B899448DBE15E570E5E8E8E7E9EA13ECED10F1F2F170F3F3EBEFF8ECFAE9FCEDEFE6DC95F3F56D8D2E4D564490B3C0100EC3870F1D428C386122457BF2EA618420D162C7891F2186A468B16145861508FF0A30582516850A104594B420B364';
wwv_flow_api.g_varchar2_table(29) := '4D8B2222E8DCA93327CF9D3727068D2960E6D0874719064D2982254297309116B539156755A1027E02CDAA3542529A57891A0D2B752C44A62BC325EC15552959B766A976F5CA55EBD7BB6FC1C6B57A96425336030A20802A96EA5EAC737DDACD8BF77061';
wwv_flow_api.g_varchar2_table(30) := 'BE0FD126103CE0A9C297244B8E3439532346CFF6365B104DFAA447D3204DA7F49BF6A0B83CE40202ACE04F3640D0F7266CE428305FEF7DBFFB05FF77BBB7CA396A39C1EE66EC5AF36CCFB73193066D3A756ECB9415D38E7D7BB5E7DF26E4DAC56B442B12';
wwv_flow_api.g_varchar2_table(31) := 'E7CDD7429F6015ABF6EE1DA46FBA5E3DACFBB26E894FFEA6FC1E467CC83189800914620822060A32603D4191101820830F52B2A084915472895A576471C6861C76E8E1875EA4E11411409468E28928A6A8C341064CE1E28B30C628E31330D468E38D38E6';
wwv_flow_api.g_varchar2_table(32) := '0843080021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D';
wwv_flow_api.g_varchar2_table(33) := '4FDADBB5120D828312808384747F788A7C72897A8F027013030A6C02440A93255A289D279F26A19C090EA6A7A65AA8A8A324AD23AF22B102AD9396076D710214BC140303BDC1BEC0C2BCBFC5C6C4C5BF0FCDCECDCCCFCEC7C8D4CBCAC2D6D9D82270B755';
wwv_flow_api.g_varchar2_table(34) := '8BBB1415E470E4E7E7E6E8E913EBECEEE51310F3F4F370F5F5EAEEFAEBFCE8FEEFC8F1EAB60617262B227855B0C0100EC3870F1D428C386122458B0DE5E1B3A771A3448B1F27868438F222C30A0369FF5D229220E1C28722305A888991A6459B134544D8';
wwv_flow_api.g_varchar2_table(35) := 'C973A7CE9E3C7142140A53804CA20C71A294B512E1AE97498DD6947A936A4EAB4305000DAA756B04A433B1163D2A362AC4A52A0DB2749995ACDBA964BD7EEDBA15ACDDB261DF9EA4C014D78002085A3E6D0BB770D5B85E7FD6C57B57EFD5B37C69011E70';
wwv_flow_api.g_varchar2_table(36) := '50B04293202B622C9951E6BD8D103E7BD49CD9336991A749924619B920B83C0AE3C1AB005036BCDAB43BE213BDBBDD6DDFFB80F713FE0F78CA394D35C1EEA52D5873E6D89C47872E6DDA80EAD0A62743368CFBF3EDBDBA4DF8765079235A8245A527E569';
wwv_flow_api.g_varchar2_table(37) := 'BDAB52AB52C18F3FABBE7B58F765B9B795FC8D2E499138124E1F011234A080811CD24041210924780883E70178A08111FA01C9809354D2D415599CE1E187208628A21769B876101028A6A8E28A2CEA60900153C428E38C34D6F8040C38E6A8E38E3CC210';
wwv_flow_api.g_varchar2_table(38) := '020021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDA';
wwv_flow_api.g_varchar2_table(39) := 'DBE97F09120D8485125A8385848778817C72807A91027013030A6C02440A95255A289F27A126A39E09A0090EAAABAA5AACACA524B123B322B19598076D710214BE140303BFC3C0C2C4BEC1C7C8C6C7C9CAC10FD1D2D1D0D3D2CECDCCC4D8DBDA2270B955';
wwv_flow_api.g_varchar2_table(40) := '8DBD1415E670E6E9E9E8EAEB13EDEEF0E7EFF27010F7F8F7F6F9F8ECF0FEED00AAF3E7EBDB1A5D9AAC88F055C18243380E2346842871E2848A16313EBCA8711F3F081EF951C438B2624989232BFF14147050DCC286114568B42053634D8C372BE6942822';
wwv_flow_api.g_varchar2_table(41) := '82CF9F3E7B02FDB933A68099451DE654692B139153BD602A3D6A932A4EAB3AB1F2D46A742851015E83729D8A742C4DAC4C593A5518756BD9B755E15E0D1B41A8D7A467E5669598B6E5800208A096731BB7F055BD5BE9DA1D8AB7B1D9A5146C011E9050F0';
wwv_flow_api.g_varchar2_table(42) := 'E08D334F66ECC891646793133EEA0B2D5A3366CE993BAB8CAC16E1D33C0CE7C9AB20305E3D7AFF700724FD3164BEDAB26FCF26C87ACE5A4EB07F711BB65CB936E6CF9D2B2B66EDDA80EAD4A22F9BDE7CFBAF6F13C22544FE88255452E74DA15A2F2AD5AB';
wwv_flow_api.g_varchar2_table(43) := '56EEDFD732CF1EBD1E70C7DFF0A23409D2B83EFD19F49F7FE5F12788228B2082603B038C14E88724030AC8472597AC7545166764A8E1861C76E8451A2D2504C488249668E2893A2064C0142CB6E8E28B303E01C38C34D668E38D3084000021F904090A00';
wwv_flow_api.g_varchar2_table(44) := '00002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F7881120D85';
wwv_flow_api.g_varchar2_table(45) := '86125A84868588827A808F8E027013030A6C02440A94255A289E27A026A29D099FA6A1090EABACAB5AADADA424B223B29497076D710214BD140303BEC2BFC1C3BDC0C6C7C5C6C8C9CDCC030FD2D3D2C0D4D4CFC3D9C2D92270B8558EBD15E470E4E7E7E6';
wwv_flow_api.g_varchar2_table(46) := 'E8E913EBECEEE5EDF0EAEE7010F7F8F7F6F9F8F4EBFEE8E8F5F2B62657262B22C659580867A143870D1F429C2071624586142F46ACB88F1F848EFC364A14F970638581020AFF864B58E1A1888B165E5E945991A6449B2E05C01411A1A7CF9E3C7FFAC4E9';
wwv_flow_api.g_varchar2_table(47) := '90E8429B2745A83C888A42CBA23A6746AD39F566D59C3BAF42153A540057A05A8F868D5935694A4C449A3E159BB5AD54B754B37E8D1094AB51B2702D985539A00002B558DF0A8E3BD8AADCAF7585DE5D5C968252BF039826746A5163468E9747662EB9B9';
wwv_flow_api.g_varchar2_table(48) := '32668FFA2680FED819234C932897A6CD332E1EBC0A00DFCD93578FF63FDB01458306992FB6EBD9E750CE417B60136B5FDB902FD3B69C5B73E5C98845B776AD5AB4EA0F922B9BBEDCDB0470078DF3518A6A54F952A7D2A73A058BD5ABF60E6891572FE71B';
wwv_flow_api.g_varchar2_table(49) := '71379C084A9203A94F7FFEFBE9379E80832CC248220636D0C8358093FC47A077958097561A675468E1851866884616C401E1E187208628A20E061930C58928A6A8E28A4FC0E0E28B30C628230C21000021F904090A0000002C000000007E0016000005FF';
wwv_flow_api.g_varchar2_table(50) := 'A0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F78817C725A120D88891286898A807A8F027013';
wwv_flow_api.g_varchar2_table(51) := '030A6C02440A93255A289D279F26A19C099EA5A0A7A2090EACADAC5AAEAEA324B39396076D710214BC140303BDC1BEC0C2BCBFC5C6C4C5C7C8CCCBCAC2BF0FD3D4D3D2D5D4CED1D02270B75582BB1415E470E4E7E7E6E8E913EBECEEE5EDF0EAEEF4EB70';
wwv_flow_api.g_varchar2_table(52) := '10F9FAF9F8FBFAF6E8E8F1EAB60617262B227855B0C0100EC3870F1D428C386122458B0D2B62946891E3C47EFE2080F4E71122C70A0305FF14049770E14311182DC0C438D362CD893721E67C2920A68808408302FD2934E84E8637518A5879F0D4389D3D';
wwv_flow_api.g_varchar2_table(53) := '6946B539156755A83EAFF2CC5AD4A880AE43B522ADAA54E525224E5D8ECDCA566A5BAA6FAD828D40B4EB519964292C6533A00082B458DD0A863BD86A5CA873EB16BD9B54AF4ABF039A267C9A3166C98B1B3576D4FC91B349CF1443F29B205A24E8CA0C51';
wwv_flow_api.g_varchar2_table(54) := '3A668A368FC278F02A007C374F5E3DDBF77007D4CDAEF4C87DB361934B39E7EC014DAE7B690BB65C3934E6CF9D231B36BD79326CD90660B7163D59B06E13BE1D444E48652A52A6D2A352AFCA54AC56B0DE3B9835A29637E36E36110CD7275221FEFF9527';
wwv_flow_api.g_varchar2_table(55) := '897FFB09E80724091CD2483B038B24B82083040EC8DF2495187745166764A8E1861C76E8451AAC1D00C488249668E2893A1864C0142CB6E8E28B303E01C38C34D668E38D3084000021F904090A0000002C000000007E0016000005FFA0208E64699E68AA';
wwv_flow_api.g_varchar2_table(56) := 'AE6CEBBE2721CF746DDF78AEEF7CEFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F78817C72807A5A120D8A8B12888B8C86027013030A6C02440A9325';
wwv_flow_api.g_varchar2_table(57) := '5A289D279F26A19C099EA5A0A7A2A9A40EADAEAD5AAFAFA3927096076D710214BC140303BDC1BEC0C2BCBFC5C6C4C5C7C8CCCBCAC2CED1030FD5D6D5BFD7D7D222B6974482BB1415E470E4E7E7E6E8E913EBECEEE5EDF0EAEEF4EBF6E87010FBFCFBFAFD';
wwv_flow_api.g_varchar2_table(58) := 'FCE8F1EAB60617262B227855B0C0100EC3870F1D428C386122458B0D2B62946891E3448F10FF0184201220C70A0305FF14AC726A1C4411182DC0C438D362CD89375F0A8899F3614F862222081D2A3428D1A137518A5879B0E5429F3B6946B5391567559D';
wwv_flow_api.g_varchar2_table(59) := '3CAF42CD9AF52852015E8B5655AAF21BC25D4F816A55CB556A5BAA6FAD760D6BD46B520A4BD90C2880C02956B780E106963BF82FD5B011EA1EBDBB94EF80A6095D668C09F2E2468D1D317FD41C92B3E5CC23FD4D084D12334ABC650D82CBA3301EBC0AF8';
wwv_flow_api.g_varchar2_table(60) := 'DECD93578FF63DDBF970CBAE4DBA643F81A8E798D5C4BA97B460C78D4343BE5C39B261CF93278B4E4D1BB6EAD6B9D5BA954BD7085ADF579100BF547C7853E8519992E52A167B07B426713FE86613C1707D2215C2BF9FD07DFF92E8F7DF208124F248038D';
wwv_flow_api.g_varchar2_table(61) := '2460E0352309F2314925665D91C519145668E185187A9106534400E1E187208628A20E061930C58928A6A8E28A4FC0E0E28B30C628230C21000021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7C';
wwv_flow_api.g_varchar2_table(62) := 'EFFF33838870281A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258550C26F0D1443B31CD13F5D23D4FDADBE97F78817C72807A867D5A120D8C8D128A8D0C920B0A6C02440A7084025A289D279F26A125A324A523A722';
wwv_flow_api.g_varchar2_table(63) := 'A99C099E090EB0B1B05AB20D920C95076D710214BE140303BFC3C0C2C4BEC1C7C8C6C7C9CACECDCCC4D0D3D2C3C10FD9DAD9D8DA0EB6B8964482BD1415E770E7EAEAE9EBEC13EEEFF1E8F0F3EDF1F7EEF9EBFBEF10FF00FFC10198ED1B8335BA2E5911E1';
wwv_flow_api.g_varchar2_table(64) := 'AB828587701E4A94187122C509162F6684887163C58C1F2D869C38F262C0800309FF3E6084B04AAB5E0E258AD86861E6469B19715AD43991A74C01347D3E145A534084A3488F8A8810F0C1B7960A5F9AEB09F466D59C577766A51A74EBCFAE60AD264DBA';
wwv_flow_api.g_varchar2_table(65) := '94E93FA70DA08E631873A857B761B1C6D53A97ABD5AE63919625F894CD800208A4B62D5AF7EBDDC37211D3554C35AF52A34D9F021E1095E1548E344B62F6D8116467919F4986D6C839F3849300539E5D99569C953C0DE9CDABD04FB6BD7AF870EBD3CD8F';
wwv_flow_api.g_varchar2_table(66) := 'B7BCDBB3559F545DD096DA039960FFA276CDDA72E7CB941593CEFC3975E8D39F0DD8B6AD5B7149B976F142F552547952E74DA527EFAA3DA8F5AAE0B392258B562C70E112627A33DECF2172890058888022F817E026021838203C820A160849238C3C92C0';
wwv_flow_api.g_varchar2_table(67) := '228CDC42896B576471C6861C76E8E1875EA4711C10249668E28928EA90900153B4E8E28B30C6F8040C34D668E38D38C210020021F904090A0000002C000000007E0016000005FFA0208E64699E68AAAE6CEBBE2721CF746DDF78AEEF7CEFFF3383887028';
wwv_flow_api.g_varchar2_table(68) := '1A8FC8A472C96C3A9FD0A8D4383C2414D88476CBED7ABFE0B0784C2E9BBF58458258552C18F0865CA29D9826F57BBE844FD8F97B247D7F828123837A7E8984875A12720D700C0B0A04060D02440A920D0E9E0E5A28A127A326A525A724A923AB22AD02AF';
wwv_flow_api.g_varchar2_table(69) := 'B1099F0E91709517989A710E0FBE0F030314C3C4C3C1C5C5C7C8C6C2CB14CACBD0C8D2C9CDD1D6D3D8D5BF0FB5B704B999560C9DBE10E7131315EBECEBE9EDEDEFF0EEEAF315F2F3F8F0FAF1F5F9FEFB00F63B07C197B735E1882490638E603A0B102342';
wwv_flow_api.g_varchar2_table(70) := '7C283122C58A162E56D42891A3C5091827820CE95164C88C1308FF167C2007A12E2BE5544610719266489B187156D4299167449F10815A104A54400495DD1AB814B7B017C1083305D4947A936A4EAB3BB1F6D4FA936B50AF43C116854A30E9528531CF41';
wwv_flow_api.g_varchar2_table(71) := '2D3AB56D55B757E16695BB95EC39B3E01A0C2880A0E903996CDF0A8E3B786EE1AD74BB1E2D5B2B410103129832FCEB7024C692284F62DE6C7963E78E9F3F6A0E2D12294BA5799992EB4519023F76AFE9D9BB2710766DD9F662D39EADBB77CABB49199C3D';
wwv_flow_api.g_varchar2_table(72) := 'B06935376AC4903373F64C5B72E7CB9D296FCE7CBAF501DCBC31C0F5B2F8EA4FB24425104F9ED478F3E54D9D572F9E96ADEDA935BD8933C79008448014E56774DFBE00FC85E817207FFFF9076023093C228735249458F2D215599C21E184145668A11769';
wwv_flow_api.g_varchar2_table(73) := 'AC7140154074E8E1872086A8C386021830C58928A6A8E28A4FC0E0E28B30C628230C2100003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780513230070174334)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'bar2.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '474946383961DC001300F40000FFFFFF000000BEBEBEA6A6A69C9C9CB8B8B8B2B2B2C8C8C8D8D8D8C4C4C4D4D4D4DCDCDCE0E0E0E4E4E4B0B0B0BCBCBCE8E8E8ECECECCACACAF2F2F2F4F4F4CECECEF6F6F6C6C6C6D0D0D0EEEEEED6D6D6C2C2C2AAAAAA';
wwv_flow_api.g_varchar2_table(2) := 'F8F8F8A0A0A096969621FF0B4E45545343415045322E30030100000021FE1A43726561746564207769746820616A61786C6F61642E696E666F0021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7C';
wwv_flow_api.g_varchar2_table(3) := 'EFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4040583C3F02883079CB17ADCDDB8DFC7F49AFD48D8EF1BB978EF68E3ED687C7B7E7F7A828478866B88778A83757F79738F911B8182068C808E99908593746066055E2B5D641215';
wwv_flow_api.g_varchar2_table(4) := '180A0AA2AE021BA41AB308B5081B64706EB2B6B609B9BABCBDB7C070C2BDBFBABB0FC3B5C9CAC7BEC5BACDC4CAB1CCCDCFC1D9C3DBC6DDC8D3B0C218A908032C0406090A0B0C0D100B0507A9F612170FF110FCFCF3F5F7F0E9EBD78F81A7800309CA3B78';
wwv_flow_api.g_varchar2_table(5) := '2F2141830011EE7BC8D09EC38215054EC418D0E2467F19F37D5C18B1E148881D13FF5C848781803A01EE08DA5945939580051372EACC309395CF563877E6ECF913A8D0A1E78ADE3C3A81E8CFA5479DFA842A54AACDA055933EC5BAD3AAD1A85AA772D5E9';
wwv_flow_api.g_varchar2_table(6) := '956A57972B081C580041E72D5A705359984BD7C282767067C9AD3BF76E5EBD15F8F6C59B772F5FBF7F0DD7455C38B060C6711D1F261C59B05DCAB414D3859C59F262CC802DDF45AB422D8308142CF02C4A6B83CE0EB03BACFEDBEA75ECD97F5DC7BEBD81';
wwv_flow_api.g_varchar2_table(7) := 'F52CDDBB65F7A60D7C37EEBCC579FBAE1D5CF8F2E4B08FC385EE9CB8EDE8C3735F57DD9B740AD3A82D846DCDC0F2F8DFE5059FD79060ECDCF5EDCD9F8FAF7E7E7ABEF0DD8BB72F9FB8FEFCFDE5765F5DE7788702781470C68ADB66B031009A020C76E0A0';
wwv_flow_api.g_varchar2_table(8) := '6F114EC85A850F6248A104CD49982187CD595894861782189C883F9138A289BB5968E009E04100936FD43555D353197498618DD9299563733BFE685C8F38EA78E354422A476392D81D691393D5B1C6A393184CC9CA8B260C500B04F8D0F8DF015E06A8D4';
wwv_flow_api.g_varchar2_table(9) := '9761D657267E604A49A69A626ED5A6586F5E15E75768FA94CE0A6034D00A95078846E4827D3EF62784814EC6676A869688E867870ADA68A22B2EBAD9A0F8483AD8A38C2AEAA84DA5E089C416A0862AEAA8A4966A2A155D14A1EAAAACB6EAEAABB0C62AEB';
wwv_flow_api.g_varchar2_table(10) := 'ACB4D66AEBAD2784000021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B40405C7C7F1280B36E801C76170B0DD83027A9E';
wwv_flow_api.g_varchar2_table(11) := 'E6B4DD867C3CC14FA0131C6B6D797A0F7C1B7E8881836F0E038687896A8C777B7D73938D857D9C8B6F8496887D81788D7B887F80826C798E059C927683AD8F97A36B9F700666055E2B5D1E1C1215180AC61A1B06050F026768CB1A08D2D3C968CE7EBBD3';
wwv_flow_api.g_varchar2_table(12) := 'DA09067367D80FDAD3DC74CECBE2D2D5CE73E7E8E41BD7C9E1E8D5747EEDE2E4EBCFF3F9DDD6A8F069AB077083C071FFE0052C8000C3300403581008566101830610322E28706098848F1F1F60CC4872C183031540FF26083992240406863C82BC20D265';
wwv_flow_api.g_varchar2_table(13) := '46982B3DE6AC6913E6C7942025F07469B2E3CF9D2D49E20CFA9166528D27410215FAF4654C95129CDAB42A55C24AAD3DA332057B110101891E362C2039A12D9F62C5A46110B0A0AD5DB7128CE99596A0EE840C77F9E835268DEEDFBB19040F46A0C030E0';
wwv_flow_api.g_varchar2_table(14) := 'C0791723307CB86DE2C87B1BFBAD3C61E560057C373F4E9CE073E1CD951567A6FCF8AF6ABD1A2823F62C59F65F0867571070B0F6EE04041B106888160D41820A1692276F6B9CF870BEC8952B5F9040F8F0E218A22B9F6081FAF3E70A3E4A9F9EC079F1E3';
wwv_flow_api.g_varchar2_table(15) := 'E39997770E3D7DF7F5C4DB4B6FEBFDBB5CEDD2EB3F673C2CFD04FDC52120DE7CBFC1B75F76FEE5A602FF0117301001051658569A060A80D7585B1D64C85D62155E27CD85196AE85A85D6C9B54106217620216CD11873628A2B5A579C022F86B8E1061D0A';
wwv_flow_api.g_varchar2_table(16) := 'C71888365A90018E145E375C8D2272780C761B60582490FB3594248C23CAB823912A76C0217B2E2A196107112898020107380861721F1DF9A1000C8C4766641E4EB6809A1694D9618B7DD9259D9C4222932681B4E568DC9B7C62B61F5D70E2B95F9D6D2D';
wwv_flow_api.g_varchar2_table(17) := '17A7A074EEB9DDA23276A8969DCA197ADD068EDE298179A7F997809728802966720CC04798022B299762A94282669C761A76502A8BF7A9AAE27B830539A005AB1A085A78B076901C752C1AF3518A21B27A9D5EC7222B6B6992EDDA6BAED039FBECFF67C6';
wwv_flow_api.g_varchar2_table(18) := '4A606B86B32E86AA04C80EFBA944613EE823B4C77C48E58DA63939018C3E3249E194EFDA38E2671A4840A5860960B0AC89F52E594C6634067CEB8FEDD288A2BD461E738C000B0B2C19064FDAC8258EDE160CE58F039FAAB1C5116C8001A8270C200D046D';
wwv_flow_api.g_varchar2_table(19) := '617000ADA83240E99A2CA359286684B94969CA2B9BF9A77F2AD3EAA67B72A6FBE7CD1DF40C1B6332136874AE84AAB974CD4D3F1A34D4806E37C1D37A45ADA90211AD0006461394DAF131FAC249DDD88CAD34A6A267E3ABEFDA11FED72FB6121C00F7BB0C';
wwv_flow_api.g_varchar2_table(20) := '602CF4477093AAF7A96A1368DCD8D9F6FD1EE1E1D92DF8DC7B355481E162D3ADF87879E75AE1DB8BCFE58BD7486CE1F9E7A0872EFA1AE8A453D14511A8A7AEFAEAACB7EEFAEBB0C72EFBECB4D77E42080021F904090A0000002C00000000DC0013000005';
wwv_flow_api.g_varchar2_table(21) := 'FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4040587076978083668F480E37018DAED41214D5FB70D78B73C9140F3131C6C788306030F1B7D6980706F83867D898881';
wwv_flow_api.g_varchar2_table(22) := '8D8C7B916A1C6F6E8E0F7F7C988D8486889E80996E778505899E6C9BA29D9F6981AF9B7BA49F6B946D1C1E0E605E2B5D6B1C05180AC81A0A1A1B06026774050F08D4D40A08CDD090CDD3D5D5CD1B67DBD2DED5090668D06865E5D4E0747DECDED7E7DA88';
wwv_flow_api.g_varchar2_table(23) := '1BE4F308E78A69F9E5EFE8E0EB568E9FB834F20AA20B178DA03783F7E219905001C1001604063828606041030820412E28704082C993121EFF7C0C29F241490909609A54C91224830715509ABC40B3E64D8A3263A65CC9F2664E9D3C89865CF0C0648598';
wwv_flow_api.g_varchar2_table(24) := '3193D68470F3A5CE9E459B023D29D5A7D6A012BAB2640A546858AC21ABA214AA924103040430162BA001E484BB77F91CB3860083800578F166E083EC1A027A0B3204CE9BA0F043C08B07374676F8F0DFC5792538369738724CC7941300561CF83365CE13';
wwv_flow_api.g_varchar2_table(25) := '48E3356D989AE8BBAA2710A69CEC6FECD4AC9759861C78B0E6D3AE216780107705013C09304FC0A601417373152C480FBC4F8375BE09A24B9F3E614102EBCF5D6BB730817CF704CE9B1BCEBE9D7BF5EBD0B707F69EBE9A0293F2CD57778E7D3CF5EFFCC5';
wwv_flow_api.g_varchar2_table(26) := 'D7DE5DEFF1759F7F7759E01DFF7C95B1C7DD5D0B32B80F82C5A9705C011050601E6C8D5D67980202DCD54179B06DB04C78C884D8C188829908DF35186C90C18ABDB9A8DE32204E40638B2752A34C8E349267C160D7DCD8D706229238A48D2FCAB863893D';
wwv_flow_api.g_varchar2_table(27) := '5616A38E2C42199E354E56999A8D87C188248D2C66C0E5874E923762852910C081041168389D0526BD88587BE6C529A16874DE65A77ACABC961F9C128027E8060CC8B79A66F05987E783B2217AE5A286EE69DF65DC4967528FEB2D905F79769EB88C9F91';
wwv_flow_api.g_varchar2_table(28) := '062A687079020A9E8F0A2450E88368A24080030CB4C9DD82B4D113DD8A3B46F8A106315900E68A0C74F8DC32F80509EC64CA3CC71EAE235A10AC75D784766B076F06EB69FF6126318BEBB33F622B81B6C76E269EAFB84288EC4315686B6E61A72D5BAEB3';
wwv_flow_api.g_varchar2_table(29) := '93457B1845B872D7EA0904102A2B94BA59A34096246E292E32000B292606CA74792495782D794C325E521964A3094BF9258B349A56D96105F3BBAB5F3356499E893846FB6FC8356EB64C8C28377B306D58A29CE0CBF212DC326CF79A3000351024680106';
wwv_flow_api.g_varchar2_table(30) := '0760BA5B7986022DF43E9AD2F973D0A77D0A58A54B473927A31204FDA2067F192A9DD1FDA6F8B4795B33AD1EA9505F5A58C290BE59B5CAA9262DA49E4CB786B4D651B34B76A417AD00C6471368B800C9104F582A038077C9AB046E06ECDDC3FD66977882';
wwv_flow_api.g_varchar2_table(31) := 'C1321E2D4589374BF831C31EEEE6AC093C6C78D58F4B173945BBC8803EE07992DB1ABA821B78DEA5499B6F37BADD8E9FBE388ECA56F03884CF7C81C416C0072FFCF0C4176F3C155D14A1FCF2CC37EFFCF3D0472FFDF4D4576FFDF52784000021F904090A';
wwv_flow_api.g_varchar2_table(32) := '0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B40405876730F014049B74FAC871181C70F8A0A0AE0FDA86BCDB314FA41380091C1C79';
wwv_flow_api.g_varchar2_table(33) := '85797D757E6D7B857C0F1B7E6A8278716F030F91768B86067D816A776E9C9E817E03706FA29D8F909FA79C96989990787A7A97AD80B494701C650F672C5D776F050AC71A0A1A1A1B066889050F08D3080AD3CD7F9069D1D4DDCD687E91DCDDD7061BCF7F';
wwv_flow_api.g_varchar2_table(34) := 'E3E4D892DBD2D4D608ECE1EEDDF109E6DA6A06EFE4F875FBFA75C3074E92BA81E6D0A5E147AE5C413F0FDC544030800581530FC03080C0B1E382020724881C79E141838E1E0BFF884C208165829227514258F060A44D9832673EA8D0B2A7049C3269DA5C';
wwv_flow_api.g_varchar2_table(35) := '091425839A155C8A2CEAB1E6D09726731E95C07324D4982885F664F933AACCA33CB92EF59AF541C89512B63168808080450E0512488330A16EDD0C2CE3C5C32060815DBB78251C9B166F83DFBF75F3C6A396E0F0DFC083AD59338C38B1E0C5D5FA56862C';
wwv_flow_api.g_varchar2_table(36) := 'D99A86BE192A2BB6071A31677F7E43FF1D8D0C8166D38A9555FBEC18F0686FA921B85D4120A184CA13E421D0E0AF82050B8817245846781A06E3C791D755CE7C20F409D2275027AE976A74E916B6937B7E3CF972E2CD135CCFAE7C78730DDEB34F4FE0BE';
wwv_flow_api.g_varchar2_table(37) := '1BF9E876A937B7A6BE7CDDE3FAED179F79D54D03DF7513ECA642FF6FE74420DF0478C9B618061B4CD00176B6C9D61C8516FE654184E875264006173E968084CA1C53618919A2974C32235E881C722056A3578C181E97C106CA5497CC8A1EEEA8A15E403E';
wwv_flow_api.g_varchar2_table(38) := 'C663431CB278D789DCDD48628777F1C81D3C152277A18229F456800614E0871C4B21DEC3C0777681891E630B9069197329CA936679D189B4CC9CCB6C30A67C16C8E9E23209DC899899A8A999A70405F2F7E67FC8E9590D9A706228678FB219A6E6047AFA';
wwv_flow_api.g_varchar2_table(39) := 'D827998912EAA2A1FE25F8D6031174295D070C9CD8D9343C75A06A89E12DA717712CA96AE1AAA55697A248B25A402B931A22A0DEAA326AE7AA8DD5A4DA41A3DB1D33D8AFC05EE86B32CA1E836BB3A49A6A8FFFB1B2CED76B3554019B9FA9830DD7EDAA18';
wwv_flow_api.g_varchar2_table(40) := '2A17D9A2C6FA87250A0470A040A8A3D6B82190E009B9983549E608218FA72290EF7FFB2A9B8C8D1B9098EB87FCEEA740C125CA1AA16484F1F56476F612062DC376E92865643F3E692406AFFA0BA48C1D541C4FC72CD2686D67125FC8E2BA270C30115DD8';
wwv_flow_api.g_varchar2_table(41) := 'E98AC1016CDAD8D7A437E73C4D63DF457773B8911E5AF3043D8738DCCE0F266DB1024C238AF401435A1375CD1D0C3DE5CF460B4D353292310DA70543EBA54CD4D9954DCED5E5951DAEAF6FFA6741452B8071D204A22EC06F9B08FC84A9B020DB980C555D';
wwv_flow_api.g_varchar2_table(42) := '62381FC81A1E5838A2CA210EB10407141E6CE321C22A81A8D9F91A38D8372F5E5EE3D14E1639477ED881AEEC35A3235A6DE0362AF013E6D1E9EDB8649063FE2D062F52B341EA7F09E0050B476C21FCF0C4176FFCF1C857D14511CC37EFFCF3D0472FFDF4';
wwv_flow_api.g_varchar2_table(43) := 'D4576FFDF5D8677F42080021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B404058767C0297B0A9BB47A43E638DEF0017A';
wwv_flow_api.g_varchar2_table(44) := '9D261B0C0E3C7EF0D824FE8076777779726A097E09036F838C86877E8B707A067C747F658384950F7F6B8A1C9A8472808891939A7CA589998D778F69806E8C7A0EAA9E6A6470651C05055E2B5D760F0F060F0A1AC81ACB1BC69009050F08080AD3D3CD7D';
wwv_flow_api.g_varchar2_table(45) := 'A67ED1D6DD09CEA688C6DDD6D890D8E4D706B1B1D0D2D4DEE06BDCF0D6DFDA89F4E4DF97EEE908F79EE98BD787CEB874CD1021EA5380C381012C082C227621C1030610326A5C50E080848F20255CD4B8B1938404273FFF5A6C403223830221538A64D9F2';
wwv_flow_api.g_varchar2_table(46) := '254A9427135C18D972C18390807662AC691227C807344932F80912E7CA96109602FDB33369C99B40792A35D9542752A84B3DA2F423A1990602117B55AC2060C184B77027FCA9370D43DBB870514EAB66CF2D5EB909FEDDC59B616E35BE0A06E39D6B4D81';
wwv_flow_api.g_varchar2_table(47) := '63C5700B07768C605962BF8B2574E39B007364BDE920E7D5EC58C35ED1130A4B40462DD9E5BFAAD3D9450001ED0A02EB5456F86B01C1867F0976FF5D10982EC00A162CC4B5401CF86EE5719B23AE8B1C3AF4E6B2852FC75E4FC1C709D0DF322F5ECDF4F1';
wwv_flow_api.g_varchar2_table(48) := 'BF13B8EFF52E21395EE97483C3759F9E3C3CEFDAA3179F66F9FB04DB2AE0169C5DE865B001658D255660FF02941DF6D8726F19E8D861AE0950E081A529A3206C0756C61A02186C908172E14988E0321A88482274129A675E8819CC1761877CD525228735';
wwv_flow_api.g_varchar2_table(49) := 'AE77236118D6E8D8067F75501882D6C0D8C17F111970015B0BB8075D071F518398770CD0371A39C9485065786F45894C7954AE48E2472896B90103104E106565667A069E056B5AB34C025B8A3701949AEDC5E699E259E7A59C29BA45A2786426631E404D';
wwv_flow_api.g_varchar2_table(50) := '72299704CBF0374D674EC2B566326CD209178029E0D6477B4F76D00103934DF991A7E2790AEA5E87CAE729A99F92472988CFADFA16711F165901A9E14977D8A3D5817767AB133A38AAACA63218AC63C3AE5AEC66D44870EB91F3A9C71706CFBE67ACFFA3';
wwv_flow_api.g_varchar2_table(51) := 'C7E1FAEBA9BBF24A1FA628685A00044FCE38DD842ADA99DA0618E869E388BECE88019120EE582E4A944E2BE291C991AAD7AE3FBE45AAB988B9962E5C4706D79ABE31BEE9A989AD4909248E11A39B01BFD01A38AFA301ABBBEEC6C7EE7B290B0348608002';
wwv_flow_api.g_varchar2_table(52) := '7DF2FB27826D5909DE9F8DB59CDCCC701E80AA945AF649689E6052891E06362F9C259A6FC205F47A38FBD56F7247E78881A56F4207F497F03C9D68D4161C2D658582E21567919DE9FCF26A350E4D9F0510AD008604104C408193B4BEDA6CAFB926302FD5';
wwv_flow_api.g_varchar2_table(53) := 'F8BD6D2D062E524781D8C4818CF30114F00B57E0116749B8A2816738F7DF5636DEA0778BDBF9698FEB4940B8C3B3DA2DE5979ABF4DB33305A0DEFD79E88CDB7DA8DF7109008CDA486C21FBECB4D76EFBEDB853D14511BCF7EEFBEFC0072FFCF0C4176FFC';
wwv_flow_api.g_varchar2_table(54) := 'F1C8277F42080021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B404058E67C0293BC4858D7ABD213BDE70CE20BD4ED839';
wwv_flow_api.g_varchar2_table(55) := '6F8343FFE63CEC806A6406847B6F731B09898A09837C7A068889938D789084910F758C96857C039A9B95987C0EA0766A8C8EA4677F8CAA1C9E989280768E867B738A6C4778651C05055E2B73830FAE060F0A1ACCCC081BC9948905CA08D6D7D0A18B09C9';
wwv_flow_api.g_varchar2_table(56) := 'D7DED9A993DDDED6D0E1A9D4E4E5D18B6AC90AEAD0BB75D4F0E4DCA1A81BE9F1069BD30FD421C0272D9B40736CEC8C23074E5301031206B020E081DA830B801E3080C0B1E382070724881C294163478F7F24FF242079C1E449080C1E8C5C39F241839730';
wwv_flow_api.g_varchar2_table(57) := '53AAA4D972E3CB982201896C79F3E5479A244B163D0954254B974C65EEA499C026CEA349455AFD2975E7D0AD514326DAF980C044601831A815B06082DBB713ECA8C3C016EEDB95F6BCD5B51B3781C0BD7033C8B5A7A03060B87211145EA6E0B05BC109E0';
wwv_flow_api.g_varchar2_table(58) := '3183D7B82DDF95D6F23EB31C18B337C39C114B5896594365BE712528366DCFF104C1AAAF61A850A1EC447F220B8B846B618285670277F35D10599D840ABC7D130F8EDCAE85E58ABDCD76DBFB2DF46BBA25249FB09CB0B5E96F7B3F2FAEC1DB71D4D70B5B';
wwv_flow_api.g_varchar2_table(59) := '3B3FDC6F5ED3BB2D54F73D90727405C2ED429F9CDDEC0A02062450016909A026987A8A2D2600FF5F161C48993D186C405D6794B15698847C65B0C162CD1866E086A465D6986F7669688F33084438E1041D74702002E5C178E18A8F81784D79233A672276';
wwv_flow_api.g_varchar2_table(60) := '8B6D9041861B62F71D866E7550A3663D66E09F0A005E30207E0C90C8A25B7889584E68D48974238151F2259269323293C002F289E7D697CD3433268D16A099E6405DFA269E96D6A0B88165BD19995A7428B225DF8A9EC1C89A04515637E768310ABA266F';
wwv_flow_api.g_varchar2_table(61) := '6DC616A3986DCDE7DB9792C558D792290028D505DAB1D8628B0C14976076D47DDA41A8215E73DCA7535A802A98B255C0AA757ECD859CA4DC15A7D97979EA499C7A8BE127418B9E821A59B0D999FA69A8998D9A9F6FC6369BE0B3D4ED27DDFFAD9EFAC66C';
wwv_flow_api.g_varchar2_table(62) := '5EA44E80290A0016A0D58F7A1EF9E09034BE66A3880AF888EB8E5BB69B41754636B8815A845D38AF05C4DA8BC17DE896EB9B86FF3296E45B7A0A866F9DFACA47ACBA85E1C89A8F4092066CBBD08647308CAB35CC1BC1C12648B1B72C0C20810007F8C9AF';
wwv_flow_api.g_varchar2_table(63) := '94121C90A0888426D7E867BA3150E69F13607080C58CA94C9D7C2D4B56D880AE4D10B46916128A7396A33D689ACA1DFC3973AC0A8C59265C3ADB870168724A1DB4C1852D6A57CBD25D89737564336CCD5E1648B4021812A84181D4CA89EAAC76B812B7B0';
wwv_flow_api.g_varchar2_table(64) := '020326700005EDFD9B688A15CC2DA9DE052F26D2DCBC85AA968CBAFD1D38988A4BC0385C888F2A2CE079CAE778E291CF2DB03CDE114358F8CD6EE93D2A7C92379EC0BFE4CC06F804020CF336125BE4AEFBEEBCF7EEFBEF547451C4F0C4176FFCF1C827AF';
wwv_flow_api.g_varchar2_table(65) := 'FCF2CC37EFFCF3D09F10020021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048502C1C3293BCE0E4F61C36E6F061CB4';
wwv_flow_api.g_varchar2_table(66) := '239E7EB013783CDD20370C1E791B79657C7C677E767882096F7B0E867F8C92826606969089927A1C8568887779097196720E7F778BA28F9787A78A8A70ABA488A192B18697A76E1B47651C615E2B03A29C0F8079060F1ACB1A08CB1BC982D209050F08D7';
wwv_flow_api.g_varchar2_table(67) := 'D80809D1B5C9D9D8DB80D26C02D6DF08D076A0E9E7E8C98A6DE5EDDB6E8AD5F3068BA8F7E7D0FAF6E6BE419B248DDFB770EBD8F57360A78001090358103065EC421E09091E3080C0B1E382070724881499E082C68E1E01FF8D246972234A080C1E605C89';
wwv_flow_api.g_varchar2_table(68) := 'F1E4CB981813ACCCD8E025CC633A679AECF9F2234D9D2D7DC60C4A52C2509F1F2F8EE40955E64E3C0F88A2645020E7CAA7370B1CD0998780C401062C62588B0083800513E2CA9D80E79B02B770E74EC850D7EE5BBD71759EC30B98AE846B0A12B7FD0B18';
wwv_flow_api.g_varchar2_table(69) := '4F62051A1213D6CB37C13205082433D6EB385BE4CD72F91E468C590168B98233474E7C7AAFCED5D826731E8DA142050966571018B041A4627415E25A9830DC82B6761282035E9000B9F2E271993B9F5B9C39E66C0A920FA72E9D74E6E4C2E776BF9E183C';
wwv_flow_api.g_varchar2_table(70) := 'F1F3139837C3565EB95EE9BF219B7FDFFCDA6A0DDAE56EB79E597576F7E259B69A64B9A9408001095400D9FF650214C6D75D8F41661A75713DF85B66130296C1061026B65A831A26B0E080195226227B126E9081861C2E83A28A7175D041851C62E0CC82';
wwv_flow_api.g_varchar2_table(71) := '0AC048598DCE38F3CC8AE1EDC5218611EA38D786A52116D906311EC9A3871A6050600A075EA0E0821B30D0A45CC961689F06595268D88DCDC8A725605D46C60C980C40275C726B3293409BFAC50527333E26009705C5F199E67ACBE839DC8C6F1EE6E28D';
wwv_flow_api.g_varchar2_table(72) := '12E4B59D9F86DEC76678C58984CDA11BE4451C9F16C0F965A096A227E9A1CF4C89C28156DD959C8CA8CAC84073114A268105A912D7DD37A74E30E37E27D25A01A1014EB75CAED9802763AF115E236CAA1DACDAAAB1BB229BEC89AD9A072BAACA7A87C0FF';
wwv_flow_api.g_varchar2_table(73) := '7CC4A96A995DC79E67C1AC8AFD27EA09077685C15D0200E9E4632FAA1BDA905E2666E4BBD74586218CB7D2485E91190CBBDD8636EE9BA3BAFFB6D8EAC0B6AE6B9F8739DACAAB90A5DDD7308BEC4A88B070C30A26E1BD04EB1BEE632A8E6BC20012087040';
wwv_flow_api.g_varchar2_table(74) := '0578E55BE8BE9931065DA6A345BB00A6C2657A008603265A73A412AC76257E6752E7DB8091E95C27CC386BB640077C7A2B695B579A36B35E306376EE6373D2CC338989E949B5CDD7D818B6CB737D7ADD623347B40218185570C0012F47575FC5D8CAC55C';
wwv_flow_api.g_varchar2_table(75) := 'C03F4B700005BF8ABDB0DE7CD37775B8C9058EDEDD037E5781E1762710708485F7DD2A0680DBDA747A8E1F1CB9E0F6AA06F8E5725F3D2031E58663BAAADF1862448100C1AC8DC416B0C72EFBECB4D76E3B155D14A1FBEEBCF7EEFBEFC0072FFCF0C4176F';
wwv_flow_api.g_varchar2_table(76) := 'FCF12784000021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048582C3E019701C6834B9B069BB3766F4393D7824EEF8';
wwv_flow_api.g_varchar2_table(77) := 'C4D99036F83D761B78821C1C7C6A7F8177827A8663690E7509828C70867E90928C786687637E92798490998A837B877E069A798DAA9FAB768B8B7BB0A00F6F02090F65615E2B030906600EB283050F1A1A08CACA1BC3949309C808D5D608C2BA790FD4D7';
wwv_flow_api.g_varchar2_table(78) := 'D5C2946D93DDDED9956DE4D7C2936EE30FDEDFD0B3CFEFF0EBE294E9D6F78B82FAF1EC02FE43F04CDB9B817A0A189030800581611286E1914051C2830610326A5CF0E040C504142F5CD4B8F14145092025FF88C44812020393272B8E6CC93125C5943349';
wwv_flow_api.g_varchar2_table(79) := 'BE4C09B2674E8D0C0A7C3CF933E3CBA1218B42A81953A5D2A01FEFA07C5AC066C5952D971A4B40C0A1000C1D31884580A1DA860513D2AA9D70C79A826A60D1AE9D90A1ADDB6A02E4CEB50B178182BC73D382544098AC59BD6B076B205C9620E2B47525BC';
wwv_flow_api.g_varchar2_table(80) := '658CF7B16009D616570E1CD9EFE4C381D92650B0983061C073EB8EB6866131EAB5AA3154A820A1EB0A020776497E6B6D43050B13800BC7060F01C5C0161624282EE177F0B5CA9957482B3C78F4BB64A7AB053E217A61DEB2B96F57CEBBB071E7E2BB2FAF';
wwv_flow_api.g_varchar2_table(81) := 'F6FD7860F2EC979D0F1DBDF4620DEED3C327CDBB39726CA62980816D2A1020C042A429C39FFF00A165B04180CB9C461D6CA395C7DF06C8D565DA7D1272F62084AE65F82161CD68802167ABB10717861D7400DB83F7C987C10619A0481A33112A70A27816';
wwv_flow_api.g_varchar2_table(82) := '381860827FCDD5A286F1AD58636A150249600A0414530189F225C0808B6B5940116F0A6A20E5846A5D19A1825BCE65A564259296C002E959306689CD6CC00097972983E362670A672745F295E82695CFAD598D668E71A766707842E90C03D50947118E7F';
wwv_flow_api.g_varchar2_table(83) := '9AF8A69A838E39A77CA8A58767A31A2C890201755CD9986C2D869A167901C25581A8DC5DE70DA8CF51C7C07A6E29E09E5A2DBE2A9D901DD80A0FABB4E69AA45B14852AECABA6B127AB04C2864AEC8FC75A90ACAF9EC5071275C3C2EA57FF35CDB9285CAD';
wwv_flow_api.g_varchar2_table(84) := 'CB7D578DA62734291406E0D1E8216FD712666E6A237AB6D8BADBF9A859B935F2E863A9EAD64BA185A5ED98568B6C915B2C59F04E007002AD91E859C190C10865BE6B1D5C167F17D60B305DA3CD4B9804FE1AEC22C29E8107AE09034820C00115082C019A';
wwv_flow_api.g_varchar2_table(85) := '555A80C101D1F29657A269BDFCE361823ADB81CDA5C98C66A4844AF6E48D8EB5ECF2011B4EB632976AF24C99AC2C274A916CC5425D655A53971A689F6A5EA9F559DB41FA72636499C9729557B26666432B808152CAB21E509DABED82A75DD8AF520D6402';
wwv_flow_api.g_varchar2_table(86) := '0750F01EC8CC98C6B1DF73292770C812F4DD6A700C6C70B8E01210FE6FAE23B61779CB8D0748AE96910F1A9C05D8081C603BE292AB657891D995AE66DE3D9BEA37A4A302DE9E00BFB48DC416B8E7AEFBEEBCF7EE3B155D1421FCF0C4176FFCF1C827AFFC';
wwv_flow_api.g_varchar2_table(87) := 'F2CC37EFFCF32784000021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048582C350F00C1C68B4C1E1296CDEF023C731';
wwv_flow_api.g_varchar2_table(88) := '4F3B068F847E9FE0D4C70681781B7B847D7F81820F868C7E6376778B0986937E8190837C7A038897787C841B8E9006998509676B806BA67C966B89A57993858EB18A717A0503645E2B03090602120F0E9A6F050F1A081ACDCD1B06A1B41BC908D6D708C1';
wwv_flow_api.g_varchar2_table(89) := '9A79D5D8D6DA70B4DDDEC18C6F09E3D8E5E1C80FDEDFD17AD2E9D7EBD3E8EEEFE5F2A102F9E4D14285A2078FDF3982088A199030800501610A1418B8A047824509931A40D8C87141810316135CBCF04023C78D0B1EFF80C4187243C9931B193CB84833C1';
wwv_flow_api.g_varchar2_table(90) := '4B98326B622469F264CA902C13F08409C123D0904361A6042912E9CD9339695A4C0A7526C68A12A8728C2A552BCA5909083814A040E6050C1810A48D2860C184B770334CB2A6E01A86B670E38ABC56F79BDBBC6FE75A5B9BF06F5EB91B22AAA58B17F004';
wwv_flow_api.g_varchar2_table(91) := '911A22A6B5F6C0B0DE0D08245BD3D018B0E0C8D73AEB95A0B8AF02D17027458EA818F504B912EC824E60F9ADDC0B152A4810BB82C081057715ABAB30C142F1E216B2BDCB463CAF050B0B122C4F40DC78DEE8D3AB1F378E9D6EBDE6C7DF462FFD1DF0F3EE';
wwv_flow_api.g_varchar2_table(92) := 'C21548D07E5D7AE6BA0A34AC770CDD7DFCF28EA3AF8E1C79BE75B8D8C5D71702F33937C17892F1A602FF011268B00106CEDC8741028EBD96006BCBB0B641787A95165F641B1A285744FCD53561068E8D88E132278A782189CD44142260237AC78C021B76';
wwv_flow_api.g_varchar2_table(93) := '4063621FF235E36117329361661BFE675C063CC2A8560228BED5818E4862E86385517EA880822930988792D608C080791660B4197FD9B8F55F600D66166399E64D80913364D2E69C716FC219195E67869966849C9969DC736EBA6767677FEAB9D9807222';
wwv_flow_api.g_varchar2_table(94) := '779C483036838097DB2DDAE0324296F91CA0CF5904673D667A169B901A60890201C958A4C064EA55F0E4936FD5C71AA2AAEAF85F77E4B0771CADEF319717AB0CB8878D0215500817AFBEF215ECAE3AF62A5C66CCADBAEA04CA9A169145CE12FBAAFF62D4';
wwv_flow_api.g_varchar2_table(95) := '55FB64B4742D435D71CE1EE82BACDBADCA6D5FA29E40001E1260D017884D1E9698771AC61BD783F00988A3BD47BEC82C5D45C2655D02EE9606EF9916E6BBDA691958C7EA04494ABB41BCAC56799F8013A798E49AFB0EABE363EEEEB764C30FBF86EF7B26';
wwv_flow_api.g_varchar2_table(96) := '32E9F0C7F82E9BAE09C008704005052B9068ABCF61700079CCE0C9A1CEAF728A33AB3A2FCC29A6C7E95C01898C1976E904400BC82CA4D65D5AB466F1F9FC27D433B336F597ADB61A757A1B747AA905630F08297280EA6CD77D3787EDF660F735B4021818';
wwv_flow_api.g_varchar2_table(97) := 'D13C2D8546BA0A1F5D05E22C6EC16B6244417E04DF886D058703169DBB28AB770005460E9EEFDE8D4FC0EAE35E4FCBB8C0C6F55A7042C892532E38E7AFCA3739E26B51CA5CE680A23EA004933F2D5EE2E43DE0CBDD486CE1FBEFC0072FFCF0C453D14511';
wwv_flow_api.g_varchar2_table(98) := 'C827AFFCF2CC37EFFCF3D0472FFDF4D4577F42080021F904090A0000002C00000000DC0013000005FF20208E64699E68AAAE6CEBBE702CCF746DDF78AEEF7CEFFFC0A0704804080684A472C96C3A9FD0A8744AAD5AAFD8AC763A10B4048582C3F0280F38';
wwv_flow_api.g_varchar2_table(99) := '8EB421EDF01436F0F8E6CCAE7B1E89BC7E8E36F8FF0378091B79841C7D7F7E8183858387756C81848D098F6C8082948F7F63068B8C700974978A999395886B699F7A8EA998A77A8789806F0279651B055E2B03090602121518BF7B8460021ACACA08081B';
wwv_flow_api.g_varchar2_table(100) := '0684D184BBCDD5CDCF7A99D4D6CDBFA193BA02DCDD0683DFE1E308DED209C8E9C5D18C050FE9D8F1EDF3EFE5DF79F9E3F6ECFC715B170A1F3D6B1824EC1AC0820030050B182028704082C58B121E3480C0B1E3820707125CCCB6B123C78F1244FFA6B478';
wwv_flow_api.g_varchar2_table(101) := '41A3498E0C4062BCE8F225CA950912662C6932A6C89F095BF2ECE87324CDA127F18C0C5AD3E4C78A4677BE84E0330F46A15363CEB438686883061A801168284001038E83106040A04041D00513E2CA9D20528135B702E0CE9D904124DB6A1814E4DD1BD7';
wwv_flow_api.g_varchar2_table(102) := 'EF5ABB6C071336DCCCAD60BD7BEBAEADF698705F096E9B69480C79AE480D881B2B8E2CE1EFDFCA8B31B7458C7AEE65B5A045778E7B59C2D815040E2C8030C1D9BB0A132C0417DE7BC3380516E55A20AEEE37E1DE099C0B273E6141F4D06C8505DF6BDD74';
wwv_flow_api.g_varchar2_table(103) := 'E3E47197C7B5DEB67137E084C9DB55B0591DFAF0E313B0BFAB9DB03AF6F8B3BF9F6B3D36E5FADBC5E7D66D2A102001031140B081FF63EDB525C0737D65569E8310CAD7163314C247DB82F9B1A5C0061958C621331E82A8215F0B62A00C6B0F5A66A16625';
wwv_flow_api.g_varchar2_table(104) := '42B8607B8D7D18E25E19A4F8D732260688A25BCCF01862071DC895E37C947D485807118246600A0622681189A231A01C715382D6A000561266117BFEA9D3A58F9F69594D027A8937410759AEA8CC066306D826981A24C0C074D4B5B98C06706EA7E694D8';
wwv_flow_api.g_varchar2_table(105) := 'A9B3807878EA89803276FA2997459A6D86E8A0782E97653588C62957991A3C8982810B08969969095440247C1D30F0A23522F948A4A9CE915A6A741E7E87DEA8F1DDE51678A3AE0A6B8DB7C6452B74947D270191B9BECA6B5B16115BA4AEAB8516AAB2C4';
wwv_flow_api.g_varchar2_table(106) := 'B2CA5683C228EB2BFFABA1212B4170D062DB8CA627E4265805886DD6568FAE7118EBB932AE161BBB271E891DBC3ECA3B6D8C225E38A18D6B16B96179A7F1FBEB91E63688AEAF7449B0628D1BF8EAEF8F1732BC268E1C027CEE900FDBFB2D0B03C4F4C030';
wwv_flow_api.g_varchar2_table(107) := 'AB05A6D8722427649A0622C3455D5C5FCE9BD772BFB60C5865D32D8A59839C0D475D42EFCA16DE9F0748682E978AB2AC9A698259491C96479F4634C94C035C25D436AB8564D2CAC985C101566FC6D00A608404B263E00DA72BD2D96D3B5CBF0CCC18A648';
wwv_flow_api.g_varchar2_table(108) := '14A497D36AC2C6CDDDDC74237780DDD4591718DDEA4810F7AF7EAFB79E3071ABF92A06818176EBDE6BC7F7F77CC8092EB78AF4414EA805A6069664421450B75C2BE7EB21F0002F6023B1C5EAACB7EEFAEBB0C74E451745D46EFBEDB8E7AEFBEEBCF7EEFB';
wwv_flow_api.g_varchar2_table(109) := 'EFC0072FFC092100003B000000000000000000';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37780516522738177708)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'bar.gif'
,p_mime_type=>'image/gif'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2861297B612E776964676574282275692E617065785F73757065725F6C6F76222C7B6F7074696F6E733A7B656E74657261626C653A6E756C6C2C72657475726E436F6C4E756D3A6E756C6C2C646973706C6179436F6C4E756D3A6E';
wwv_flow_api.g_varchar2_table(2) := '756C6C2C68696464656E436F6C733A6E756C6C2C73656172636861626C65436F6C733A6E756C6C2C6D617046726F6D436F6C733A6E756C6C2C6D6170546F4974656D733A6E756C6C2C6D6178526F7773506572506167653A6E756C6C2C6469616C6F6754';
wwv_flow_api.g_varchar2_table(3) := '69746C653A6E756C6C2C757365436C65617250726F74656374696F6E3A6E756C6C2C6E6F44617461466F756E644D73673A6E756C6C2C6C6F6164696E67496D6167655372633A6E756C6C2C616A61784964656E7469666965723A6E756C6C2C7265706F72';
wwv_flow_api.g_varchar2_table(4) := '74486561646572733A6E756C6C2C6566666563747353706565643A6E756C6C2C646570656E64696E674F6E53656C6563746F723A6E756C6C2C706167654974656D73546F5375626D69743A6E756C6C2C64656275673A6128222370646562756722292E6C';
wwv_flow_api.g_varchar2_table(5) := '656E677468213D3D307D2C5F6372656174655072697661746553746F726167653A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2043';
wwv_flow_api.g_varchar2_table(6) := '726561746520507269766174652053746F726167652028222B6128622E656C656D656E74292E617474722822696422292B222922297D622E5F76616C7565733D7B617065784974656D49643A22222C636F6E74726F6C7349643A22222C64656C65746549';
wwv_flow_api.g_varchar2_table(7) := '636F6E54696D656F75743A22222C736561726368537472696E673A22222C706167696E6174696F6E3A22222C66657463684C6F76496E50726F636573733A66616C73652C66657463684C6F764D6F64653A22222C616A617852657475726E3A22222C6375';
wwv_flow_api.g_varchar2_table(8) := '72506167653A22222C6D6F7265526F77733A66616C73652C777261707065724865696768743A302C6469616C6F674865696768743A302C6469616C6F6757696474683A302C6469616C6F67546F703A302C6469616C6F674C6566743A302C70657263656E';
wwv_flow_api.g_varchar2_table(9) := '745265674578703A2F5E2D3F5B302D395D2B5C2E3F5B302D395D2A25242F2C706978656C5265674578703A2F5E2D3F5B302D395D2B5C2E3F5B302D395D2A7078242F692C68696464656E436F6C733A28622E6F7074696F6E732E68696464656E436F6C73';
wwv_flow_api.g_varchar2_table(10) := '293F622E6F7074696F6E732E68696464656E436F6C732E73706C697428222C22293A5B5D2C73656172636861626C65436F6C733A28622E6F7074696F6E732E73656172636861626C65436F6C73293F622E6F7074696F6E732E73656172636861626C6543';
wwv_flow_api.g_varchar2_table(11) := '6F6C732E73706C697428222C22293A5B5D2C6D617046726F6D436F6C733A28622E6F7074696F6E732E6D617046726F6D436F6C73293F622E6F7074696F6E732E6D617046726F6D436F6C732E73706C697428222C22293A5B5D2C6D6170546F4974656D73';
wwv_flow_api.g_varchar2_table(12) := '3A28622E6F7074696F6E732E6D6170546F4974656D73293F622E6F7074696F6E732E6D6170546F4974656D732E73706C697428222C22293A5B5D2C626F64794B65794D6F64653A22534541524348222C64697361626C65643A66616C73652C666F637573';
wwv_flow_api.g_varchar2_table(13) := '4F6E436C6F73653A22425554544F4E222C454E54455241424C455F524553545249435445443A22454E54455241424C455F52455354524943544544222C454E54455241424C455F554E524553545249435445443A22454E54455241424C455F554E524553';
wwv_flow_api.g_varchar2_table(14) := '54524943544544222C6C617374446973706C617956616C75653A22222C6368616E676550726F7061676174696F6E416C6C6F7765643A66616C73657D3B696628622E6F7074696F6E732E6465627567297B617065782E646562756728222E2E2E50726976';
wwv_flow_api.g_varchar2_table(15) := '6174652056616C75657322293B666F72286E616D6520696E20622E5F76616C756573297B617065782E646562756728222E2E2E2E2E2E222B6E616D652B273A2022272B622E5F76616C7565735B6E616D655D2B272227297D7D622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(16) := '3D7B246974656D486F6C6465723A7B7D2C2477696E646F773A7B7D2C2468696464656E496E7075743A7B7D2C24646973706C6179496E7075743A7B7D2C246C6162656C3A7B7D2C246669656C647365743A7B7D2C24636C656172427574746F6E3A7B7D2C';
wwv_flow_api.g_varchar2_table(17) := '246F70656E427574746F6E3A7B7D2C246F757465724469616C6F673A7B7D2C246469616C6F673A7B7D2C24627574746F6E436F6E7461696E65723A7B7D2C24736561726368436F6E7461696E65723A7B7D2C24706167696E6174696F6E436F6E7461696E';
wwv_flow_api.g_varchar2_table(18) := '65723A7B7D2C24636F6C756D6E53656C6563743A7B7D2C2466696C7465723A7B7D2C24676F427574746F6E3A7B7D2C2470726576427574746F6E3A7B7D2C24706167696E6174696F6E446973706C61793A7B7D2C246E657874427574746F6E3A7B7D2C24';
wwv_flow_api.g_varchar2_table(19) := '777261707065723A7B7D2C247461626C653A7B7D2C246E6F646174613A7B7D2C246D6F7265526F77733A7B7D2C2473656C6563746564526F773A7B7D2C24616374696F6E6C657373466F6375733A7B7D7D3B696628622E6F7074696F6E732E6465627567';
wwv_flow_api.g_varchar2_table(20) := '297B617065782E646562756728222E2E2E43617368656420456C656D656E747322293B666F72286E616D6520696E20622E5F656C656D656E7473297B617065782E646562756728222E2E2E2E2E2E222B6E616D652B273A2022272B622E5F656C656D656E';
wwv_flow_api.g_varchar2_table(21) := '74735B6E616D655D2B272227297D7D7D2C5F6372656174653A66756E6374696F6E28297B76617220643D746869733B76617220673B76617220633B76617220663B76617220683B76617220623B76617220653B696628642E6F7074696F6E732E64656275';
wwv_flow_api.g_varchar2_table(22) := '67297B617065782E646562756728225375706572204C4F56202D20496E697469616C697A652028222B6128642E656C656D656E74292E617474722822696422292B222922293B617065782E646562756728222E2E2E4F7074696F6E7322293B666F72286E';
wwv_flow_api.g_varchar2_table(23) := '616D6520696E20642E6F7074696F6E73297B617065782E646562756728222E2E2E2E2E2E222B6E616D652B273A2022272B642E6F7074696F6E735B6E616D655D2B272227297D7D642E5F6372656174655072697661746553746F7261676528293B642E5F';
wwv_flow_api.g_varchar2_table(24) := '76616C7565732E617065784974656D49643D6128642E656C656D656E74292E617474722822696422293B642E5F76616C7565732E636F6E74726F6C7349643D642E5F76616C7565732E617065784974656D49642B225F6669656C64736574223B642E5F69';
wwv_flow_api.g_varchar2_table(25) := '6E697442617365456C656D656E747328293B642E5F76616C7565732E6C617374446973706C617956616C75653D642E5F656C656D656E74732E24646973706C6179496E7075742E76616C28293B633D642E5F656C656D656E74732E24646973706C617949';
wwv_flow_api.g_varchar2_table(26) := '6E7075742E63737328226261636B67726F756E642D636F6C6F7222293B663D642E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D696D61676522293B683D642E5F656C656D656E74732E2464697370';
wwv_flow_api.g_varchar2_table(27) := '6C6179496E7075742E63737328226261636B67726F756E642D72657065617422293B623D642E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D6174746163686D656E7422293B653D642E5F656C656D';
wwv_flow_api.g_varchar2_table(28) := '656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D706F736974696F6E22293B642E5F656C656D656E74732E246669656C647365742E637373287B226261636B67726F756E642D636F6C6F72223A632C226261636B67';
wwv_flow_api.g_varchar2_table(29) := '726F756E642D696D616765223A662C226261636B67726F756E642D726570656174223A682C226261636B67726F756E642D6174746163686D656E74223A622C226261636B67726F756E642D706F736974696F6E223A657D293B642E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(30) := '2E246F70656E427574746F6E2E627574746F6E287B746578743A66616C73652C6C6162656C3A224F70656E204469616C6F67222C69636F6E733A7B7072696D6172793A2275692D69636F6E2D636972636C652D747269616E676C652D6E227D7D292E6373';
wwv_flow_api.g_varchar2_table(31) := '732822686569676874222C642E5F656C656D656E74732E24646973706C6179496E7075742E6F75746572486569676874287472756529292E62696E642822636C69636B222C7B7569773A647D2C642E5F68616E646C654F70656E436C69636B293B642E5F';
wwv_flow_api.g_varchar2_table(32) := '656C656D656E74732E24636C656172427574746F6E2E627574746F6E287B746578743A66616C73652C6C6162656C3A22436C65617220436F6E74656E7473222C69636F6E733A7B7072696D6172793A2275692D69636F6E2D636972636C652D636C6F7365';
wwv_flow_api.g_varchar2_table(33) := '227D7D292E6373732822686569676874222C642E5F656C656D656E74732E24646973706C6179496E7075742E6F75746572486569676874287472756529292E62696E642822636C69636B222C7B7569773A647D2C642E5F68616E646C65436C656172436C';
wwv_flow_api.g_varchar2_table(34) := '69636B292E706172656E7428292E627574746F6E73657428293B642E5F656C656D656E74732E24636C656172427574746F6E2E72656D6F7665436C617373282275692D636F726E65722D6C65667422293B642E5F656C656D656E74732E24646973706C61';
wwv_flow_api.g_varchar2_table(35) := '79496E7075742E62696E6428226170657872656672657368222C66756E6374696F6E28297B642E5F7265667265736828297D293B696628642E6F7074696F6E732E656E74657261626C653D3D3D642E5F76616C7565732E454E54455241424C455F524553';
wwv_flow_api.g_varchar2_table(36) := '545249435445447C7C642E6F7074696F6E732E656E74657261626C653D3D3D642E5F76616C7565732E454E54455241424C455F554E52455354524943544544297B642E5F656C656D656E74732E24646973706C6179496E7075742E62696E6428226B6579';
wwv_flow_api.g_varchar2_table(37) := '646F776E222C7B7569773A647D2C642E5F68616E646C65456E74657261626C654B6579646F776E292E62696E642822626C7572222C7B7569773A647D2C642E5F68616E646C65456E74657261626C65426C7572297D696628642E6F7074696F6E732E6465';
wwv_flow_api.g_varchar2_table(38) := '70656E64696E674F6E53656C6563746F72297B6128642E6F7074696F6E732E646570656E64696E674F6E53656C6563746F72292E62696E6428226368616E6765222C66756E6374696F6E28297B642E5F656C656D656E74732E24646973706C6179496E70';
wwv_flow_api.g_varchar2_table(39) := '75742E747269676765722822617065787265667265736822297D297D617065782E7769646765742E696E6974506167654974656D28642E5F656C656D656E74732E24646973706C6179496E7075742E617474722822696422292C7B73657456616C75653A';
wwv_flow_api.g_varchar2_table(40) := '66756E6374696F6E286B2C6A297B642E5F656C656D656E74732E2468696464656E496E7075742E76616C286B293B642E5F656C656D656E74732E24646973706C6179496E7075742E76616C286A293B642E5F76616C7565732E6C617374446973706C6179';
wwv_flow_api.g_varchar2_table(41) := '56616C75653D6A7D2C67657456616C75653A66756E6374696F6E28297B72657475726E20642E5F656C656D656E74732E2468696464656E496E7075742E76616C28297D2C73686F773A66756E6374696F6E28297B642E73686F7728297D2C686964653A66';
wwv_flow_api.g_varchar2_table(42) := '756E6374696F6E28297B642E6869646528297D2C656E61626C653A66756E6374696F6E28297B642E656E61626C6528297D2C64697361626C653A66756E6374696F6E28297B642E64697361626C6528297D7D297D2C5F696E697442617365456C656D656E';
wwv_flow_api.g_varchar2_table(43) := '74733A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20496E697469616C697A65204261736520456C656D656E74732028222B622E5F';
wwv_flow_api.g_varchar2_table(44) := '76616C7565732E617065784974656D49642B222922297D622E5F656C656D656E74732E246974656D486F6C6465723D6128227461626C6523222B622E5F76616C7565732E617065784974656D49642B225F686F6C64657222293B622E5F656C656D656E74';
wwv_flow_api.g_varchar2_table(45) := '732E2468696464656E496E7075743D61282223222B622E5F76616C7565732E617065784974656D49642B225F48494444454E56414C554522293B622E5F656C656D656E74732E24646973706C6179496E7075743D622E656C656D656E743B622E5F656C65';
wwv_flow_api.g_varchar2_table(46) := '6D656E74732E246C6162656C3D6128276C6162656C5B666F723D22272B622E5F76616C7565732E617065784974656D49642B27225D27293B622E5F656C656D656E74732E246669656C647365743D61282223222B622E5F76616C7565732E636F6E74726F';
wwv_flow_api.g_varchar2_table(47) := '6C734964293B622E5F656C656D656E74732E24636C656172427574746F6E3D61282223222B622E5F76616C7565732E636F6E74726F6C7349642B2220627574746F6E2E73757065726C6F762D6D6F64616C2D64656C65746522293B622E5F656C656D656E';
wwv_flow_api.g_varchar2_table(48) := '74732E246F70656E427574746F6E3D61282223222B622E5F76616C7565732E636F6E74726F6C7349642B2220627574746F6E2E73757065726C6F762D6D6F64616C2D6F70656E22297D2C5F696E6974456C656D656E74733A66756E6374696F6E28297B76';
wwv_flow_api.g_varchar2_table(49) := '617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20496E697469616C697A6520456C656D656E74732028222B622E5F76616C7565732E617065784974656D49642B2229';
wwv_flow_api.g_varchar2_table(50) := '22297D622E5F656C656D656E74732E2477696E646F773D612877696E646F77293B622E5F656C656D656E74732E246F757465724469616C6F673D6128226469762E73757065726C6F762D6469616C6F6722293B622E5F656C656D656E74732E246469616C';
wwv_flow_api.g_varchar2_table(51) := '6F673D6128226469762E73757065726C6F762D636F6E7461696E657222293B622E5F656C656D656E74732E24627574746F6E436F6E7461696E65723D6128226469762E73757065726C6F762D627574746F6E2D636F6E7461696E657222293B622E5F656C';
wwv_flow_api.g_varchar2_table(52) := '656D656E74732E24736561726368436F6E7461696E65723D6128226469762E73757065726C6F762D7365617263682D636F6E7461696E657222293B622E5F656C656D656E74732E24706167696E6174696F6E436F6E7461696E65723D6128226469762E73';
wwv_flow_api.g_varchar2_table(53) := '757065726C6F762D706167696E6174696F6E2D636F6E7461696E657222293B622E5F656C656D656E74732E24636F6C756D6E53656C6563743D61282273656C6563742373757065726C6F762D636F6C756D6E2D73656C65637422293B622E5F656C656D65';
wwv_flow_api.g_varchar2_table(54) := '6E74732E2466696C7465723D612822696E7075742373757065726C6F762D66696C74657222293B622E5F656C656D656E74732E24736561726368427574746F6E3D6128226469762E73757065726C6F762D7365617263682D69636F6E22293B622E5F656C';
wwv_flow_api.g_varchar2_table(55) := '656D656E74732E2470726576427574746F6E3D612822627574746F6E2373757065726C6F762D707265762D7061676522293B622E5F656C656D656E74732E24706167696E6174696F6E446973706C61793D6128227370616E2373757065726C6F762D7061';
wwv_flow_api.g_varchar2_table(56) := '67696E6174696F6E2D646973706C617922293B622E5F656C656D656E74732E246E657874427574746F6E3D612822627574746F6E2373757065726C6F762D6E6578742D7061676522293B622E5F656C656D656E74732E24777261707065723D6128226469';
wwv_flow_api.g_varchar2_table(57) := '762E73757065726C6F762D7461626C652D7772617070657222293B622E5F656C656D656E74732E24616374696F6E6C657373466F6375733D6128222373757065726C6F762D666F63757361626C6522297D2C5F696E69745472616E7369656E74456C656D';
wwv_flow_api.g_varchar2_table(58) := '656E74733A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20496E697469616C697A65205472616E7369656E7420456C656D656E7473';
wwv_flow_api.g_varchar2_table(59) := '2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656C656D656E74732E247461626C653D6128227461626C652E73757065726C6F762D7461626C6522293B622E5F656C656D656E74732E246E6F646174613D6128226469';
wwv_flow_api.g_varchar2_table(60) := '762E73757065726C6F762D6E6F6461746122293B622E5F656C656D656E74732E246D6F7265526F77733D612822696E7075742361736C2D73757065722D6C6F762D6D6F72652D726F777322297D2C5F696E6974427574746F6E733A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(61) := '297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20496E697469616C697A6520427574746F6E732028222B622E5F76616C7565732E617065784974656D49642B';
wwv_flow_api.g_varchar2_table(62) := '222922297D622E5F656C656D656E74732E24736561726368427574746F6E2E62696E642822636C69636B222C7B7569773A627D2C622E5F68616E646C65536561726368427574746F6E436C69636B293B622E5F656C656D656E74732E2470726576427574';
wwv_flow_api.g_varchar2_table(63) := '746F6E2E627574746F6E287B746578743A66616C73652C69636F6E733A7B7072696D6172793A2275692D69636F6E2D6172726F77746869636B2D312D77227D7D292E62696E642822636C69636B222C7B7569773A627D2C622E5F68616E646C6550726576';
wwv_flow_api.g_varchar2_table(64) := '427574746F6E436C69636B293B622E5F656C656D656E74732E246E657874427574746F6E2E627574746F6E287B746578743A66616C73652C69636F6E733A7B7072696D6172793A2275692D69636F6E2D6172726F77746869636B2D312D65227D7D292E62';
wwv_flow_api.g_varchar2_table(65) := '696E642822636C69636B222C7B7569773A627D2C622E5F68616E646C654E657874427574746F6E436C69636B297D2C5F696E6974436F6C756D6E53656C6563743A66756E6374696F6E28297B76617220633D746869733B76617220643D632E5F656C656D';
wwv_flow_api.g_varchar2_table(66) := '656E74732E24636F6C756D6E53656C6563742E6765742830293B76617220623D313B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20496E697469616C697A6520436F6C756D6E2053656C65';
wwv_flow_api.g_varchar2_table(67) := '63742028222B632E5F76616C7565732E617065784974656D49642B222922297D666F7228783D303B783C632E6F7074696F6E732E7265706F7274486561646572732E6C656E6774683B782B2B297B69662821632E5F697348696464656E436F6C28782B31';
wwv_flow_api.g_varchar2_table(68) := '292626632E5F697353656172636861626C65436F6C28782B3129297B642E6F7074696F6E735B625D3D6E6577204F7074696F6E28632E6F7074696F6E732E7265706F7274486561646572735B785D2C782B31293B622B3D317D7D61282773656C65637423';
wwv_flow_api.g_varchar2_table(69) := '73757065726C6F762D636F6C756D6E2D73656C656374206F7074696F6E5B76616C75653D22272B632E6F7074696F6E732E646973706C6179436F6C4E756D2B27225D27292E61747472282273656C6563746564222C2273656C656374656422297D2C5F68';
wwv_flow_api.g_varchar2_table(70) := '616E646C65436F6C756D6E4368616E67653A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2048616E646C6520436F6C756D6E204368';
wwv_flow_api.g_varchar2_table(71) := '616E67652028222B622E5F76616C7565732E617065784974656D49642B222922297D696628622E5F656C656D656E74732E24636F6C756D6E53656C6563742E76616C2829297B622E5F656C656D656E74732E2466696C7465722E72656D6F766541747472';
wwv_flow_api.g_varchar2_table(72) := '282264697361626C656422297D656C73657B622E5F656C656D656E74732E2466696C7465722E76616C282222292E61747472282264697361626C6564222C2264697361626C656422297D622E5F7570646174655374796C656446696C74657228297D2C5F';
wwv_flow_api.g_varchar2_table(73) := '69654E6F53656C656374546578743A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D204945204E6F2053656C65637420546578742028';
wwv_flow_api.g_varchar2_table(74) := '222B622E5F76616C7565732E617065784974656D49642B222922297D696628646F63756D656E742E6174746163684576656E74297B6128226469762E73757065726C6F762D7461626C652D77726170706572202A22292E656163682866756E6374696F6E';
wwv_flow_api.g_varchar2_table(75) := '28297B612874686973295B305D2E6174746163684576656E7428226F6E73656C6563747374617274222C66756E6374696F6E28297B72657475726E2066616C73657D297D297D7D2C5F697348696464656E436F6C3A66756E6374696F6E2863297B766172';
wwv_flow_api.g_varchar2_table(76) := '20643D746869733B76617220623D66616C73653B696628642E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2049732048696464656E20436F6C756D6E2028222B642E5F76616C7565732E617065784974';
wwv_flow_api.g_varchar2_table(77) := '656D49642B222922297D666F7228693D303B693C642E5F76616C7565732E68696464656E436F6C732E6C656E6774683B692B2B297B6966287061727365496E7428632C3130293D3D3D7061727365496E7428642E5F76616C7565732E68696464656E436F';
wwv_flow_api.g_varchar2_table(78) := '6C735B695D2C313029297B623D747275653B627265616B7D7D72657475726E20627D2C5F697353656172636861626C65436F6C3A66756E6374696F6E2863297B76617220643D746869733B76617220623D66616C73653B696628642E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(79) := '6465627567297B617065782E646562756728225375706572204C4F56202D2049732053656172636861626C6520436F6C756D6E2028222B642E5F76616C7565732E617065784974656D49642B222922297D696628642E5F76616C7565732E736561726368';
wwv_flow_api.g_varchar2_table(80) := '61626C65436F6C732E6C656E677468297B666F7228693D303B693C642E5F76616C7565732E73656172636861626C65436F6C732E6C656E6774683B692B2B297B6966287061727365496E7428632C3130293D3D3D7061727365496E7428642E5F76616C75';
wwv_flow_api.g_varchar2_table(81) := '65732E73656172636861626C65436F6C735B695D2C313029297B623D747275653B627265616B7D7D7D656C73657B623D747275657D72657475726E20627D2C5F73686F774469616C6F673A66756E6374696F6E28297B766172206A3D746869733B766172';
wwv_flow_api.g_varchar2_table(82) := '206D3B76617220623B76617220683B6966286A2E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2053686F77204469616C6F672028222B6A2E5F76616C7565732E617065784974656D49642B222922297D';
wwv_flow_api.g_varchar2_table(83) := '683D273C64697620636C6173733D2273757065726C6F762D636F6E7461696E65722075692D776964676574223E5C6E2020203C64697620636C6173733D2273757065726C6F762D627574746F6E2D636F6E7461696E65722075692D7769646765742D6865';
wwv_flow_api.g_varchar2_table(84) := '616465722075692D636F726E65722D616C6C2075692D68656C7065722D636C656172666978223E5C6E2020202020203C64697620636C6173733D2273757065726C6F762D7365617263682D636F6E7461696E6572223E5C6E2020202020202020203C7461';
wwv_flow_api.g_varchar2_table(85) := '626C653E5C6E2020202020202020202020203C74723E5C6E2020202020202020202020202020203C74642076616C69676E3D226D6964646C65223E5C6E2020202020202020202020202020202020205365617263683C612069643D2273757065726C6F76';
wwv_flow_api.g_varchar2_table(86) := '2D666F63757361626C652220687265663D222322207374796C653D22746578742D6465636F726174696F6E3A206E6F6E653B223E266E6273703B3C2F613E5C6E2020202020202020202020202020203C2F74643E5C6E2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(87) := '203C74642076616C69676E3D226D6964646C65223E5C6E2020202020202020202020202020202020203C73656C6563742069643D2273757065726C6F762D636F6C756D6E2D73656C656374222073697A653D2231223E5C6E202020202020202020202020';
wwv_flow_api.g_varchar2_table(88) := '2020202020202020203C6F7074696F6E2076616C75653D22223E2D2053656C65637420436F6C756D6E202D3C2F6F7074696F6E3E5C6E2020202020202020202020202020202020203C2F73656C6563743E5C6E2020202020202020202020202020203C2F';
wwv_flow_api.g_varchar2_table(89) := '74643E5C6E2020202020202020202020202020203C74643E5C6E2020202020202020202020202020202020203C6469762069643D2273757065726C6F765F7374796C65645F66696C7465722220636C6173733D2275692D636F726E65722D616C6C223E5C';
wwv_flow_api.g_varchar2_table(90) := '6E2020202020202020202020202020202020202020203C7461626C653E5C6E2020202020202020202020202020202020202020202020203C74626F64793E5C6E2020202020202020202020202020202020202020202020202020203C74723E5C6E202020';
wwv_flow_api.g_varchar2_table(91) := '2020202020202020202020202020202020202020202020202020203C74643E5C6E2020202020202020202020202020202020202020202020202020202020202020203C696E70757420747970653D2274657874222069643D2273757065726C6F762D6669';
wwv_flow_api.g_varchar2_table(92) := '6C7465722220636C6173733D2275692D636F726E65722D616C6C222F3E5C6E2020202020202020202020202020202020202020202020202020202020203C2F74643E5C6E2020202020202020202020202020202020202020202020202020202020203C74';
wwv_flow_api.g_varchar2_table(93) := '643E5C6E2020202020202020202020202020202020202020202020202020202020202020203C64697620636C6173733D2275692D73746174652D686967686C696768742073757065726C6F762D7365617263682D69636F6E223E3C7370616E20636C6173';
wwv_flow_api.g_varchar2_table(94) := '733D2275692D69636F6E2075692D69636F6E2D636972636C652D7A6F6F6D696E223E3C2F7370616E3E3C2F6469763E5C6E2020202020202020202020202020202020202020202020202020202020203C2F74643E5C6E2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(95) := '202020202020202020202020203C2F74723E5C6E2020202020202020202020202020202020202020202020203C2F74626F64793E5C6E2020202020202020202020202020202020202020203C2F7461626C653E5C6E202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(96) := '2020203C2F6469763E5C6E2020202020202020202020202020203C2F74643E5C6E2020202020202020202020203C2F74723E5C6E2020202020202020203C2F7461626C653E5C6E2020202020203C2F6469763E5C6E2020202020203C64697620636C6173';
wwv_flow_api.g_varchar2_table(97) := '733D2273757065726C6F762D706167696E6174696F6E2D636F6E7461696E6572223E5C6E2020202020202020203C7461626C653E5C6E2020202020202020202020203C74723E5C6E2020202020202020202020202020203C74642076616C69676E3D226D';
wwv_flow_api.g_varchar2_table(98) := '6964646C65223E5C6E2020202020202020202020202020202020203C627574746F6E2069643D2273757065726C6F762D707265762D70616765223E50726576696F757320506167653C2F627574746F6E3E5C6E2020202020202020202020202020203C2F';
wwv_flow_api.g_varchar2_table(99) := '74643E5C6E2020202020202020202020202020203C74642076616C69676E3D226D6964646C65223E5C6E2020202020202020202020202020202020203C7370616E2069643D2273757065726C6F762D706167696E6174696F6E2D646973706C6179223E50';
wwv_flow_api.g_varchar2_table(100) := '61676520313C2F7370616E3E5C6E2020202020202020202020202020203C2F74643E5C6E2020202020202020202020202020203C74642076616C69676E3D226D6964646C65223E5C6E2020202020202020202020202020202020203C627574746F6E2069';
wwv_flow_api.g_varchar2_table(101) := '643D2273757065726C6F762D6E6578742D70616765223E4E65787420506167653C2F627574746F6E3E5C6E2020202020202020202020202020203C2F74643E5C6E2020202020202020202020203C2F74723E5C6E2020202020202020203C2F7461626C65';
wwv_flow_api.g_varchar2_table(102) := '3E5C6E2020202020203C2F6469763E5C6E2020203C2F6469763E5C6E2020202020203C64697620636C6173733D2273757065726C6F762D7461626C652D77726170706572223E5C6E2020202020202020203C696D672069643D2273757065726C6F762D6C';
wwv_flow_api.g_varchar2_table(103) := '6F6164696E672D696D61676522207372633D22272B6A2E6F7074696F6E732E6C6F6164696E67496D6167655372632B27223E5C6E2020203C2F6469763E5C6E3C2F6469763E5C6E273B612822626F647922292E617070656E642868293B6A2E5F696E6974';
wwv_flow_api.g_varchar2_table(104) := '456C656D656E747328293B6A2E5F76616C7565732E706167696E6174696F6E3D22313A222B6A2E6F7074696F6E732E6D6178526F7773506572506167653B6A2E5F76616C7565732E637572506167653D313B6A2E5F696E6974427574746F6E7328293B6A';
wwv_flow_api.g_varchar2_table(105) := '2E5F696E6974436F6C756D6E53656C65637428293B6A2E5F656C656D656E74732E24636F6C756D6E53656C6563742E62696E6428226368616E6765222C66756E6374696F6E28297B6A2E5F68616E646C65436F6C756D6E4368616E676528297D293B6A2E';
wwv_flow_api.g_varchar2_table(106) := '5F656C656D656E74732E2466696C7465722E62696E642822666F637573222C7B7569773A6A7D2C6A2E5F68616E646C6546696C746572466F637573293B76617220633D6A2E5F656C656D656E74732E2466696C7465722E6373732822626F726465722D74';
wwv_flow_api.g_varchar2_table(107) := '6F702D636F6C6F7222293B766172206E3D6A2E5F656C656D656E74732E2466696C7465722E6373732822626F726465722D746F702D776964746822293B766172206C3D6A2E5F656C656D656E74732E2466696C7465722E6373732822626F726465722D74';
wwv_flow_api.g_varchar2_table(108) := '6F702D7374796C6522293B76617220673D6A2E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D636F6C6F7222293B76617220663D6A2E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F75';
wwv_flow_api.g_varchar2_table(109) := '6E642D696D61676522293B766172206B3D6A2E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D72657065617422293B76617220653D6A2E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F';
wwv_flow_api.g_varchar2_table(110) := '756E642D6174746163686D656E7422293B76617220643D6A2E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D706F736974696F6E22293B69662828612E62726F777365722E6D7369657C7C612E62726F777365722E';
wwv_flow_api.g_varchar2_table(111) := '7765626B697429262663213D3D226E6F6E6522297B633D2223616161616161223B696628612E62726F777365722E6D73696526266C3D3D3D226E6F6E6522297B6C3D22696E736574227D7D6A2E5F656C656D656E74732E2466696C7465722E6373732822';
wwv_flow_api.g_varchar2_table(112) := '626F72646572222C226E6F6E6522293B6128222373757065726C6F765F7374796C65645F66696C74657222292E637373287B22626F726465722D636F6C6F72223A632C22626F726465722D7769647468223A6E2C22626F726465722D7374796C65223A6C';
wwv_flow_api.g_varchar2_table(113) := '2C226261636B67726F756E642D636F6C6F72223A672C226261636B67726F756E642D696D616765223A662C226261636B67726F756E642D726570656174223A6B2C226261636B67726F756E642D6174746163686D656E74223A652C226261636B67726F75';
wwv_flow_api.g_varchar2_table(114) := '6E642D706F736974696F6E223A647D293B6A2E5F64697361626C65536561726368427574746F6E28293B6A2E5F64697361626C6550726576427574746F6E28293B6A2E5F64697361626C654E657874427574746F6E28293B6D3D6A2E5F656C656D656E74';
wwv_flow_api.g_varchar2_table(115) := '732E24736561726368436F6E7461696E65722E776964746828292B6A2E5F656C656D656E74732E24706167696E6174696F6E436F6E7461696E65722E776964746828293B6A2E5F656C656D656E74732E24627574746F6E436F6E7461696E65722E637373';
wwv_flow_api.g_varchar2_table(116) := '28227769647468222C6D2B31302B22707822293B623D6A2E5F656C656D656E74732E24627574746F6E436F6E7461696E65722E68656967687428293B6A2E5F656C656D656E74732E24706167696E6174696F6E436F6E7461696E65722E63737328226865';
wwv_flow_api.g_varchar2_table(117) := '69676874222C622B22707822293B6A2E5F656C656D656E74732E24736561726368436F6E7461696E65722E6373732822686569676874222C622B22707822293B6A2E5F656C656D656E74732E246469616C6F672E6469616C6F67287B64697361626C6564';
wwv_flow_api.g_varchar2_table(118) := '3A66616C73652C6175746F4F70656E3A66616C73652C636C6F73654F6E4573636170653A747275652C636C6F7365546578743A22436C6F7365222C6469616C6F67436C6173733A2273757065726C6F762D6469616C6F67222C647261676761626C653A74';
wwv_flow_api.g_varchar2_table(119) := '7275652C6865696768743A226175746F222C686964653A6E756C6C2C6D61784865696768743A66616C73652C6D617857696474683A66616C73652C6D696E4865696768743A3135302C6D696E57696474683A66616C73652C6D6F64616C3A747275652C72';
wwv_flow_api.g_varchar2_table(120) := '6573697A61626C653A66616C73652C73686F773A6E756C6C2C737461636B3A747275652C7469746C653A6A2E6F7074696F6E732E6469616C6F675469746C652C6F70656E3A66756E6374696F6E28297B6A2E5F656C656D656E74732E2466696C7465722E';
wwv_flow_api.g_varchar2_table(121) := '747269676765722822666F63757322293B6966286A2E5F76616C7565732E66657463684C6F764D6F64653D3D3D224449414C4F4722297B6A2E5F66657463684C6F7628297D656C73657B6966286A2E5F76616C7565732E66657463684C6F764D6F64653D';
wwv_flow_api.g_varchar2_table(122) := '3D3D22454E54455241424C4522297B6A2E5F656C656D656E74732E2466696C7465722E76616C286A2E5F76616C7565732E736561726368537472696E67297D7D6A2E5F76616C7565732E66657463684C6F764D6F64653D224449414C4F47223B69662861';
wwv_flow_api.g_varchar2_table(123) := '2E62726F777365722E6D736965297B6A2E5F656C656D656E74732E246469616C6F672E6373732822686569676874222C226175746F22297D7D2C636C6F73653A66756E6374696F6E28297B612822626F647922292E756E62696E6428226B6579646F776E';
wwv_flow_api.g_varchar2_table(124) := '222C6A2E5F68616E646C65426F64794B6579646F776E293B6128646F63756D656E74292E756E62696E6428226B6579646F776E222C6A2E5F64697361626C654172726F774B65795363726F6C6C696E67293B6128227461626C652E73757065726C6F762D';
wwv_flow_api.g_varchar2_table(125) := '7461626C652074626F647920747222292E64696528293B6A2E5F76616C7565732E66657463684C6F76496E50726F636573733D66616C73653B612874686973292E6469616C6F67282264657374726F7922293B6A2E5F656C656D656E74732E246469616C';
wwv_flow_api.g_varchar2_table(126) := '6F672E72656D6F766528293B6966286A2E5F76616C7565732E666F6375734F6E436C6F73653D3D3D22425554544F4E22297B6A2E5F656C656D656E74732E246F70656E427574746F6E2E666F63757328297D656C73657B6966286A2E5F76616C7565732E';
wwv_flow_api.g_varchar2_table(127) := '666F6375734F6E436C6F73653D3D3D22494E50555422297B6A2E5F656C656D656E74732E24646973706C6179496E7075742E666F63757328297D7D6966286A2E5F656C656D656E74732E24646973706C6179496E7075742E76616C28293D3D3D2222297B';
wwv_flow_api.g_varchar2_table(128) := '6A2E616C6C6F774368616E676550726F7061676174696F6E28293B6A2E5F656C656D656E74732E2468696464656E496E7075742E7472696767657228226368616E676522293B6A2E5F656C656D656E74732E24646973706C6179496E7075742E74726967';
wwv_flow_api.g_varchar2_table(129) := '67657228226368616E676522293B6A2E70726576656E744368616E676550726F7061676174696F6E28297D6A2E5F76616C7565732E666F6375734F6E436C6F73653D22425554544F4E227D7D293B6A2E5F696E6974456C656D656E747328293B6A2E5F65';
wwv_flow_api.g_varchar2_table(130) := '6C656D656E74732E246469616C6F672E63737328226F766572666C6F77222C2268696464656E22293B6A2E5F656C656D656E74732E246F757465724469616C6F672E63737328226D696E2D7769647468222C6D2B34322B22707822293B6A2E5F76616C75';
wwv_flow_api.g_varchar2_table(131) := '65732E6469616C6F67546F703D6A2E5F656C656D656E74732E2477696E646F772E68656967687428292A302E30353B6A2E5F76616C7565732E6469616C6F674C6566743D286A2E5F656C656D656E74732E2477696E646F772E776964746828292F32292D';
wwv_flow_api.g_varchar2_table(132) := '286A2E5F656C656D656E74732E246F757465724469616C6F672E6F7574657257696474682874727565292F32293B6966286A2E5F76616C7565732E6469616C6F674C6566743C30297B6A2E5F76616C7565732E6469616C6F674C6566743D307D6A2E5F65';
wwv_flow_api.g_varchar2_table(133) := '6C656D656E74732E246469616C6F672E6469616C6F6728226F7074696F6E222C22706F736974696F6E222C5B6A2E5F76616C7565732E6469616C6F674C6566742C6A2E5F76616C7565732E6469616C6F67546F705D293B6A2E5F69654E6F53656C656374';
wwv_flow_api.g_varchar2_table(134) := '5465787428293B612822626F647922292E62696E6428226B6579646F776E222C7B7569773A6A7D2C6A2E5F68616E646C65426F64794B6579646F776E293B6128646F63756D656E74292E62696E6428226B6579646F776E222C7B7569773A6A7D2C6A2E5F';
wwv_flow_api.g_varchar2_table(135) := '64697361626C654172726F774B65795363726F6C6C696E67293B6128227461626C652E73757065726C6F762D7461626C652074626F647920747222292E6C69766528226D6F757365656E746572222C7B7569773A6A7D2C6A2E5F68616E646C654D61696E';
wwv_flow_api.g_varchar2_table(136) := '54724D6F757365656E746572292E6C69766528226D6F7573656C65617665222C7B7569773A6A7D2C6A2E5F68616E646C654D61696E54724D6F7573656C65617665292E6C6976652822636C69636B222C7B7569773A6A7D2C6A2E5F68616E646C654D6169';
wwv_flow_api.g_varchar2_table(137) := '6E5472436C69636B293B6A2E5F656C656D656E74732E2477696E646F772E62696E642822726573697A65222C7B7569773A6A7D2C6A2E5F68616E646C6557696E646F77526573697A65293B6A2E5F656C656D656E74732E246469616C6F672E6469616C6F';
wwv_flow_api.g_varchar2_table(138) := '6728226F70656E22297D2C5F68616E646C6557696E646F77526573697A653A66756E6374696F6E2864297B76617220633D642E646174612E7569773B76617220623B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375';
wwv_flow_api.g_varchar2_table(139) := '706572204C4F56202D2048616E646C652057696E646F7720526573697A652028222B632E5F76616C7565732E617065784974656D49642B222922297D69662821632E5F656C656D656E74732E247461626C652E6C656E677468262621632E5F656C656D65';
wwv_flow_api.g_varchar2_table(140) := '6E74732E246E6F646174612E6C656E677468297B632E5F696E69745472616E7369656E74456C656D656E747328297D632E5F7570646174654C6F764D6561737572656D656E747328293B632E5F656C656D656E74732E246F757465724469616C6F672E63';
wwv_flow_api.g_varchar2_table(141) := '7373287B6865696768743A632E5F76616C7565732E6469616C6F674865696768742C77696474683A632E5F76616C7565732E6469616C6F6757696474687D293B632E5F656C656D656E74732E24777261707065722E637373287B6865696768743A632E5F';
wwv_flow_api.g_varchar2_table(142) := '76616C7565732E777261707065724865696768742C77696474683A632E5F76616C7565732E7772617070657257696474682C6F766572666C6F773A2268696464656E227D293B623D28632E5F656C656D656E74732E2477696E646F772E77696474682829';
wwv_flow_api.g_varchar2_table(143) := '2F32292D28632E5F656C656D656E74732E246F757465724469616C6F672E6F7574657257696474682874727565292F32293B696628623C30297B623D307D632E5F656C656D656E74732E246F757465724469616C6F672E637373287B746F703A632E5F76';
wwv_flow_api.g_varchar2_table(144) := '616C7565732E6469616C6F67546F702C6C6566743A627D293B632E5F656C656D656E74732E24777261707065722E63737328226F766572666C6F77222C226175746F22297D2C5F68616E646C65426F64794B6579646F776E3A66756E6374696F6E286729';
wwv_flow_api.g_varchar2_table(145) := '7B76617220663D672E646174612E7569773B76617220653B76617220633B76617220643B76617220623B696628662E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2048616E646C6520426F6479204B65';
wwv_flow_api.g_varchar2_table(146) := '79646F776E2028222B662E5F76616C7565732E617065784974656D49642B222922297D696628672E77686963683D3D3D3337262621662E5F656C656D656E74732E2470726576427574746F6E2E61747472282264697361626C65642229297B696628662E';
wwv_flow_api.g_varchar2_table(147) := '5F76616C7565732E626F64794B65794D6F64653D3D3D22524F5753454C45435422297B662E5F68616E646C6550726576427574746F6E436C69636B2867297D7D656C73657B696628672E77686963683D3D3D3339262621662E5F656C656D656E74732E24';
wwv_flow_api.g_varchar2_table(148) := '6E657874427574746F6E2E61747472282264697361626C65642229297B696628662E5F76616C7565732E626F64794B65794D6F64653D3D3D22524F5753454C45435422297B662E5F68616E646C654E657874427574746F6E436C69636B2867297D7D656C';
wwv_flow_api.g_varchar2_table(149) := '73657B696628672E77686963683D3D3D33382626672E746172676574213D662E5F656C656D656E74732E24636F6C756D6E53656C6563745B305D297B662E5F76616C7565732E626F64794B65794D6F64653D22524F5753454C454354223B662E5F656C65';
wwv_flow_api.g_varchar2_table(150) := '6D656E74732E24616374696F6E6C657373466F6375732E747269676765722822666F63757322293B653D662E5F656C656D656E74732E247461626C652E66696E64282274626F64793E747222292E686173282274642E75692D73746174652D686F766572';
wwv_flow_api.g_varchar2_table(151) := '22293B696628652E6C656E6774683D3D3D30297B633D662E5F656C656D656E74732E247461626C652E66696E64282274626F64793E74723A6C61737422297D656C73657B696628652E6765742830293D3D3D662E5F656C656D656E74732E247461626C65';
wwv_flow_api.g_varchar2_table(152) := '2E66696E64282274626F64793E74723A666972737422292E676574283029297B633D662E5F656C656D656E74732E247461626C652E66696E64282274626F64793E74723A6C61737422297D656C73657B633D652E7072657628297D7D652E747269676765';
wwv_flow_api.g_varchar2_table(153) := '7228226D6F7573656F757422293B632E7472696767657228226D6F7573656F76657222292E666F63757328293B643D632E706F736974696F6E28292E746F702D662E5F656C656D656E74732E24777261707065722E706F736974696F6E28292E746F703B';
wwv_flow_api.g_varchar2_table(154) := '623D7B746F703A302C626F74746F6D3A662E5F656C656D656E74732E24777261707065722E6F757465724865696768742874727565297D3B696628635B305D3D3D3D662E5F656C656D656E74732E247461626C652E66696E64282274626F64793E74723A';
wwv_flow_api.g_varchar2_table(155) := '666972737422295B305D297B662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F702830297D656C73657B696628643C622E746F70297B662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F7028662E5F656C65';
wwv_flow_api.g_varchar2_table(156) := '6D656E74732E24777261707065722E7363726F6C6C546F7028292B642D35297D656C73657B696628642B632E68656967687428293E622E626F74746F6D297B662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F7028662E5F656C65';
wwv_flow_api.g_varchar2_table(157) := '6D656E74732E24777261707065722E7363726F6C6C546F7028292B642B632E68656967687428292D622E626F74746F6D2B35297D7D7D7D656C73657B696628672E77686963683D3D3D34302626672E746172676574213D662E5F656C656D656E74732E24';
wwv_flow_api.g_varchar2_table(158) := '636F6C756D6E53656C6563745B305D297B662E5F76616C7565732E626F64794B65794D6F64653D22524F5753454C454354223B662E5F656C656D656E74732E24616374696F6E6C657373466F6375732E747269676765722822666F63757322293B653D66';
wwv_flow_api.g_varchar2_table(159) := '2E5F656C656D656E74732E247461626C652E66696E64282274626F64793E747222292E686173282274642E75692D73746174652D686F76657222293B696628652E6C656E6774683D3D3D30297B633D662E5F656C656D656E74732E247461626C652E6669';
wwv_flow_api.g_varchar2_table(160) := '6E64282274626F64793E74723A666972737422297D656C73657B696628652E6765742830293D3D3D662E5F656C656D656E74732E247461626C652E66696E64282274626F64793E74723A6C61737422292E676574283029297B633D662E5F656C656D656E';
wwv_flow_api.g_varchar2_table(161) := '74732E247461626C652E66696E64282274626F64793E74723A666972737422297D656C73657B633D652E6E65787428297D7D652E7472696767657228226D6F7573656F757422293B632E7472696767657228226D6F7573656F76657222292E666F637573';
wwv_flow_api.g_varchar2_table(162) := '28293B643D632E706F736974696F6E28292E746F702D662E5F656C656D656E74732E24777261707065722E706F736974696F6E28292E746F703B623D7B746F703A302C626F74746F6D3A662E5F656C656D656E74732E24777261707065722E6F75746572';
wwv_flow_api.g_varchar2_table(163) := '4865696768742874727565297D3B696628635B305D3D3D3D662E5F656C656D656E74732E247461626C652E66696E64282274626F64793E74723A666972737422295B305D297B662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F70';
wwv_flow_api.g_varchar2_table(164) := '2830297D656C73657B696628643C622E746F70297B662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F7028662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F7028292B642D35297D656C73657B696628642B';
wwv_flow_api.g_varchar2_table(165) := '632E68656967687428293E622E626F74746F6D297B662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F7028662E5F656C656D656E74732E24777261707065722E7363726F6C6C546F7028292B642B632E68656967687428292D622E';
wwv_flow_api.g_varchar2_table(166) := '626F74746F6D2B35297D7D7D7D656C73657B696628672E77686963683D3D3D3133297B696628662E5F76616C7565732E626F64794B65794D6F64653D3D3D22524F5753454C454354222626672E746172676574213D662E5F656C656D656E74732E24636F';
wwv_flow_api.g_varchar2_table(167) := '6C756D6E53656C6563745B305D2626672E746172676574213D662E5F656C656D656E74732E2470726576427574746F6E5B305D2626672E746172676574213D662E5F656C656D656E74732E246E657874427574746F6E5B305D2626672E74617267657421';
wwv_flow_api.g_varchar2_table(168) := '3D662E5F656C656D656E74732E24736561726368427574746F6E5B305D297B6128222373757065726C6F762D66657463682D726573756C74733E74626F64793E747222292E686173282274642E75692D73746174652D686F76657222292E747269676765';
wwv_flow_api.g_varchar2_table(169) := '722822636C69636B22293B672E70726576656E7444656661756C7428293B72657475726E2066616C73657D656C73657B696628662E5F76616C7565732E626F64794B65794D6F64653D3D3D22534541524348222626672E746172676574213D662E5F656C';
wwv_flow_api.g_varchar2_table(170) := '656D656E74732E24646973706C6179496E7075745B305D2626672E746172676574213D662E5F656C656D656E74732E24636F6C756D6E53656C6563745B305D2626672E746172676574213D662E5F656C656D656E74732E2470726576427574746F6E5B30';
wwv_flow_api.g_varchar2_table(171) := '5D2626672E746172676574213D662E5F656C656D656E74732E246E657874427574746F6E5B305D2626672E746172676574213D662E5F656C656D656E74732E24736561726368427574746F6E5B305D297B662E5F73656172636828297D7D7D7D7D7D7D7D';
wwv_flow_api.g_varchar2_table(172) := '2C5F68616E646C654F70656E436C69636B3A66756E6374696F6E2863297B76617220623D632E646174612E7569773B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2048616E646C65204F70';
wwv_flow_api.g_varchar2_table(173) := '656E20436C69636B22297D622E5F76616C7565732E66657463684C6F764D6F64653D224449414C4F47223B622E5F76616C7565732E736561726368537472696E673D22223B622E5F73686F774469616C6F6728297D2C5F68616E646C65456E7465726162';
wwv_flow_api.g_varchar2_table(174) := '6C654B6579646F776E3A66756E6374696F6E2863297B76617220623D632E646174612E7569773B696628632E77686963683D3D3D31332626622E5F656C656D656E74732E24646973706C6179496E7075742E76616C2829213D3D622E5F76616C7565732E';
wwv_flow_api.g_varchar2_table(175) := '6C617374446973706C617956616C7565297B622E5F76616C7565732E666F6375734F6E436C6F73653D22494E505554223B622E5F656C656D656E74732E24646973706C6179496E7075742E747269676765722822626C757222297D7D2C5F68616E646C65';
wwv_flow_api.g_varchar2_table(176) := '456E74657261626C65426C75723A66756E6374696F6E2863297B76617220623D632E646174612E7569773B696628622E5F656C656D656E74732E24646973706C6179496E7075742E76616C2829213D3D622E5F76616C7565732E6C617374446973706C61';
wwv_flow_api.g_varchar2_table(177) := '7956616C7565297B622E5F76616C7565732E6C617374446973706C617956616C75653D622E5F656C656D656E74732E24646973706C6179496E7075742E76616C28293B622E5F68616E646C65456E74657261626C654368616E676528297D7D2C5F68616E';
wwv_flow_api.g_varchar2_table(178) := '646C65456E74657261626C654368616E67653A66756E6374696F6E28297B76617220623D746869733B666F7228783D303B783C622E5F76616C7565732E6D6170546F4974656D732E6C656E6774683B782B2B297B247328622E5F76616C7565732E6D6170';
wwv_flow_api.g_varchar2_table(179) := '546F4974656D735B785D2C2222297D696628622E6F7074696F6E732E656E74657261626C653D3D3D622E5F76616C7565732E454E54455241424C455F52455354524943544544297B696628622E5F656C656D656E74732E24646973706C6179496E707574';
wwv_flow_api.g_varchar2_table(180) := '2E76616C2829297B622E5F76616C7565732E66657463684C6F764D6F64653D22454E54455241424C45223B622E5F66657463684C6F7628297D656C73657B622E5F656C656D656E74732E2468696464656E496E7075742E76616C282222297D7D656C7365';
wwv_flow_api.g_varchar2_table(181) := '7B696628622E6F7074696F6E732E656E74657261626C653D3D3D622E5F76616C7565732E454E54455241424C455F554E52455354524943544544297B622E5F656C656D656E74732E2468696464656E496E7075742E76616C28622E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(182) := '2E24646973706C6179496E7075742E76616C2829297D7D7D2C5F66657463684C6F763A66756E6374696F6E28297B76617220633D746869733B76617220623B76617220663B76617220653D303B76617220643B696628632E6F7074696F6E732E64656275';
wwv_flow_api.g_varchar2_table(183) := '67297B617065782E646562756728225375706572204C4F56202D204665746368204C4F562028222B632E5F76616C7565732E617065784974656D49642B222922297D696628632E5F76616C7565732E66657463684C6F76496E50726F63657373297B7265';
wwv_flow_api.g_varchar2_table(184) := '7475726E7D656C73657B632E5F76616C7565732E66657463684C6F76496E50726F636573733D747275657D696628632E5F76616C7565732E66657463684C6F764D6F64653D3D3D224449414C4F4722297B643D747275653B653D4D6174682E666C6F6F72';
wwv_flow_api.g_varchar2_table(185) := '284D6174682E72616E646F6D28292A3130303030303030303031293B632E5F656C656D656E74732E24777261707065722E64617461282266657463684C6F764964222C65293B632E5F64697361626C65536561726368427574746F6E28293B632E5F6469';
wwv_flow_api.g_varchar2_table(186) := '7361626C6550726576427574746F6E28293B632E5F64697361626C654E657874427574746F6E28293B632E5F656C656D656E74732E2477696E646F772E756E62696E642822726573697A65222C632E5F68616E646C6557696E646F77526573697A65293B';
wwv_flow_api.g_varchar2_table(187) := '696628632E5F656C656D656E74732E24636F6C756D6E53656C6563742E76616C28292626632E5F656C656D656E74732E2466696C7465722E76616C2829297B623D632E5F656C656D656E74732E24636F6C756D6E53656C6563742E76616C28293B632E5F';
wwv_flow_api.g_varchar2_table(188) := '76616C7565732E736561726368537472696E673D632E5F656C656D656E74732E2466696C7465722E76616C28297D656C73657B632E5F76616C7565732E736561726368537472696E673D22227D7D656C73657B696628632E5F76616C7565732E66657463';
wwv_flow_api.g_varchar2_table(189) := '684C6F764D6F64653D3D3D22454E54455241424C4522297B643D66616C73653B632E5F656C656D656E74732E246669656C647365742E616674657228273C7370616E20636C6173733D226C6F6164696E672D696E64696361746F722073757065726C6F76';
wwv_flow_api.g_varchar2_table(190) := '2D6C6F6164696E67223E3C2F7370616E3E27293B632E5F76616C7565732E706167696E6174696F6E3D22313A222B632E6F7074696F6E732E6D6178526F7773506572506167653B623D632E6F7074696F6E732E646973706C6179436F6C4E756D3B632E5F';
wwv_flow_api.g_varchar2_table(191) := '76616C7565732E736561726368537472696E673D632E5F656C656D656E74732E24646973706C6179496E7075742E76616C28297D7D663D7B705F666C6F775F69643A6128222370466C6F77496422292E76616C28292C705F666C6F775F737465705F6964';
wwv_flow_api.g_varchar2_table(192) := '3A6128222370466C6F7753746570496422292E76616C28292C705F696E7374616E63653A6128222370496E7374616E636522292E76616C28292C705F726571756573743A22504C5547494E3D222B632E6F7074696F6E732E616A61784964656E74696669';
wwv_flow_api.g_varchar2_table(193) := '65722C7830313A2246455443485F4C4F56222C7830323A632E5F76616C7565732E706167696E6174696F6E2C7830333A622C7830343A632E5F76616C7565732E736561726368537472696E672C7830353A652C705F6172675F6E616D65733A5B5D2C705F';
wwv_flow_api.g_varchar2_table(194) := '6172675F76616C7565733A5B5D7D3B6128632E6F7074696F6E732E646570656E64696E674F6E53656C6563746F72292E61646428632E6F7074696F6E732E706167654974656D73546F5375626D6974292E656163682866756E6374696F6E2867297B662E';
wwv_flow_api.g_varchar2_table(195) := '705F6172675F6E616D65735B675D3D746869732E69643B662E705F6172675F76616C7565735B675D3D24762874686973297D293B612E616A6178287B747970653A22504F5354222C75726C3A227777765F666C6F772E73686F77222C646174613A662C64';
wwv_flow_api.g_varchar2_table(196) := '617461547970653A2274657874222C6173796E633A642C737563636573733A66756E6374696F6E2867297B632E5F76616C7565732E616A617852657475726E3D673B632E5F68616E646C6546657463684C6F7652657475726E28297D7D297D2C5F68616E';
wwv_flow_api.g_varchar2_table(197) := '646C6546657463684C6F7652657475726E3A66756E6374696F6E28297B76617220653D746869733B76617220643B76617220633B76617220623D6128652E5F76616C7565732E616A617852657475726E293B696628652E6F7074696F6E732E6465627567';
wwv_flow_api.g_varchar2_table(198) := '297B617065782E646562756728225375706572204C4F56202D2048616E646C65204665746368204C4F562052657475726E2028222B652E5F76616C7565732E617065784974656D49642B222922297D696628652E5F76616C7565732E66657463684C6F76';
wwv_flow_api.g_varchar2_table(199) := '4D6F64653D3D3D224449414C4F472226264E756D626572286128652E5F76616C7565732E616A617852657475726E292E617474722822646174612D66657463682D6C6F762D6964222929213D3D652E5F656C656D656E74732E24777261707065722E6461';
wwv_flow_api.g_varchar2_table(200) := '7461282266657463684C6F7649642229297B696628652E6F7074696F6E732E6465627567297B617065782E646562756728222E2E2E416A61782072657475726E206D69736D61746368202D2065786974696E67206561726C7922297D72657475726E7D63';
wwv_flow_api.g_varchar2_table(201) := '3D622E66696E642822747222292E6C656E6774682D313B696628652E5F76616C7565732E66657463684C6F764D6F64653D3D3D22454E54455241424C4522297B652E5F656C656D656E74732E246669656C647365742E6E65787428227370616E2E6C6F61';
wwv_flow_api.g_varchar2_table(202) := '64696E672D696E64696361746F7222292E72656D6F766528293B696628633D3D3D31297B696628652E6F7074696F6E732E6465627567297B617065782E646562756728222E2E2E466F756E64206578616374206D617463682C2073657474696E67206469';
wwv_flow_api.g_varchar2_table(203) := '73706C617920616E642072657475726E20696E7075747322297D652E5F76616C7565732E66657463684C6F76496E50726F636573733D66616C73653B652E5F656C656D656E74732E2473656C6563746564526F773D622E66696E64282274723A65712831';
wwv_flow_api.g_varchar2_table(204) := '2922293B652E5F73657456616C75657346726F6D526F7728293B72657475726E7D656C73657B696628652E6F7074696F6E732E6465627567297B617065782E646562756728222E2E2E4578616374206D61746368206E6F7420666F756E642C206F70656E';
wwv_flow_api.g_varchar2_table(205) := '696E67206469616C6F6722297D652E5F656C656D656E74732E2468696464656E496E7075742E76616C282222293B652E5F656C656D656E74732E24646973706C6179496E7075742E76616C282222293B652E5F76616C7565732E6C617374446973706C61';
wwv_flow_api.g_varchar2_table(206) := '7956616C75653D22223B652E5F73686F774469616C6F6728297D7D652E5F656C656D656E74732E24777261707065722E66616465546F28302C30292E637373287B77696474683A223130303030307078222C6865696768743A22307078222C6F76657266';
wwv_flow_api.g_varchar2_table(207) := '6C6F773A2268696464656E227D292E656D70747928293B696628633D3D3D30297B643D273C64697620636C6173733D2275692D7769646765742073757065726C6F762D6E6F64617461223E5C6E2020203C64697620636C6173733D2275692D7374617465';
wwv_flow_api.g_varchar2_table(208) := '2D686967686C696768742075692D636F726E65722D616C6C22207374796C653D2270616464696E673A2030707420302E37656D3B223E5C6E2020202020203C703E5C6E2020202020203C7370616E20636C6173733D2275692D69636F6E2075692D69636F';
wwv_flow_api.g_varchar2_table(209) := '6E2D616C65727422207374796C653D22666C6F61743A206C6566743B206D617267696E2D72696768743A302E33656D3B223E3C2F7370616E3E5C6E202020202020272B652E6F7074696F6E732E6E6F44617461466F756E644D73672B225C6E2020202020';
wwv_flow_api.g_varchar2_table(210) := '203C2F703E5C6E2020203C2F6469763E5C6E3C2F6469763E5C6E223B652E5F656C656D656E74732E24777261707065722E68746D6C2864297D656C73657B652E5F656C656D656E74732E24777261707065722E68746D6C28652E5F76616C7565732E616A';
wwv_flow_api.g_varchar2_table(211) := '617852657475726E293B6128227461626C652E73757065726C6F762D7461626C652074683A666972737422292E616464436C617373282275692D636F726E65722D746C22293B6128227461626C652E73757065726C6F762D7461626C652074683A6C6173';
wwv_flow_api.g_varchar2_table(212) := '7422292E616464436C617373282275692D636F726E65722D747222293B6128227461626C652E73757065726C6F762D7461626C652074723A6C6173742074643A666972737422292E616464436C617373282275692D636F726E65722D626C22293B612822';
wwv_flow_api.g_varchar2_table(213) := '7461626C652E73757065726C6F762D7461626C652074723A6C6173742074643A6C61737422292E616464436C617373282275692D636F726E65722D627222297D652E5F69654E6F53656C6563745465787428293B652E5F696E69745472616E7369656E74';
wwv_flow_api.g_varchar2_table(214) := '456C656D656E747328293B652E5F76616C7565732E6D6F7265526F77733D28652E5F656C656D656E74732E246D6F7265526F77732E76616C28293D3D3D225922293F747275653A66616C73653B652E5F686967686C6967687453656C6563746564526F77';
wwv_flow_api.g_varchar2_table(215) := '28293B652E5F757064617465506167696E6174696F6E446973706C617928293B652E5F656E61626C65536561726368427574746F6E28293B696628652E5F76616C7565732E6D6F7265526F7773297B652E5F656E61626C654E657874427574746F6E2829';
wwv_flow_api.g_varchar2_table(216) := '7D656C73657B652E5F64697361626C654E657874427574746F6E28297D696628652E5F656C656D656E74732E247461626C652E6C656E677468297B617065782E64656275672822777261707065722077696474683A20222B652E5F656C656D656E74732E';
wwv_flow_api.g_varchar2_table(217) := '24777261707065722E77696474682829293B617065782E646562756728227461626C652077696474683A20222B652E5F656C656D656E74732E247461626C652E77696474682829293B652E5F656C656D656E74732E247461626C652E776964746828652E';
wwv_flow_api.g_varchar2_table(218) := '5F656C656D656E74732E247461626C652E77696474682829297D656C73657B696628652E5F656C656D656E74732E246E6F646174612E6C656E677468297B652E5F656C656D656E74732E246E6F646174612E776964746828652E5F656C656D656E74732E';
wwv_flow_api.g_varchar2_table(219) := '246E6F646174612E77696474682829297D7D652E5F726573697A654D6F64616C28293B652E5F76616C7565732E66657463684C6F76496E50726F636573733D66616C73657D2C5F726573697A654D6F64616C3A66756E6374696F6E28297B76617220623D';
wwv_flow_api.g_varchar2_table(220) := '746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20526573697A65204D6F64616C2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F757064617465';
wwv_flow_api.g_varchar2_table(221) := '4C6F764D6561737572656D656E747328293B696628622E6F7074696F6E732E6566666563747353706565643D3D3D30297B622E5F656C656D656E74732E246F757465724469616C6F672E637373287B6865696768743A622E5F76616C7565732E6469616C';
wwv_flow_api.g_varchar2_table(222) := '6F674865696768742C77696474683A622E5F76616C7565732E6469616C6F6757696474682C6C6566743A622E5F76616C7565732E6469616C6F674C6566747D293B696628622E5F656C656D656E74732E246E6F646174612E6C656E677468297B622E5F65';
wwv_flow_api.g_varchar2_table(223) := '6C656D656E74732E246E6F646174612E776964746828622E5F76616C7565732E777261707065725769647468297D622E5F656C656D656E74732E24777261707065722E637373287B6865696768743A622E5F76616C7565732E7772617070657248656967';
wwv_flow_api.g_varchar2_table(224) := '68742C77696474683A622E5F76616C7565732E7772617070657257696474682C6F766572666C6F773A226175746F227D292E66616465546F28622E6F7074696F6E732E6566666563747353706565642C31293B622E5F656C656D656E74732E2477696E64';
wwv_flow_api.g_varchar2_table(225) := '6F772E62696E642822726573697A65222C7B7569773A627D2C622E5F68616E646C6557696E646F77526573697A65297D656C73657B622E5F656C656D656E74732E246F757465724469616C6F672E616E696D617465287B6865696768743A622E5F76616C';
wwv_flow_api.g_varchar2_table(226) := '7565732E6469616C6F674865696768747D2C622E6F7074696F6E732E6566666563747353706565642C66756E6374696F6E28297B622E5F656C656D656E74732E246F757465724469616C6F672E616E696D617465287B77696474683A622E5F76616C7565';
wwv_flow_api.g_varchar2_table(227) := '732E6469616C6F6757696474682C6C6566743A622E5F76616C7565732E6469616C6F674C6566747D2C622E6F7074696F6E732E6566666563747353706565642C66756E6374696F6E28297B696628622E5F656C656D656E74732E246E6F646174612E6C65';
wwv_flow_api.g_varchar2_table(228) := '6E677468297B622E5F656C656D656E74732E246E6F646174612E776964746828622E5F76616C7565732E777261707065725769647468297D622E5F656C656D656E74732E24777261707065722E637373287B6865696768743A622E5F76616C7565732E77';
wwv_flow_api.g_varchar2_table(229) := '7261707065724865696768742C77696474683A622E5F76616C7565732E7772617070657257696474682C6F766572666C6F773A226175746F227D292E66616465546F28622E6F7074696F6E732E6566666563747353706565642C31293B622E5F656C656D';
wwv_flow_api.g_varchar2_table(230) := '656E74732E2477696E646F772E62696E642822726573697A65222C7B7569773A627D2C622E5F68616E646C6557696E646F77526573697A65297D297D297D7D2C5F7365617263683A66756E6374696F6E28297B76617220623D746869733B696628622E6F';
wwv_flow_api.g_varchar2_table(231) := '7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D205365617263682028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F76616C7565732E637572506167653D313B622E5F76616C';
wwv_flow_api.g_varchar2_table(232) := '7565732E706167696E6174696F6E3D22313A222B622E6F7074696F6E732E6D6178526F7773506572506167653B696628622E5F656C656D656E74732E2466696C7465722E76616C28293D3D3D2222297B622E5F656C656D656E74732E24636F6C756D6E53';
wwv_flow_api.g_varchar2_table(233) := '656C6563742E76616C282222293B622E5F68616E646C65436F6C756D6E4368616E676528297D622E5F64697361626C6550726576427574746F6E28293B622E5F76616C7565732E66657463684C6F764D6F64653D224449414C4F47223B622E5F66657463';
wwv_flow_api.g_varchar2_table(234) := '684C6F7628297D2C5F757064617465506167696E6174696F6E446973706C61793A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2055';
wwv_flow_api.g_varchar2_table(235) := '706461746520506167696E6174696F6E20446973706C61792028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656C656D656E74732E24706167696E6174696F6E446973706C61792E68746D6C28225061676520222B622E';
wwv_flow_api.g_varchar2_table(236) := '5F76616C7565732E63757250616765297D2C5F64697361626C65536561726368427574746F6E3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C';
wwv_flow_api.g_varchar2_table(237) := '4F56202D2044697361626C652053656172636820427574746F6E2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F64697361626C65427574746F6E282273656172636822297D2C5F64697361626C655072657642757474';
wwv_flow_api.g_varchar2_table(238) := '6F6E3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2044697361626C65205072657620427574746F6E2028222B622E5F76616C7565';
wwv_flow_api.g_varchar2_table(239) := '732E617065784974656D49642B222922297D622E5F64697361626C65427574746F6E28227072657622297D2C5F64697361626C654E657874427574746F6E3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465';
wwv_flow_api.g_varchar2_table(240) := '627567297B617065782E646562756728225375706572204C4F56202D2044697361626C65204E65787420427574746F6E2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F64697361626C65427574746F6E28226E657874';
wwv_flow_api.g_varchar2_table(241) := '22297D2C5F64697361626C65427574746F6E3A66756E6374696F6E2864297B76617220633D746869733B76617220623B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2044697361626C6520';
wwv_flow_api.g_varchar2_table(242) := '427574746F6E2028222B632E5F76616C7565732E617065784974656D49642B222922297D696628643D3D2273656172636822297B623D632E5F656C656D656E74732E24736561726368427574746F6E3B622E61747472282264697361626C6564222C2264';
wwv_flow_api.g_varchar2_table(243) := '697361626C656422292E72656D6F7665436C617373282275692D73746174652D686F76657222292E72656D6F7665436C617373282275692D73746174652D666F63757322292E6373732822637572736F72222C2264656661756C7422293B72657475726E';
wwv_flow_api.g_varchar2_table(244) := '7D656C73657B696628643D3D227072657622297B623D632E5F656C656D656E74732E2470726576427574746F6E7D656C73657B696628643D3D226E65787422297B623D632E5F656C656D656E74732E246E657874427574746F6E7D7D7D622E6174747228';
wwv_flow_api.g_varchar2_table(245) := '2264697361626C6564222C2264697361626C656422292E72656D6F7665436C617373282275692D73746174652D686F76657222292E72656D6F7665436C617373282275692D73746174652D666F63757322292E637373287B6F7061636974793A22302E35';
wwv_flow_api.g_varchar2_table(246) := '222C637572736F723A2264656661756C74227D297D2C5F656E61626C65536561726368427574746F6E3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E6465627567282253757065';
wwv_flow_api.g_varchar2_table(247) := '72204C4F56202D20456E61626C652053656172636820427574746F6E2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656E61626C65427574746F6E282273656172636822297D2C5F656E61626C655072657642757474';
wwv_flow_api.g_varchar2_table(248) := '6F6E3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20456E61626C65205072657620427574746F6E2028222B622E5F76616C756573';
wwv_flow_api.g_varchar2_table(249) := '2E617065784974656D49642B222922297D622E5F656E61626C65427574746F6E28227072657622297D2C5F656E61626C654E657874427574746F6E3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567';
wwv_flow_api.g_varchar2_table(250) := '297B617065782E646562756728225375706572204C4F56202D20456E61626C65204E65787420427574746F6E2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656E61626C65427574746F6E28226E65787422297D2C5F';
wwv_flow_api.g_varchar2_table(251) := '656E61626C65427574746F6E3A66756E6374696F6E2864297B76617220633D746869733B76617220623B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20456E61626C6520427574746F6E20';
wwv_flow_api.g_varchar2_table(252) := '28222B632E5F76616C7565732E617065784974656D49642B222922297D696628643D3D2273656172636822297B623D632E5F656C656D656E74732E24736561726368427574746F6E3B622E72656D6F766541747472282264697361626C656422292E6373';
wwv_flow_api.g_varchar2_table(253) := '732822637572736F72222C22706F696E74657222293B72657475726E7D656C73657B696628643D3D227072657622297B623D632E5F656C656D656E74732E2470726576427574746F6E7D656C73657B696628643D3D226E65787422297B623D632E5F656C';
wwv_flow_api.g_varchar2_table(254) := '656D656E74732E246E657874427574746F6E7D7D7D622E72656D6F766541747472282264697361626C656422292E637373287B6F7061636974793A2231222C637572736F723A22706F696E746572227D297D2C5F686967686C6967687453656C65637465';
wwv_flow_api.g_varchar2_table(255) := '64526F773A66756E6374696F6E28297B76617220633D746869733B76617220623D6128277461626C652E73757065726C6F762D7461626C652074626F64792074725B646174612D72657475726E3D22272B632E5F656C656D656E74732E2468696464656E';
wwv_flow_api.g_varchar2_table(256) := '496E7075742E76616C28292B27225D27293B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20486967686C696768742053656C656374656420526F772028222B632E5F76616C7565732E6170';
wwv_flow_api.g_varchar2_table(257) := '65784974656D49642B222922297D622E6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D64656661756C7422292E616464436C617373282275692D73746174652D61637469766522297D2C5F68616E646C654D';
wwv_flow_api.g_varchar2_table(258) := '61696E54724D6F757365656E7465723A66756E6374696F6E2865297B76617220643D652E646174612E7569773B76617220623D6128652E63757272656E74546172676574293B76617220633D642E5F656C656D656E74732E247461626C652E66696E6428';
wwv_flow_api.g_varchar2_table(259) := '2274626F64793E747222292E686173282274642E75692D73746174652D686F76657222293B696628642E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F563A205F68616E646C654D61696E54724D6F757365656E';
wwv_flow_api.g_varchar2_table(260) := '7465722028222B642E5F76616C7565732E617065784974656D49642B222922297D696628632E6C656E677468297B696628632E6368696C6472656E282274642E75692D73746174652D686F7665722D61637469766522292E6C656E677468297B632E6368';
wwv_flow_api.g_varchar2_table(261) := '696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D686F7665722075692D73746174652D686F7665722D61637469766522292E616464436C617373282275692D73746174652D61637469766522297D656C73657B632E';
wwv_flow_api.g_varchar2_table(262) := '6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D686F76657222292E616464436C617373282275692D73746174652D64656661756C7422297D7D696628622E6368696C6472656E282274643A6E6F74282E7569';
wwv_flow_api.g_varchar2_table(263) := '2D73746174652D6163746976652922292E6C656E677468297B622E6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D64656661756C7422292E616464436C617373282275692D73746174652D686F7665722229';
wwv_flow_api.g_varchar2_table(264) := '7D656C73657B622E6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D61637469766522292E616464436C617373282275692D73746174652D686F7665722075692D73746174652D686F7665722D616374697665';
wwv_flow_api.g_varchar2_table(265) := '22297D7D2C5F68616E646C654D61696E54724D6F7573656C656176653A66756E6374696F6E2864297B76617220633D642E646174612E7569773B76617220623D6128642E63757272656E74546172676574293B696628632E6F7074696F6E732E64656275';
wwv_flow_api.g_varchar2_table(266) := '67297B617065782E646562756728225375706572204C4F563A205F68616E646C654D61696E54724D6F7573656C656176652028222B632E5F76616C7565732E617065784974656D49642B222922297D696628622E6368696C6472656E282274642E75692D';
wwv_flow_api.g_varchar2_table(267) := '73746174652D686F7665722D61637469766522292E6C656E677468297B622E6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D686F7665722075692D73746174652D686F7665722D61637469766522292E6164';
wwv_flow_api.g_varchar2_table(268) := '64436C617373282275692D73746174652D61637469766522297D656C73657B622E6368696C6472656E2822746422292E72656D6F7665436C617373282275692D73746174652D686F76657222292E616464436C617373282275692D73746174652D646566';
wwv_flow_api.g_varchar2_table(269) := '61756C7422297D7D2C5F68616E646C654D61696E5472436C69636B3A66756E6374696F6E2863297B76617220623D632E646174612E7569773B622E5F656C656D656E74732E2473656C6563746564526F773D6128632E63757272656E7454617267657429';
wwv_flow_api.g_varchar2_table(270) := '3B622E5F73657456616C75657346726F6D526F7728297D2C5F73657456616C75657346726F6D526F773A66756E6374696F6E28297B76617220653D746869733B76617220643B76617220633D652E5F656C656D656E74732E2473656C6563746564526F77';
wwv_flow_api.g_varchar2_table(271) := '2E617474722822646174612D72657475726E22293B76617220623D652E5F656C656D656E74732E2473656C6563746564526F772E617474722822646174612D646973706C617922293B696628652E6F7074696F6E732E6465627567297B617065782E6465';
wwv_flow_api.g_varchar2_table(272) := '62756728225375706572204C4F56202D205365742076616C7565732066726F6D20726F772028222B652E5F76616C7565732E617065784974656D49642B222922293B617065782E646562756728272E2E2E72657475726E56616C3A2022272B632B272227';
wwv_flow_api.g_varchar2_table(273) := '293B617065782E646562756728272E2E2E646973706C617956616C3A2022272B622B272227297D643D652E5F656C656D656E74732E2468696464656E496E7075742E76616C2829213D3D633B696628652E6F7074696F6E732E6465627567297B61706578';
wwv_flow_api.g_varchar2_table(274) := '2E646562756728272E2E2E76616C4368616E6765643A2022272B642B272227297D652E5F656C656D656E74732E2468696464656E496E7075742E76616C2863293B652E5F656C656D656E74732E24646973706C6179496E7075742E76616C2862293B652E';
wwv_flow_api.g_varchar2_table(275) := '5F76616C7565732E6C617374446973706C617956616C75653D623B666F7228783D303B783C652E5F76616C7565732E6D6170546F4974656D732E6C656E6774683B782B2B297B696628652E5F697348696464656E436F6C28652E5F76616C7565732E6D61';
wwv_flow_api.g_varchar2_table(276) := '7046726F6D436F6C735B785D29297B247328652E5F76616C7565732E6D6170546F4974656D735B785D2C652E5F656C656D656E74732E2473656C6563746564526F772E617474722822646174612D636F6C222B652E5F76616C7565732E6D617046726F6D';
wwv_flow_api.g_varchar2_table(277) := '436F6C735B785D2B222D76616C75652229297D656C73657B247328652E5F76616C7565732E6D6170546F4974656D735B785D2C652E5F656C656D656E74732E2473656C6563746564526F772E6368696C6472656E282274642E61736C2D636F6C222B652E';
wwv_flow_api.g_varchar2_table(278) := '5F76616C7565732E6D617046726F6D436F6C735B785D292E746578742829297D7D696628652E5F76616C7565732E66657463684C6F764D6F64653D3D3D224449414C4F4722297B696628652E6F7074696F6E732E6465627567297B617065782E64656275';
wwv_flow_api.g_varchar2_table(279) := '6728222E2E2E496E206469616C6F67206D6F64653B20636C6F7365206469616C6F6722297D652E5F656C656D656E74732E246469616C6F672E6469616C6F672822636C6F736522297D69662864297B652E616C6C6F774368616E676550726F7061676174';
wwv_flow_api.g_varchar2_table(280) := '696F6E28293B652E5F656C656D656E74732E2468696464656E496E7075742E7472696767657228226368616E676522293B652E5F656C656D656E74732E24646973706C6179496E7075742E7472696767657228226368616E676522293B652E7072657665';
wwv_flow_api.g_varchar2_table(281) := '6E744368616E676550726F7061676174696F6E28297D7D2C5F68616E646C65536561726368427574746F6E436C69636B3A66756E6374696F6E2863297B76617220623D632E646174612E7569773B696628622E6F7074696F6E732E6465627567297B6170';
wwv_flow_api.g_varchar2_table(282) := '65782E646562756728225375706572204C4F56202D2048616E646C652053656172636820427574746F6E20436C69636B2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F73656172636828297D2C5F68616E646C655072';
wwv_flow_api.g_varchar2_table(283) := '6576427574746F6E436C69636B3A66756E6374696F6E2865297B76617220643D652E646174612E7569773B76617220623B76617220633B696628642E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2048';
wwv_flow_api.g_varchar2_table(284) := '616E646C65205072657620427574746F6E20436C69636B2028222B642E5F76616C7565732E617065784974656D49642B222922297D642E5F76616C7565732E66657463684C6F764D6F64653D224449414C4F47223B642E5F76616C7565732E6375725061';
wwv_flow_api.g_varchar2_table(285) := '67653D642E5F76616C7565732E637572506167652D313B696628642E5F76616C7565732E637572506167653D3D3D31297B623D313B633D642E6F7074696F6E732E6D6178526F7773506572506167653B642E5F76616C7565732E706167696E6174696F6E';
wwv_flow_api.g_varchar2_table(286) := '3D622B223A222B633B642E5F66657463684C6F7628293B642E5F64697361626C6550726576427574746F6E28297D656C73657B623D2828642E5F76616C7565732E637572506167652D31292A642E6F7074696F6E732E6D6178526F777350657250616765';
wwv_flow_api.g_varchar2_table(287) := '292B313B633D642E5F76616C7565732E637572506167652A642E6F7074696F6E732E6D6178526F7773506572506167653B642E5F76616C7565732E706167696E6174696F6E3D622B223A222B633B642E5F66657463684C6F7628293B642E5F656E61626C';
wwv_flow_api.g_varchar2_table(288) := '6550726576427574746F6E28297D7D2C5F68616E646C654E657874427574746F6E436C69636B3A66756E6374696F6E2865297B76617220643D652E646174612E7569773B76617220623B76617220633B696628642E6F7074696F6E732E6465627567297B';
wwv_flow_api.g_varchar2_table(289) := '617065782E646562756728225375706572204C4F56202D2048616E646C65204E65787420427574746F6E20436C69636B2028222B642E5F76616C7565732E617065784974656D49642B222922297D642E5F76616C7565732E66657463684C6F764D6F6465';
wwv_flow_api.g_varchar2_table(290) := '3D224449414C4F47223B642E5F76616C7565732E637572506167653D642E5F76616C7565732E637572506167652B313B623D2828642E5F76616C7565732E637572506167652D31292A642E6F7074696F6E732E6D6178526F777350657250616765292B31';
wwv_flow_api.g_varchar2_table(291) := '3B633D642E5F76616C7565732E637572506167652A642E6F7074696F6E732E6D6178526F7773506572506167653B642E5F76616C7565732E706167696E6174696F6E3D622B223A222B633B642E5F66657463684C6F7628293B642E5F656C656D656E7473';
wwv_flow_api.g_varchar2_table(292) := '2E24706167696E6174696F6E446973706C61792E68746D6C28225061676520222B642E5F76616C7565732E63757250616765293B696628642E5F76616C7565732E637572506167653E3D322626642E5F656C656D656E74732E2470726576427574746F6E';
wwv_flow_api.g_varchar2_table(293) := '2E61747472282264697361626C65642229297B642E5F656E61626C6550726576427574746F6E28297D7D2C5F726566726573683A66756E6374696F6E28297B76617220633D746869733B76617220623D632E5F656C656D656E74732E2468696464656E49';
wwv_flow_api.g_varchar2_table(294) := '6E7075742E76616C28293B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20526566726573682028222B632E5F76616C7565732E617065784974656D49642B222922297D632E5F656C656D65';
wwv_flow_api.g_varchar2_table(295) := '6E74732E24646973706C6179496E7075742E747269676765722822617065786265666F72657265667265736822293B632E5F656C656D656E74732E2468696464656E496E7075742E76616C282222293B632E5F656C656D656E74732E24646973706C6179';
wwv_flow_api.g_varchar2_table(296) := '496E7075742E76616C282222293B632E5F76616C7565732E6C617374446973706C617956616C75653D22223B666F7228783D303B783C632E5F76616C7565732E6D6170546F4974656D732E6C656E6774683B782B2B297B247328632E5F76616C7565732E';
wwv_flow_api.g_varchar2_table(297) := '6D6170546F4974656D735B785D2C2222297D632E5F656C656D656E74732E24646973706C6179496E7075742E7472696767657228226170657861667465727265667265736822293B69662862213D3D632E5F656C656D656E74732E2468696464656E496E';
wwv_flow_api.g_varchar2_table(298) := '7075742E76616C2829297B632E616C6C6F774368616E676550726F7061676174696F6E28293B632E5F656C656D656E74732E2468696464656E496E7075742E7472696767657228226368616E676522293B632E5F656C656D656E74732E24646973706C61';
wwv_flow_api.g_varchar2_table(299) := '79496E7075742E7472696767657228226368616E676522293B632E70726576656E744368616E676550726F7061676174696F6E28297D72657475726E2066616C73657D2C5F7570646174654C6F764D6561737572656D656E74733A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(300) := '297B76617220713D746869733B766172206C3B766172206E3D32353B766172206D3D66616C73653B76617220633D66616C73653B76617220643D747275653B766172206B3B76617220733B76617220663B76617220683B76617220623B76617220723B76';
wwv_flow_api.g_varchar2_table(301) := '617220653B766172206A3B76617220703B766172206F3B76617220673B696628712E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20557064617465204C4F56204D6561737572656D656E74732028222B';
wwv_flow_api.g_varchar2_table(302) := '712E5F76616C7565732E617065784974656D49642B222922297D69662821712E5F656C656D656E74732E246E6F646174612E6C656E677468297B6C3D712E5F656C656D656E74732E247461626C657D656C73657B643D66616C73653B6C3D712E5F656C65';
wwv_flow_api.g_varchar2_table(303) := '6D656E74732E246E6F646174617D6B3D6128226469762E73757065726C6F762D6469616C6F67206469762E75692D6469616C6F672D7469746C6562617222292E6F757465724865696768742874727565292B712E5F656C656D656E74732E24627574746F';
wwv_flow_api.g_varchar2_table(304) := '6E436F6E7461696E65722E6F757465724865696768742874727565292B6128226469762E73757065726C6F762D6469616C6F67206469762E75692D6469616C6F672D627574746F6E70616E6522292E6F757465724865696768742874727565292B28712E';
wwv_flow_api.g_varchar2_table(305) := '5F656C656D656E74732E246469616C6F672E6F757465724865696768742874727565292D712E5F656C656D656E74732E246469616C6F672E6865696768742829292B28712E5F656C656D656E74732E24777261707065722E6F7574657248656967687428';
wwv_flow_api.g_varchar2_table(306) := '74727565292D712E5F656C656D656E74732E24777261707065722E6865696768742829293B733D712E5F656C656D656E74732E246F757465724469616C6F672E63737328226D61782D68656967687422293B696628712E5F76616C7565732E7065726365';
wwv_flow_api.g_varchar2_table(307) := '6E745265674578702E74657374287329297B733D7061727365466C6F61742873293B733D712E5F656C656D656E74732E2477696E646F772E68656967687428292A28732F313030297D656C73657B696628712E5F76616C7565732E706978656C52656745';
wwv_flow_api.g_varchar2_table(308) := '78702E74657374287329297B733D7061727365466C6F61742873297D656C73657B733D712E5F656C656D656E74732E2477696E646F772E68656967687428292A302E397D7D733D712E5F656C656D656E74732E2477696E646F772E68656967687428292A';
wwv_flow_api.g_varchar2_table(309) := '302E393B683D712E5F656C656D656E74732E246469616C6F672E6F7574657257696474682874727565292D712E5F656C656D656E74732E246469616C6F672E776964746828293B623D712E5F656C656D656E74732E246F757465724469616C6F672E6373';
wwv_flow_api.g_varchar2_table(310) := '7328226D696E2D776964746822293B696628712E5F76616C7565732E70657263656E745265674578702E74657374286229297B623D7061727365466C6F61742862293B623D712E5F656C656D656E74732E2477696E646F772E776964746828292A28622F';
wwv_flow_api.g_varchar2_table(311) := '313030297D656C73657B696628712E5F76616C7565732E706978656C5265674578702E74657374286229297B623D7061727365466C6F61742862297D656C73657B623D712E5F656C656D656E74732E24627574746F6E436F6E7461696E65722E6F757465';
wwv_flow_api.g_varchar2_table(312) := '7257696474682874727565297D7D723D712E5F656C656D656E74732E246F757465724469616C6F672E63737328226D61782D776964746822293B696628712E5F76616C7565732E70657263656E745265674578702E74657374287229297B723D70617273';
wwv_flow_api.g_varchar2_table(313) := '65466C6F61742872293B723D712E5F656C656D656E74732E2477696E646F772E776964746828292A28722F313030297D656C73657B696628712E5F76616C7565732E706978656C5265674578702E74657374287229297B723D7061727365466C6F617428';
wwv_flow_api.g_varchar2_table(314) := '72297D656C73657B723D712E5F656C656D656E74732E2477696E646F772E776964746828292A302E397D7D723D712E5F656C656D656E74732E2477696E646F772E776964746828292A302E393B6966286B2B6C2E6F757465724865696768742874727565';
wwv_flow_api.g_varchar2_table(315) := '293E73297B6D3D747275653B663D732D6B7D656C73657B663D6C2E6F757465724865696768742874727565297D69662864297B653D6C2E6F7574657257696474682874727565293B6966286D297B653D652B6E7D696628682B653C62297B653D622D687D';
wwv_flow_api.g_varchar2_table(316) := '656C73657B696628682B653E72297B633D747275653B653D722D683B696628653C62297B653D622D687D7D7D696628632626216D297B6966286B2B6C2E6F757465724865696768742874727565292B6E3E73297B6D3D747275653B663D732D6B7D656C73';
wwv_flow_api.g_varchar2_table(317) := '657B663D6C2E6F757465724865696768742874727565292B6E7D7D7D656C73657B653D622D687D703D6B2B663B6A3D682B653B712E5F76616C7565732E777261707065724865696768743D663B712E5F76616C7565732E7772617070657257696474683D';
wwv_flow_api.g_varchar2_table(318) := '653B712E5F76616C7565732E6469616C6F674865696768743D703B712E5F76616C7565732E6469616C6F6757696474683D6A3B6F3D28712E5F76616C7565732E6469616C6F6757696474682D712E5F656C656D656E74732E246F757465724469616C6F67';
wwv_flow_api.g_varchar2_table(319) := '2E77696474682829292F323B673D712E5F656C656D656E74732E246F757465724469616C6F672E63737328226C65667422293B696628712E5F76616C7565732E70657263656E745265674578702E74657374286729297B673D7061727365466C6F617428';
wwv_flow_api.g_varchar2_table(320) := '67293B673D712E5F656C656D656E74732E2477696E646F772E776964746828292A28672F313030297D656C73657B696628712E5F76616C7565732E706978656C5265674578702E74657374286729297B673D7061727365466C6F61742867297D656C7365';
wwv_flow_api.g_varchar2_table(321) := '7B673D307D7D673D672D6F3B696628673C30297B673D307D712E5F76616C7565732E6469616C6F674C6566743D673B712E5F76616C7565732E6469616C6F67546F703D712E5F656C656D656E74732E2477696E646F772E68656967687428292A302E3035';
wwv_flow_api.g_varchar2_table(322) := '2B6128646F63756D656E74292E7363726F6C6C546F7028297D2C5F7570646174655374796C656446696C7465723A66756E6374696F6E28297B76617220643D746869733B76617220633D642E5F656C656D656E74732E2466696C7465722E637373282262';
wwv_flow_api.g_varchar2_table(323) := '61636B67726F756E642D636F6C6F7222293B76617220663D642E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D696D61676522293B76617220673D642E5F656C656D656E74732E2466696C7465722E637373282262';
wwv_flow_api.g_varchar2_table(324) := '61636B67726F756E642D72657065617422293B76617220623D642E5F656C656D656E74732E2466696C7465722E63737328226261636B67726F756E642D6174746163686D656E7422293B76617220653D642E5F656C656D656E74732E2466696C7465722E';
wwv_flow_api.g_varchar2_table(325) := '63737328226261636B67726F756E642D706F736974696F6E22293B696628642E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20557064617465205374796C65642046696C7465722028222B642E5F7661';
wwv_flow_api.g_varchar2_table(326) := '6C7565732E617065784974656D49642B222922297D6128222373757065726C6F765F7374796C65645F66696C74657222292E637373287B226261636B67726F756E642D636F6C6F72223A632C226261636B67726F756E642D696D616765223A662C226261';
wwv_flow_api.g_varchar2_table(327) := '636B67726F756E642D726570656174223A672C226261636B67726F756E642D6174746163686D656E74223A622C226261636B67726F756E642D706F736974696F6E223A657D297D2C5F7570646174655374796C6564496E7075743A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(328) := '297B76617220643D746869733B76617220633D642E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D636F6C6F7222293B76617220663D642E5F656C656D656E74732E24646973706C6179496E707574';
wwv_flow_api.g_varchar2_table(329) := '2E63737328226261636B67726F756E642D696D61676522293B76617220673D642E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D72657065617422293B76617220623D642E5F656C656D656E74732E';
wwv_flow_api.g_varchar2_table(330) := '24646973706C6179496E7075742E63737328226261636B67726F756E642D6174746163686D656E7422293B76617220653D642E5F656C656D656E74732E24646973706C6179496E7075742E63737328226261636B67726F756E642D706F736974696F6E22';
wwv_flow_api.g_varchar2_table(331) := '293B696628642E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20557064617465205374796C656420496E7075742028222B642E5F76616C7565732E617065784974656D49642B222922297D642E5F656C';
wwv_flow_api.g_varchar2_table(332) := '656D656E74732E246669656C647365742E637373287B226261636B67726F756E642D636F6C6F72223A632C226261636B67726F756E642D696D616765223A662C226261636B67726F756E642D726570656174223A672C226261636B67726F756E642D6174';
wwv_flow_api.g_varchar2_table(333) := '746163686D656E74223A622C226261636B67726F756E642D706F736974696F6E223A657D297D2C5F68616E646C65436C656172436C69636B3A66756E6374696F6E2864297B76617220633D642E646174612E7569773B76617220623D632E5F656C656D65';
wwv_flow_api.g_varchar2_table(334) := '6E74732E24636C656172427574746F6E2E66696E6428227370616E2E75692D69636F6E22293B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20436C656172204C4F562028222B632E5F7661';
wwv_flow_api.g_varchar2_table(335) := '6C7565732E617065784974656D49642B222922297D696628642E73637265656E58213D3D302626642E73637265656E59213D3D30297B642E7461726765742E626C757228297D696628632E5F656C656D656E74732E24646973706C6179496E7075742E76';
wwv_flow_api.g_varchar2_table(336) := '616C2829213D3D2222297B696628632E6F7074696F6E732E757365436C65617250726F74656374696F6E3D3D3D224E22297B632E5F7265667265736828297D656C73657B696628622E686173436C617373282275692D69636F6E2D636972636C652D636C';
wwv_flow_api.g_varchar2_table(337) := '6F73652229297B622E72656D6F7665436C617373282275692D69636F6E2D636972636C652D636C6F736522292E616464436C617373282275692D69636F6E2D616C65727422293B632E5F76616C7565732E64656C65746549636F6E54696D656F75743D73';
wwv_flow_api.g_varchar2_table(338) := '657454696D656F7574282224282723222B632E5F76616C7565732E636F6E74726F6C7349642B2220627574746F6E3E7370616E2E75692D69636F6E2D616C65727427292E72656D6F7665436C617373282775692D69636F6E2D616C65727427292E616464';
wwv_flow_api.g_varchar2_table(339) := '436C617373282775692D69636F6E2D636972636C652D636C6F736527293B222C31303030297D656C73657B636C65617254696D656F757428632E5F76616C7565732E64656C65746549636F6E54696D656F7574293B632E5F76616C7565732E64656C6574';
wwv_flow_api.g_varchar2_table(340) := '6549636F6E54696D656F75743D22223B632E5F7265667265736828293B622E72656D6F7665436C617373282275692D69636F6E2D616C65727422292E616464436C617373282275692D69636F6E2D636972636C652D636C6F736522297D7D7D7D2C5F6469';
wwv_flow_api.g_varchar2_table(341) := '7361626C654172726F774B65795363726F6C6C696E673A66756E6374696F6E2864297B76617220633D642E646174612E7569773B76617220623D642E77686963683B696628623D3D3D33377C7C623D3D3D3339297B696628632E5F76616C7565732E626F';
wwv_flow_api.g_varchar2_table(342) := '64794B65794D6F64653D3D3D22524F5753454C45435422297B642E70726576656E7444656661756C7428293B72657475726E2066616C73657D7D656C73657B696628623D3D3D33387C7C623D3D3D3430297B642E70726576656E7444656661756C742829';
wwv_flow_api.g_varchar2_table(343) := '3B72657475726E2066616C73657D7D72657475726E20747275657D2C5F68616E646C6546696C746572466F6375733A66756E6374696F6E2863297B76617220623D632E646174612E7569773B622E5F76616C7565732E626F64794B65794D6F64653D2253';
wwv_flow_api.g_varchar2_table(344) := '4541524348227D2C64697361626C653A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2044697361626C696E67204974656D2028222B';
wwv_flow_api.g_varchar2_table(345) := '622E5F76616C7565732E617065784974656D49642B222922297D696628622E5F76616C7565732E64697361626C65643D3D3D66616C7365297B696628622E6F7074696F6E732E656E74657261626C653D3D3D622E5F76616C7565732E454E54455241424C';
wwv_flow_api.g_varchar2_table(346) := '455F524553545249435445447C7C622E6F7074696F6E732E656E74657261626C653D3D3D622E5F76616C7565732E454E54455241424C455F554E52455354524943544544297B622E5F656C656D656E74732E24646973706C6179496E7075742E61747472';
wwv_flow_api.g_varchar2_table(347) := '282264697361626C6564222C2264697361626C656422292E756E62696E6428226B6579646F776E222C622E5F68616E646C65456E74657261626C654B6579646F776E292E756E62696E642822626C7572222C7B7569773A627D2C622E5F68616E646C6545';
wwv_flow_api.g_varchar2_table(348) := '6E74657261626C65426C7572297D622E5F656C656D656E74732E2468696464656E496E7075742E61747472282264697361626C6564222C2264697361626C656422293B622E5F656C656D656E74732E246F70656E427574746F6E2E756E62696E64282263';
wwv_flow_api.g_varchar2_table(349) := '6C69636B222C622E5F68616E646C654F70656E436C69636B293B622E5F656C656D656E74732E24636C656172427574746F6E2E756E62696E642822636C69636B222C622E5F68616E646C65436C656172436C69636B293B622E5F656C656D656E74732E24';
wwv_flow_api.g_varchar2_table(350) := '6974656D486F6C6465722E66696E6428226469762E73757065726C6F762D636F6E74726F6C2D627574746F6E7322292E627574746F6E736574282264697361626C6522297D622E5F76616C7565732E64697361626C65643D747275657D2C656E61626C65';
wwv_flow_api.g_varchar2_table(351) := '3A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20456E61626C696E67204974656D2028222B622E5F76616C7565732E617065784974';
wwv_flow_api.g_varchar2_table(352) := '656D49642B222922297D696628622E5F76616C7565732E64697361626C65643D3D3D74727565297B696628622E6F7074696F6E732E656E74657261626C653D3D3D622E5F76616C7565732E454E54455241424C455F524553545249435445447C7C622E6F';
wwv_flow_api.g_varchar2_table(353) := '7074696F6E732E656E74657261626C653D3D3D622E5F76616C7565732E454E54455241424C455F554E52455354524943544544297B622E5F656C656D656E74732E24646973706C6179496E7075742E72656D6F766541747472282264697361626C656422';
wwv_flow_api.g_varchar2_table(354) := '292E62696E6428226B6579646F776E222C7B7569773A627D2C622E5F68616E646C65456E74657261626C654B6579646F776E292E62696E642822626C7572222C7B7569773A627D2C622E5F68616E646C65456E74657261626C65426C7572297D622E5F65';
wwv_flow_api.g_varchar2_table(355) := '6C656D656E74732E2468696464656E496E7075742E72656D6F766541747472282264697361626C656422293B622E5F656C656D656E74732E246F70656E427574746F6E2E62696E642822636C69636B222C7B7569773A627D2C622E5F68616E646C654F70';
wwv_flow_api.g_varchar2_table(356) := '656E436C69636B293B622E5F656C656D656E74732E24636C656172427574746F6E2E62696E642822636C69636B222C7B7569773A627D2C622E5F68616E646C65436C656172436C69636B293B622E5F656C656D656E74732E246974656D486F6C6465722E';
wwv_flow_api.g_varchar2_table(357) := '66696E6428226469762E73757065726C6F762D636F6E74726F6C2D627574746F6E7322292E627574746F6E7365742822656E61626C6522297D622E5F76616C7565732E64697361626C65643D66616C73657D2C686964653A66756E6374696F6E28297B76';
wwv_flow_api.g_varchar2_table(358) := '617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20486964696E67204974656D2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656C';
wwv_flow_api.g_varchar2_table(359) := '656D656E74732E246669656C647365742E6869646528293B622E5F656C656D656E74732E246C6162656C2E6869646528297D2C73686F773A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B6170';
wwv_flow_api.g_varchar2_table(360) := '65782E646562756728225375706572204C4F56202D2053686F77696E67204974656D2028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656C656D656E74732E246669656C647365742E73686F7728293B622E5F656C656D';
wwv_flow_api.g_varchar2_table(361) := '656E74732E246C6162656C2E73686F7728297D2C68696465526F773A66756E6374696F6E28297B76617220623D746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D20486964696E67';
wwv_flow_api.g_varchar2_table(362) := '20526F772028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656C656D656E74732E246C6162656C2E636C6F736573742822747222292E6869646528297D2C73686F77526F773A66756E6374696F6E28297B76617220623D';
wwv_flow_api.g_varchar2_table(363) := '746869733B696628622E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2053686F77696E6720526F772028222B622E5F76616C7565732E617065784974656D49642B222922297D622E5F656C656D656E74';
wwv_flow_api.g_varchar2_table(364) := '732E246C6162656C2E636C6F736573742822747222292E73686F7728297D2C616C6C6F774368616E676550726F7061676174696F6E3A66756E6374696F6E28297B76617220623D746869733B622E5F76616C7565732E6368616E676550726F7061676174';
wwv_flow_api.g_varchar2_table(365) := '696F6E416C6C6F7765643D747275657D2C70726576656E744368616E676550726F7061676174696F6E3A66756E6374696F6E28297B76617220623D746869733B622E5F76616C7565732E6368616E676550726F7061676174696F6E416C6C6F7765643D66';
wwv_flow_api.g_varchar2_table(366) := '616C73657D2C6368616E676550726F7061676174696F6E416C6C6F7765643A66756E6374696F6E28297B76617220623D746869733B72657475726E20622E5F76616C7565732E6368616E676550726F7061676174696F6E416C6C6F7765647D2C67657456';
wwv_flow_api.g_varchar2_table(367) := '616C756573427952657475726E3A66756E6374696F6E2862297B76617220633D746869733B696628632E6F7074696F6E732E6465627567297B617065782E646562756728225375706572204C4F56202D2047657474696E672056616C7565732062792052';
wwv_flow_api.g_varchar2_table(368) := '657475726E2056616C75652028222B632E5F76616C7565732E617065784974656D49642B222922297D7175657279537472696E673D7B705F666C6F775F69643A6128222370466C6F77496422292E76616C28292C705F666C6F775F737465705F69643A61';
wwv_flow_api.g_varchar2_table(369) := '28222370466C6F7753746570496422292E76616C28292C705F696E7374616E63653A6128222370496E7374616E636522292E76616C28292C705F726571756573743A22504C5547494E3D222B632E6F7074696F6E732E616A61784964656E746966696572';
wwv_flow_api.g_varchar2_table(370) := '2C7830313A224745545F56414C5545535F42595F52455455524E222C7830363A627D3B612E616A6178287B747970653A22504F5354222C75726C3A227777765F666C6F772E73686F77222C646174613A7175657279537472696E672C6461746154797065';
wwv_flow_api.g_varchar2_table(371) := '3A226A736F6E222C6173796E633A66616C73652C737563636573733A66756E6374696F6E2864297B696628632E6F7074696F6E732E6465627567297B617065782E64656275672864297D632E5F76616C7565732E616A617852657475726E3D647D7D293B';
wwv_flow_api.g_varchar2_table(372) := '72657475726E20632E5F76616C7565732E616A617852657475726E7D2C73657456616C756573427952657475726E3A66756E6374696F6E2862297B76617220633D746869733B76617220643B643D632E67657456616C756573427952657475726E286229';
wwv_flow_api.g_varchar2_table(373) := '3B696628642E6572726F72213D3D756E646566696E6564297B696628632E5F656C656D656E74732E246669656C647365742E686173436C617373282273757065722D6C6F762D6E6F742D656E74657261626C6522297C7C632E5F656C656D656E74732E24';
wwv_flow_api.g_varchar2_table(374) := '6669656C647365742E686173436C617373282273757065722D6C6F762D656E74657261626C652D726573747269637465642229297B632E5F656C656D656E74732E2468696464656E496E7075742E76616C282222293B632E5F656C656D656E74732E2464';
wwv_flow_api.g_varchar2_table(375) := '6973706C6179496E7075742E76616C282222293B632E5F76616C7565732E6C617374446973706C617956616C75653D22227D656C73657B696628632E5F656C656D656E74732E246669656C647365742E686173436C617373282273757065722D6C6F762D';
wwv_flow_api.g_varchar2_table(376) := '656E74657261626C652D756E726573747269637465642229297B632E5F656C656D656E74732E2468696464656E496E7075742E76616C2862293B632E5F656C656D656E74732E24646973706C6179496E7075742E76616C2862293B632E5F76616C756573';
wwv_flow_api.g_varchar2_table(377) := '2E6C617374446973706C617956616C75653D627D7D666F7228783D303B783C632E5F76616C7565732E6D6170546F4974656D732E6C656E6774683B782B2B297B247328632E5F76616C7565732E6D6170546F4974656D735B785D2C2222297D7D656C7365';
wwv_flow_api.g_varchar2_table(378) := '7B69662821642E6D61746368466F756E64297B696628632E5F656C656D656E74732E246669656C647365742E686173436C617373282273757065722D6C6F762D6E6F742D656E74657261626C6522297C7C632E5F656C656D656E74732E246669656C6473';
wwv_flow_api.g_varchar2_table(379) := '65742E686173436C617373282273757065722D6C6F762D656E74657261626C652D726573747269637465642229297B632E5F656C656D656E74732E2468696464656E496E7075742E76616C282222293B632E5F656C656D656E74732E24646973706C6179';
wwv_flow_api.g_varchar2_table(380) := '496E7075742E76616C282222293B632E5F76616C7565732E6C617374446973706C617956616C75653D22227D656C73657B696628632E5F656C656D656E74732E246669656C647365742E686173436C617373282273757065722D6C6F762D656E74657261';
wwv_flow_api.g_varchar2_table(381) := '626C652D756E726573747269637465642229297B632E5F656C656D656E74732E2468696464656E496E7075742E76616C2862293B632E5F656C656D656E74732E24646973706C6179496E7075742E76616C2862293B632E5F76616C7565732E6C61737444';
wwv_flow_api.g_varchar2_table(382) := '6973706C617956616C75653D627D7D666F7228783D303B783C632E5F76616C7565732E6D6170546F4974656D732E6C656E6774683B782B2B297B247328632E5F76616C7565732E6D6170546F4974656D735B785D2C2222297D7D656C73657B632E5F656C';
wwv_flow_api.g_varchar2_table(383) := '656D656E74732E2468696464656E496E7075742E76616C28642E72657475726E56616C293B632E5F656C656D656E74732E24646973706C6179496E7075742E76616C28642E646973706C617956616C293B632E5F76616C7565732E6C617374446973706C';
wwv_flow_api.g_varchar2_table(384) := '617956616C75653D642E646973706C617956616C3B696628642E6D6170706564436F6C756D6E73297B666F7228783D303B783C642E6D6170706564436F6C756D6E732E6C656E6774683B782B2B297B247328642E6D6170706564436F6C756D6E735B785D';
wwv_flow_api.g_varchar2_table(385) := '2E6D61704974656D2C642E6D6170706564436F6C756D6E735B785D2E6D617056616C297D7D7D7D7D7D297D2928617065782E6A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(59041610043678585481)
,p_plugin_id=>wwv_flow_api.id(35184271759786640911)
,p_file_name=>'apex_super_lov.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(11279802305476287)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>25
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_nav_list_template_options=>'#DEFAULT#'
,p_include_legacy_javascript=>'PRE18:18'
,p_include_jquery_migrate=>true
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
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(11279802305476287)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'LLantas'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Page 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'JFAJARDO'
,p_last_upd_yyyymmddhh24miss=>'20180306102406'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11281523853476339)
,p_plug_name=>'LLANTAS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(11274624171476228)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select n.cdmedida,n.correlativo,b.dsbodega as ubicacion,n.Cdmedida ||''-''|| n.Correlativo as llanta,n.estado,m.dsmedida,d.dsdiseno,a.dsmarca,n.nueva as n,n.reencauche1 as r1,n.reencauche2 as r2,n.reencauche3 as r3,',
'n.recorrido,n.fechamodi,n.seriefac,n.cddelegacion,n.precio',
'from tneumaticos n,tbodegas b, tmedidas m, tdisenos d,tmarcasn a where ',
'n.cdbodega = b.cdbodega and',
'n.cdmedida = m.cdmedida and',
'n.cddiseno = d.CDDISENO and',
'n.cdmarca = a.cdmarca and',
'n.estado = ''D'' order by fechamodi asc;'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11281612755476342)
,p_name=>'Page 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_MEDIDA,P2_CORRELATIVOL:#CDMEDIDA#,#CORRELATIVO#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'LP'
,p_internal_uid=>11281612755476342
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11281707122476354)
,p_db_column_name=>'LLANTA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Llanta'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LLANTA'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11282329426476364)
,p_db_column_name=>'ESTADO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ESTADO'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(11283418871476375)
,p_db_column_name=>'RECORRIDO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Recorrido'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'RECORRIDO'
,p_help_text=>'No help available for this page item.'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21202102073113895)
,p_db_column_name=>'N'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21202213193113895)
,p_db_column_name=>'R1'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'R1'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'R1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21202323032113895)
,p_db_column_name=>'R2'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'R2'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'R2'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21202431636113895)
,p_db_column_name=>'R3'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'R3'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'R3'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21202525717113895)
,p_db_column_name=>'FECHAMODI'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Fechamodi'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHAMODI'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21202618540113895)
,p_db_column_name=>'SERIEFAC'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Seriefac'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SERIEFAC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21204325685239700)
,p_db_column_name=>'UBICACION'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21204400593239700)
,p_db_column_name=>'DSMEDIDA'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Dsmedida'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DSMEDIDA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21204531041239700)
,p_db_column_name=>'DSDISENO'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Dsdiseno'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DSDISENO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21204619611239700)
,p_db_column_name=>'DSMARCA'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Dsmarca'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DSMARCA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21204717226239700)
,p_db_column_name=>'CDDELEGACION'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Cddelegacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CDDELEGACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21204827049239700)
,p_db_column_name=>'PRECIO'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Precio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PRECIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21205504969264542)
,p_db_column_name=>'CDMEDIDA'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Cdmedida'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CDMEDIDA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21205604882264542)
,p_db_column_name=>'CORRELATIVO'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Correlativo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CORRELATIVO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11396625066621698)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'113967'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'UBICACION:LLANTA:ESTADO:DSMEDIDA:DSDISENO:DSMARCA:N:R1:R2:R3:RECORRIDO:FECHAMODI:SERIEFAC:CDDELEGACION:PRECIO:CDMEDIDA:CORRELATIVO'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12647825661107217)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Limpiar'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12652501793677501)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'limpiar1'
,p_process_sql_clob=>'RESET_SESSION_STATE'
,p_attribute_01=>'RESET_SESSION_STATE'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(11279802305476287)
,p_name=>'MONTAR'
,p_step_title=>'MONTAR'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200807154022'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11284408783500070)
,p_plug_name=>'MONTAR LLANTA'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(11275107952476228)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11464730019568532)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11284408783500070)
,p_button_name=>'CANCELAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11278809055476256)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11464909371572035)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11284408783500070)
,p_button_name=>'MONTAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11278809055476256)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Montar'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(11465202469574881)
,p_branch_name=>'GO_TO_PAGE'
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(11464909371572035)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11464030074562104)
,p_name=>'P2_UNIDAD'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Unidad'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select cdclase||''-''||correlativo as unidad , cdclase||''-''||correlativo as descripcion from tactivos where fechabaja is null and vehiculo=''S'' '
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11464218233562110)
,p_name=>'P2_POSICION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Posicion'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select numero,numero a from tconf_llantas where  numero not in (select posicion from tneumaticos',
' where cdclasact = :P2_CDCLASE and corractivo= :P2_CORRELATIVO) and id=(select conf_llantas from TACTIVOS where CDCLASE||''-''||CORRELATIVO= :P2_UNIDAD) order by numero asc;'))
,p_lov_cascade_parent_items=>'P2_UNIDAD'
,p_ajax_items_to_submit=>'P2_CDCLASE,P2_CORRELATIVO,P2_UNIDAD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11464618754562110)
,p_name=>'P2_OBSERVACIONES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>50
,p_cMaxlength=>4000
,p_cHeight=>20
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11465619913597176)
,p_name=>'P2_CDCLASE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Cdclase'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11465819634597178)
,p_name=>'P2_CORRELATIVO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Correlativo'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11469119117779932)
,p_name=>'P2_GUIONES'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Guiones'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11473713428679025)
,p_name=>'P2_MEDIDA'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Neumatico'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_grid_column=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11473930894679025)
,p_name=>'P2_CORRELATIVOL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Correlativo'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_colspan=>1
,p_grid_column=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11813205448149876)
,p_name=>'P2_NUMEROOT'
,p_is_required=>true
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'No. OT'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select nmorden||''-''||dsrepara||''-''||cdclase||''-''||correlativo, nmorden b from tordenserv where estado=''A'' and  taller in ( select id_taller from  t_usuarios_taller where lower(usuario) = lower(:APP_USER)) '
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11813426354155381)
,p_name=>'P2_NUMEROBOLETA'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11284408783500070)
,p_prompt=>'Numero Boleta'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11469621735793231)
,p_name=>'conteo_guiones'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_UNIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11469930447793234)
,p_event_id=>wwv_flow_api.id(11469621735793231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'select guiones into :p2_guiones from tactivos where CDCLASE||''-''||CORRELATIVO=:p2_unidad;'
,p_attribute_02=>'P2_UNIDAD'
,p_attribute_03=>'P2_GUIONES'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11470028792804757)
,p_name=>'asignar'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_UNIDAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11470307006804757)
,p_event_id=>wwv_flow_api.id(11470028792804757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_CDCLASE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'SUBSTR(:p2_UNIDAD, 1, instr(:p2_UNIDAD,''-'',1, :p2_guiones)-1)'
,p_attribute_07=>'P2_GUIONES,P2_UNIDAD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11470520387809709)
,p_event_id=>wwv_flow_api.id(11470028792804757)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_CORRELATIVO'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'SUBSTR(:p2_UNIDAD, instr( :p2_UNIDAD,''-'',1, :p2_guiones)+1, LENGTH(:p2_UNIDAD)) '
,p_attribute_07=>'P2_UNIDAD,P2_GUIONES'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11527316194527081)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Montar_llanta'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare CORRE numeric;',
'RECORRIDO  numeric;',
'empleado varchar(10);',
'nueva01 varchar(1);',
'reencauche01 numeric;',
'reencauche02 numeric;',
'reencauche03 numeric;',
'profundidad01 numeric;',
'no_ot numeric;',
'BEGIN',
'',
'select recorrido into RECORRIDO from tneumaticos where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL and estado=''D'';',
'',
'select max(item)+1 into CORRE from tmontajes_n;',
'',
'Select cod_emp into empleado from PA_Usuarios  where lower(usuario) = lower(:APP_USER);',
'',
'select nueva into nueva01 from tneumaticos where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL and estado=''D'';',
'',
'select reencauche1 into reencauche01 from tneumaticos where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL and estado=''D'';',
'',
'select reencauche2 into reencauche02 from tneumaticos where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL and estado=''D'';',
'',
'select reencauche3 into reencauche03 from tneumaticos where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL and estado=''D'';',
'',
'select profundidad into profundidad01 from tneumaticos where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL and estado=''D'';',
'',
'insert into tmontajes_N ',
'(item,cdmedida,correlativo, nueva, reencauche1, reencauche2, reencauche3, fechamontaje,km_montaje,tipomovimiento, item_montaje, Profund_montaje,usuario, observaciones,noboleta,no_ot, correlativoact,cdclaseact,posicion) values',
'(CORRE, :P2_MEDIDA, :P2_CORRELATIVOL ,nueva01,reencauche01,reencauche02,reencauche03,sysdate(), RECORRIDO,''M'',19,profundidad01,empleado,:p2_observaciones,:P2_NUMEROBOLETA,:P2_NUMEROOT,:P2_CORRELATIVO,:P2_CDCLASE,:P2_POSICION);',
'',
'update tneumaticos set estado = ''M'', u_modifica = empleado, observaciones=:P2_OBSERVACIONES,fechamodi = sysdate(), corractivo=:p2_correlativo, cdclasact=:p2_cdclase, posicion=:p2_posicion ,cdbodega=null',
'where cdmedida = :P2_MEDIDA and',
'correlativo = :P2_CORRELATIVOL AND ESTADO=''D'';',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(11464909371572035)
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(11279802305476287)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(11262025605476181)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20171031124025'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11280303774476315)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(11274215880476225)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11280622038476326)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11280303774476315)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(11278809055476256)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11280401788476320)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11280303774476315)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11280518043476325)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11280303774476315)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(11278310658476254)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11280804967476328)
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
 p_id=>wwv_flow_api.id(11280703891476326)
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
 p_id=>wwv_flow_api.id(11281017332476328)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11280903494476328)
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
