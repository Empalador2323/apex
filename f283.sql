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
,p_default_application_id=>283
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 283 - Menu SIG
--
-- Application Export:
--   Application:     283
--   Name:            Menu SIG
--   Date and Time:   12:26 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      2
--     Items:                    2
--     Processes:                5
--     Regions:                  5
--     Buttons:                  1
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 1
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         2
--     Security:
--       Authentication:         5
--       Authorization:          1
--     User Interface:
--       Themes:                 3
--       Templates:
--         Page:                41
--         Region:              62
--         Label:               17
--         List:                45
--         Popup LOV:            3
--         Calendar:             7
--         Breadcrumb:           5
--         Button:              14
--         Report:              27
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,283)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Menu SIG')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'LPSIG01')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20201128080656'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.1'
,p_html_escaping_mode=>'B'
,p_flow_language=>'es-gt'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(37187837437770663)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:'
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
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'TRANSPORTE'
,p_last_upd_yyyymmddhh24miss=>'20201128080656'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8703165996042040)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8703258404042040)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8703306614042040)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8703538890042040)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8703672414042040)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8703777248042040)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(27812303499433463)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SELECT_LIST'
);
end;
/
prompt --application/shared_components/security/authorizations/admin_only
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(37187327205770662)
,p_name=>'Admin_Only'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from demo_users',
'where user_name = v(''APP_USER'')',
'and admin_user = ''Y'''))
,p_error_message=>'<h2>You are not Authorized to view this page. Please see Admin to get authorization.</h2>'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(10019619097801785)
,p_icon_sequence=>10
,p_icon_subtext=>'Inicio'
,p_icon_target=>'f?p=LPSIG:home:&SESSION.::&DEBUG.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(37187234987770657)
,p_icon_sequence=>200
,p_icon_subtext=>'Logout'
,p_icon_target=>'&LOGOUT_URL.'
,p_icon_image_alt=>'Logout'
,p_icon_height=>32
,p_icon_width=>32
,p_icon_height2=>24
,p_icon_width2=>24
,p_nav_entry_is_feedback_yn=>'N'
,p_icon_bar_disp_cond_type=>'CURRENT_LOOK_IS_1'
,p_cell_colspan=>1
);
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(14495841928088396)
,p_name=>'GG_CIA'
,p_scope=>'GLOBAL'
,p_protection_level=>'I'
);
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
 p_id=>wwv_flow_api.id(37189230209770664)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_NAVIGATE'
,p_tab_text=>'LP WEB'
,p_tab_step=>1
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
 p_id=>wwv_flow_api.id(37188957370770664)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(37189357633770664)
,p_parent_id=>0
,p_short_name=>'Navigate'
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(11019507268628253)
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
 p_id=>wwv_flow_api.id(11019821671628256)
,p_page_template_id=>wwv_flow_api.id(11019507268628253)
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
 p_id=>wwv_flow_api.id(11020131148628257)
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
 p_id=>wwv_flow_api.id(11020514850628257)
,p_page_template_id=>wwv_flow_api.id(11020131148628257)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11020920502628257)
,p_page_template_id=>wwv_flow_api.id(11020131148628257)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11021327487628257)
,p_page_template_id=>wwv_flow_api.id(11020131148628257)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11021712092628257)
,p_page_template_id=>wwv_flow_api.id(11020131148628257)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11022111776628259)
,p_page_template_id=>wwv_flow_api.id(11020131148628257)
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
 p_id=>wwv_flow_api.id(11022427334628259)
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
 p_id=>wwv_flow_api.id(11022818365628259)
,p_page_template_id=>wwv_flow_api.id(11022427334628259)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11023205728628259)
,p_page_template_id=>wwv_flow_api.id(11022427334628259)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11023608400628259)
,p_page_template_id=>wwv_flow_api.id(11022427334628259)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11024009318628259)
,p_page_template_id=>wwv_flow_api.id(11022427334628259)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11024419853628260)
,p_page_template_id=>wwv_flow_api.id(11022427334628259)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11024813536628260)
,p_page_template_id=>wwv_flow_api.id(11022427334628259)
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
 p_id=>wwv_flow_api.id(11025111764628260)
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
 p_id=>wwv_flow_api.id(11025501806628260)
,p_page_template_id=>wwv_flow_api.id(11025111764628260)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11025910016628260)
,p_page_template_id=>wwv_flow_api.id(11025111764628260)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11026330337628260)
,p_page_template_id=>wwv_flow_api.id(11025111764628260)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11026708320628260)
,p_page_template_id=>wwv_flow_api.id(11025111764628260)
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
 p_id=>wwv_flow_api.id(11027005305628262)
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
 p_id=>wwv_flow_api.id(11027421754628262)
,p_page_template_id=>wwv_flow_api.id(11027005305628262)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11027809866628262)
,p_page_template_id=>wwv_flow_api.id(11027005305628262)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11028201326628262)
,p_page_template_id=>wwv_flow_api.id(11027005305628262)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11028625209628264)
,p_page_template_id=>wwv_flow_api.id(11027005305628262)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11029027276628264)
,p_page_template_id=>wwv_flow_api.id(11027005305628262)
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
 p_id=>wwv_flow_api.id(11029316903628264)
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
 p_id=>wwv_flow_api.id(11029707366628264)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11030124889628264)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11030528751628264)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Content Frame Buttons'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11030925141628265)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11031331008628265)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11031700602628265)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11032120875628265)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11032516970628265)
,p_page_template_id=>wwv_flow_api.id(11029316903628264)
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
 p_id=>wwv_flow_api.id(11032820536628265)
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
 p_id=>wwv_flow_api.id(11033202135628265)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11033608320628267)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11034028349628267)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11034418150628267)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11034817151628267)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11035225812628267)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11035619667628267)
,p_page_template_id=>wwv_flow_api.id(11032820536628265)
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
 p_id=>wwv_flow_api.id(11035911230628270)
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
 p_id=>wwv_flow_api.id(11036326008628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11036711510628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11037112382628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11037506672628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11037909360628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11038311094628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11038700953628273)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11039110777628275)
,p_page_template_id=>wwv_flow_api.id(11035911230628270)
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
 p_id=>wwv_flow_api.id(11039422776628275)
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
 p_id=>wwv_flow_api.id(11039816858628275)
,p_page_template_id=>wwv_flow_api.id(11039422776628275)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11040231741628275)
,p_page_template_id=>wwv_flow_api.id(11039422776628275)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11040601465628275)
,p_page_template_id=>wwv_flow_api.id(11039422776628275)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11041022839628275)
,p_page_template_id=>wwv_flow_api.id(11039422776628275)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11041418931628275)
,p_page_template_id=>wwv_flow_api.id(11039422776628275)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11041829047628276)
,p_page_template_id=>wwv_flow_api.id(11039422776628275)
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
 p_id=>wwv_flow_api.id(11042123008628276)
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
 p_id=>wwv_flow_api.id(11042529644628276)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11042930901628276)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11043321586628276)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11043707961628276)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11044106407628276)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11044504781628278)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11044928796628278)
,p_page_template_id=>wwv_flow_api.id(11042123008628276)
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
 p_id=>wwv_flow_api.id(11045207675628278)
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
 p_id=>wwv_flow_api.id(11045609486628278)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
,p_name=>'Wizard Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>11
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11046025448628278)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11046420743628278)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
,p_name=>'Wizard Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11046802078628278)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11047206189628279)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11047613919628279)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11048018216628279)
,p_page_template_id=>wwv_flow_api.id(11045207675628278)
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
 p_id=>wwv_flow_api.id(11048304477628279)
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
 p_id=>wwv_flow_api.id(11048712523628279)
,p_page_template_id=>wwv_flow_api.id(11048304477628279)
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
 p_id=>wwv_flow_api.id(11049018555628279)
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
 p_id=>wwv_flow_api.id(11049420690628281)
,p_page_template_id=>wwv_flow_api.id(11049018555628279)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11049832569628281)
,p_page_template_id=>wwv_flow_api.id(11049018555628279)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11050200438628281)
,p_page_template_id=>wwv_flow_api.id(11049018555628279)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11050605825628281)
,p_page_template_id=>wwv_flow_api.id(11049018555628279)
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
 p_id=>wwv_flow_api.id(11050903776628281)
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
 p_id=>wwv_flow_api.id(11051313535628281)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11051720387628281)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11052128163628282)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11052517664628282)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11052922503628282)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11053305858628282)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11053708133628282)
,p_page_template_id=>wwv_flow_api.id(11050903776628281)
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
 p_id=>wwv_flow_api.id(11054001870628282)
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
 p_id=>wwv_flow_api.id(11054409164628282)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11054827609628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11055228446628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11055622690628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11056010592628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11056414376628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11056829368628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11057207194628284)
,p_page_template_id=>wwv_flow_api.id(11054001870628282)
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
 p_id=>wwv_flow_api.id(11057508218628285)
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
 p_id=>wwv_flow_api.id(11057917841628285)
,p_page_template_id=>wwv_flow_api.id(11057508218628285)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11058305672628285)
,p_page_template_id=>wwv_flow_api.id(11057508218628285)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11058713476628285)
,p_page_template_id=>wwv_flow_api.id(11057508218628285)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11059102216628285)
,p_page_template_id=>wwv_flow_api.id(11057508218628285)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11059523559628285)
,p_page_template_id=>wwv_flow_api.id(11057508218628285)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11059915632628287)
,p_page_template_id=>wwv_flow_api.id(11057508218628285)
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
 p_id=>wwv_flow_api.id(11060208470628289)
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
 p_id=>wwv_flow_api.id(11060531196628289)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11060919191628289)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11061314873628290)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11061706802628290)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11062102518628290)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11062507624628290)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(11062910571628290)
,p_page_template_id=>wwv_flow_api.id(11060208470628289)
,p_name=>'Icon Nav Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login_002
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32590726337432862)
,p_theme_id=>2
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'<link rel="stylesheet" href="#IMAGE_PREFIX#css/estilos.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="login">',
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'  <div id="login-main"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a>#REGION_POSITION_02##BODY##REGION_POSITION_03#</div>',
'<div id="footer">',
'<p>',
'Infosgroup 2015',
'<br/>',
'All Rights Reserved.',
'</p>',
'</div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32590910785432874)
,p_theme_id=>2
,p_name=>'No Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'NO_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar_fixedwidth_div_left_and_optional_tablebased_right
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32591217670432876)
,p_theme_id=>2
,p_name=>'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'NO_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32591513684432876)
,p_theme_id=>2
,p_name=>'No Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_right_sidebar_optional_tablebased
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32591808377432876)
,p_theme_id=>2
,p_name=>'No Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        &nbsp;',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region">',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title"></div>',
'    <div class="rc-buttons">',
'      <button onclick="#BACK_LINK#" class="button-alt1" type="button">',
'        <span>#OK#</span>',
'      </button>',
'    </div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">',
'  <p>#MESSAGE#</p>',
'  <strong>#ADDITIONAL_INFO#</strong>',
'  <br />',
'  <br />',
'  <div class="error_technical_info">#TECHNICAL_INFO#</div>',
'  ',
'  </div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>',
''))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32592118558432877)
,p_theme_id=>2
,p_name=>'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">Bienvenido:&USER.&nbsp;&nbsp;&nbsp;&nbsp;</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize"> LP#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixedwidth_div_left_and_optional_tablebased_right
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32592414630432877)
,p_theme_id=>2
,p_name=>'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32592719096432878)
,p_theme_id=>2
,p_name=>'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_optional_tablebased
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32593014084432878)
,p_theme_id=>2
,p_name=>'One Level Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="navbar-link">#TEXT#</a></div>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup_002
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32593321983432878)
,p_theme_id=>2
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<title>#TITLE#</title>',
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
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD# class="popup-page">#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top"><div class="t1messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>#BODY##REGION_POSITION_01##REGION_POSITION_02##REGION_POSITION_04##REGION_POSITION_05##REGION_POSITION_06##REGION_POSITION_07##REGION_POSITION_08#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE##DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t1success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>'<div class="t1notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/printer_friendly_002
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32593598566432878)
,p_theme_id=>2
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-sidebar">#REGION_POSITION_02#</td>     ',
'        <td class="tbl-main" width="100%">#BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32593896974432878)
,p_theme_id=>2
,p_name=>'Two Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col-sb-left">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="main-sb-left">',
'      #BODY##REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
''))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar_fixedwidth_div_left_and_optional_tablebased_right
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32594207346432878)
,p_theme_id=>2
,p_name=>'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="three-col">',
'    <div id="left-sidebar">#REGION_POSITION_02#</div>',
'    <div id="two-col-tbl">',
'      <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'        <tbody>',
'          <tr>',
'            <td class="tbl-main" width="100%">#BODY#</td>',
'            <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'          </tr>',
'        </tbody>',
'      </table>',
'    </div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32594424427432879)
,p_theme_id=>2
,p_name=>'Two Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <div id="two-col">',
'    <div id="sidebar">#REGION_POSITION_03#</div>     ',
'    <div id="main">#REGION_POSITION_02##BODY#</div>',
'  </div>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar_optional_tablebased
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(32594720581432879)
,p_theme_id=>2
,p_name=>'Two Level Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
' #APEX_CSS#',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header2">',
'  <div id="app-logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
'  #REGION_POSITION_07#',
'  <div id="navbar">',
'    #NAVIGATION_BAR#',
'    <div class="app-user">#WELCOME_USER#</div>',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
'        #TAB_CELLS#',
'      </div>',
'    </div>',
'  </div>',
'</div>',
'<div id="topbar">#REGION_POSITION_01##REGION_POSITION_04#</div>',
'<div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'<div id="body">',
'  <table class="tbl-body" cellspacing="0" cellpadding="0" border="0" summary="">',
'    <tbody>',
'      <tr>',
'        <td class="tbl-main" width="100%">#REGION_POSITION_02##BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="footer"><div class="content">',
'  #REGION_POSITION_05#',
'  <div id="customize">#CUSTOMIZE#</div>&nbsp;',
'</div></div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''success-message'')" style="float:right;" class="remove-message" alt="" />',
'  #SUCCESS_MESSAGE#',
'</div>'))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<span>#TAB_LABEL#</span>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="#TAB_STATUS#"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>'))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="current"><div>',
'#TAB_LABEL##TAB_INLINE_EDIT#',
'</div></div>',
'',
''))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="noncurrent"><div>',
'<a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</div></div>',
'',
'',
'',
'',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="notification" id="notification-message">',
'  <img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''notification-message'')"  style="float:right;" class="remove-message" alt="" />#MESSAGE#',
'</div>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<div class="navbar-entry"><a href="#LINK#" class="t1NavigationBar">#TEXT#</a></div>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login_003
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180241807770639)
,p_theme_id=>3
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#',
'<table border="0" summary="" align="center" style="margin:100px auto;">',
'<tr>',
'<td>#BODY#',
'#REGION_POSITION_01#',
'#REGION_POSITION_02#',
'#REGION_POSITION_03#',
'#REGION_POSITION_04#',
'#REGION_POSITION_05#',
'#REGION_POSITION_06#',
'#REGION_POSITION_07#',
'#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
''))
,p_region_table_cattributes=>'width="100%"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180335790770640)
,p_theme_id=>3
,p_name=>'No Tabs'
,p_internal_name=>'NO_TABS'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><div class="t3logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<br style="clear:both;"/>',
'<table summary="" cellpadding="0" border="0" cellspacing="0" width="100%">',
'<tr>',
'<td class="t3UserPrompt" width="100%">&USER.</td>',
'<td class="t3TabHolder" style="text-align:right;" align="right"><br /></td>',
'</tr>',
'</table>',
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>',
'<table width="100%" summary="" height="70%" cellspacing="0" cellpadding="0" border="0">',
'',
'<tr>',
'   <td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_with_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180425883770640)
,p_theme_id=>3
,p_name=>'No Tabs With Sidebar'
,p_internal_name=>'NO_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><div class="t3logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<br style="clear:both;"/>',
'<div class="t3UserPrompt">&USER.</div>',
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>',
'',
'<table width="100%" summary="" height="70%" cellspacing="0" cellpadding="0" border="0">',
'   <tr>',
'        <td valign="top"><table cellspacing="0" cellpadding="0" border="0" class="t3NavigationRegion" style="width:auto;" summary="">',
'<tr><td colspan="3" class="B">#REGION_POSITION_02#</td></tr>',
'<tr>',
'<th class="L"><img src="#IMAGE_PREFIX#themes/theme_3/left_curve_bottom.gif" alt=""/></th>',
'<th class="C" width="100%"><br /></th>',
'<th class="R" align="right"><img src="#IMAGE_PREFIX#themes/theme_3/right_curve_bottom.gif" alt=""/></th>',
'</tr>',
'</table></td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t3RightBar" align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>',
'',
'',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
''))
,p_region_table_cattributes=>'width="100%"  summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180532980770640)
,p_theme_id=>3
,p_name=>'One Level Tabs'
,p_internal_name=>'ONE_LEVEL_TABS'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><div class="t3logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t3UserPrompt" >Bienvenido: &USER.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></td>',
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<table summary="" cellpadding="0" border="0" cellspacing="0" width="100%">',
'<tr>',
'<td class="t3TabHolder" style="text-align:right;" align="right"><table summary="" cellpadding="0" cellspacing="0" border="0" align="right"><tr>#TAB_CELLS#</tr></table></td>',
'</tr>',
'</table>',
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>',
'<table width="100%" summary="" height="70%">',
'<tr>',
'<td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE# #SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'<td align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
''))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>',
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding:0px 5px;">#TAB_LABEL##TAB_INLINE_EDIT#</td>',
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap"><br /></td>',
''))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap"><br /></td>',
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding:0px 5px;"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</td>',
'<td align="right" class="t3RightTabBgCurve" width="8" height="19" nowrap="nowrap"><br /></td>',
''))
,p_notification_message=>'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>'
,p_region_table_cattributes=>'width="100%" summary=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_with_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180657883770641)
,p_theme_id=>3
,p_name=>'One Level Tabs with Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_WITH_SIDEBAR'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><div class="t3logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<br style="clear:both;"/>',
'<table summary="" cellpadding="0" border="0" cellspacing="0" width="100%">',
'<tr>',
'<td class="t3UserPrompt" width="100%">&USER.</td>',
'<td class="t3TabHolder" style="text-align:right;" align="right"><table summary="" cellpadding="0" cellspacing="0" border="0" align="right"><tr>#TAB_CELLS#</tr></table></td>',
'</tr>',
'</table>',
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>',
'<table width="100%" summary="" height="70%" cellspacing="0" cellpadding="0" border="0">',
'   <tr>',
'        <td valign="top"><table cellspacing="0" cellpadding="0" border="0" class="t3NavigationRegion" style="width:auto;" summary="">',
'<tr><td colspan="3" class="B">#REGION_POSITION_02#</td></tr>',
'<tr>',
'<th class="L"><img src="#IMAGE_PREFIX#themes/theme_3/left_curve_bottom.gif" alt=""/></th>',
'<th class="C" width="100%"><br /></th>',
'<th class="R" align="right"><img src="#IMAGE_PREFIX#themes/theme_3/right_curve_bottom.gif" alt=""/></th>',
'</tr>',
'</table></td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t3RightBar" align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding-left:10px;padding-right:10px;"><span class="t3TabForegroundText">#TAB_LABEL#</span>#TAB_INLINE_EDIT#</td>',
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap">&nbsp;</td>',
''))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding-left:10px;padding-right:10px;"><a href="#TAB_LINK#"><span class="t3TabBackgroundText">#TAB_LABEL#</span></a>#TAB_INLINE_EDIT#</td>',
'<td align="right" class="t3RightTabBgCurve" width="8">&nbsp;&nbsp;</td>'))
,p_notification_message=>'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>'
,p_region_table_cattributes=>'width="100%"  summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup_003
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180744138770641)
,p_theme_id=>3
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_body_title=>'#BODY_TITLE#'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="padding:10px;text-align:left;" valign="top">#BODY#</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body> ',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
'',
''))
,p_notification_message=>'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</b>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
''))
,p_region_table_cattributes=>'width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/printer_friendly_003
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180857048770641)
,p_theme_id=>3
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_body_title=>'<!--#BODY_TITLE#-->'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td valign="top">#LOGO##REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td valign="top">#REGION_POSITION_08#</td>',
'</table>',
'<table summary="" cellpadding="0" width="100%" cellspacing="0" border="0">',
'<tr>',
'<td width="100%" valign="top">',
'<div style="border:1px solid black;">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE#</div>',
'#BODY##REGION_POSITION_04#</td>',
'<td valign="top">#REGION_POSITION_03#<br /></td>',
'</tr>',
'</table>',
'#REGION_POSITION_05#'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
''))
,p_notification_message=>'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>'
,p_region_table_cattributes=>'width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37180928627770641)
,p_theme_id=>3
,p_name=>'Two Level Tabs'
,p_internal_name=>'TWO_LEVEL_TABS'
,p_is_popup=>false
,p_body_title=>'<!--#BODY_TITLE#-->'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><div class="t3logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<br style="clear:both;"/>',
'<table summary="" cellpadding="0" border="0" cellspacing="0" width="100%">',
'<tr>',
'<td class="t3UserPrompt" width="100%">&USER.</td>',
'<td class="t3TabHolder" style="text-align:right;" align="right"><table summary="" cellpadding="0" cellspacing="0" border="0" align="right"><tr>#PARENT_TAB_CELLS#</tr></table></td>',
'</tr>',
'</table>',
'<div class="t3TabForegroundColor"><table summary="" cellpadding="0" cellspacing="0" border="0"><tr>#TAB_CELLS#</tr></table></div>',
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>',
'<table width="100%" summary="" height="70%">',
'<tr>',
'<td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE# #SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_02##REGION_POSITION_04#</td>',
'<td align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>',
''))
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td style="padding:0 5px;font-weight:bold;color:#FFFFFF;" nowrap="nowrap">#TAB_LABEL#</td>',
'<td style="color:#000000;vertical-align:middle;">|</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td style="padding:0 5px;" nowrap="nowrap"><a style="font-weight:bold;color:#CCCC99;" href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td style="color:#000000;vertical-align:middle;">|</td>'))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding-left:10px;padding-right:10px;">#TAB_LABEL#</td>',
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap">&nbsp;</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding-left:10px;padding-right:10px;"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td align="right" class="t3RightTabBgCurve" width="8">&nbsp;&nbsp;</td>'))
,p_notification_message=>'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
''))
,p_region_table_cattributes=>'width="100%" summary=""'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_with_side_bar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37181036480770641)
,p_theme_id=>3
,p_name=>'Two Level Tabs with Side Bar'
,p_internal_name=>'TWO_LEVEL_TABS_WITH_SIDE_BAR'
,p_is_popup=>false
,p_body_title=>'<!--#BODY_TITLE#-->'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE." xmlns:htmldb="http://htmldb.oracle.com">',
'<head>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<title>#TITLE#</title>',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_3_1.css" type="text/css" />',
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
'</head>',
'<body #ONLOAD#>#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" width="100%">',
'<tr>',
'<td><div class="t3logo">#LOGO#</div><br />#REGION_POSITION_06#</td>',
'<td width="100%" valign="top">#REGION_POSITION_07#</td>',
'<td><div class="t3NavBar">#NAVIGATION_BAR#</div><br />#REGION_POSITION_08#</td>',
'</tr>',
'</table>',
'<br style="clear:both;"/>',
'<table summary="" cellpadding="0" border="0" cellspacing="0" width="100%">',
'<tr>',
'<td class="t3UserPrompt" width="100%">&USER.</td>',
'<td class="t3TabHolder" style="text-align:right;" align="right"><table summary="" cellpadding="0" cellspacing="0" border="0" align="right"><tr>#PARENT_TAB_CELLS#</tr></table></td>',
'</tr>',
'</table>',
'<div class="t3TabForegroundColor"><table summary="" cellpadding="0" cellspacing="0" border="0"><tr>#TAB_CELLS#</tr></table></div>',
'<div class="t3RegionPosition1">#REGION_POSITION_01#</div>',
'<table width="100%" summary="" height="70%" cellspacing="0" cellpadding="0" border="0">',
'   <tr>',
'        <td valign="top"><table cellspacing="0" cellpadding="0" border="0" class="t3NavigationRegion" style="width:auto;" summary="">',
'<tr><td colspan="3" class="B">#REGION_POSITION_02#</td></tr>',
'<tr>',
'<th class="L"><img src="#IMAGE_PREFIX#themes/theme_3/left_curve_bottom.gif" alt=""/></th>',
'<th class="C" width="100%"><br /></th>',
'<th class="R" align="right"><img src="#IMAGE_PREFIX#themes/theme_3/right_curve_bottom.gif" alt=""/></th>',
'</tr>',
'</table></td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t3PageBody"><div class="t3Messages" align="center">#GLOBAL_NOTIFICATION##NOTIFICATION_MESSAGE##SUCCESS_MESSAGE#</div>#BODY##REGION_POSITION_04#</td>',
'   <td align="right" valign="top"><img src="#IMAGE_PREFIX#f_spacer.gif" width="15" height="3" alt="" /></td>',
'   <td class="t3RightBar" align="right" valign="top">#REGION_POSITION_03#</td>',
'</tr>',
'</table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3TabForegroundColor"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="3" alt="" /></div>',
'<div class="t3customize">#CUSTOMIZE#</div>',
'<br />',
'#REGION_POSITION_05#',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>'<div class="t3Success" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#SUCCESS_MESSAGE#</div>'
,p_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td style="padding:0 5px;font-weight:bold;color:#FFFFFF;" nowrap="nowrap">#TAB_LABEL#</td>',
'<td style="color:#000000;vertical-align:middle;">|</td>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td style="padding:0 5px;" nowrap="nowrap"><a style="font-weight:bold;color:#CCCC99;" href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td style="color:#000000;vertical-align:middle;">|</td>'))
,p_top_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabForeSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" class="t3TabForegroundText" style="padding-left:10px;padding-right:10px;">#TAB_LABEL#</td>',
'<td align="right" class="t3RightTabForeCurve" width="8" nowrap="nowrap">&nbsp;</td>'))
,p_top_non_curr_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td class="t3LeftTabBgSlant" valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" class="t3TabBackgroundText" style="padding-left:10px;padding-right:10px;"><a href="#TAB_LINK#">#TAB_LABEL#</a></td>',
'<td align="right" class="t3RightTabBgCurve" width="8">&nbsp;&nbsp;</td>'))
,p_notification_message=>'<div class="t3Notification" id="MESSAGE"><img src="#IMAGE_PREFIX#delete.gif" onclick="$x_Remove(''MESSAGE'')"  style="float:right;" class="pb" alt="" />#MESSAGE#</div>'
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t3NavBarItem">#TEXT#</a>',
''))
,p_region_table_cattributes=>'width="100%" summary=""'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(11078415295628314)
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
 p_id=>wwv_flow_api.id(11078629495628314)
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
 p_id=>wwv_flow_api.id(11078826705628314)
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
 p_id=>wwv_flow_api.id(11079012818628315)
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
 p_id=>wwv_flow_api.id(11079208279628315)
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
 p_id=>wwv_flow_api.id(11079403774628315)
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
prompt --application/shared_components/user_interface/templates/button/button_002
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32595012694432879)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-gray" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_hot_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_1
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32595209071432886)
,p_template_name=>'Button, Alternative 1'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt1" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_2
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32595421859432886)
,p_template_name=>'Button, Alternative 2'
,p_internal_name=>'BUTTON,_ALTERNATIVE_2'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt2" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_3
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(32595627206432886)
,p_template_name=>'Button, Alternative 3'
,p_internal_name=>'BUTTON,_ALTERNATIVE_3'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#JAVASCRIPT#" class="button-alt3" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_003
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(37186136174770648)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table style="display:inline;margin-left:6px;" cellpadding="0" cellspacing="0" border="0" summary=""><tr>',
'<td style="width:9px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_3/button_left2.gif" border="0" height="25" width="11" alt=""/></a></td>',
'<td class="t3ButtonHtmlMiddle" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtmlMiddle">#LABEL#</a></td>',
'<td style="width:9px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/theme_3/button_right2.gif" border="0" height="25" width="11" alt=""/></a></td>',
'</tr></table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BLAF style, rounded on both sides.',
''))
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_1_002
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(37186249197770648)
,p_template_name=>'Button, Alternative 1'
,p_internal_name=>'BUTTON,_ALTERNATIVE_1'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-right:4px;"><table cellpadding="0" cellspacing="0" border="0" summary="">',
'<tr>',
'<td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_left.gif" border="0" alt="" /></a></td>',
'<td class="t3ButtonHtmlLeft" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtml">#LABEL#</a></td>',
'</tr>',
'</table></div>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_template_comment=>'BLAF style, rounded on left side only. Uses classes in platform2.css or /css/einstein.css'
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_2_002
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(37186326578770649)
,p_template_name=>'Button, Alternative 2'
,p_internal_name=>'BUTTON,_ALTERNATIVE_2'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="margin-right:4px;float:right;">',
'   <table cellpadding="0" cellspacing="0" border="0" summary="">',
'           <tr>',
'               <td class="t3ButtonHtmlRight" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtml">#LABEL#</a></td>',
'               <td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_right.gif" border="0" alt="" /></a></td>',
'           </tr>',
'   </table>',
'</div>',
''))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'BLAF style, rounded on right side only. Uses classes in platform2.css or /css/einstein.css'
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button_alternative_3_002
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(37186430071770649)
,p_template_name=>'Button, Alternative 3'
,p_internal_name=>'BUTTON,_ALTERNATIVE_3'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3ButtonAlternative3" cellspacing="0" cellpadding="0" border="0"  summary="">',
'<tr>',
'<td class="t3L"><img src="#IMAGE_PREFIX#themes/theme_3/button_xp_left_FFFFFF.gif" alt="" width="4" height="24" /></td>',
'<td class="t3C"><a href="#LINK#">#LABEL#</a></td>',
'<td class="t3R"><img src="#IMAGE_PREFIX#themes/theme_3/button_xp_right_FFFFFF.gif" width="4" height="24" alt="" /></td>',
'</tr>',
'</table>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/region/accessible_region_with_heading
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(11063221071628292)
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
 p_id=>wwv_flow_api.id(11063530507628293)
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
 p_id=>wwv_flow_api.id(11063806621628293)
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
 p_id=>wwv_flow_api.id(11064126430628293)
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
 p_id=>wwv_flow_api.id(11064424532628293)
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
 p_id=>wwv_flow_api.id(11064711611628293)
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
 p_id=>wwv_flow_api.id(11065014760628295)
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
 p_id=>wwv_flow_api.id(11065325544628295)
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
 p_id=>wwv_flow_api.id(11065616812628295)
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
 p_id=>wwv_flow_api.id(11066013323628295)
,p_plug_template_id=>wwv_flow_api.id(11065616812628295)
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
 p_id=>wwv_flow_api.id(11066305964628295)
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
 p_id=>wwv_flow_api.id(11066616383628295)
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
 p_id=>wwv_flow_api.id(11066910759628295)
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
 p_id=>wwv_flow_api.id(11067203271628296)
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
 p_id=>wwv_flow_api.id(11067629492628296)
,p_plug_template_id=>wwv_flow_api.id(11067203271628296)
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
 p_id=>wwv_flow_api.id(11067903098628296)
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
 p_id=>wwv_flow_api.id(11068215414628296)
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
 p_id=>wwv_flow_api.id(11068511704628296)
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
 p_id=>wwv_flow_api.id(11068928276628296)
,p_plug_template_id=>wwv_flow_api.id(11068511704628296)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(11069323054628296)
,p_plug_template_id=>wwv_flow_api.id(11068511704628296)
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
 p_id=>wwv_flow_api.id(11069624607628298)
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
 p_id=>wwv_flow_api.id(11069908614628298)
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
prompt --application/shared_components/user_interface/templates/region/borderless_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32595802628432886)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_theme_id=>2
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
prompt --application/shared_components/user_interface/templates/region/bracketed_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32596104357432888)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="bracketed-region brackets" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bk-top">',
'    <div class="bk-top-r">',
'      <div class="bk-title">#TITLE#</div>',
'      <div class="bk-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    </div>',
'  </div>',
'  <div class="bk-body">#BODY#</div>',
'  <div class="bk-bottom">',
'    <div class="bk-bottom-r">&nbsp;</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_theme_id=>2
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Use this region template when you want to contain content with a bracket UI.',
'',
'TITLE=YES',
'BUTTONS=YES',
'100% WIDTH=NO'))
);
end;
/
prompt --application/shared_components/user_interface/templates/region/breadcrumb_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32596399787432888)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div>#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>2
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_with_title_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32596703375432889)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>2
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_without_title_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32596997295432889)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>2
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32597299476432889)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>2
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/form_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32597606552432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</style>',
'  <div id="Login">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>2
,p_theme_class_id=>8
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32597900514432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="hide-show-top">',
'    <div class="hide-show-title">#TITLE#<a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_2/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_2/rollup_minus_dgr'
||'ay.gif'');" class="t1HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_2/rollup_plus_dgray.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a></div>',
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>2
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/list_region_with_icon
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32598223036432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'    <div class="rc-content-main">',
'      <div class="rc-image"><img src="#IMAGE_PREFIX#themes/theme_2/images/report_icon.png" alt="" /></div>',
'      <div class="rc-content">#BODY#</div>',
'    </div>',
'  </div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'List Region with Icon'
,p_internal_name=>'LIST_REGION_WITH_ICON'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>2
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32598514671432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div>',
'    <h3>#TITLE#</h3>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>2
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32598802937432890)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>2
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_titles_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32599107771432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>2
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32599412970432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div id="Login-Main">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>2
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_filter_single_row
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32599711737432890)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>2
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32600023656432891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>2
,p_theme_class_id=>9
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_100_width
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32600301226432891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>2
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
prompt --application/shared_components/user_interface/templates/region/reports_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32600608830432891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>2
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32600901121432891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region" id="#REGION_STATIC_ID#">',
'  <h3>#TITLE#</h3>',
'  <div class="box">',
'    <div class="frame"><div class="content">#BODY#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>2
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
prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32601222994432891)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region-alt" id="#REGION_STATIC_ID#">',
'  <h3>#TITLE#</h3>',
'  <div class="box">',
'    <div class="frame"><div class="content">#BODY#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>2
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/top_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32601498034432892)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="topbar" style="width:100%;clear:both;" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="topbar-top"><div class="topbar-top-r"></div></div>',
'  <div class="topbar-body"><div class="topbar-body-r"><div class="topbar-content">',
'      <div style="float:left">#BODY#</div>',
'      <div style="float:right"><span style="margin-right:10px;">#CLOSE#</span>#COPY##DELETE##CHANGE##EDIT##PREVIOUS##NEXT##CREATE##EXPAND#</div>',
'   </div></div></div>',
'  <div class="topbar-bottom"><div class="topbar-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Top Bar'
,p_internal_name=>'TOP_BAR'
,p_theme_id=>2
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32601801393432892)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>2
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region_with_icon
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(32602099835432892)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-blue-top"><div class="rc-blue-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">#BODY#</div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>2
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/borderless_region_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181147262770641)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3BorderlessRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td class="t3Body" colspan="2">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_theme_id=>3
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/bracketed_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181237847770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3BracketedRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'    <td class="t3RegionHeader">#TITLE#</td>',
'</tr>',
'<tr>',
'    <td class="t3Bracket">',
'        <table summary=""><tr><td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'        </tr></table>',
'        </td>',
'</tr>',
'<tr>',
'    <td class="t3Body">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_theme_id=>3
,p_theme_class_id=>18
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/breadcrumb_region_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181346776770642)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>3
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_with_title_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181456867770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ButtonRegionwithTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr><td class="t3RegionHeader">#TITLE#</td></tr>',
'<tr>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'</table>#BODY#',
''))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>3
,p_theme_class_id=>4
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_without_title_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181549707770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" border="0" summary="" class="t3ButtonRegionwithoutTitle" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'</table>',
'#BODY#'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>3
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181650533770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ChartRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'</table></td>',
'</tr>',
'<tr>',
'<td class="t3Body">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>3
,p_theme_class_id=>30
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/form_region_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181753724770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3FormRegion" cellspacing="0"  border="0" summary="layout" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td align="right" class="t3ButtonHolder">',
'<table cellspacing="0" border="0" cellpadding="0" align="right" summary="Buttons">',
'<tr>',
'<td>#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'</table></td></tr>',
'<tr class="t3Body">',
'<td colspan="2" class="t3Body">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_theme_id=>3
,p_theme_class_id=>8
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181838518770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3HideandShowRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td><table width="100%" cellpadding="0" cellspacing="0" border="0" summary="">',
'<tr>',
'<td class="t3RegionHeader"><a style="margin-left:5px;" href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_3/rollup_plus_dgray.gif'',''#IMAGE_PREFIX#themes/theme_3/rollup_minus_dgray.gif'');" cl'
||'ass="t3HideandShowRegionLink"><img src="#IMAGE_PREFIX#themes/theme_3/rollup_plus_dgray.gif" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a>#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'</table></td>',
'</tr>',
'<tr>',
'<td class="t3Body"><div class="t3Hide" id="region#REGION_SEQUENCE_ID#">#BODY#</div></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>3
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/list_region_with_icon_chart_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37181958019770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td class="t3Body" colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr><td valign="top"><img src="#IMAGE_PREFIX#themes/theme_3/chart.gif" alt=""/></td>',
'<td>#BODY#</td></tr></table></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'List Region with Icon - Chart List'
,p_internal_name=>'LIST_REGION_WITH_ICON_CHART_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>3
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/list_region_with_icon_report_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182058076770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ListRegionwithIcon" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td class="t3Body" colspan="2"><table cellpadding="0" cellspacing="0" border="0" summary="" ><tr>',
'<td valign="top"><img src="#IMAGE_PREFIX#themes/theme_3/report.gif" alt=""/></td>',
'<td>#BODY#</td></tr></table></td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'List Region with Icon - Report List'
,p_internal_name=>'LIST_REGION_WITH_ICON_REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>3
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182131380770642)
,p_layout=>'TABLE'
,p_template=>'<div class="t3NavigationRegion" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>3
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region_alternative_1_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182245436770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3NavigationRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<span class="t3RegionHeader">#TITLE#</span>',
'#BODY#</div>'))
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>3
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_titles_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182340533770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" cellpadding="0" cellspacing="0" border="0" class="t3RegionwithoutButtonsandTitles" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3Body">#BODY#</td>',
'</tr>',
'</table>',
'',
''))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>3
,p_theme_class_id=>19
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_title_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182427765770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td align="right">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr>',
'<td align="left" class="t3instructiontext">#BODY#</td></tr></table>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>3
,p_theme_class_id=>11
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_filter_single_row_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182542694770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="apex_finderbar" cellpadding="0" cellspacing="0" border="0" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tbody>',
'<tr>',
'<td class="apex_finderbar_left_top" valign="top"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8" alt=""  class="spacer" alt="" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle"><img src="#IMAGE_PREFIX#htmldb/builder/builder_find.png" /></td>',
'<td class="apex_finderbar_middle" rowspan="3" valign="middle" style="">#BODY#</td>',
'<td class="apex_finderbar_left" rowspan="3" width="10"><br /></td>',
'<td class="apex_finderbar_buttons" rowspan="3" valign="middle" nowrap="nowrap"><span class="apex_close">#CLOSE#</span><span>#EDIT##CHANGE##DELETE##CREATE##CREATE2##COPY##PREVIOUS##NEXT##EXPAND##HELP#</span></td>',
'</tr>',
'<tr><td class="apex_finderbar_left_middle"><br /></td></tr>',
'<tr>',
'<td class="apex_finderbar_left_bottom" valign="bottom"><img src="#IMAGE_PREFIX#1px_trans.gif" width="10" height="8"  class="spacer" alt="" /></td>',
'</tr>',
'</tbody>',
'</table>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>3
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182628095770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table width="100%" border="0" cellspacing="0" cellpadding="0" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t3ReportsRegion" summary="">',
'<tr>',
'<td valign="bottom" class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder" align="right">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr class="t3instructiontext">',
'<td colspan="2" valign="top" class="t3Body">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_theme_id=>3
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_100_width_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182731611770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" width="100%" class="t3ReportsRegion100Width" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'</tr>',
'<tr>',
'<td class="t3Body" colspan="2">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>3
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
prompt --application/shared_components/user_interface/templates/region/reports_region_alternative_1_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182842858770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ReportsRegionAlternative1" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<td class="t3RegionHeader">#TITLE#</td>',
'<td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td></tr>',
'<tr>',
'<td class="t3Body" colspan="2">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>3
,p_theme_class_id=>10
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_003
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37182955981770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" class="t3SidebarRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<tr>',
'<th class="L" width="10"><br /></th>',
'<th class="C">#TITLE#</th>',
'<th class="R" width="10"><br /></th>',
'</tr>',
'<tr>',
'<td colspan="3" class="B">#BODY#</td>',
'</tr>',
'</table>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>3
,p_theme_class_id=>2
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_alternative_1_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37183025998770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" width="218" bgcolor="#f7f7e7" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# summary="">',
'  <tr><td colspan="3"><img src="#IMAGE_PREFIX#upperbox.gif" width="218" height="14" border="0" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td width="1" bgcolor="#cccc99"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="1" alt="" /></td>',
'    <td width="216" valign="top">',
'      <table border="0" cellpadding="0" cellspacing="2" width="216" summary="">',
'        <tr>',
'           <td width="2"><br /></td>',
'          <td width="212"><img src="#IMAGE_PREFIX#info_icon.gif" alt="" /><span class="tab3heading">#TITLE#</span><br />',
'            <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccc99" summary="">',
'              <tr>',
'                <td width="100%" height="1"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="1" alt="" /></td>',
'              </tr>',
'            </table>',
'          </td>',
'         <td width="2"><br /></td>',
'        </tr>',
'        <tr>',
'           <td width="2"><br /></td>',
'          <td width="212">',
'            <div class="infobox">#BODY#</div>',
'          </td>',
'         <td width="2"><br /></td>',
'        </tr>',
'      </table>',
'    </td>',
'    <td width="1" bgcolor="#cccc99"><img src="#IMAGE_PREFIX#f_spacer.gif" width="1" height="1" alt="" /></td>',
'  </tr>',
'  <tr>',
'    <td colspan="3"><img src="#IMAGE_PREFIX#lowerbox.gif" width="218" height="13" border="0" alt="" /></td>',
'  </tr>',
'</table>',
'<br />'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_theme_id=>3
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37183139335770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3WizardRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# bgcolor="#cccc99">',
'    <tr class="t3RegionHeader" bgcolor="#cccc99">',
'        <td class="t3RegionTitle">#TITLE#</td>',
'        <td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'    </tr>',
'    <tr>',
'        <td colspan="99" class="t3Body">#BODY#</td>',
'    </tr>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>3
,p_theme_class_id=>12
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region_with_icon_002
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(37183257167770642)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3WizardRegion" summary="" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# bgcolor="#cccc99">',
'    <tr class="t3RegionHeader" bgcolor="#cccc99">',
'        <td class="t3RegionTitle">#TITLE#</td>',
'        <td class="t3ButtonHolder">#CLOSE#&nbsp;&nbsp;&nbsp;#PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</td>',
'    </tr>',
'    <tr>',
'        <td colspan="99" class="t3Body">',
'            <table summary="">',
'                <tr><td><img src="#IMAGE_PREFIX#htmldb/builder/confirmicon_pagetitle.gif" alt="Confirm" /></td>',
'                <td>#BODY#</td>',
'            </tr></table>',
'        </td>',
'    </tr>',
'</table>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>3
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(11073522865628306)
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
 p_id=>wwv_flow_api.id(11073815330628309)
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
 p_id=>wwv_flow_api.id(11074104257628309)
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
 p_id=>wwv_flow_api.id(11074408294628309)
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
 p_id=>wwv_flow_api.id(11074711945628310)
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
 p_id=>wwv_flow_api.id(11075016797628310)
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
 p_id=>wwv_flow_api.id(11075302850628310)
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
 p_id=>wwv_flow_api.id(11075622320628312)
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
 p_id=>wwv_flow_api.id(11075926847628312)
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
 p_id=>wwv_flow_api.id(11076222469628312)
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
 p_id=>wwv_flow_api.id(11076509546628312)
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
 p_id=>wwv_flow_api.id(11076811941628312)
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
 p_id=>wwv_flow_api.id(11077114474628312)
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
 p_id=>wwv_flow_api.id(11077406428628312)
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
prompt --application/shared_components/user_interface/templates/list/button_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32602405701432892)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-gray" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>2
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/dhtml_tree
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32602724354432898)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_internal_name=>'DHTML_TREE'
,p_theme_id=>2
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/hierarchical_expanding
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32603018777432898)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_internal_name=>'HIERARCHICAL_EXPANDING'
,p_theme_id=>2
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32603319392432899)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>2
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_links_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32603612025432902)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>2
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32603920626432902)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_internal_name=>'PULL_DOWN_MENU'
,p_theme_id=>2
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32604206933432902)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>2
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="S#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(thi'
||'s,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom3(th'
||'is,''S#LIST_ITEM_ID#'',''#LIST_ITEM_ID#'',false)" />',
'<a href="#LINK#" class="dhtmlBottom">#TEXT#</a>',
'</div>'))
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32604517191432903)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>2
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="tabbed-navigation-list">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32604800930432903)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>2
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32605119041432904)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>2
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32605413309432904)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>2
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="vertical-sidebar-list">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32605723332432904)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>2
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32606019573432904)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITHOUT_BULLETS'
,p_theme_id=>2
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32606326925432904)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>2
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_horizontal_train
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(32606621384432904)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    <li class="#LIST_STATUS#">',
'      <span>#TEXT#</span>',
'    </li>'))
,p_list_template_name=>'Wizard Progress List, Horizontal Train'
,p_internal_name=>'WIZARD_PROGRESS_LIST,_HORIZONTAL_TRAIN'
,p_theme_id=>2
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="horizontal-progres-list">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184039154770644)
,p_list_template_current=>'<table style="display:inline;margin-left:6px;" cellpadding="0" cellspacing="0" border="0"><tr><td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_left.gif" border="0" alt=""/></a></td> <td class="t3ButtonHtmlMiddle" nowrap="nowrap'
||'"><a href="#LINK#" class="t3ButtonHtmlMiddle" style="font-weight:bold">#TEXT#</a></td><td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_right.gif" border="0" alt=""/></a></td></tr></table>'
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table style="display:inline;margin-left:6px;" cellpadding="0" cellspacing="0" border="0">',
'  <tr>',
'    <td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_left.gif" border="0" alt=""/></a></td> ',
'    <td class="t3ButtonHtmlMiddle" nowrap="nowrap"><a href="#LINK#" class="t3ButtonHtmlMiddle">#TEXT#</a></td>',
'    <td style="width:11px;"><a href="#LINK#"><img src="#IMAGE_PREFIX#button_right.gif" border="0" alt=""/></a></td>',
'  </tr>',
'</table>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>3
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="t3ButtonList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/dhtml_menu_with_sublist
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184151934770644)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Menu with Sublist'
,p_internal_name=>'DHTML_MENU_WITH_SUBLIST'
,p_theme_id=>3
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_13/menu_small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/dhtml_tree_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184231972770644)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_internal_name=>'DHTML_TREE'
,p_theme_id=>3
,p_theme_class_id=>22
,p_list_template_before_rows=>'<ul class="dhtmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" style="display:none;" class="dhtmlTree">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif"  align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" align="middle"  alt="" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" alt="" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" /><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/plus.gif" onclick="htmldb_ToggleWithImage(this,''#LIST_ITEM_ID#'')" align="middle" class="pseudoButtonInactive" alt="" /><a href="#LINK#">#TEXT#</a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184338105770644)
,p_list_template_current=>'<td class="t3current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" /><br />#TEXT#</td>'
,p_list_template_noncurrent=>'<td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" /></a><br /><a href="#LINK#">#TEXT#</a></td>'
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>3
,p_theme_class_id=>4
,p_list_template_before_rows=>'<table cellspacing="0" cellpadding="0" border="0" class="t3HorizontalImageswithLabelList" summary=""><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_links_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184451037770644)
,p_list_template_current=>'<a href="#LINK#" class="t3current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>3
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="t3HorizontalLinksList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184533720770645)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt=""  /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>3
,p_theme_class_id=>21
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#menu/drop_down.png" width="20" height="128" alt=""  class="dhtmlMenu" onclick="app_AppMenuMultiOpenBottom(this,''#LIST_ITEM_ID#'',fa'
||'lse)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image_custom_1
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184634978770645)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" alt="" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" alt="" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_nochild.gif" width="22" height="75" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image (Custom 1)'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE_CUSTOM_1'
,p_theme_id=>3
,p_theme_class_id=>9
,p_list_template_before_rows=>'<div class="dhtmlMenuLG">'
,p_list_template_after_rows=>'</div><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;"><li class="dhtmlSubMenuP" onmouseover="dhtml_CloseAllSubMenusL(this)">#PARENT_TEXT#</li>'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt=""  class="dhtmlMenuSep" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" alt="" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBotto'
||'m(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_item_templ_noncurr_w_child=>'<div class="dhtmlMenuItem"><a href="#LINK#"><img src="#IMAGE_PREFIX#themes/generic_list.gif" alt="" #IMAGE_ATTR# /></a><img src="#IMAGE_PREFIX#themes/generic_open.gif" width="22" height="75" alt="" class="dhtmlMenu" onclick="app_AppMenuMultiOpenBotto'
||'m(this,''#LIST_ITEM_ID#'',false)" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a></div>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184740768770645)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><table cellpadding="0" cellspacing="0" height="100%" width="100%" style="background:#336699;">',
'<tr>',
'<td valign="top" align="left" width="10" height="22" nowrap="nowrap">&nbsp;</td>',
'<td valign="middle" nowrap="nowrap" style="padding-left:10px;padding-right:10px;border-bottom:0px">',
'<a href="#LINK#" style="color:#ffffff;font-weight:bold;font-size:9pt;">#TEXT#</a></td>',
'<td align="right" width="8" nowrap="nowrap">&nbsp;</td>',
'</tr></table></td>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<td><table cellpadding="0" cellspacing="0" height="100%" width="95%" border="0">',
'<tr><td valign="top" align="left" width="10" height="19" nowrap="nowrap">&nbsp;</td><td valign="middle" nowrap="nowrap" style="padding-left:10px;padding-right:10px;background:#f7f7e7;border:1px #979774 solid;border-bottom:0px;"><a href="#LINK#" style'
||'="color:#979774;font-size:9pt;">#TEXT#</a></td>',
'<td align="right" width="8">&nbsp;&nbsp;</td>',
'</tr></table></td>'))
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>3
,p_theme_class_id=>7
,p_list_template_before_rows=>'<table cellspacing="0" cellpadding="0" border="0"><tr>'
,p_list_template_after_rows=>'</tr></table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tree_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184827534770645)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tree List'
,p_internal_name=>'TREE_LIST'
,p_theme_id=>3
,p_theme_class_id=>23
,p_list_template_before_rows=>'<ul class="htmlTree">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_item_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_curr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li><a href="#LINK#">#TEXT#</a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37184934051770646)
,p_list_template_current=>'<tr><td class="t3current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" /></td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" /></a></td></tr>'
,p_list_template_name=>'Vertical Images List'
,p_internal_name=>'VERTICAL_IMAGES_LIST'
,p_theme_id=>3
,p_theme_class_id=>5
,p_list_template_before_rows=>'<table cellpadding="0" cellspacing="0" border="0" summary="0" class="t3VerticalImagesList">'
,p_list_template_after_rows=>'</table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list_custom_2
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37185042176770646)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td align="left"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# /></td><td align="left"><a href="#LINK#">#TEXT#</a></td></tr>',
''))
,p_list_template_name=>'Vertical Images List (Custom 2)'
,p_internal_name=>'VERTICAL_IMAGES_LIST_CUSTOM_2'
,p_theme_id=>3
,p_theme_class_id=>10
,p_list_template_before_rows=>'<table border="0" cellpadding="0" cellspacing="5" summary="" >'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
''))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37185145521770646)
,p_list_template_current=>'<li class="t3current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>3
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="t3VerticalOrderedList">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37185232005770646)
,p_list_template_current=>'<tr><td><a href="#LINK#" class="t3navcurrent">#TEXT#</a></td></tr>'
,p_list_template_noncurrent=>'<tr><td><a href="#LINK#" class="t3nav">#TEXT#</a></td></tr>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>3
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3VerticalSidebarList" summary="Sidebar">',
''))
,p_list_template_after_rows=>'</table>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets_003
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37185333992770646)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>3
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="t3noIndent">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullet
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37185455319770646)
,p_list_template_current=>'<li class="t3current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullet'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITHOUT_BULLET'
,p_theme_id=>3
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t3VerticalUnorderedListwithoutBullet">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_002
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(37185526110770646)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3current">#TEXT#</div>',
'<div><img src="#IMAGE_PREFIX#arrow_down.gif" width="7" height="6" alt="" /></div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3notcurrent">#TEXT#</div>',
'<div><img src="#IMAGE_PREFIX#arrow_down.gif" width="7" height="6" alt="" /></div>'))
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>3
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="t3WizardProgressList">'
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t3notcurrent">&DONE.</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report/borderless_report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(11070221466628300)
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
 p_id=>wwv_flow_api.id(11070221466628300)
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
 p_id=>wwv_flow_api.id(11070511960628300)
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
 p_id=>wwv_flow_api.id(11070826487628300)
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
 p_id=>wwv_flow_api.id(11070826487628300)
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
 p_id=>wwv_flow_api.id(11071115035628300)
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
 p_id=>wwv_flow_api.id(11071115035628300)
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
 p_id=>wwv_flow_api.id(11071414787628300)
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
 p_id=>wwv_flow_api.id(11071414787628300)
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
 p_id=>wwv_flow_api.id(11071731933628300)
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
 p_id=>wwv_flow_api.id(11072001445628301)
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
 p_id=>wwv_flow_api.id(11072001445628301)
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
 p_id=>wwv_flow_api.id(11072311743628301)
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
 p_id=>wwv_flow_api.id(11072311743628301)
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
 p_id=>wwv_flow_api.id(11072603054628301)
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
 p_id=>wwv_flow_api.id(11072931955628301)
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
 p_id=>wwv_flow_api.id(11073231773628301)
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
prompt --application/shared_components/user_interface/templates/report/borderless_report_002
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32606915841432904)
,p_row_template_name=>'Borderless Report'
,p_internal_name=>'BORDERLESS_REPORT'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>2
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32606915841432904)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/fixed_column_headers
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32607414969432906)
,p_row_template_name=>'Fixed Column Headers'
,p_internal_name=>'FIXED_COLUMN_HEADERS'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template2=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data-alt" #COLUMN_WIDTH#><p #COLUMN_WIDTH#>#COLUMN_VALUE#</p></td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#',
'<tr>',
'<td><div class="fixed-header-report"><table cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tbody></table></div><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<thead>',
''))
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>',
''))
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>2
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32607414969432906)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/horizontal_border_002
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32607916436432907)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>2
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32607916436432907)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/one_column_unordered_list_002
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32608412607432907)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t1OneColumnUnorderedList">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul><div class="t1CVS">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_next_page_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="t1pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="t1pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>2
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32608412607432907)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results_select_link_text_link_target_detail1_detail2_last_modified
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32608918427432907)
,p_row_template_name=>'Search Results (SELECT link_text, link_target, detail1, detail2, last_modified)'
,p_internal_name=>'SEARCH_RESULTS_SELECT_LINK_TEXT,_LINK_TARGET,_DETAIL1,_DETAIL2,_LAST_MODIFIED'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- Search Results Report (SELECT link_text, link_target, detail1, detail2, last_modified) -->',
'<li>',
'<span class="title"><a href="#2#">#1#</a></span>',
'<span class="description"><span class="last_modified">#5#</span>#3#</span>',
'<span class="type">#4#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="search-results-report">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul> ',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>2
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_002
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32609203600432907)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CVS">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>2
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32609203600432907)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_alternating_row_colors
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32609711338432909)
,p_row_template_name=>'Standard, Alternating Row Colors'
,p_internal_name=>'STANDARD,_ALTERNATING_ROW_COLORS'
,p_row_template1=>'<td class="data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="0" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="report-holder">#TOP_PAGINATION#<tr><td>',
'<table border="0" cellpadding="0" cellspacing="0" class="report-standard-alternatingrowcolors" summary="" >'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'ODD_ROW_NUMBERS'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="pagination">#PAGINATION_NEXT#<img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_next.gif" alt="Next"></a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="pagination">#PAGINATION_NEXT_SET#<img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_next.gif" alt="Next"></a>'
,p_previous_set_template=>'<a href="#LINK#" class="pagination"><img src="#IMAGE_PREFIX#themes/theme_2/images/paginate_prev.gif" alt="Previous">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>2
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(32609711338432909)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/two_column_portlet_002
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32610229411432910)
,p_row_template_name=>'Two Column Portlet'
,p_internal_name=>'TWO_COLUMN_PORTLET'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#1#</div>',
'  <div class="report-col-val">#2#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet" #REPORT_ATTRIBUTES# id="#REGION_ID#">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>2
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_002
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(32610526528432910)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="report-row">',
'  <div class="report-col-hdr">#COLUMN_HEADER#</div>',
'  <div class="report-col-val">#COLUMN_VALUE#</div>',
'</div>'))
,p_row_template_before_rows=>'<div class="two-col-report-portlet">'
,p_row_template_after_rows=>'</div>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>2
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/borderless
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183347337770642)
,p_row_template_name=>'Borderless'
,p_internal_name=>'BORDERLESS'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t3data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr><td><table class="t3borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PAGINATION#',
'</table><span class="left">#EXTERNAL_LINK##CSV_LINK#</span></td></tr></table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t3header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_row_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t1reportborderless{ }',
'.t1reportborderless .t1reportheader{ }',
'.t1reportborderless .t1reportdata{ }'))
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183347337770642)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/horizontal_border_003
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183435196770643)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="t3data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="t3horizontalborder" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'    <td colspan="99" class="t3afterrows">',
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>',
'        <table style="float:right;text-align:right;" summary="pagination"><tr><td></td></tr>#PAGINATION#</table>',
'    </td>',
'</tr></table></td></tr></table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="t3header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183435196770643)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/one_column_unordered_list_003
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183554635770643)
,p_row_template_name=>'One Column Unordered List'
,p_internal_name=>'ONE_COLUMN_UNORDERED_LIST'
,p_row_template1=>'<li>#COLUMN_VALUE#</li>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'#TOP_PAGINATION#',
'<tr><td><ul class="t1OneColumnUnorderedList">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>#EXTERNAL_LINK##CSV_LINK#</td></tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_theme_id=>3
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183554635770643)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>'OMIT'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183645234770643)
,p_row_template_name=>'Standard Report'
,p_internal_name=>'STANDARD_REPORT'
,p_row_template1=>'<td class="t3data" #ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3standard" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'    <td colspan="99" class="t3afterrows">',
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>',
'        <table style="float:right;text-align:right;" summary="pagination">#PAGINATION#</table>',
'    </td>',
'</tr></table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t3header" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_row_style_mouse_over=>'#EEEECC'
,p_row_style_checked=>'#EEEECC'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183645234770643)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_report_ppr
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183731946770643)
,p_row_template_name=>'Standard Report (PPR)'
,p_internal_name=>'STANDARD_REPORT_PPR'
,p_row_template1=>'<td class="t3data" #ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>'<div id="report#REGION_ID#"><htmldb:#REGION_ID#><table summary="" border="0" cellpadding="0" border="0"><tr><td colspan="2"><table class="t3standard" summary="" border="0" cellpadding="0" border="0">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr></table></td></tr>',
'<tr>',
'   <td valign="top">#EXTERNAL_LINK##CSV_LINK#</td>',
'   <td valign="top" align="right"><table summary="" align="right">#PAGINATION#</table></td>',
'</tr>',
'</table>',
'',
'<script language=JavaScript type=text/javascript>',
'<!--',
'init_htmlPPRReport(''#REGION_ID#'');',
'',
'//-->',
'</script>',
'</htmldb:#REGION_ID#>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t3header" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_page_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_next_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-left:5px;"><img src="#IMAGE_PREFIX#jtfunexe.gif" alt="" /></a>'
,p_previous_set_template=>'<a href="javascript:html_PPR_Report_Page(this,''#REGION_ID#'',''#LINK#'')" style="margin-right:5px;"><img src="#IMAGE_PREFIX#jtfupree.gif" alt=""/></a>'
,p_row_style_mouse_over=>'#EEEECC'
,p_row_style_checked=>'#EEEECC'
,p_theme_id=>3
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183731946770643)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/standard_report_with_alt_row_colors
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183839446770643)
,p_row_template_name=>'Standard Report (with alt row colors)'
,p_internal_name=>'STANDARD_REPORT_WITH_ALT_ROW_COLORS'
,p_row_template1=>'<td class="t3data"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template2=>'<td class="t3dataalt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template3=>'<td bgcolor="red" class="alt"#ALIGNMENT#>#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t3standardalternatingrowcolors" cellpadding="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr>',
'    <td colspan="99" class="t3afterrows">',
'        <span class="left">#EXTERNAL_LINK##CSV_LINK#</span>',
'        <table style="float:right;text-align:right;" summary="pagination">#PAGINATION#</table>',
'    </td>',
'</tr>',
'</table>'))
,p_row_template_table_attr=>'OMIT'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="t3header" #ALIGNMENT#>#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'EVEN_ROW_NUMBERS'
,p_row_template_display_cond2=>'ODD_ROW_NUMBERS'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'EVEN_ROW_NUMBERS'
,p_theme_id=>3
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183839446770643)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_003
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(37183950248770644)
,p_row_template_name=>'Value Attribute Pairs'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><th class="t3header">#COLUMN_HEADER#</th><td class="t3data">#COLUMN_VALUE#</td></tr>',
''))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">',
'',
'#TOP_PAGINATION#',
'<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="t3ValueAttributePairs">'))
,p_row_template_after_rows=>'</table>#EXTERNAL_LINK#</td></tr>#PAGINATION#</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>3
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(37183950248770644)
,p_row_template_before_first=>'OMIT'
,p_row_template_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<tr><td colspan="2" class="t3seperate"><hr /></td></tr>',
''))
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_readers
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(11077717128628314)
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
 p_id=>wwv_flow_api.id(11077810172628314)
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
 p_id=>wwv_flow_api.id(11077915094628314)
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
 p_id=>wwv_flow_api.id(11078027646628314)
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
 p_id=>wwv_flow_api.id(11078121097628314)
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
 p_id=>wwv_flow_api.id(11078215561628314)
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
 p_id=>wwv_flow_api.id(11078310859628314)
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
prompt --application/shared_components/user_interface/templates/label/no_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32610820421432910)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="no-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32610915898432910)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32611029402432910)
,p_template_name=>'Optional with help'
,p_internal_name=>'OPTIONAL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32611106374432910)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_2/images/required.gif" alt="#VALUE_REQUIRED#" tabindex="999" /><span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(32611205976432910)
,p_template_name=>'Required with help'
,p_internal_name=>'REQUIRED_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_2/images/required.gif" alt="#VALUE_REQUIRED#" tabindex="999" /><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSI'
||'ON.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>2
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/no_label_002
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(37185647111770646)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="t3NoLabel">'
,p_template_body2=>'</span>'
,p_theme_id=>3
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_002
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(37185729436770646)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><span class="t3Optional">'
,p_template_body2=>'</span></label>'
,p_theme_id=>3
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_label_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(37185841710770646)
,p_template_name=>'Optional Label with Help'
,p_internal_name=>'OPTIONAL_LABEL_WITH_HELP'
,p_template_body1=>'<a class="t3optionalwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a>'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_002
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(37185935203770646)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#requiredicon_status2.gif" alt="Required Field" /><span class="t3required">'
,p_template_body2=>'</span></label>'
,p_theme_id=>3
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_label_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(37186052152770648)
,p_template_name=>'Required Label with Help'
,p_internal_name=>'REQUIRED_LABEL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#"><img src="#IMAGE_PREFIX#requiredicon_status2.gif" alt="Required" /><a class="t3requiredwithhelp" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_theme_id=>3
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(11079618145628315)
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
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu_002
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(32611306049432910)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>'<div id="breadcrumbs"><ul class="breadcrumb-list">'
,p_current_page_option=>'<li class="current">#NAME#</li>'
,p_non_current_page_option=>'<li class="noncurrent"><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'<li class="separator">&nbsp;</li>'
,p_after_last=>'</ul></div>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>2
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(32611425312432913)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>2
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumbs
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(37186537167770649)
,p_name=>'Breadcrumbs'
,p_internal_name=>'BREADCRUMBS'
,p_before_first=>'<span style="font-size:9pt;">'
,p_current_page_option=>'#NAME#'
,p_non_current_page_option=>'<a href="#LINK#">#NAME#</a>'
,p_between_levels=>'&nbsp;&gt;&nbsp;'
,p_after_last=>'</span>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu_002
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(37186643488770650)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t3HierarchicalMenu">'
,p_current_page_option=>'<li class="t3current"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>3
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(11079808815628318)
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
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(32612097952432916)
,p_popup_icon=>'#IMAGE_PREFIX#htmldb/icons/view_small.gif'
,p_popup_icon_attr=>'width="18" height="18" alt="Popup Lov"'
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
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon"><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_2/css/theme_4_0.css" type="text/css">',
'',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="margin:0;"'
,p_before_field_text=>'<div class="popup-head">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next >'
,p_prev_button_text=>'< Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="popup-body">'
,p_theme_id=>2
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(37187031983770651)
,p_popup_icon=>'#IMAGE_PREFIX#list_gray.gif'
,p_popup_icon_attr=>'width="13" height="13" alt="Popup Lov"'
,p_page_name=>'Popup LOV'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#APEX_JAVASCRIPT#',
'<link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_3/theme_V3.css" type="text/css" />',
'',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" style="margin:0;"'
,p_before_field_text=>'<div class="t3PopupHead">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_find_button_text=>'Search'
,p_close_button_text=>'Close'
,p_next_button_text=>'Next &gt;'
,p_prev_button_text=>'&lt; Previous'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<br /><div style="padding:2px; font-size:8pt;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t3PopupBody">'
,p_theme_id=>3
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(11079714222628317)
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
prompt --application/shared_components/user_interface/templates/calendar/calendar_002
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(32611498830432913)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#WTITLE#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_cust_day_of_week_format=>'<th class="DayOfWeek">#IDAY#</th>'
,p_cust_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="Calendar">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_cust_day_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">'
,p_cust_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_cust_nonday_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_cust_weekend_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th class="Hour">'
,p_cust_time_close_format=>'<br /></th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_cust_wk_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendar">'
,p_cust_wk_month_close_format=>'</table></td></tr></table>'
,p_cust_wk_day_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">'
,p_cust_wk_day_close_format=>'<br /></td>'
,p_cust_wk_today_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">'
,p_cust_wk_weekend_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">'
,p_cust_wk_weekend_close_format=>'<br /></td>'
,p_cust_month_day_height_pix=>'75'
,p_cust_week_day_width_per=>'14'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>2
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar_alternative_1
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(32611722759432914)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_internal_name=>'CALENDAR,_ALTERNATIVE_1'
,p_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" height="100">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="4" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="4" summary="0" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#WTITLE#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_cust_day_of_week_format=>'<th valign="bottom" class="DayOfWeek">#IDAY#</th>'
,p_cust_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_cust_day_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="Day" valign="top" height="100" height="100">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="Today">'
,p_cust_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_cust_nonday_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="NonDay" valign="top">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_cust_weekend_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="WeekendDay">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th class="Hour">'
,p_cust_time_close_format=>'<br /></th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="4" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_cust_wk_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">'
,p_cust_wk_month_close_format=>'</table></td></tr></table>'
,p_cust_wk_day_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">'
,p_cust_wk_day_close_format=>'<br /></td>'
,p_cust_wk_today_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Today" valign="top">'
,p_cust_wk_weekend_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">'
,p_cust_wk_weekend_close_format=>'<br /></td>'
,p_cust_month_day_height_pix=>'100'
,p_cust_week_day_width_pix=>'100'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>2
,p_theme_class_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/small_calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(32611915673432915)
,p_cal_template_name=>'Small Calendar'
,p_internal_name=>'SMALL_CALENDAR'
,p_day_of_week_format=>'<th class="day-of-week">#DY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="2" cellpadding="0" border="0" summary="" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="" class="small-calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_day_title_format=>'<div class="day-title">#DD#</div>'
,p_day_open_format=>'<td class="day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="weekend-day-title">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="weekend-day">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="non-day-title">#DD#</div>'
,p_nonday_open_format=>'<td class="non-day" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="1" summary="0" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="2" cellpadding="0" border="0" summary="" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#WTITLE#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_cust_day_of_week_format=>'<th class="day-of-week">#DY#</th>'
,p_cust_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="" class="small-calendar">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<div class="day-title">#DD#</div>'
,p_cust_day_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="day" valign="top">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="today">'
,p_cust_nonday_title_format=>'<div class="non-day-title">#DD#</div>'
,p_cust_nonday_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" class="non-day" valign="top">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<div class="weekend-day-title">#DD#</div>'
,p_cust_weekend_open_format=>'<td style="#COL_HEIGHT_PIX# #COL_HEIGHT_PER#" valign="top" class="weekend-day">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th class="Hour">'
,p_cust_time_close_format=>'<br /></th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="2" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_cust_wk_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="2" summary="0" class="SmallWeekCalendar">'
,p_cust_wk_month_close_format=>'</table></td></tr></table>'
,p_cust_wk_day_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="Day" valign="top">'
,p_cust_wk_day_close_format=>'<br /></td>'
,p_cust_wk_today_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" class="t1Today" valign="top">'
,p_cust_wk_weekend_open_format=>'<td style="#COL_WIDTH_PIX# #COL_WIDTH_PER#" valign="top" class="NonDay">'
,p_cust_wk_weekend_close_format=>'<br /></td>'
,p_cust_month_day_height_pix=>'14'
,p_cust_month_day_height_per=>'14'
,p_cust_week_day_width_pix=>'40'
,p_cust_week_day_width_per=>'14'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>2
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar_003
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(37186732705770650)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3StandardCalHolder"> ',
' <tr>',
'   <td class="t3MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3StandardCal">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t3DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t3Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td><!--CAN YOU SEE THIS? #4-->'
,p_today_open_format=>'<td valign="top" class="t3Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t3WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t3WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td><!--CAN YOU SEE THIS? #3-->'
,p_nonday_title_format=>'<div class="t3NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="t3NonDay" valign="top">'
,p_nonday_close_format=>'</td><!--CAN YOU SEE THIS? #2-->'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> <!--CAN YOU SEE THIS? #1-->'
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3WeekCalendarHolder">',
'<tr>',
'<td class="t3MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t3Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t3Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t3NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t3Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3DayCalendarHolder"> <tr> <td class="t3MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t3DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t3Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t3Today">'
,p_daily_time_open_format=>'<th class="t3Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>3
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar_alternative_1_002
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(37186834170770651)
,p_cal_template_name=>'Calendar, Alternative 1'
,p_internal_name=>'CALENDAR,_ALTERNATIVE_1'
,p_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="t3MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3CalendarAlternative1">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t3DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t3Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t3Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t3WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t3WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t3NonDayTitle">#DD#</div></td>'
,p_nonday_open_format=>'<td class="t3NonDay" valign="top">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="t3MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t3Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t3Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t3NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t3Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3DayCalendarAlternative1Holder"> <tr><td class="t3MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t3DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="t3Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t3Today">'
,p_daily_time_open_format=>'<th class="t3Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>3
,p_theme_class_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/small_calendar_002
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(37186947137770651)
,p_cal_template_name=>'Small Calendar'
,p_internal_name=>'SMALL_CALENDAR'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3SmallCalendarHolder"> ',
' <tr>',
'   <td class="t3MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3SmallCalendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</tr></table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="t3DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="t3Day" valign="top">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="t3Today">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="t3WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="t3WeekendDay">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="t3NonDayTitle">#DD#</div></td>'
,p_nonday_open_format=>'<td class="t3NonDay" valign="top">'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<th width="14%" class="calheader">#IDAY#</th>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3SmallWeekCalendarHolder">',
'<tr>',
'<td class="t3MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="t3SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="t3Day" valign="top">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="t3Today" valign="top">'
,p_weekly_weekend_open_format=>'<td valign="top" class="t3NonDay">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th class="t3Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="t3DayOfWeek">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t3SmallDayCalendarHolder"> <tr> <td class="t3MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="0" class="t3SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="t3Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="t3Today">'
,p_daily_time_open_format=>'<th class="t3Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>3
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(11080016648628318)
,p_theme_id=>25
,p_theme_name=>'Blue Responsive'
,p_theme_internal_name=>'BLUE_RESPONSIVE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(11027005305628262)
,p_error_template=>wwv_flow_api.id(11025111764628260)
,p_printer_friendly_template=>wwv_flow_api.id(11049018555628279)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(11019507268628253)
,p_default_button_template=>wwv_flow_api.id(11078415295628314)
,p_default_region_template=>wwv_flow_api.id(11068511704628296)
,p_default_chart_template=>wwv_flow_api.id(11068511704628296)
,p_default_form_template=>wwv_flow_api.id(11065616812628295)
,p_default_reportr_template=>wwv_flow_api.id(11068511704628296)
,p_default_tabform_template=>wwv_flow_api.id(11068511704628296)
,p_default_wizard_template=>wwv_flow_api.id(11065616812628295)
,p_default_menur_template=>wwv_flow_api.id(11064126430628293)
,p_default_listr_template=>wwv_flow_api.id(11068511704628296)
,p_default_irr_template=>wwv_flow_api.id(11066910759628295)
,p_default_report_template=>wwv_flow_api.id(11072001445628301)
,p_default_label_template=>wwv_flow_api.id(11077915094628314)
,p_default_menu_template=>wwv_flow_api.id(11079618145628315)
,p_default_calendar_template=>wwv_flow_api.id(11079714222628317)
,p_default_list_template=>wwv_flow_api.id(11076811941628312)
,p_default_option_label=>wwv_flow_api.id(11077915094628314)
,p_default_required_label=>wwv_flow_api.id(11078215561628314)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(25),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(32612301119432919)
,p_theme_id=>2
,p_theme_name=>'Builder Blue'
,p_theme_internal_name=>'BUILDER_BLUE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(32591808377432876)
,p_error_template=>wwv_flow_api.id(32591808377432876)
,p_printer_friendly_template=>wwv_flow_api.id(32593598566432878)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(32590726337432862)
,p_default_button_template=>wwv_flow_api.id(32595012694432879)
,p_default_region_template=>wwv_flow_api.id(32600023656432891)
,p_default_chart_template=>wwv_flow_api.id(32597299476432889)
,p_default_form_template=>wwv_flow_api.id(32597606552432890)
,p_default_reportr_template=>wwv_flow_api.id(32600023656432891)
,p_default_tabform_template=>wwv_flow_api.id(32600023656432891)
,p_default_wizard_template=>wwv_flow_api.id(32601801393432892)
,p_default_menur_template=>wwv_flow_api.id(32596399787432888)
,p_default_listr_template=>wwv_flow_api.id(32598223036432890)
,p_default_irr_template=>wwv_flow_api.id(32599107771432890)
,p_default_report_template=>wwv_flow_api.id(32609203600432907)
,p_default_label_template=>wwv_flow_api.id(32611029402432910)
,p_default_menu_template=>wwv_flow_api.id(32611306049432910)
,p_default_calendar_template=>wwv_flow_api.id(32611498830432913)
,p_default_list_template=>wwv_flow_api.id(32605723332432904)
,p_default_option_label=>wwv_flow_api.id(32611029402432910)
,p_default_required_label=>wwv_flow_api.id(32611205976432910)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(2),'')
,p_css_file_urls=>'#IMAGE_PREFIX#legacy_ui/css/5.0#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(37187129042770654)
,p_theme_id=>3
,p_theme_name=>'Business'
,p_theme_internal_name=>'BUSINESS'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(37180335790770640)
,p_error_template=>wwv_flow_api.id(37180241807770639)
,p_printer_friendly_template=>wwv_flow_api.id(37180857048770641)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(37180241807770639)
,p_default_button_template=>wwv_flow_api.id(37186136174770648)
,p_default_region_template=>wwv_flow_api.id(37182628095770642)
,p_default_chart_template=>wwv_flow_api.id(37181650533770642)
,p_default_form_template=>wwv_flow_api.id(37181753724770642)
,p_default_reportr_template=>wwv_flow_api.id(37182628095770642)
,p_default_tabform_template=>wwv_flow_api.id(37182628095770642)
,p_default_wizard_template=>wwv_flow_api.id(37183139335770642)
,p_default_menur_template=>wwv_flow_api.id(37181346776770642)
,p_default_listr_template=>wwv_flow_api.id(37182628095770642)
,p_default_report_template=>wwv_flow_api.id(37183645234770643)
,p_default_label_template=>wwv_flow_api.id(37185841710770646)
,p_default_menu_template=>wwv_flow_api.id(37186537167770649)
,p_default_calendar_template=>wwv_flow_api.id(37186732705770650)
,p_default_list_template=>wwv_flow_api.id(37185333992770646)
,p_default_option_label=>wwv_flow_api.id(37185841710770646)
,p_default_required_label=>wwv_flow_api.id(37186052152770648)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(3),'')
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
prompt --application/shared_components/security/authentications/custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37187438940770663)
,p_name=>'CUSTOM'
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
prompt --application/shared_components/security/authentications/database
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37187545187770663)
,p_name=>'DATABASE'
,p_scheme_type=>'NATIVE_DAD'
,p_attribute_15=>'5459812069728002865'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database authentication (user identified by DAD).'
);
end;
/
prompt --application/shared_components/security/authentications/database_account
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37187637826770663)
,p_name=>'DATABASE ACCOUNT'
,p_scheme_type=>'NATIVE_DB_ACCOUNTS'
,p_attribute_15=>'5459812142681002865'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use database account credentials.'
);
end;
/
prompt --application/shared_components/security/authentications/html_db
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37187754047770663)
,p_name=>'HTML DB'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_attribute_15=>'5459811947050002862'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:1'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use internal Application Express account credentials and login page in this application.'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37187837437770663)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/region_type/com_af_plugin_jq_menu
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(36368148888398546)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.AF.PLUGIN.JQ.MENU'
,p_display_name=>'jquery.menu'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.AF.PLUGIN.JQ.MENU'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =============================================================================',
'--',
'--   ____________________________  __    __________                ______                                ',
'--   ___    |__  __ \__  ____/_  |/ /    ___  ____/___________________  /_____ __________________________',
'--   __  /| |_  /_/ /_  __/  __    /     __  /_   __  ___/  _ \  _ \_  /_  __ `/_  __ \  ___/  _ \_  ___/',
'--   _  ___ |  ____/_  /___  _    |      _  __/   _  /   /  __/  __/  / / /_/ /_  / / / /__ /  __/  /    ',
'--   /_/  |_/_/     /_____/  /_/|_|      /_/      /_/    \___/\___//_/  \__,_/ /_/ /_/\___/ \___//_/     ',
'--                                                                                                    ',
'--',
'-- =============================================================================',
'--',
'-- Plugin        : com.af.plugin.jq.menu',
'-- Description   : This region plugin has been written to generate a dynamic menu',
'--                 See http://www.filamentgroup.com/lab/jquery_ipod_style_and_flyout_menus/',
'--                 for more details about the jQuery plugin in use',
'--',
'-- Author        : Matt Nolan',
'-- Email         : matt.nolan@theapexfreelancer.com',
'-- Twitter       : apex_freelancer',
'-- Webiste       : www.theapexfreelancer.com',
'-- Demo          : http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0:::',
'-- Documentation : http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0:DOCUMENTATION::',
'-- Created       : 18-Jan-2011',
'--',
'-- =============================================================================',
'  --',
'  -- Change Log',
'  --',
'  -- Date         Author              Description',
'  -- ------------ ------------------- --------------------------------------------',
'  -- 18-Jan-2011  Matt Nolan          Plugin Created.',
'  -- 10-Feb-2011  Matt Nolan          Adding in support for ordering the menu',
'  --                                  children and removing logger.log references',
'  -- =============================================================================',
'  --',
'  --',
'  -- ============================================================',
'  -- menu_children - I''ve split getting the mneu items into two',
'  --                 procedures. Menu children is for generating the',
'  --                 menu items (including submenus recursively).',
'  -- ============================================================',
'  PROCEDURE menu_children',
'  ( p_id          IN VARCHAR2',
'  , p_sql         IN VARCHAR2',
'  , p_id_column   IN NUMBER',
'  , p_text_column IN NUMBER',
'  , p_url_column  IN NUMBER',
'  , p_order_by    IN VARCHAR2',
'  )',
'  IS',
'    --',
'    -- Our plugin SQL execution variables',
'    --',
'    l_sql_handler     APEX_PLUGIN_UTIL.t_sql_handler;',
'    l_row_set         APEX_PLUGIN_UTIL.t_column_value_list;',
'    l_sql_exec        VARCHAR2(32767);',
'    --',
'    -- Variables for our ref cursor which is a dynamic SQL statement',
'    --',
'    TYPE ref_cursor IS REF CURSOR;',
'    c_cur             REF_CURSOR;',
'    l_count           PLS_INTEGER;',
'  BEGIN',
'    l_sql_exec := ''SELECT v.*, level',
'                   FROM   (''||p_sql||'') v',
'                   WHERE  level = 1',
'                   CONNECT BY PRIOR id=pid',
'                   START WITH pid = ''||p_id||'' ORDER SIBLINGS BY ''||p_order_by;',
'  ',
'  ',
'    --  Begin to process the query',
'    --',
'    -- We''re going to use the APEX_PLUGIN_UTIL package to do all of our processing as it will',
'    -- take care of the binding to Page items, etc.',
'    --',
'    -- First thing we need to do is create the cursor handle using',
'    -- APEX_PLUGIN_UTIL.GET_SQL_HANDLER',
'    --',
'    -- We''re limiting the minimum number of columns to 2 and the Max to 100.',
'    -- Minimum = 2 because we need the ID and at least one "displayed" column',
'    --',
'    l_sql_handler := APEX_PLUGIN_UTIL.GET_SQL_HANDLER ',
'                 ( p_sql_statement  => l_sql_exec',
'                 , p_min_columns    => 2',
'                 , p_max_columns    => 100 ',
'                 , p_component_name => NULL);',
'    --',
'    -- Now prepare the query. This is where all the binding is done.',
'    --',
'    APEX_PLUGIN_UTIL.PREPARE_QUERY',
'    ( l_sql_handler ) ;',
'    --',
'    -- Now we get the data using get_data. We''re using this one as we don''t need the',
'    -- data to come back in their natural data types. We''re going to slip them into HTML',
'    -- anyway so they will end up being strings.',
'    --',
'    l_row_set := APEX_PLUGIN_UTIL.GET_DATA ',
'                 ( l_sql_handler ) ;',
'    --',
'    --',
'    -- ============================',
'    --    Menu Widget HTML Markup',
'    -- ============================',
'    -- We are going to recursively loop through our heirarchical query as this ',
'    -- represents our menu items and sub menu items',
'    --',
'    -- The way that the APEX_PLUGIN_UTIL deals with the l_row_set that it returns ',
'    -- is : l_row_set(COLUMNS)(ROWS)',
'    --',
'    -- Create the <UL> unordered list of menu items',
'    --',
'    sys.htp.p ( ''   <ul>'' ) ;',
'    FOR row IN 1..l_row_set(1).count  -- Number of rows',
'    LOOP',
'      sys.htp.p ( ''      <li>'' ) ;',
'      --',
'      -- This is for my development environment',
'      --',
'      IF v(''APP_ALIAS'') = ''APEXFREELANCER'' AND v(''APP_PAGE_ID'') = ''18'' THEN',
'        sys.htp.prn ( ''         <a href="javascript:alert(''''You clicked me.'''');">'' ) ;',
'      ELSE',
'        sys.htp.prn ( ''         <a href="''||APEX_APPLICATION.DO_SUBSTITUTIONS(nvl(l_row_set(p_url_column)(row),''#''))||''">'' ) ;',
'      END IF;',
'      sys.htp.p (nvl(APEX_APPLICATION.DO_SUBSTITUTIONS(l_row_set(p_text_column)(row)), ''No text defined!'')||''</a>'' ) ;',
'  ',
'      --',
'      -- Lets check for any sub menu items',
'      --',
'      OPEN c_cur FOR',
'       ''SELECT ( count(*) -1 ) cn_count',
'        FROM ( SELECT connect_by_root(id) root',
'               FROM   (''||p_sql||'')',
'               CONNECT BY pid = prior id',
'             )',
'        WHERE  root = :root_id',
'        GROUP BY root'' USING l_row_set(p_id_column)(row);',
'      LOOP',
'        FETCH c_cur INTO l_count;',
'        EXIT WHEN c_cur%NOTFOUND;',
'        IF l_count > 0 THEN',
'          --',
'          -- Child nodes detected, lets recursively fetch them',
'          --',
'          menu_children',
'          ( p_id          => l_row_set(p_id_column)(row)',
'          , p_sql         => p_sql',
'          , p_id_column   => p_id_column',
'          , p_text_column => p_text_column',
'          , p_url_column  => p_url_column',
'          , p_order_by    => p_order_by',
'          );',
'        END IF;',
'      END LOOP;',
'      CLOSE c_cur;',
'  ',
'      sys.htp.p ( ''      </li>'' ) ;',
'    END LOOP;',
'    sys.htp.p ( ''   </ul>'' ) ;',
'    --',
'    -- Always remember to close your cursor by freeing the SQL Handler',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ( l_sql_handler ) ;',
'    --',
'    -- And if we get an error',
'    --',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    IF c_cur%ISOPEN THEN',
'      CLOSE c_cur;',
'    END IF;',
'    --',
'    -- Again, Close that cursor',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ',
'    ( l_sql_handler ) ;',
'    --',
'    -- And re-raise the error for APEX to show.',
'    --',
'    --logger.log_error();',
'    RAISE;',
'    --',
'  END menu_children;',
'  --',
'  -- ============================================================',
'  --   menu_root - I''ve split getting the menu items into two',
'  --               procedures. Menu root is for generating the',
'  --               menu buttons/holder. I''ve also added support for ',
'  --               turning the existing breadcrumb into a menu',
'  --               as well as page tabs',
'  -- ============================================================',
'  PROCEDURE menu_root',
'  ( p_sourceSQL IN VARCHAR2',
'  , p_region    IN apex_plugin.t_region ',
'  , p_css_class IN VARCHAR2',
'  )',
'  IS',
'  ',
'    l_menu_type       VARCHAR2(50) := ''BUTTON'';',
'    --',
'    -- Our plugin SQL execution variables',
'    --',
'    l_sql_handler     APEX_PLUGIN_UTIL.t_sql_handler;',
'    l_row_set         APEX_PLUGIN_UTIL.t_column_value_list;',
'    l_sql_exec        VARCHAR2(32767);',
'    l_orderBy         apex_application_page_regions.attribute_09%type     := nvl(p_region.attribute_09,''text'');',
'   --',
'    -- We allow the query columns to be defined in any order since we can''t',
'    -- control the order of the query through the interface. Even yhough',
'    -- we show an example... just a little extra flexibility for people who don''t',
'    -- like too much rigid structure',
'    --',
'    l_id_column           PLS_INTEGER;',
'    l_pid_column          PLS_INTEGER;',
'    l_text_column         PLS_INTEGER;',
'    l_url_column          PLS_INTEGER;  ',
'    l_display_seq_column  PLS_INTEGER;  ',
'    --',
'    -- Variables for our ref cursor which is a dynamic SQL statement',
'    --',
'    TYPE ref_cursor IS REF CURSOR;',
'    c_cur             REF_CURSOR;',
'    l_count           PLS_INTEGER;',
'    --',
'    -- The following 2 variables are required for building the DOM ID for ',
'    -- each menu section',
'    --',
'    l_id              VARCHAR2(500);',
'    l_id_type         VARCHAR2(20);',
'    ',
'    l_source_sql      VARCHAR2(32767) := regexp_replace(p_sourceSQL,'':([a-zA-Z0-9_]*)?(\s|$)'',''v(''''\1'''')'');',
'  BEGIN',
'    --IF apex_application.g_debug THEN',
'    --  logger.log(l_source_sql);',
'    --END IF;',
'    ',
'    --',
'    -- Lets make any necessary adjustments to our order by clause for ',
'    -- case insensitivity',
'    --',
'    l_orderBy :=  CASE l_orderBy',
'                    WHEN ''text'' THEN',
'                      ''lower(text)''',
'                    WHEN ''url'' THEN',
'                      ''lower(url), lower(text)''',
'                    ELSE',
'                      l_orderBy||'', lower(text)''',
'                  END;',
'        ',
'    --',
'    -- Lets work out what type of menu we are producing based on checking the',
'    -- SQL query',
'    --',
'    CASE ',
'      WHEN regexp_instr(p_sourceSQL,''page tabs'',1,1,0,''i'') > 0 THEN',
'        l_menu_type := ''PAGETABS'';',
'        l_id_type   := ''pt-'';',
'      WHEN regexp_instr(p_sourceSQL,''apex_application_bc_entries'',1,1,0,''i'') > 0 THEN',
'        l_menu_type := ''BREADCRUMB'';',
'        l_id_type   := ''bc-'';',
'      ELSE',
'        l_menu_type := ''BUTTON'';',
'    END CASE;',
'  ',
'    --',
'    -- The SQL we accept is in a flat structure e.g.',
'    -- SELECT id,pid,text,url',
'    -- FROM   mytable',
'    --',
'    -- We need to turn it into a hierarchical query. This reduces the',
'    -- complexity for the end users query which is an added benefit for them',
'    --',
'    l_sql_exec := ''SELECT v.*, level',
'                   FROM   (''||l_source_sql||'') v',
'                   WHERE  level = 1',
'                   CONNECT BY PRIOR id=pid',
'                   START WITH pid IS NULL',
'                   ORDER BY ''||l_orderBy;',
'  ',
'  ',
'    --  Begin to process the query',
'    --',
'    -- We''re going to use the APEX_PLUGIN_UTIL package to do all of our processing as it will',
'    -- take care of the binding to Page items, etc.',
'    --',
'    -- First thing we need to do is create the cursor handle using',
'    -- APEX_PLUGIN_UTIL.GET_SQL_HANDLER',
'    --',
'    -- We''re limiting the minimum number of columns to 4 and the Max to 4.',
'    -- as 4 the columns make up our menu items, e.g.',
'    --',
'    -- ID   - the unique identifier of our menu item',
'    -- PID  - the parent ID that the menu item belongs to or NULL for the menu root',
'    -- TEXT - the menu item text',
'    -- URL  - the URL to open when the menu item is selected.',
'    --',
'    l_sql_handler := APEX_PLUGIN_UTIL.GET_SQL_HANDLER ',
'                 ( p_sql_statement  => l_sql_exec',
'                 , p_min_columns    => 6',
'                 , p_max_columns    => 6 ',
'                 , p_component_name => NULL);',
'    --',
'    -- Now prepare the query. This is where all the binding is done.',
'    --',
'    APEX_PLUGIN_UTIL.PREPARE_QUERY ( l_sql_handler ) ;',
'',
'    --',
'    -- Lets perform a check and make sure our query has all the columns we require',
'    --',
'    FOR col IN 1..l_sql_handler.column_list.count',
'    LOOP',
'     CASE upper(l_sql_handler.column_list ( col ) .col_name )',
'       WHEN ''ID'' THEN',
'         l_id_column := col;',
'       WHEN ''PID'' THEN',
'         l_pid_column := col;',
'       WHEN ''TEXT'' THEN',
'         l_text_column := col;',
'       WHEN ''URL'' THEN',
'         l_url_column := col;',
'       WHEN ''DISPLAY_SEQ'' THEN',
'         l_display_seq_column := col;',
'       ELSE',
'         NULL;',
'     END CASE;',
'    END LOOP;',
'    --',
'    -- We will raise an error if our expected column names are not defined',
'    --',
'    IF l_id_column IS NULL THEN',
'      raise_application_error(-20001, ''ID column not defined in SQL query'');',
'    ELSIF l_pid_column IS NULL THEN',
'      raise_application_error(-20001, ''PID column not defined in SQL query'');',
'    ELSIF l_text_column IS NULL THEN',
'      raise_application_error(-20001, ''TEXT column not defined in SQL query'');',
'    ELSIF l_url_column IS NULL THEN',
'      raise_application_error(-20001, ''URL column not defined in SQL query'');',
'    ELSIF l_display_seq_column IS NULL THEN',
'      raise_application_error(-20001, ''DISPLAY_SEQ column not defined in SQL query'');',
'    END IF;',
'  ',
'    --',
'    -- Now we get the data using get_data. We''re using this one as we don''t need the',
'    -- data to come back in their natural data types. We''re going to slip them into HTML',
'    -- anyway so they will end up being strings.',
'    --',
'    l_row_set := APEX_PLUGIN_UTIL.GET_DATA ( l_sql_handler ) ;',
'',
'    IF l_menu_type = ''BUTTON'' THEN',
'      --',
'      -- ============================',
'      --    Menu Widget HTML Markup',
'      -- ============================',
'      -- We are going to loop through level 1 of our heirarchical query as this ',
'      -- represents our buttons',
'      --',
'      -- The way that the APEX_PLUGIN_UTIL deals with the l_row_set that it returns is :',
'      --      l_row_set(COLUMNS)(ROWS)',
'      --',
'      sys.htp.p ( ''<div class="fg-toolbar">'' ) ;',
'      sys.htp.p ( ''<div class="fg-buttonset">'' ) ;',
'      FOR row IN 1..l_row_set(1).count  -- Number of rows (via accessing column 1)',
'      LOOP',
'        --',
'        -- We will generate our DOM ID, we need to cater for mutliple uses of the',
'        -- same menu for creadcrumbs, tabs, custom query etc.',
'        --',
'        l_id := ''jqmenu-''||l_id_type|| replace(l_row_set(l_text_column)(row),'' '','''');',
'        sys.htp.p ( ''<a id="''||l_id||''" href="#" class="fg-button ui-state-default ui-corner-all ''||p_css_class||''"><span>'' ) ;',
'        --',
'        -- We add a jQuery UI icon to indicate that the button is a drop down menu',
'        --',
'        sys.htp.p (l_row_set(l_text_column)(row)||''</span><span class="ui-icon ui-icon-triangle-1-s" style="display:inline;">&nbsp;&nbsp;&nbsp;&nbsp;</span></a>'' ) ;',
'      END LOOP;',
'      sys.htp.p ( ''</div>'' ) ;',
'      sys.htp.p ( ''</div>'' ) ;',
'    END IF;',
'      ',
'    FOR row IN 1..l_row_set(1).count  -- Number of rows',
'    LOOP',
'      --',
'      -- We will generate our DOM ID, we need to cater for mutliple uses of the',
'      -- same menu for breadcrumbs, tabs, custom query etc.',
'      --',
'      l_id := ''jqmenu-''||l_id_type|| replace(l_row_set(l_text_column)(row),'' '','''');',
'      --',
'      -- We need to wrap our menu HTML into a hidden DIV as the contents will only be',
'      -- displayed when clicking on the menu',
'      --',
'      sys.htp.p (''<div class="hidden ''||l_id||''">'' ) ;',
'      --',
'      -- Lets retrieve our menu items, I perform the connect by to keep things',
'      -- simple for the developer',
'      --',
'      OPEN c_cur FOR',
'       ''SELECT ( count(*) -1 ) cn_count',
'        FROM ( SELECT connect_by_root(id) root',
'               FROM   (''||l_source_sql||'')',
'               CONNECT BY pid = prior id',
'             )',
'        WHERE  root = :root_id',
'        GROUP BY root'' USING l_row_set(l_id_column)(row);',
'      LOOP',
'        FETCH c_cur INTO l_count;',
'        EXIT WHEN c_cur%NOTFOUND;',
'        IF l_count > 0 THEN',
'          --',
'          -- Menu child items detected, lets fetch them',
'          --',
'          menu_children',
'          ( p_id          => l_row_set(l_id_column)(row)',
'          , p_sql         => l_source_sql',
'          , p_id_column   => l_id_column',
'          , p_text_column => l_text_column',
'          , p_url_column  => l_url_column',
'          , p_order_by    => l_orderBy',
'          );',
'        END IF;',
'      END LOOP;',
'      CLOSE c_cur;',
'  ',
'      sys.htp.p ( ''</div>'' ) ;',
'    END LOOP;',
'    --',
'    -- Always remember to close your cursor by freeing the SQL Handler',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ( l_sql_handler ) ;',
'    --',
'    -- And if we ge an error',
'    --',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    IF c_cur%ISOPEN THEN',
'      CLOSE c_cur;',
'    END IF;',
'    --',
'    -- Again, Close that cursor',
'    --',
'    APEX_PLUGIN_UTIL.free_sql_handler ( l_sql_handler ) ;',
'    --',
'    -- And re-raise the error for APEX to show.',
'    --',
'    --logger.log_error();',
'    raise;',
'    --',
'  END menu_root;',
'  -- =======================================================================================',
'  -- apexplugin_render - The Entry Point for the plugin. This is what gets executed when the',
'  --                     plugin is called.',
'  -- =======================================================================================',
'  FUNCTION apexplugin_render',
'  ( p_region              IN apex_plugin.t_region',
'  , p_plugin              IN apex_plugin.t_plugin',
'  , p_is_printer_friendly IN BOOLEAN ',
'  ) RETURN apex_plugin.t_region_render_result',
'  IS',
'    --',
'    -- Lets identify our attributes to make the code more readable',
'    --',
'    l_sourceSQL           apex_application_page_regions.region_source%type    := p_region.source;',
'    l_width               NUMBER                                              := to_number(nvl(p_region.attribute_01,''180''));',
'    l_maxHeight           NUMBER                                              := to_number(nvl(p_region.attribute_02,''180''));',
'    l_flyout              apex_application_page_regions.attribute_03%type     := nvl(p_region.attribute_03,''true'');',
'    l_showSpeed           NUMBER                                              := to_number(nvl(p_region.attribute_04,''200''));',
'    l_crumbDefaultText    apex_application_page_regions.attribute_05%type     := nvl(p_region.attribute_05,''Choose an option'');',
'    l_posOpts             apex_application_page_regions.attribute_06%type     := nvl(p_region.attribute_06,''{"posX":"left", "posY":"bottom", "offsetX":0,"offsetX":0,"directionH":"right","directionV":"down","detectH":true,"detectV":true,"linkToFront":'
||'false}'');',
'    l_backLink            apex_application_page_regions.attribute_07%type     := nvl(p_region.attribute_07,''true'');',
'    l_backLinkText        apex_application_page_regions.attribute_08%type     := nvl(p_region.attribute_08,''Back'');',
'    --l_topLinkText         apex_application_page_regions.attribute_09%type     := nvl(p_region.attribute_09,''text'');',
'    --',
'    -- Swapping out topLinktext for ordering the menu entries',
'    --',
'    l_orderBy             apex_application_page_regions.attribute_09%type     := nvl(p_region.attribute_09,''text'');',
'    l_crossSpeed          NUMBER                                              := to_number(nvl(p_region.attribute_10,''200''));',
'    --',
'    l_startup_code        VARCHAR2 ( 32767 ) ;',
'    l_css_class           VARCHAR2 ( 200 ) ;',
'    --',
'  BEGIN',
'    --',
'    -- During plug-in development it''s very helpful to have some debug information',
'    --',
'    IF apex_application.g_debug THEN',
'      apex_plugin_util.debug_region ',
'      ( p_plugin              => p_plugin',
'      , p_region              => p_region',
'      , p_is_printer_friendly => p_is_printer_friendly',
'      ) ;',
'    END IF;',
'  ',
'    --',
'    -- In case we have multiple menu''s plugin defind on the page for different',
'    -- purposes we need to distinguish between them',
'    --',
'    CASE ',
'      WHEN regexp_instr(l_sourceSQL,''page tabs'',1,1,0,''i'') > 0 THEN',
'        l_css_class   := ''jq-menu-pt'';',
'      WHEN regexp_instr(l_sourceSQL,''apex_application_bc_entries'',1,1,0,''i'') > 0 THEN',
'        l_css_class   := ''jq-menu-bc'';',
'      ELSE',
'        l_css_class   := ''jq-menu-''||p_region.static_id;',
'    END CASE;',
'  ',
'    --',
'    -- Include CSS.',
'    --',
'    apex_css.add_file ',
'    ( p_name      => ''apex.jquery.menu''',
'    , p_directory => p_plugin.file_prefix',
'    , p_version   => NULL',
'    );',
'    --',
'    -- Include Javascript.',
'    --',
'    apex_javascript.add_library ',
'    ( p_name      => ''apex.jquery.menu.min''',
'    , p_directory => p_plugin.file_prefix',
'    , p_version   => NULL',
'    ) ;',
'    -- ',
'    -- This is the styling for our buttonset',
'    -- See http://www.filamentgroup.com/lab/styling_buttons_and_toolbars_with_the_jquery_ui_css_framework/',
'    -- for more details',
'    --',
'    -- Feel free to take this out and place into a stylesheet and/or modify',
'    --',
'    sys.htp.p ( ''',
'          <style type="text/css">     ',
'          .hidden { display:none; }',
'          .fg-toolbar { padding: .5em; margin: 0; }',
'          .fg-toolbar .fg-buttonset { margin-right:1.5em; padding-left: 1px; }',
'          .fg-toolbar .fg-button { font-size: 1em;  }',
'          .fg-button { outline: 0; margin:0 4px 0 0; padding: .4em 1em; text-decoration:none !important; cursor:pointer; position: relative; text-align: center; zoom: 1; }',
'          </style>'' ) ;',
'    --',
'    -- Create the code that will form the ONLOAD event.',
'    --',
'    l_startup_code := ',
'    --',
'    -- Note: apex_javascript.add_attribute does not work for select lists',
'    --       which have "true" "false" as they are interprested as strings',
'    --       also sub objects in 1 attribute field are escaped which I',
'    --       don''t want to occur, e.g. posOpts',
'    --',
'    ''(function($){ $(".''||l_css_class||''").each(function() {''||',
'      ''($("."+$(this).attr("id")).length) ? $(this).menu({''||',
'         apex_javascript.add_attribute(''showSpeed'',  l_showSpeed)||',
'         ''content: $("."+$(this).attr("id")).html(),''||',
'         apex_javascript.add_attribute(''width'',  l_width)||',
'         apex_javascript.add_attribute(''maxHeight'',  l_maxHeight)||',
'         ''flyOut: ''||l_flyout||'',''||',
'         apex_javascript.add_attribute(''crumbDefaultText'',  l_crumbDefaultText)||',
'         ''posOpts: ''||l_posOpts||'',''||',
'         ''backLink: ''||l_backLink||'',''||',
'         apex_javascript.add_attribute(''backLinkText'',  l_backLinkText)||',
'         --apex_javascript.add_attribute(''topLinkText'',  l_topLinkText)|| MN - 10-FEB-2011',
'         apex_javascript.add_attribute(''crossSpeed'',  l_crossSpeed, false, false)||',
'      ''}) : null;''||',
'    ''});})(apex.jQuery);'';',
'    --',
'    -- Add the Javascript ONLOAD code to create the menu',
'    --',
'    apex_javascript.add_onload_code ',
'    ( p_code => l_startup_code ',
'    );',
'    --',
'    -- Lets render the HTML markup.',
'    --',
'    menu_root',
'    ( p_sourceSQL => l_sourceSQL',
'    , p_region    => p_region',
'    , p_css_class => l_css_class',
'    );',
'    --',
'    -- Plugin Code End',
'    --',
'    RETURN NULL;',
'  EXCEPTION',
'  WHEN OTHERS THEN',
'    --',
'    -- And re-raise the error for APEX to show.',
'    --',
'    --logger.log_error();',
'    RAISE;',
'    --',
'  END apexplugin_render;'))
,p_api_version=>1
,p_render_function=>'apexplugin_render'
,p_standard_attributes=>'SOURCE_SQL'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	Please read the <a href="http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0:DOCUMENTATION" target="_blank">documentation</a> for more info</p>',
''))
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.theapexfreelancer.com/apex/f?p=APEXFREELANCER:JQUERY_MENU_PLUGIN:0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36385867130588412)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'width'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'180'
,p_display_length=>10
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Width of menu container. Required for hierarchical menus (flyout, ipod) to calculate widths of child menus'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36386454101594191)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'maxHeight'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'180'
,p_display_length=>10
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Maximum height of menu (if ipod-style, height does not include breadcrumb, which can vary in height depending on content)'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36387071070599010)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'flyOut'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Multi-level menus are ipod-style by default (false); set this option to "true" to override and make flyout the default instead.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(36387647306601616)
,p_plugin_attribute_id=>wwv_flow_api.id(36387071070599010)
,p_display_sequence=>10
,p_display_value=>'true'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(36388050423602535)
,p_plugin_attribute_id=>wwv_flow_api.id(36387071070599010)
,p_display_sequence=>20
,p_display_value=>'false'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36388647091611059)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'showSpeed'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'200'
,p_display_length=>10
,p_max_length=>5
,p_is_translatable=>false
,p_help_text=>'Speed to show/hide the menu in milliseconds.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36389266830616729)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'crumbDefaultText'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Choose an option'
,p_display_length=>50
,p_max_length=>100
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(36387071070599010)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'false'
,p_help_text=>'Text that appears in the ipod-style footer before a child menu is opened.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36391862253710060)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'posOpts'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "posX": "left",',
'    "posY": "bottom",',
'    "offsetX": 0,',
'    "offsetX": 0,',
'    "directionH": "right",',
'    "directionV": "down",',
'    "detectH": true,',
'    "detectV": true,',
'    "linkToFront": false',
'}'))
,p_display_length=>50
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>positionOpts (defaults listed below)</strong> - location and orientation of the menu, relative to the button/link used to open it',
'	<ul>',
'	<li><strong>posX: ''left''</strong> - left side of the menu aligned with a side of the button, left or right</li>',
'	<li><strong>posY: ''bottom''</strong> - top of the menu aligned with a either top or bottom of the menu</li>',
'	<li><strong>offsetX: 0</strong> - number of pixels to offset the menu left/right</li>',
'',
'	<li><strong>offsetY: 0</strong> - number of pixels to offset the menu top/bottom</li>',
'	<li><strong>directionH: ''right''</strong> - horizontal direction in which the menu will open, to the right or left</li>',
'	<li><strong>directionV: ''down''</strong> - vertical direction in which the menu will open, up or down</li>',
'	<li><strong>detectH: true</strong> - do horizontal collision detection</li>',
'',
'	<li><strong>detectV: true</strong> - do vertical collision detection</li>',
'	<li><strong>linkToFront: false</strong> - set to "true," this option will create a clone of the button and place it over the menu for an overlapping visual effect</li>',
'	</ul>',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36397975703310165)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'backLink'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'true'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(36387071070599010)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'false'
,p_lov_type=>'STATIC'
,p_help_text=>'When set to "true", this option shows a ''back'' link under the menu instead of a full breadcrumb in the ipod-style menu'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(36398545706310924)
,p_plugin_attribute_id=>wwv_flow_api.id(36397975703310165)
,p_display_sequence=>10
,p_display_value=>'true'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(36398947783311554)
,p_plugin_attribute_id=>wwv_flow_api.id(36397975703310165)
,p_display_sequence=>20
,p_display_value=>'false'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36400349300321470)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'backLinkText'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Back'
,p_display_length=>50
,p_max_length=>100
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(36387071070599010)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'false'
,p_help_text=>'Text for the back link (i.e., could also say ''previous''). Defaults to "Back"'
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(35634120623600827)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>5
,p_prompt=>'Order By'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'text'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35635123393601633)
,p_plugin_attribute_id=>wwv_flow_api.id(35634120623600827)
,p_display_sequence=>10
,p_display_value=>'ID'
,p_return_value=>'id'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35644545415872893)
,p_plugin_attribute_id=>wwv_flow_api.id(35634120623600827)
,p_display_sequence=>15
,p_display_value=>'PID'
,p_return_value=>'pid'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35635530666603726)
,p_plugin_attribute_id=>wwv_flow_api.id(35634120623600827)
,p_display_sequence=>20
,p_display_value=>'TEXT'
,p_return_value=>'text'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35635940016606436)
,p_plugin_attribute_id=>wwv_flow_api.id(35634120623600827)
,p_display_sequence=>30
,p_display_value=>'DISPLAY SEQUENCE'
,p_return_value=>'display_seq'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(35636342094607002)
,p_plugin_attribute_id=>wwv_flow_api.id(35634120623600827)
,p_display_sequence=>40
,p_display_value=>'URL'
,p_return_value=>'url'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(36401549777331028)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'crossSpeed'
,p_attribute_type=>'NUMBER'
,p_is_required=>false
,p_default_value=>'200'
,p_display_length=>10
,p_max_length=>4
,p_is_translatable=>false
,p_help_text=>'Transition effect speed for multi-level menus '
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(8705092465043770)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>5
,p_sql_max_column_count=>5
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'<!--',
'.style1 {font-family: "Courier New", Courier, monospace}',
'-->',
'</style>',
'<p class="style1">SELECT id</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pid</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;text</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;url</p>',
'<p class="style1">,&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;display_seq</p>',
'<p class="style1">FROM&nbsp;&nbsp;&nbsp;[TABLE NAME]</p>'))
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A205374796C657320666F72206A5175657279206D656E75207769646765740A417574686F723A094D61676769652057616368732C206D61676769654066696C616D656E7467726F75702E636F6D0A446174653A090953657074656D62657220323030';
wwv_flow_api.g_varchar2_table(2) := '380A2A2F0A0A0A2F2A205245515549524544205354594C4553202D20746865206D656E75732077696C6C206F6E6C792072656E64657220636F72726563746C7920776974682074686573652072756C6573202A2F090A0A2E66672D6D656E752D636F6E74';
wwv_flow_api.g_varchar2_table(3) := '61696E6572207B20706F736974696F6E3A206162736F6C7574653B20746F703A303B206C6566743A2D39393970783B2070616464696E673A202E34656D3B20206F766572666C6F773A2068696464656E3B207D0A2E66672D6D656E752D636F6E7461696E';
wwv_flow_api.g_varchar2_table(4) := '65722E66672D6D656E752D666C796F7574207B206F766572666C6F773A2076697369626C653B207D0A0A2E66672D6D656E752C202E66672D6D656E7520756C207B206C6973742D7374796C652D747970653A6E6F6E653B2070616464696E673A20303B20';
wwv_flow_api.g_varchar2_table(5) := '6D617267696E3A303B207D0A0A2E66672D6D656E75207B20706F736974696F6E3A72656C61746976653B207D0A2E66672D6D656E752D666C796F7574202E66672D6D656E75207B20706F736974696F6E3A7374617469633B207D0A0A2E66672D6D656E75';
wwv_flow_api.g_varchar2_table(6) := '20756C207B20706F736974696F6E3A6162736F6C7574653B20746F703A303B207D0A2E66672D6D656E7520756C20756C207B20746F703A2D3170783B207D0A0A2E66672D6D656E752D636F6E7461696E65722E66672D6D656E752D69706F64202E66672D';
wwv_flow_api.g_varchar2_table(7) := '6D656E752D636F6E74656E742C200A2E66672D6D656E752D636F6E7461696E65722E66672D6D656E752D69706F64202E66672D6D656E752D636F6E74656E7420756C207B206261636B67726F756E643A206E6F6E652021696D706F7274616E743B207D0A';
wwv_flow_api.g_varchar2_table(8) := '0A2E66672D6D656E752E66672D6D656E752D7363726F6C6C2C0A2E66672D6D656E7520756C2E66672D6D656E752D7363726F6C6C207B206F766572666C6F773A207363726F6C6C3B20206F766572666C6F772D783A2068696464656E3B207D0A0A2E6667';
wwv_flow_api.g_varchar2_table(9) := '2D6D656E75206C69207B20636C6561723A626F74683B20666C6F61743A6C6566743B2077696474683A313030253B206D617267696E3A20303B2070616464696E673A303B20626F726465723A20303B207D090A2E66672D6D656E75206C69206C69207B20';
wwv_flow_api.g_varchar2_table(10) := '666F6E742D73697A653A31656D3B207D202F2A20696E6E6572206C6920666F6E742073697A65206D75737420626520726573657420736F2074686174207468657920646F6E277420626C6F77207570202A2F0A0A2E66672D6D656E752D666C796F757420';
wwv_flow_api.g_varchar2_table(11) := '756C20756C207B2070616464696E673A202E34656D3B207D0A2E66672D6D656E752D666C796F7574206C69207B20706F736974696F6E3A72656C61746976653B207D0A0A2E66672D6D656E752D7363726F6C6C207B206F766572666C6F773A207363726F';
wwv_flow_api.g_varchar2_table(12) := '6C6C3B206F766572666C6F772D783A2068696464656E3B207D0A0A2E66672D6D656E752D62726561646372756D62207B206D617267696E3A20303B2070616464696E673A20303B207D0A0A2E66672D6D656E752D666F6F746572207B20206D617267696E';
wwv_flow_api.g_varchar2_table(13) := '2D746F703A202E34656D3B2070616464696E673A202E34656D3B207D0A2E66672D6D656E752D686561646572207B20206D617267696E2D626F74746F6D3A202E34656D3B2070616464696E673A202E34656D3B207D0A0A2E66672D6D656E752D62726561';
wwv_flow_api.g_varchar2_table(14) := '646372756D62206C69207B20666C6F61743A206C6566743B206C6973742D7374796C653A206E6F6E653B206D617267696E3A20303B2070616464696E673A2030202E32656D3B20666F6E742D73697A653A202E39656D3B206F7061636974793A202E373B';
wwv_flow_api.g_varchar2_table(15) := '207D0A2E66672D6D656E752D62726561646372756D62206C692E66672D6D656E752D707265762D6C6973742C0A2E66672D6D656E752D62726561646372756D62206C692E66672D6D656E752D63757272656E742D6372756D62207B20636C6561723A206C';
wwv_flow_api.g_varchar2_table(16) := '6566743B20666C6F61743A206E6F6E653B206F7061636974793A20313B207D0A2E66672D6D656E752D62726561646372756D62206C692E66672D6D656E752D63757272656E742D6372756D62207B2070616464696E672D746F703A202E32656D3B207D0A';
wwv_flow_api.g_varchar2_table(17) := '0A2E66672D6D656E752D62726561646372756D6220612C200A2E66672D6D656E752D62726561646372756D62207370616E207B20666C6F61743A206C6566743B207D0A0A2E66672D6D656E752D666F6F74657220613A6C696E6B2C0A2E66672D6D656E75';
wwv_flow_api.g_varchar2_table(18) := '2D666F6F74657220613A76697369746564207B20666C6F61743A6C6566743B2077696474683A313030253B20746578742D6465636F726174696F6E3A206E6F6E653B207D0A2E66672D6D656E752D666F6F74657220613A686F7665722C0A2E66672D6D65';
wwv_flow_api.g_varchar2_table(19) := '6E752D666F6F74657220613A616374697665207B20207D0A0A2E66672D6D656E752D666F6F7465722061207370616E207B20666C6F61743A6C6566743B20637572736F723A20706F696E7465723B207D0A0A2E66672D6D656E752D62726561646372756D';
wwv_flow_api.g_varchar2_table(20) := '62202E66672D6D656E752D707265762D6C69737420613A6C696E6B2C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C69737420613A766973697465642C0A2E66672D6D656E752D62726561646372756D62202E';
wwv_flow_api.g_varchar2_table(21) := '66672D6D656E752D707265762D6C69737420613A686F7665722C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C69737420613A616374697665207B206261636B67726F756E642D696D6167653A206E6F6E653B';
wwv_flow_api.g_varchar2_table(22) := '20746578742D6465636F726174696F6E3A6E6F6E653B207D0A090A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C6973742061207B20666C6F61743A206C6566743B2070616464696E672D72696768743A202E34';
wwv_flow_api.g_varchar2_table(23) := '656D3B207D0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D707265762D6C6973742061202E75692D69636F6E207B20666C6F61743A206C6566743B207D0A090A2E66672D6D656E752D62726561646372756D62202E66672D6D';
wwv_flow_api.g_varchar2_table(24) := '656E752D63757272656E742D6372756D6220613A6C696E6B2C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D63757272656E742D6372756D6220613A766973697465642C0A2E66672D6D656E752D62726561646372756D6220';
wwv_flow_api.g_varchar2_table(25) := '2E66672D6D656E752D63757272656E742D6372756D6220613A686F7665722C0A2E66672D6D656E752D62726561646372756D62202E66672D6D656E752D63757272656E742D6372756D6220613A616374697665207B20646973706C61793A626C6F636B3B';
wwv_flow_api.g_varchar2_table(26) := '206261636B67726F756E642D696D6167653A6E6F6E653B20666F6E742D73697A653A312E33656D3B20746578742D6465636F726174696F6E3A6E6F6E653B207D0A0A0A0A2F2A205245515549524544204C494E4B205354594C45533A206C696E6B732061';
wwv_flow_api.g_varchar2_table(27) := '72652022646973706C61793A626C6F636B222062792064656661756C743B20696620746865206D656E75206F7074696F6E73206172652073706C697420696E746F200A0973656C65637461626C65206E6F6465206C696E6B7320616E6420276E65787427';
wwv_flow_api.g_varchar2_table(28) := '206C696E6B732C207468652073637269707420666C6F61747320746865206E6F6465206C696E6B73206C65667420616E6420666C6F6174732074686520276E65787427206C696E6B7320746F20746865207269676874092A2F0A0A2E66672D6D656E7520';
wwv_flow_api.g_varchar2_table(29) := '613A6C696E6B2C0A2E66672D6D656E7520613A766973697465642C0A2E66672D6D656E7520613A686F7665722C0A2E66672D6D656E7520613A616374697665207B20666C6F61743A6C6566743B2077696474683A3932253B2070616464696E673A2E3365';
wwv_flow_api.g_varchar2_table(30) := '6D2033253B20746578742D6465636F726174696F6E3A6E6F6E653B206F75746C696E653A20302021696D706F7274616E743B207D0A0A2E66672D6D656E752061207B20626F726465723A2031707820646173686564207472616E73706172656E743B207D';
wwv_flow_api.g_varchar2_table(31) := '0A0A2E66672D6D656E7520612E75692D73746174652D64656661756C743A6C696E6B2C0A2E66672D6D656E7520612E75692D73746174652D64656661756C743A766973697465642C0A2E66672D6D656E7520612E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(32) := '3A686F7665722C0A2E66672D6D656E7520612E75692D73746174652D64656661756C743A6163746976652C0A2E66672D6D656E7520612E75692D73746174652D686F7665723A6C696E6B2C0A2E66672D6D656E7520612E75692D73746174652D686F7665';
wwv_flow_api.g_varchar2_table(33) := '723A766973697465642C0A2E66672D6D656E7520612E75692D73746174652D686F7665723A686F7665722C0A2E66672D6D656E7520612E75692D73746174652D686F7665723A6163746976652C0A202E66672D6D656E7520612E75692D73746174652D61';
wwv_flow_api.g_varchar2_table(34) := '63746976653A6C696E6B2C0A202E66672D6D656E7520612E75692D73746174652D6163746976653A766973697465642C0A202E66672D6D656E7520612E75692D73746174652D6163746976653A686F7665722C0A2E66672D6D656E7520612E75692D7374';
wwv_flow_api.g_varchar2_table(35) := '6174652D6163746976653A616374697665207B20626F726465722D7374796C653A20736F6C69643B20666F6E742D7765696768743A206E6F726D616C3B207D0A0A2E66672D6D656E752061207370616E207B20646973706C61793A626C6F636B3B206375';
wwv_flow_api.g_varchar2_table(36) := '72736F723A706F696E7465723B207D0A0A0A202F2A20535547474553544544205354594C4553202D20666F72207573652077697468206A5175657279205549205468656D65726F6C6C657220435353202A2F090A200A2E66672D6D656E752D696E646963';
wwv_flow_api.g_varchar2_table(37) := '61746F72207370616E207B20666C6F61743A6C6566743B207D0A2E66672D6D656E752D696E64696361746F72207370616E2E75692D69636F6E207B20666C6F61743A72696768743B207D0A0A2E66672D6D656E752D636F6E74656E742E75692D77696467';
wwv_flow_api.g_varchar2_table(38) := '65742D636F6E74656E742C200A2E66672D6D656E752D636F6E74656E7420756C2E75692D7769646765742D636F6E74656E74207B20626F726465723A303B207D0A0A0A2F2A2049434F4E5320414E44204449564944455253202A2F0A0A2E66672D6D656E';
wwv_flow_api.g_varchar2_table(39) := '752E66672D6D656E752D6861732D69636F6E7320613A6C696E6B2C0A2E66672D6D656E752E66672D6D656E752D6861732D69636F6E7320613A766973697465642C0A2E66672D6D656E752E66672D6D656E752D6861732D69636F6E7320613A686F766572';
wwv_flow_api.g_varchar2_table(40) := '2C0A2E66672D6D656E752E66672D6D656E752D6861732D69636F6E7320613A616374697665207B2070616464696E672D6C6566743A323070783B207D0A0A2E66672D6D656E75202E686F72697A6F6E74616C2D646976696465722068722C202E66672D6D';
wwv_flow_api.g_varchar2_table(41) := '656E75202E686F72697A6F6E74616C2D64697669646572207370616E207B2070616464696E673A303B206D617267696E3A357078202E36656D3B207D0A2E66672D6D656E75202E686F72697A6F6E74616C2D64697669646572206872207B20626F726465';
wwv_flow_api.g_varchar2_table(42) := '723A303B206865696768743A3170783B207D0A2E66672D6D656E75202E686F72697A6F6E74616C2D64697669646572207370616E207B20666F6E742D73697A653A2E39656D3B20746578742D7472616E73666F726D3A207570706572636173653B207061';
wwv_flow_api.g_varchar2_table(43) := '6464696E672D6C6566743A2E32656D3B207D0A0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(36395247204230720)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_file_name=>'apex.jquery.menu.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220616C6C55494D656E75733D5B5D3B2866756E6374696F6E2863297B632E666E2E6D656E753D66756E6374696F6E2866297B76617220653D746869733B76617220663D663B76617220643D6E6577206228652C66293B616C6C55494D656E75732E';
wwv_flow_api.g_varchar2_table(2) := '707573682864293B632874686973292E6D6F757365646F776E2866756E6374696F6E28297B69662821642E6D656E754F70656E297B642E73686F774C6F6164696E6728297D7D292E636C69636B2866756E6374696F6E28297B696628642E6D656E754F70';
wwv_flow_api.g_varchar2_table(3) := '656E3D3D66616C7365297B642E73686F774D656E7528297D656C73657B642E6B696C6C28297D72657475726E2066616C73657D297D3B66756E6374696F6E206228672C66297B76617220683D746869733B76617220673D632867293B76617220643D6328';
wwv_flow_api.g_varchar2_table(4) := '273C64697620636C6173733D2266672D6D656E752D636F6E7461696E65722075692D7769646765742075692D7769646765742D636F6E74656E742075692D636F726E65722D616C6C223E272B662E636F6E74656E742B223C2F6469763E22293B74686973';
wwv_flow_api.g_varchar2_table(5) := '2E6D656E754F70656E3D66616C73653B746869732E6D656E754578697374733D66616C73653B76617220663D632E657874656E64287B636F6E74656E743A6E756C6C2C77696474683A3138302C6D61784865696768743A3138302C706F736974696F6E4F';
wwv_flow_api.g_varchar2_table(6) := '7074733A7B706F73583A226C656674222C706F73593A22626F74746F6D222C6F6666736574583A302C6F6666736574593A302C646972656374696F6E483A227269676874222C646972656374696F6E563A22646F776E222C646574656374483A74727565';
wwv_flow_api.g_varchar2_table(7) := '2C646574656374563A747275652C6C696E6B546F46726F6E743A66616C73657D2C73686F7753706565643A3230302C63616C6C65724F6E53746174653A2275692D73746174652D616374697665222C6C6F6164696E6753746174653A2275692D73746174';
wwv_flow_api.g_varchar2_table(8) := '652D6C6F6164696E67222C6C696E6B486F7665723A2275692D73746174652D686F766572222C6C696E6B486F7665725365636F6E646172793A226C692D686F766572222C63726F737353706565643A3230302C6372756D6244656661756C74546578743A';
wwv_flow_api.g_varchar2_table(9) := '2243686F6F736520616E206F7074696F6E3A222C6261636B4C696E6B3A747275652C6261636B4C696E6B546578743A224261636B222C666C794F75743A66616C73652C666C794F75744F6E53746174653A2275692D73746174652D64656661756C74222C';
wwv_flow_api.g_varchar2_table(10) := '6E6578744D656E754C696E6B3A2275692D69636F6E2D747269616E676C652D312D65222C746F704C696E6B546578743A22416C6C222C6E6578744372756D624C696E6B3A2275692D69636F6E2D63617261742D312D65227D2C66293B76617220653D6675';
wwv_flow_api.g_varchar2_table(11) := '6E6374696F6E28297B632E6561636828616C6C55494D656E75732C66756E6374696F6E286A297B696628616C6C55494D656E75735B6A5D2E6D656E754F70656E297B616C6C55494D656E75735B6A5D2E6B696C6C28297D7D297D3B746869732E6B696C6C';
wwv_flow_api.g_varchar2_table(12) := '3D66756E6374696F6E28297B672E72656D6F7665436C61737328662E6C6F6164696E675374617465292E72656D6F7665436C617373282266672D6D656E752D6F70656E22292E72656D6F7665436C61737328662E63616C6C65724F6E5374617465293B64';
wwv_flow_api.g_varchar2_table(13) := '2E66696E6428226C6922292E72656D6F7665436C61737328662E6C696E6B486F7665725365636F6E64617279292E66696E6428226122292E72656D6F7665436C61737328662E6C696E6B486F766572293B696628662E666C794F75744F6E537461746529';
wwv_flow_api.g_varchar2_table(14) := '7B642E66696E6428226C69206122292E72656D6F7665436C61737328662E666C794F75744F6E5374617465297D696628662E63616C6C65724F6E5374617465297B672E72656D6F7665436C61737328662E63616C6C65724F6E5374617465297D69662864';
wwv_flow_api.g_varchar2_table(15) := '2E697328222E66672D6D656E752D69706F642229297B682E72657365744472696C6C646F776E4D656E7528297D696628642E697328222E66672D6D656E752D666C796F75742229297B682E7265736574466C796F75744D656E7528297D642E706172656E';
wwv_flow_api.g_varchar2_table(16) := '7428292E6869646528293B682E6D656E754F70656E3D66616C73653B6328646F63756D656E74292E756E62696E642822636C69636B222C65293B6328646F63756D656E74292E756E62696E6428226B6579646F776E22297D3B746869732E73686F774C6F';
wwv_flow_api.g_varchar2_table(17) := '6164696E673D66756E6374696F6E28297B672E616464436C61737328662E6C6F6164696E675374617465297D3B746869732E73686F774D656E753D66756E6374696F6E28297B6528293B69662821682E6D656E75457869737473297B682E637265617465';
wwv_flow_api.g_varchar2_table(18) := '28297D672E616464436C617373282266672D6D656E752D6F70656E22292E616464436C61737328662E63616C6C65724F6E5374617465293B642E706172656E7428292E73686F7728292E636C69636B2866756E6374696F6E28297B682E6B696C6C28293B';
wwv_flow_api.g_varchar2_table(19) := '72657475726E2066616C73657D293B642E6869646528292E736C696465446F776E28662E73686F775370656564292E66696E6428222E66672D6D656E753A657128302922293B682E6D656E754F70656E3D747275653B672E72656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(20) := '662E6C6F6164696E675374617465293B6328646F63756D656E74292E636C69636B2865293B6328646F63756D656E74292E6B6579646F776E2866756E6374696F6E286C297B766172206D3B6966286C2E7768696368213D2222297B6D3D6C2E7768696368';
wwv_flow_api.g_varchar2_table(21) := '7D656C73657B6966286C2E63686172436F6465213D2222297B6D3D6C2E63686172436F64657D656C73657B6966286C2E6B6579436F6465213D2222297B6D3D6C2E6B6579436F64657D7D7D766172206B3D2863286C2E746172676574292E706172656E74';
wwv_flow_api.g_varchar2_table(22) := '73282264697622292E697328222E66672D6D656E752D666C796F75742229293F22666C796F7574223A2269706F64223B737769746368286D297B636173652033373A6966286B3D3D22666C796F757422297B63286C2E746172676574292E747269676765';
wwv_flow_api.g_varchar2_table(23) := '7228226D6F7573656F757422293B6966286328222E222B662E666C794F75744F6E5374617465292E73697A6528293E30297B6328222E222B662E666C794F75744F6E5374617465292E7472696767657228226D6F7573656F76657222297D7D6966286B3D';
wwv_flow_api.g_varchar2_table(24) := '3D2269706F6422297B63286C2E746172676574292E7472696767657228226D6F7573656F757422293B6966286328222E66672D6D656E752D666F6F74657222292E66696E6428226122292E73697A6528293E30297B6328222E66672D6D656E752D666F6F';
wwv_flow_api.g_varchar2_table(25) := '74657222292E66696E6428226122292E747269676765722822636C69636B22297D6966286328222E66672D6D656E752D68656164657222292E66696E6428226122292E73697A6528293E30297B6328222E66672D6D656E752D63757272656E742D637275';
wwv_flow_api.g_varchar2_table(26) := '6D6222292E7072657628292E66696E6428226122292E747269676765722822636C69636B22297D6966286328222E66672D6D656E752D63757272656E7422292E7072657628292E697328222E66672D6D656E752D696E64696361746F722229297B632822';
wwv_flow_api.g_varchar2_table(27) := '2E66672D6D656E752D63757272656E7422292E7072657628292E7472696767657228226D6F7573656F76657222297D7D72657475726E2066616C73653B627265616B3B636173652033383A69662863286C2E746172676574292E697328222E222B662E6C';
wwv_flow_api.g_varchar2_table(28) := '696E6B486F76657229297B766172206A3D63286C2E746172676574292E706172656E7428292E7072657628292E66696E642822613A657128302922293B6966286A2E73697A6528293E30297B63286C2E746172676574292E7472696767657228226D6F75';
wwv_flow_api.g_varchar2_table(29) := '73656F757422293B6A2E7472696767657228226D6F7573656F76657222297D7D656C73657B642E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D72657475726E2066616C73653B627265616B3B6361736520';
wwv_flow_api.g_varchar2_table(30) := '33393A69662863286C2E746172676574292E697328222E66672D6D656E752D696E64696361746F722229297B6966286B3D3D22666C796F757422297B63286C2E746172676574292E6E65787428292E66696E642822613A657128302922292E7472696767';
wwv_flow_api.g_varchar2_table(31) := '657228226D6F7573656F76657222297D656C73657B6966286B3D3D2269706F6422297B63286C2E746172676574292E747269676765722822636C69636B22293B73657454696D656F75742866756E6374696F6E28297B63286C2E746172676574292E6E65';
wwv_flow_api.g_varchar2_table(32) := '787428292E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D2C662E63726F73735370656564297D7D7D72657475726E2066616C73653B627265616B3B636173652034303A69662863286C2E74617267657429';
wwv_flow_api.g_varchar2_table(33) := '2E697328222E222B662E6C696E6B486F76657229297B76617220693D63286C2E746172676574292E706172656E7428292E6E65787428292E66696E642822613A657128302922293B696628692E73697A6528293E30297B63286C2E746172676574292E74';
wwv_flow_api.g_varchar2_table(34) := '72696767657228226D6F7573656F757422293B692E7472696767657228226D6F7573656F76657222297D7D656C73657B642E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D72657475726E2066616C73653B';
wwv_flow_api.g_varchar2_table(35) := '627265616B3B636173652032373A6528293B627265616B3B636173652031333A69662863286C2E746172676574292E697328222E66672D6D656E752D696E64696361746F72222926266B3D3D2269706F6422297B63286C2E746172676574292E74726967';
wwv_flow_api.g_varchar2_table(36) := '6765722822636C69636B22293B73657454696D656F75742866756E6374696F6E28297B63286C2E746172676574292E6E65787428292E66696E642822613A657128302922292E7472696767657228226D6F7573656F76657222297D2C662E63726F737353';
wwv_flow_api.g_varchar2_table(37) := '70656564297D627265616B7D7D297D3B746869732E6372656174653D66756E6374696F6E28297B642E637373287B77696474683A662E77696474687D292E617070656E64546F2822626F647922292E66696E642822756C3A666972737422292E6E6F7428';
wwv_flow_api.g_varchar2_table(38) := '222E66672D6D656E752D62726561646372756D6222292E616464436C617373282266672D6D656E7522293B642E66696E642822756C2C206C69206122292E616464436C617373282275692D636F726E65722D616C6C22293B642E66696E642822756C2229';
wwv_flow_api.g_varchar2_table(39) := '2E617474722822726F6C65222C226D656E7522292E65712830292E617474722822617269612D61637469766564657363656E64616E74222C226163746976652D6D656E756974656D22292E617474722822617269612D6C6162656C6C65646279222C672E';
wwv_flow_api.g_varchar2_table(40) := '61747472282269642229293B642E66696E6428226C6922292E617474722822726F6C65222C226D656E756974656D22293B642E66696E6428226C693A68617328756C2922292E617474722822617269612D686173706F707570222C227472756522292E66';
wwv_flow_api.g_varchar2_table(41) := '696E642822756C22292E617474722822617269612D657870616E646564222C2266616C736522293B642E66696E6428226122292E617474722822746162696E646578222C222D3122293B696628642E66696E642822756C22292E73697A6528293E31297B';
wwv_flow_api.g_varchar2_table(42) := '696628662E666C794F7574297B682E666C796F757428642C66297D656C73657B682E6472696C6C646F776E28642C66297D7D656C73657B642E66696E6428226122292E636C69636B2866756E6374696F6E28297B682E63686F6F73654974656D28746869';
wwv_flow_api.g_varchar2_table(43) := '73293B72657475726E2066616C73657D297D696628662E6C696E6B486F766572297B76617220693D642E66696E6428222E66672D6D656E75206C69206122293B692E686F7665722866756E6374696F6E28297B766172206A3D632874686973293B632822';
wwv_flow_api.g_varchar2_table(44) := '2E222B662E6C696E6B486F766572292E72656D6F7665436C61737328662E6C696E6B486F766572292E626C757228292E706172656E7428292E72656D6F7665417474722822696422293B632874686973292E616464436C61737328662E6C696E6B486F76';
wwv_flow_api.g_varchar2_table(45) := '6572292E666F63757328292E706172656E7428292E6174747228226964222C226163746976652D6D656E756974656D22297D2C66756E6374696F6E28297B632874686973292E72656D6F7665436C61737328662E6C696E6B486F766572292E626C757228';
wwv_flow_api.g_varchar2_table(46) := '292E706172656E7428292E72656D6F7665417474722822696422297D297D696628662E6C696E6B486F7665725365636F6E64617279297B642E66696E6428222E66672D6D656E75206C6922292E686F7665722866756E6374696F6E28297B632874686973';
wwv_flow_api.g_varchar2_table(47) := '292E7369626C696E677328226C6922292E72656D6F7665436C61737328662E6C696E6B486F7665725365636F6E64617279293B696628662E666C794F75744F6E5374617465297B632874686973292E7369626C696E677328226C6922292E66696E642822';
wwv_flow_api.g_varchar2_table(48) := '6122292E72656D6F7665436C61737328662E666C794F75744F6E5374617465297D632874686973292E616464436C61737328662E6C696E6B486F7665725365636F6E64617279297D2C66756E6374696F6E28297B632874686973292E72656D6F7665436C';
wwv_flow_api.g_varchar2_table(49) := '61737328662E6C696E6B486F7665725365636F6E64617279297D297D682E736574506F736974696F6E28642C672C66293B682E6D656E754578697374733D747275657D3B746869732E63686F6F73654974656D3D66756E6374696F6E2869297B682E6B69';
wwv_flow_api.g_varchar2_table(50) := '6C6C28293B6C6F636174696F6E2E687265663D632869292E6174747228226872656622297D7D622E70726F746F747970652E666C796F75743D66756E6374696F6E28642C65297B76617220663D746869733B746869732E7265736574466C796F75744D65';
wwv_flow_api.g_varchar2_table(51) := '6E753D66756E6374696F6E28297B76617220673D642E66696E642822756C20756C22293B672E72656D6F7665436C617373282275692D7769646765742D636F6E74656E7422292E6869646528297D3B642E616464436C617373282266672D6D656E752D66';
wwv_flow_api.g_varchar2_table(52) := '6C796F757422292E66696E6428226C693A68617328756C2922292E656163682866756E6374696F6E28297B76617220683D642E776964746828293B766172206A2C673B76617220693D632874686973292E66696E642822756C22293B692E637373287B6C';
wwv_flow_api.g_varchar2_table(53) := '6566743A682C77696474683A687D292E6869646528293B632874686973292E66696E642822613A657128302922292E616464436C617373282266672D6D656E752D696E64696361746F7222292E68746D6C28223C7370616E3E222B632874686973292E66';
wwv_flow_api.g_varchar2_table(54) := '696E642822613A657128302922292E7465787428292B273C2F7370616E3E3C7370616E20636C6173733D2275692D69636F6E20272B652E6E6578744D656E754C696E6B2B27223E3C2F7370616E3E27292E686F7665722866756E6374696F6E28297B636C';
wwv_flow_api.g_varchar2_table(55) := '65617254696D656F75742867293B766172206B3D632874686973292E6E65787428293B69662821666974566572746963616C286B2C632874686973292E6F666673657428292E746F7029297B6B2E637373287B746F703A226175746F222C626F74746F6D';
wwv_flow_api.g_varchar2_table(56) := '3A307D297D69662821666974486F72697A6F6E74616C286B2C632874686973292E6F666673657428292E6C6566742B31303029297B6B2E637373287B6C6566743A226175746F222C72696768743A682C227A2D696E646578223A3939397D297D6A3D7365';
wwv_flow_api.g_varchar2_table(57) := '7454696D656F75742866756E6374696F6E28297B6B2E616464436C617373282275692D7769646765742D636F6E74656E7422292E73686F7728652E73686F775370656564292E617474722822617269612D657870616E646564222C227472756522297D2C';
wwv_flow_api.g_varchar2_table(58) := '333030297D2C66756E6374696F6E28297B636C65617254696D656F7574286A293B766172206B3D632874686973292E6E65787428293B673D73657454696D656F75742866756E6374696F6E28297B6B2E72656D6F7665436C617373282275692D77696467';
wwv_flow_api.g_varchar2_table(59) := '65742D636F6E74656E7422292E6869646528652E73686F775370656564292E617474722822617269612D657870616E646564222C2266616C736522297D2C343030297D293B632874686973292E66696E642822756C206122292E686F7665722866756E63';
wwv_flow_api.g_varchar2_table(60) := '74696F6E28297B636C65617254696D656F75742867293B696628632874686973292E706172656E74732822756C22292E7072657628292E69732822612E66672D6D656E752D696E64696361746F722229297B632874686973292E706172656E7473282275';
wwv_flow_api.g_varchar2_table(61) := '6C22292E7072657628292E616464436C61737328652E666C794F75744F6E5374617465297D7D2C66756E6374696F6E28297B673D73657454696D656F75742866756E6374696F6E28297B692E6869646528652E73686F775370656564293B642E66696E64';
wwv_flow_api.g_varchar2_table(62) := '28652E666C794F75744F6E5374617465292E72656D6F7665436C61737328652E666C794F75744F6E5374617465297D2C353030297D297D293B642E66696E6428226122292E636C69636B2866756E6374696F6E28297B662E63686F6F73654974656D2874';
wwv_flow_api.g_varchar2_table(63) := '686973293B72657475726E2066616C73657D297D3B622E70726F746F747970652E6472696C6C646F776E3D66756E6374696F6E28642C6F297B76617220653D746869733B76617220673D642E66696E6428222E66672D6D656E7522293B766172206B3D63';
wwv_flow_api.g_varchar2_table(64) := '28273C756C20636C6173733D2266672D6D656E752D62726561646372756D622075692D7769646765742D6865616465722075692D636F726E65722D616C6C2075692D68656C7065722D636C656172666978223E3C2F756C3E27293B76617220703D632827';
wwv_flow_api.g_varchar2_table(65) := '3C6C6920636C6173733D2266672D6D656E752D62726561646372756D622D74657874223E272B6F2E6372756D6244656661756C74546578742B223C2F6C693E22293B766172206C3D286F2E6261636B4C696E6B293F6F2E6261636B4C696E6B546578743A';
wwv_flow_api.g_varchar2_table(66) := '6F2E746F704C696E6B546578743B76617220663D286F2E6261636B4C696E6B293F2266672D6D656E752D707265762D6C697374223A2266672D6D656E752D616C6C2D6C69737473223B766172206E3D286F2E6261636B4C696E6B293F2275692D73746174';
wwv_flow_api.g_varchar2_table(67) := '652D64656661756C742075692D636F726E65722D616C6C223A22223B766172206A3D286F2E6261636B4C696E6B293F273C7370616E20636C6173733D2275692D69636F6E2075692D69636F6E2D747269616E676C652D312D77223E3C2F7370616E3E273A';
wwv_flow_api.g_varchar2_table(68) := '22223B76617220693D6328273C6C6920636C6173733D22272B662B27223E3C6120687265663D22232220636C6173733D22272B6E2B27223E272B6A2B6C2B223C2F613E3C2F6C693E22293B642E616464436C617373282266672D6D656E752D69706F6422';
wwv_flow_api.g_varchar2_table(69) := '293B6966286F2E6261636B4C696E6B297B6B2E616464436C617373282266672D6D656E752D666F6F74657222292E617070656E64546F2864292E6869646528297D656C73657B6B2E616464436C617373282266672D6D656E752D68656164657222292E70';
wwv_flow_api.g_varchar2_table(70) := '726570656E64546F2864297D6B2E617070656E642870293B766172206D3D66756E6374696F6E2871297B696628712E68656967687428293E6F2E6D6178486569676874297B712E616464436C617373282266672D6D656E752D7363726F6C6C22297D712E';
wwv_flow_api.g_varchar2_table(71) := '637373287B6865696768743A6F2E6D61784865696768747D297D3B76617220683D66756E6374696F6E2871297B712E72656D6F7665436C617373282266672D6D656E752D7363726F6C6C22292E72656D6F7665436C617373282266672D6D656E752D6375';
wwv_flow_api.g_varchar2_table(72) := '7272656E7422292E686569676874286F2E6D6178486569676874297D3B746869732E72657365744472696C6C646F776E4D656E753D66756E6374696F6E28297B6328222E66672D6D656E752D63757272656E7422292E72656D6F7665436C617373282266';
wwv_flow_api.g_varchar2_table(73) := '672D6D656E752D63757272656E7422293B672E616E696D617465287B6C6566743A307D2C6F2E63726F737353706565642C66756E6374696F6E28297B632874686973292E66696E642822756C22292E656163682866756E6374696F6E28297B6328746869';
wwv_flow_api.g_varchar2_table(74) := '73292E6869646528293B682863287468697329297D293B672E616464436C617373282266672D6D656E752D63757272656E7422297D293B6328222E66672D6D656E752D616C6C2D6C6973747322292E66696E6428227370616E22292E72656D6F76652829';
wwv_flow_api.g_varchar2_table(75) := '3B6B2E656D70747928292E617070656E642870293B6328222E66672D6D656E752D666F6F74657222292E656D70747928292E6869646528293B6D2867297D3B672E616464436C617373282266672D6D656E752D636F6E74656E742066672D6D656E752D63';
wwv_flow_api.g_varchar2_table(76) := '757272656E742075692D7769646765742D636F6E74656E742075692D68656C7065722D636C65617266697822292E637373287B77696474683A642E776964746828297D292E66696E642822756C22292E637373287B77696474683A642E77696474682829';
wwv_flow_api.g_varchar2_table(77) := '2C6C6566743A642E776964746828297D292E616464436C617373282275692D7769646765742D636F6E74656E7422292E6869646528293B6D2867293B672E66696E6428226122292E656163682866756E6374696F6E28297B696628632874686973292E6E';
wwv_flow_api.g_varchar2_table(78) := '65787428292E69732822756C2229297B632874686973292E616464436C617373282266672D6D656E752D696E64696361746F7222292E656163682866756E6374696F6E28297B632874686973292E68746D6C28223C7370616E3E222B632874686973292E';
wwv_flow_api.g_varchar2_table(79) := '7465787428292B273C2F7370616E3E3C7370616E20636C6173733D2275692D69636F6E20272B6F2E6E6578744D656E754C696E6B2B27223E3C2F7370616E3E27297D292E636C69636B2866756E6374696F6E28297B76617220713D632874686973292E6E';
wwv_flow_api.g_varchar2_table(80) := '65787428293B76617220763D632874686973292E706172656E74732822756C3A657128302922293B76617220723D28762E697328222E66672D6D656E752D636F6E74656E742229293F303A7061727365466C6F617428672E63737328226C656674222929';
wwv_flow_api.g_varchar2_table(81) := '3B76617220743D4D6174682E726F756E6428722D7061727365466C6F617428642E7769647468282929293B76617220783D6328222E66672D6D656E752D666F6F74657222293B682876293B6D2871293B672E616E696D617465287B6C6566743A747D2C6F';
wwv_flow_api.g_varchar2_table(82) := '2E63726F73735370656564293B712E73686F7728292E616464436C617373282266672D6D656E752D63757272656E7422292E617474722822617269612D657870616E646564222C227472756522293B76617220773D66756E6374696F6E2841297B766172';
wwv_flow_api.g_varchar2_table(83) := '20793D413B76617220423D6328222E66672D6D656E752D63757272656E7422293B766172207A3D422E706172656E74732822756C3A657128302922293B422E6869646528292E617474722822617269612D657870616E646564222C2266616C736522293B';
wwv_flow_api.g_varchar2_table(84) := '682842293B6D287A293B7A2E616464436C617373282266672D6D656E752D63757272656E7422292E617474722822617269612D657870616E646564222C227472756522293B6966287A2E686173436C617373282266672D6D656E752D636F6E74656E7422';
wwv_flow_api.g_varchar2_table(85) := '29297B792E72656D6F766528293B782E6869646528297D7D3B6966286F2E6261636B4C696E6B297B696628782E66696E6428226122292E73697A6528293D3D30297B782E73686F7728293B6328273C6120687265663D2223223E3C7370616E20636C6173';
wwv_flow_api.g_varchar2_table(86) := '733D2275692D69636F6E2075692D69636F6E2D747269616E676C652D312D77223E3C2F7370616E3E203C7370616E3E4261636B3C2F7370616E3E3C2F613E27292E617070656E64546F2878292E636C69636B2866756E6374696F6E28297B766172207A3D';
wwv_flow_api.g_varchar2_table(87) := '632874686973293B76617220793D7061727365466C6F617428672E63737328226C6566742229292B642E776964746828293B672E616E696D617465287B6C6566743A797D2C6F2E63726F737353706565642C66756E6374696F6E28297B77287A297D293B';
wwv_flow_api.g_varchar2_table(88) := '72657475726E2066616C73657D297D7D656C73657B6966286B2E66696E6428226C6922292E73697A6528293D3D31297B6B2E656D70747928292E617070656E642869293B692E66696E6428226122292E636C69636B2866756E6374696F6E28297B652E72';
wwv_flow_api.g_varchar2_table(89) := '657365744472696C6C646F776E4D656E7528293B72657475726E2066616C73657D297D6328222E66672D6D656E752D63757272656E742D6372756D6222292E72656D6F7665436C617373282266672D6D656E752D63757272656E742D6372756D6222293B';
wwv_flow_api.g_varchar2_table(90) := '76617220753D632874686973292E66696E6428227370616E3A657128302922292E7465787428293B76617220733D6328273C6C6920636C6173733D2266672D6D656E752D63757272656E742D6372756D62223E3C6120687265663D226A61766173637269';
wwv_flow_api.g_varchar2_table(91) := '70743A2F2F2220636C6173733D2266672D6D656E752D6372756D62223E272B752B223C2F613E3C2F6C693E22293B732E617070656E64546F286B292E66696E6428226122292E636C69636B2866756E6374696F6E28297B696628632874686973292E7061';
wwv_flow_api.g_varchar2_table(92) := '72656E7428292E697328222E66672D6D656E752D63757272656E742D6372756D622229297B652E63686F6F73654974656D2874686973297D656C73657B76617220793D2D286328222E66672D6D656E752D63757272656E7422292E706172656E74732822';
wwv_flow_api.g_varchar2_table(93) := '756C22292E73697A6528292D31292A3138303B672E616E696D617465287B6C6566743A797D2C6F2E63726F737353706565642C66756E6374696F6E28297B7728297D293B632874686973292E706172656E7428292E616464436C617373282266672D6D65';
wwv_flow_api.g_varchar2_table(94) := '6E752D63757272656E742D6372756D6222292E66696E6428227370616E22292E72656D6F766528293B632874686973292E706172656E7428292E6E657874416C6C28292E72656D6F766528297D72657475726E2066616C73657D293B732E707265762829';
wwv_flow_api.g_varchar2_table(95) := '2E617070656E642827203C7370616E20636C6173733D2275692D69636F6E20272B6F2E6E6578744372756D624C696E6B2B27223E3C2F7370616E3E27297D72657475726E2066616C73657D297D656C73657B632874686973292E636C69636B2866756E63';
wwv_flow_api.g_varchar2_table(96) := '74696F6E28297B652E63686F6F73654974656D2874686973293B72657475726E2066616C73657D297D7D297D3B622E70726F746F747970652E736574506F736974696F6E3D66756E6374696F6E28672C652C6C297B76617220643D673B76617220693D65';
wwv_flow_api.g_varchar2_table(97) := '3B766172206A3D7B726566583A692E6F666673657428292E6C6566742C726566593A692E6F666673657428292E746F702C726566573A692E676574546F74616C576964746828297C7C692E776964746828292C726566483A692E676574546F74616C4865';
wwv_flow_api.g_varchar2_table(98) := '6967687428297C7C692E68656967687428297D3B766172206C3D6C3B766172206B2C683B76617220663D6328273C64697620636C6173733D22706F736974696F6E48656C706572223E3C2F6469763E27293B662E637373287B706F736974696F6E3A2261';
wwv_flow_api.g_varchar2_table(99) := '62736F6C757465222C6C6566743A6A2E726566582C746F703A6A2E726566592C77696474683A6A2E726566572C6865696768743A6A2E726566487D293B642E777261702866293B737769746368286C2E706F736974696F6E4F7074732E706F7358297B63';
wwv_flow_api.g_varchar2_table(100) := '617365226C656674223A6B3D303B627265616B3B636173652263656E746572223A6B3D6A2E726566572F323B627265616B3B63617365227269676874223A6B3D6A2E726566573B627265616B7D737769746368286C2E706F736974696F6E4F7074732E70';
wwv_flow_api.g_varchar2_table(101) := '6F7359297B6361736522746F70223A683D303B627265616B3B636173652263656E746572223A683D6A2E726566482F323B627265616B3B6361736522626F74746F6D223A683D6A2E726566483B627265616B7D6B2B3D6C2E706F736974696F6E4F707473';
wwv_flow_api.g_varchar2_table(102) := '2E6F6666736574583B682B3D6C2E706F736974696F6E4F7074732E6F6666736574593B6966286C2E706F736974696F6E4F7074732E646972656374696F6E563D3D22757022297B642E637373287B746F703A226175746F222C626F74746F6D3A687D293B';
wwv_flow_api.g_varchar2_table(103) := '6966286C2E706F736974696F6E4F7074732E64657465637456262621666974566572746963616C286429297B642E637373287B626F74746F6D3A226175746F222C746F703A687D297D7D656C73657B642E637373287B626F74746F6D3A226175746F222C';
wwv_flow_api.g_varchar2_table(104) := '746F703A687D293B6966286C2E706F736974696F6E4F7074732E64657465637456262621666974566572746963616C286429297B642E637373287B746F703A226175746F222C626F74746F6D3A687D297D7D6966286C2E706F736974696F6E4F7074732E';
wwv_flow_api.g_varchar2_table(105) := '646972656374696F6E483D3D226C65667422297B642E637373287B6C6566743A226175746F222C72696768743A6B7D293B6966286C2E706F736974696F6E4F7074732E64657465637448262621666974486F72697A6F6E74616C286429297B642E637373';
wwv_flow_api.g_varchar2_table(106) := '287B72696768743A226175746F222C6C6566743A6B7D297D7D656C73657B642E637373287B72696768743A226175746F222C6C6566743A6B7D293B6966286C2E706F736974696F6E4F7074732E64657465637448262621666974486F72697A6F6E74616C';
wwv_flow_api.g_varchar2_table(107) := '286429297B642E637373287B6C6566743A226175746F222C72696768743A6B7D297D7D6966286C2E706F736974696F6E4F7074732E6C696E6B546F46726F6E74297B692E636C6F6E6528292E616464436C61737328226C696E6B436C6F6E6522292E6373';
wwv_flow_api.g_varchar2_table(108) := '73287B706F736974696F6E3A226162736F6C757465222C746F703A302C72696768743A226175746F222C626F74746F6D3A226175746F222C6C6566743A302C77696474683A692E776964746828292C6865696768743A692E68656967687428297D292E69';
wwv_flow_api.g_varchar2_table(109) := '6E7365727441667465722864297D7D3B66756E6374696F6E206128652C64297B72657475726E20642D657D632E666E2E676574546F74616C57696474683D66756E6374696F6E28297B72657475726E20632874686973292E776964746828292B70617273';
wwv_flow_api.g_varchar2_table(110) := '65496E7428632874686973292E637373282270616464696E6752696768742229292B7061727365496E7428632874686973292E637373282270616464696E674C6566742229292B7061727365496E7428632874686973292E6373732822626F7264657252';
wwv_flow_api.g_varchar2_table(111) := '6967687457696474682229292B7061727365496E7428632874686973292E6373732822626F726465724C65667457696474682229297D3B632E666E2E676574546F74616C4865696768743D66756E6374696F6E28297B72657475726E2063287468697329';
wwv_flow_api.g_varchar2_table(112) := '2E68656967687428292B7061727365496E7428632874686973292E637373282270616464696E67546F702229292B7061727365496E7428632874686973292E637373282270616464696E67426F74746F6D2229292B7061727365496E7428632874686973';
wwv_flow_api.g_varchar2_table(113) := '292E6373732822626F72646572546F7057696474682229292B7061727365496E7428632874686973292E6373732822626F72646572426F74746F6D57696474682229297D7D2928617065782E6A5175657279293B66756E6374696F6E206765745363726F';
wwv_flow_api.g_varchar2_table(114) := '6C6C546F7028297B72657475726E2073656C662E70616765594F66667365747C7C646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C546F707C7C646F63756D656E742E626F64792E7363726F6C6C546F707D66756E6374696F';
wwv_flow_api.g_varchar2_table(115) := '6E206765745363726F6C6C4C65667428297B72657475726E2073656C662E70616765584F66667365747C7C646F63756D656E742E646F63756D656E74456C656D656E742E7363726F6C6C4C6566747C7C646F63756D656E742E626F64792E7363726F6C6C';
wwv_flow_api.g_varchar2_table(116) := '4C6566747D66756E6374696F6E2067657457696E646F7748656967687428297B76617220613D646F63756D656E742E646F63756D656E74456C656D656E743B72657475726E2073656C662E696E6E65724865696768747C7C28612626612E636C69656E74';
wwv_flow_api.g_varchar2_table(117) := '486569676874297C7C646F63756D656E742E626F64792E636C69656E744865696768747D66756E6374696F6E2067657457696E646F77576964746828297B76617220613D646F63756D656E742E646F63756D656E74456C656D656E743B72657475726E20';
wwv_flow_api.g_varchar2_table(118) := '73656C662E696E6E657257696474687C7C28612626612E636C69656E745769647468297C7C646F63756D656E742E626F64792E636C69656E7457696474687D66756E6374696F6E20666974486F72697A6F6E74616C28622C63297B76617220613D706172';
wwv_flow_api.g_varchar2_table(119) := '7365496E742863297C7C617065782E6A51756572792862292E6F666673657428292E6C6566743B72657475726E28612B617065782E6A51756572792862292E776964746828293C3D67657457696E646F77576964746828292B6765745363726F6C6C4C65';
wwv_flow_api.g_varchar2_table(120) := '667428292626612D6765745363726F6C6C4C65667428293E3D30297D66756E6374696F6E20666974566572746963616C28632C62297B76617220613D7061727365496E742862297C7C617065782E6A51756572792863292E6F666673657428292E746F70';
wwv_flow_api.g_varchar2_table(121) := '3B72657475726E28612B617065782E6A51756572792863292E68656967687428293C3D67657457696E646F7748656967687428292B6765745363726F6C6C546F7028292626612D6765745363726F6C6C546F7028293E3D30297D4E756D6265722E70726F';
wwv_flow_api.g_varchar2_table(122) := '746F747970652E7078546F456D3D537472696E672E70726F746F747970652E7078546F456D3D66756E6374696F6E2862297B623D617065782E6A51756572792E657874656E64287B73636F70653A22626F6479222C726576657273653A66616C73657D2C';
wwv_flow_api.g_varchar2_table(123) := '62293B76617220653D28746869733D3D2222293F303A7061727365466C6F61742874686973293B76617220643B76617220633D66756E6374696F6E28297B76617220673D646F63756D656E742E646F63756D656E74456C656D656E743B72657475726E20';
wwv_flow_api.g_varchar2_table(124) := '73656C662E696E6E657257696474687C7C28672626672E636C69656E745769647468297C7C646F63756D656E742E626F64792E636C69656E7457696474687D3B696628622E73636F70653D3D22626F6479222626617065782E6A51756572792E62726F77';
wwv_flow_api.g_varchar2_table(125) := '7365722E6D7369652626287061727365466C6F6174286A51756572792822626F647922292E6373732822666F6E742D73697A652229292F632829292E746F46697865642831293E30297B76617220663D66756E6374696F6E28297B72657475726E287061';
wwv_flow_api.g_varchar2_table(126) := '727365466C6F617428617065782E6A51756572792822626F647922292E6373732822666F6E742D73697A652229292F632829292E746F46697865642833292A31367D3B643D6628297D656C73657B643D7061727365466C6F617428617065782E6A517565';
wwv_flow_api.g_varchar2_table(127) := '727928622E73636F7065292E6373732822666F6E742D73697A652229297D76617220613D28622E726576657273653D3D74727565293F28652A64292E746F46697865642832292B227078223A28652F64292E746F46697865642832292B22656D223B7265';
wwv_flow_api.g_varchar2_table(128) := '7475726E20617D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(37582144775013395)
,p_plugin_id=>wwv_flow_api.id(36368148888398546)
,p_file_name=>'apex.jquery.menu.min.js'
,p_mime_type=>'text/x-c++'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(27812217225433457)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'DESKTOP'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>2
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
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
,p_user_interface_id=>wwv_flow_api.id(27812217225433457)
,p_tab_set=>'TS1'
,p_name=>'HOME'
,p_alias=>'HOME'
,p_step_title=>'Navigate'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Navigate'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(32592118558432877)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'TRANSPORTE'
,p_last_upd_yyyymmddhh24miss=>'20201126162325'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(32540231742645540)
,p_name=>'INCIDENCIAS'
,p_template=>wwv_flow_api.id(32600023656432891)
,p_display_sequence=>61
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="width:200px;"'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Count(id) as"MIS INCIDENCIAS" ',
'from incidencia where asignado= (select cod_emp from  pa_usuarios where usuario=:APP_USER) and status=''A'''))
,p_display_condition_type=>'NEVER'
,p_read_only_when_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>',APP_USER'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(32609203600432907)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(32541315813669325)
,p_query_column_id=>1
,p_column_alias=>'MIS INCIDENCIAS'
,p_column_display_sequence=>1
,p_column_heading=>'Mis Incidencias'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32587016041786417)
,p_plug_name=>'LP WEB'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32595802628432886)
,p_plug_display_sequence=>31
,p_plug_display_column=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.id_menuop        id',
',      decode(id_padre,0, null,id_padre) pid',
',      des_apex            text',
',      decode(nvl(nombre_forma,''X''),''X'','''',''f?p=''||nombre_forma||'':home:&SESSION.::&DEBUG.:home'') url',
',      id               display_seq',
'  FROM PARAMETROS.PA_ROLES_OPCIONES A, PARAMETROS.PA_ROLES_USUARIO B , PARAMETROS.PA_OPCIONES C, ',
'  PARAMETROS.PA_USUARIOS D  ',
'  WHERE C.COD_CIA = A.COD_CIA  ',
'    AND C.ID_MENUOP = A.ID_MENUOP',
'    AND C.MODULO = A.MODULO',
'    AND B.COD_CIA = A.COD_CIA',
'    AND B.COD_ROLE = A.COD_ROLE',
'    AND D.COD_CIA = B.COD_CIA',
'    AND D.USUARIO = B.USUARIO',
'    AND D.USUARIO = :APP_USER',
'    AND D.ESTADO = ''A''',
'    AND A.MODULO  = ''LP''',
'    AND A.COD_CIA = ''1''',
'    AND C.STATUS = 1',
'    and apex_opc = ''S''    ',
'   ORDER BY ID'))
,p_plug_source_type=>'PLUGIN_COM.AF.PLUGIN.JQ.MENU'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'180'
,p_attribute_02=>'60'
,p_attribute_03=>'true'
,p_attribute_04=>'200'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{',
'    "posX": "left",',
'    "posY": "bottom",',
'    "offsetX": 0,',
'    "offsetX": 0,',
'    "directionH": "right",',
'    "directionV": "down",',
'    "detectH": true,',
'    "detectV": true,',
'    "linkToFront": false',
'}'))
,p_attribute_09=>'display_seq'
,p_attribute_10=>'200'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100486511848184800)
,p_plug_name=>'Supervisores'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32599107771432890)
,p_plug_display_sequence=>71
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.cod_piloto, nombre_pila || '' '' || primer_apellido || '' '' || segundo_apellido as nombre, unidad, complemento1, complemento2',
'     from asigna_piloto_super a inner join empleado_softland b on a.cod_piloto=b.empleado ',
'     left join asigna_piloto_unidad c on a.COD_PILOTO=c.COD_PILOTO           ',
' where a.cod_supervisor =(select Cod_emp from pa_usuarios where usuario=:APP_USER)  and b.activo=''S''             ',
'union all ',
'select a.cod_piloto, nombre_pila || '' '' || primer_apellido || '' '' || segundo_apellido AS nombre,  unidad, complemento1, complemento2 ',
'from asigna_piloto_super a inner join empleado_softland b on a.cod_piloto=b.empleado  left join asigna_piloto_unidad c on a.COD_PILOTO=c.COD_PILOTO      ',
' where :app_user=''LP''  and b.activo=''S''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_read_only_when_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(100486604796184835)
,p_name=>'Supervisores'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'LP'
,p_internal_uid=>100486604796184835
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100502409854388354)
,p_db_column_name=>'COD_PILOTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cod Piloto'
,p_column_link=>'/apex/f?p=398:1:&APP_SESSION.::::P1_PILOTO,P1_UNIDAD,P1_NOMBRE,P1_COMPLEMENTO,P1_COMPLEMENTO2:#COD_PILOTO#,#UNIDAD#,#NOMBRE#,#COMPLEMENTO1#, #COMPLEMENTO2#'
,p_column_linktext=>'#COD_PILOTO#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_PILOTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(100505209928501568)
,p_db_column_name=>'NOMBRE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(107909103886443045)
,p_db_column_name=>'UNIDAD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unidad'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UNIDAD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(107909225416443050)
,p_db_column_name=>'COMPLEMENTO1'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Complemento1'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLEMENTO1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(107909420480450625)
,p_db_column_name=>'COMPLEMENTO2'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Complemento2'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COMPLEMENTO2'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(100487113580185320)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1004872'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'COD_PILOTO:NOMBRE:UNIDAD:COMPLEMENTO1:COMPLEMENTO2:'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(8106028876461951)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inicializoGG_CIA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':GG_CIA :=1;',
'end;'))
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(27812217225433457)
,p_name=>'Login'
,p_alias=>'LOGIN'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(32590726337432862)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200602230815'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33429923792573827)
,p_plug_name=>'LP SIG'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32600023656432891)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_plug_source=>'<BR>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37188150349770664)
,p_plug_name=>'LP SIG'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(32595802628432886)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37188434554770664)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33429923792573827)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(32595012694432879)
,p_button_image_alt=>unistr('Iniciar Sesi\00C3\00B3n')
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37188225532770664)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33429923792573827)
,p_prompt=>'<BR><BR>Usuario'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>3
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER-TOP'
,p_field_template=>wwv_flow_api.id(32610915898432910)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37188345413770664)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33429923792573827)
,p_prompt=>unistr('<BR>Contrase\00C3\00B1a')
,p_post_element_text=>'<BR><BR>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>100
,p_cHeight=>1
,p_colspan=>3
,p_rowspan=>1
,p_label_alignment=>'ABOVE'
,p_field_alignment=>'CENTER'
,p_field_template=>wwv_flow_api.id(32610915898432910)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37188657164770664)
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
 p_id=>wwv_flow_api.id(37188538057770664)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );',
'',
'apex_util.set_attribute(p_userid =>',
'apex_util.get_user_id(:P101_USERNAME),',
'p_attribute_number => 5,',
'p_attribute_value => :P101_PASSWORD);'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37188842261770664)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37188743743770664)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P101_USERNAME := apex_authentication.get_login_username_cookie;',
':GG_CIA := 10;'))
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(32654713952914371)
);
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
