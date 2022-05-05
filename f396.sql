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
,p_default_application_id=>396
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 396 - E_LEARNING
--
-- Application Export:
--   Application:     396
--   Name:            E_LEARNING
--   Date and Time:   12:40 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      6
--     Items:                   14
--     Processes:               10
--     Regions:                  8
--     Buttons:                 11
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 2
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         2
--     Security:
--       Authentication:         5
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
--       Shortcuts:              1
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,396)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'E_LEARNING')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_396')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8C3F2AFBB2430562A33A644DCE57BB553A4826175048B2C2ACA5BE73AB58C251'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(99871626608116821)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:E_LEARNING'
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
,p_last_upd_yyyymmddhh24miss=>'20210322113035'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15971661805093342)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15971932214093344)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15972208032093345)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15972846960093348)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15973026012093348)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(15973387903093348)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(99820518421479203)
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
 p_id=>wwv_flow_api.id(99838602651479300)
,p_icon_sequence=>10
,p_icon_image=>'#WORKSPACE_IMAGES#1.png'
,p_icon_subtext=>'Inicio'
,p_icon_target=>'f?p=112:1:&SESSION.::&DEBUG.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(99838526063479300)
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
 p_id=>wwv_flow_api.id(99840501202479309)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'CURSOS'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(103110203911879514)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'T_CONTROLNOTAS'
,p_tab_text=>'Control_Notas'
,p_tab_step=>5
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
 p_id=>wwv_flow_api.id(99840232616479307)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(99840612116479309)
,p_parent_id=>0
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(99820600925479209)
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
 p_id=>wwv_flow_api.id(99820701063479210)
,p_page_template_id=>wwv_flow_api.id(99820600925479209)
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
 p_id=>wwv_flow_api.id(99820811803479215)
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
 p_id=>wwv_flow_api.id(99820900463479215)
,p_page_template_id=>wwv_flow_api.id(99820811803479215)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821012050479217)
,p_page_template_id=>wwv_flow_api.id(99820811803479215)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821101048479217)
,p_page_template_id=>wwv_flow_api.id(99820811803479215)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821210150479217)
,p_page_template_id=>wwv_flow_api.id(99820811803479215)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821304051479217)
,p_page_template_id=>wwv_flow_api.id(99820811803479215)
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
 p_id=>wwv_flow_api.id(99821422698479217)
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
 p_id=>wwv_flow_api.id(99821510214479217)
,p_page_template_id=>wwv_flow_api.id(99821422698479217)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821619935479217)
,p_page_template_id=>wwv_flow_api.id(99821422698479217)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821719712479217)
,p_page_template_id=>wwv_flow_api.id(99821422698479217)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821828206479217)
,p_page_template_id=>wwv_flow_api.id(99821422698479217)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99821920790479217)
,p_page_template_id=>wwv_flow_api.id(99821422698479217)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99822012359479217)
,p_page_template_id=>wwv_flow_api.id(99821422698479217)
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
 p_id=>wwv_flow_api.id(99822113149479221)
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
 p_id=>wwv_flow_api.id(99822232611479221)
,p_page_template_id=>wwv_flow_api.id(99822113149479221)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99822332569479221)
,p_page_template_id=>wwv_flow_api.id(99822113149479221)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99822401566479221)
,p_page_template_id=>wwv_flow_api.id(99822113149479221)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99822528374479221)
,p_page_template_id=>wwv_flow_api.id(99822113149479221)
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
 p_id=>wwv_flow_api.id(99822611679479221)
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
 p_id=>wwv_flow_api.id(99822703755479221)
,p_page_template_id=>wwv_flow_api.id(99822611679479221)
,p_name=>'Main Content'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99822813711479221)
,p_page_template_id=>wwv_flow_api.id(99822611679479221)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99822916724479221)
,p_page_template_id=>wwv_flow_api.id(99822611679479221)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823028045479221)
,p_page_template_id=>wwv_flow_api.id(99822611679479221)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823100266479221)
,p_page_template_id=>wwv_flow_api.id(99822611679479221)
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
 p_id=>wwv_flow_api.id(99823223323479225)
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
 p_id=>wwv_flow_api.id(99823329724479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823401853479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823510008479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Content Frame Buttons'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823623875479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823721099479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823800111479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99823919092479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824022649479225)
,p_page_template_id=>wwv_flow_api.id(99823223323479225)
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
 p_id=>wwv_flow_api.id(99824126958479225)
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
 p_id=>wwv_flow_api.id(99824223841479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824313108479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824428489479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824502247479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824625174479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824708935479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99824819139479225)
,p_page_template_id=>wwv_flow_api.id(99824126958479225)
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
 p_id=>wwv_flow_api.id(99824916925479231)
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
 p_id=>wwv_flow_api.id(99825018217479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825109545479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825222317479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825324452479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825400019479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825520070479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825602279479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99825704334479237)
,p_page_template_id=>wwv_flow_api.id(99824916925479231)
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
 p_id=>wwv_flow_api.id(99825804217479237)
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
 p_id=>wwv_flow_api.id(99825917587479237)
,p_page_template_id=>wwv_flow_api.id(99825804217479237)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826013726479237)
,p_page_template_id=>wwv_flow_api.id(99825804217479237)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826118993479237)
,p_page_template_id=>wwv_flow_api.id(99825804217479237)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826203705479237)
,p_page_template_id=>wwv_flow_api.id(99825804217479237)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826312874479237)
,p_page_template_id=>wwv_flow_api.id(99825804217479237)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826419893479237)
,p_page_template_id=>wwv_flow_api.id(99825804217479237)
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
 p_id=>wwv_flow_api.id(99826503674479237)
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
 p_id=>wwv_flow_api.id(99826617654479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826731078479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826800496479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99826909296479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827008162479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827118462479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827208547479237)
,p_page_template_id=>wwv_flow_api.id(99826503674479237)
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
 p_id=>wwv_flow_api.id(99827328845479237)
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
 p_id=>wwv_flow_api.id(99827420171479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
,p_name=>'Wizard Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>11
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827526470479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827615258479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
,p_name=>'Wizard Header'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827728889479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827818857479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99827924899479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99828021258479240)
,p_page_template_id=>wwv_flow_api.id(99827328845479237)
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
 p_id=>wwv_flow_api.id(99828104968479240)
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
 p_id=>wwv_flow_api.id(99828209190479251)
,p_page_template_id=>wwv_flow_api.id(99828104968479240)
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
 p_id=>wwv_flow_api.id(99828323118479251)
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
 p_id=>wwv_flow_api.id(99828411192479251)
,p_page_template_id=>wwv_flow_api.id(99828323118479251)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99828527062479251)
,p_page_template_id=>wwv_flow_api.id(99828323118479251)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99828622959479251)
,p_page_template_id=>wwv_flow_api.id(99828323118479251)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99828714956479251)
,p_page_template_id=>wwv_flow_api.id(99828323118479251)
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
 p_id=>wwv_flow_api.id(99828800552479251)
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
 p_id=>wwv_flow_api.id(99828928353479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829000890479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829100204479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829213960479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829324391479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829407128479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829524354479251)
,p_page_template_id=>wwv_flow_api.id(99828800552479251)
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
 p_id=>wwv_flow_api.id(99829614366479251)
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
 p_id=>wwv_flow_api.id(99829724352479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829817277479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99829930754479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITON_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830015599479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITON_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830126590479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITON_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830212173479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITON_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830323871479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITON_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830404529479251)
,p_page_template_id=>wwv_flow_api.id(99829614366479251)
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
 p_id=>wwv_flow_api.id(99830515523479253)
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
 p_id=>wwv_flow_api.id(99830611817479253)
,p_page_template_id=>wwv_flow_api.id(99830515523479253)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830710149479253)
,p_page_template_id=>wwv_flow_api.id(99830515523479253)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830803571479253)
,p_page_template_id=>wwv_flow_api.id(99830515523479253)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99830924386479253)
,p_page_template_id=>wwv_flow_api.id(99830515523479253)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831027962479253)
,p_page_template_id=>wwv_flow_api.id(99830515523479253)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831118548479253)
,p_page_template_id=>wwv_flow_api.id(99830515523479253)
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
 p_id=>wwv_flow_api.id(99831230859479253)
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
 p_id=>wwv_flow_api.id(99831317049479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>10
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831428541479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
,p_name=>'Breadcrumb'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831527711479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>2
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831626688479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831713869479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
,p_name=>'Page Level Tabs'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831823503479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
,p_name=>'Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(99831903525479253)
,p_page_template_id=>wwv_flow_api.id(99831230859479253)
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
 p_id=>wwv_flow_api.id(99837430583479290)
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
 p_id=>wwv_flow_api.id(99837519248479290)
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
 p_id=>wwv_flow_api.id(99837622170479290)
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
 p_id=>wwv_flow_api.id(99837717802479290)
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
 p_id=>wwv_flow_api.id(99837821398479290)
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
 p_id=>wwv_flow_api.id(99837931424479292)
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
 p_id=>wwv_flow_api.id(99832027833479259)
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
 p_id=>wwv_flow_api.id(99832118184479262)
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
 p_id=>wwv_flow_api.id(99832204795479262)
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
 p_id=>wwv_flow_api.id(99832305102479262)
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
 p_id=>wwv_flow_api.id(99832402981479264)
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
 p_id=>wwv_flow_api.id(99832504560479264)
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
 p_id=>wwv_flow_api.id(99832613889479264)
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
 p_id=>wwv_flow_api.id(99832705897479264)
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
 p_id=>wwv_flow_api.id(99832824108479264)
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
 p_id=>wwv_flow_api.id(99832916937479264)
,p_plug_template_id=>wwv_flow_api.id(99832824108479264)
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
 p_id=>wwv_flow_api.id(99833004073479264)
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
 p_id=>wwv_flow_api.id(99833110565479265)
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
 p_id=>wwv_flow_api.id(99833223190479265)
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
 p_id=>wwv_flow_api.id(99833315180479265)
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
 p_id=>wwv_flow_api.id(99833400264479265)
,p_plug_template_id=>wwv_flow_api.id(99833315180479265)
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
 p_id=>wwv_flow_api.id(99833515981479265)
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
 p_id=>wwv_flow_api.id(99833605691479265)
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
 p_id=>wwv_flow_api.id(99833709704479265)
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
 p_id=>wwv_flow_api.id(99833826962479265)
,p_plug_template_id=>wwv_flow_api.id(99833709704479265)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>-1
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(99833903816479265)
,p_plug_template_id=>wwv_flow_api.id(99833709704479265)
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
 p_id=>wwv_flow_api.id(99834002986479265)
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
 p_id=>wwv_flow_api.id(99834124377479265)
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
 p_id=>wwv_flow_api.id(99835303194479281)
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
 p_id=>wwv_flow_api.id(99835403667479281)
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
 p_id=>wwv_flow_api.id(99835525361479281)
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
 p_id=>wwv_flow_api.id(99835611341479281)
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
 p_id=>wwv_flow_api.id(99835726371479281)
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
 p_id=>wwv_flow_api.id(99835800589479281)
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
 p_id=>wwv_flow_api.id(99835915736479282)
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
 p_id=>wwv_flow_api.id(99836026553479282)
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
 p_id=>wwv_flow_api.id(99836118218479282)
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
 p_id=>wwv_flow_api.id(99836231571479282)
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
 p_id=>wwv_flow_api.id(99836309926479282)
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
 p_id=>wwv_flow_api.id(99836419263479282)
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
 p_id=>wwv_flow_api.id(99836512498479282)
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
 p_id=>wwv_flow_api.id(99836627117479282)
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
 p_id=>wwv_flow_api.id(99834212193479275)
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
 p_id=>wwv_flow_api.id(99834212193479275)
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
 p_id=>wwv_flow_api.id(99834304592479276)
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
 p_id=>wwv_flow_api.id(99834412573479276)
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
 p_id=>wwv_flow_api.id(99834412573479276)
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
 p_id=>wwv_flow_api.id(99834501383479276)
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
 p_id=>wwv_flow_api.id(99834501383479276)
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
 p_id=>wwv_flow_api.id(99834622789479276)
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
 p_id=>wwv_flow_api.id(99834622789479276)
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
 p_id=>wwv_flow_api.id(99834727410479276)
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
 p_id=>wwv_flow_api.id(99834827421479276)
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
 p_id=>wwv_flow_api.id(99834827421479276)
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
 p_id=>wwv_flow_api.id(99834907457479276)
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
 p_id=>wwv_flow_api.id(99834907457479276)
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
 p_id=>wwv_flow_api.id(99835023052479276)
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
 p_id=>wwv_flow_api.id(99835126343479276)
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
 p_id=>wwv_flow_api.id(99835210098479276)
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
 p_id=>wwv_flow_api.id(99836729729479289)
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
 p_id=>wwv_flow_api.id(99836832729479289)
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
 p_id=>wwv_flow_api.id(99836914644479289)
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
 p_id=>wwv_flow_api.id(99837012895479289)
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
 p_id=>wwv_flow_api.id(99837119496479289)
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
 p_id=>wwv_flow_api.id(99837232281479289)
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
 p_id=>wwv_flow_api.id(99837328662479289)
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
 p_id=>wwv_flow_api.id(99838013991479292)
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
 p_id=>wwv_flow_api.id(99838211261479295)
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
 p_id=>wwv_flow_api.id(99838127336479293)
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
 p_id=>wwv_flow_api.id(99838314411479296)
,p_theme_id=>25
,p_theme_name=>'Blue Responsive'
,p_theme_internal_name=>'BLUE_RESPONSIVE'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(99825804217479237)
,p_error_template=>wwv_flow_api.id(99822113149479221)
,p_printer_friendly_template=>wwv_flow_api.id(99828323118479251)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(99820600925479209)
,p_default_button_template=>wwv_flow_api.id(99837430583479290)
,p_default_region_template=>wwv_flow_api.id(99833709704479265)
,p_default_chart_template=>wwv_flow_api.id(99833709704479265)
,p_default_form_template=>wwv_flow_api.id(99832824108479264)
,p_default_reportr_template=>wwv_flow_api.id(99833709704479265)
,p_default_tabform_template=>wwv_flow_api.id(99833709704479265)
,p_default_wizard_template=>wwv_flow_api.id(99832824108479264)
,p_default_menur_template=>wwv_flow_api.id(99832305102479262)
,p_default_listr_template=>wwv_flow_api.id(99833709704479265)
,p_default_irr_template=>wwv_flow_api.id(99833223190479265)
,p_default_report_template=>wwv_flow_api.id(99834827421479276)
,p_default_label_template=>wwv_flow_api.id(99836914644479289)
,p_default_menu_template=>wwv_flow_api.id(99838013991479292)
,p_default_calendar_template=>wwv_flow_api.id(99838127336479293)
,p_default_list_template=>wwv_flow_api.id(99836419263479282)
,p_default_option_label=>wwv_flow_api.id(99836914644479289)
,p_default_required_label=>wwv_flow_api.id(99837232281479289)
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
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(99844618142597723)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/asignacion
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(99838726412479306)
,p_name=>'ASIGNACION'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_auth'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=LPSIG:101:&SESSION.:LOGOUT'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(99838813273479306)
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
 p_id=>wwv_flow_api.id(99838922552479306)
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
prompt --application/shared_components/security/authentications/application_express_authentication_2
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(99839102535479306)
,p_name=>'Application Express Authentication [2]'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/copy_of_custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(99871626608116821)
,p_name=>' Copy of CUSTOM'
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
prompt --application/shared_components/plugins/region_type/muledev_pivot_region
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(30753074645209156515)
,p_plugin_type=>'REGION TYPE'
,p_name=>'MULEDEV.PIVOT_REGION'
,p_display_name=>'Pivot Table'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','MULEDEV.PIVOT_REGION'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render_pivot (p_region in apex_plugin.t_region,',
'                       p_plugin in apex_plugin.t_plugin,',
'                       p_is_printer_friendly in boolean ) return apex_plugin.t_region_render_result',
'as',
'  l_returnvalue                  apex_plugin.t_region_render_result;',
'',
'  l_element_name                 varchar2(2000) := p_region.attribute_01;',
'  l_columns                      varchar2(2000) := replace(upper(p_region.attribute_02), '','', ''","'');',
'  l_rows                         varchar2(2000) := replace(upper(p_region.attribute_03), '','', ''","'');',
'  l_renderer                     varchar2(2000) := p_region.attribute_04;',
'  l_enable_ui                    varchar2(2000) := p_region.attribute_05;',
'',
'  l_ajax_id                      varchar(2000) := apex_plugin.get_ajax_identifier;',
'  l_data_name                    varchar2(2000) := ''pivot_data_'' || l_ajax_id; ',
'  l_options_name                 varchar2(2000) := ''pivot_options_'' || l_ajax_id;',
'  l_onload_code                  varchar2(32000);',
'',
'begin',
'',
'  apex_css.add_file (',
'    p_name => ''pivot'',',
'    p_directory => p_plugin.file_prefix);',
'',
'  -- note: this file is also found in #JQUERYUI_DIRECTORY#ui/minified/ but is not included by default by Apex',
'  apex_javascript.add_library (',
'    p_name      => ''jquery.ui.sortable.min'',',
'    p_directory => p_plugin.file_prefix);',
'',
'  apex_javascript.add_library (',
'    p_name      => ''pivot.min'',',
'    p_directory => p_plugin.file_prefix);',
'',
'  htp.p(''<div id="'' || l_element_name || ''">Loading, please wait...</div>'');',
'',
'  htp.p(''<script>'');',
'',
'  htp.p(''var '' || l_data_name || '' = '');',
'  apex_util.json_from_sql (p_region.source);',
'  htp.p('';'');',
'',
'  htp.p(''</script>'');    ',
'',
'  if l_enable_ui = ''Y'' then',
'    l_onload_code := ''var '' || l_options_name || '' = {cols: ["'' || l_columns || ''"], rows: ["'' || l_rows || ''"], rendererName: "'' || l_renderer || ''"};'';',
'    l_onload_code := l_onload_code || ''$("#'' || l_element_name || ''").pivotUI('' || l_data_name || ''.row, '' || l_options_name || '');'';',
'  else',
'    l_onload_code := ''var '' || l_options_name || '' = {cols: ["'' || l_columns || ''"], rows: ["'' || l_rows || ''"]};'';',
'    l_onload_code := l_onload_code || ''$("#'' || l_element_name || ''").pivot('' || l_data_name || ''.row, '' || l_options_name || '');'';',
'  end if;',
'',
'  apex_javascript.add_onload_code (l_onload_code);',
'',
'  return l_returnvalue;',
'',
'end render_pivot;'))
,p_api_version=>1
,p_render_function=>'render_pivot'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:FETCHED_ROWS:NO_DATA_FOUND_MESSAGE:ESCAPE_OUTPUT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://ora-00001.blogspot.com/'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30753335355906257864)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'DOM Element Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'my_pivot_div'
,p_is_translatable=>false
,p_help_text=>'The name of the DOM element (DIV) where the Pivot Table gets created.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30753710542959537322)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Default Column(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Comma-delimited list of column names'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30753711141881537898)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Default Row(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Comma-delimited list of row names'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30755167754906021777)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Default Renderer'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Heatmap'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(30755226443439072572)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Enable Interaction'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Should the user be able to manipulate the pivot table? Setting this value to "No" will effectively create a read-only table.'
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(16938735867094057)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>1
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '0A7461626C652E7076745461626C65207B0A20202020666F6E742D66616D696C793A617269616C3B0A20202020666F6E742D73697A653A203870743B0A20202020746578742D616C69676E3A206C6566743B0A20202020626F726465722D636F6C6C6170';
wwv_flow_api.g_varchar2_table(2) := '73653A20636F6C6C617073653B0A7D0A7461626C652E7076745461626C652074722074682C207461626C652E7076745461626C65207472207468207B0A202020206261636B67726F756E642D636F6C6F723A20236536454545453B0A20202020626F7264';
wwv_flow_api.g_varchar2_table(3) := '65723A2031707820736F6C696420234344434443443B0A20202020666F6E742D73697A653A203870743B0A2020202070616464696E673A203570783B0A7D0A0A7461626C652E7076745461626C65202E707674436F6C4C6162656C207B746578742D616C';
wwv_flow_api.g_varchar2_table(4) := '69676E3A2063656E7465723B7D0A7461626C652E7076745461626C65202E707674546F74616C4C6162656C207B746578742D616C69676E3A2072696768743B7D0A0A7461626C652E7076745461626C65207472207464207B0A20202020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(5) := '233344334433443B0A2020202070616464696E673A203570783B0A202020206261636B67726F756E642D636F6C6F723A20234646463B0A20202020626F726465723A2031707820736F6C696420234344434443443B0A20202020766572746963616C2D61';
wwv_flow_api.g_varchar2_table(6) := '6C69676E3A20746F703B0A20202020746578742D616C69676E3A2072696768743B0A7D0A0A2E707674546F74616C2C202E7076744772616E64546F74616C207B20666F6E742D7765696768743A20626F6C643B207D0A0A2E70767441786973436F6E7461';
wwv_flow_api.g_varchar2_table(7) := '696E6572207B0A20202020626F726465723A2031707820736F6C696420677261793B0A202020206261636B67726F756E643A20234545453B0A2020202070616464696E673A203570783B0A202020206D696E2D77696474683A20323070783B0A20202020';
wwv_flow_api.g_varchar2_table(8) := '6D696E2D6865696768743A20323070783B0A7D0A2E70767441786973436F6E7461696E6572206C69207B0A202020206D617267696E3A203570783B0A2020202070616464696E673A203570783B0A202020206C6973742D7374796C652D747970653A206E';
wwv_flow_api.g_varchar2_table(9) := '6F6E653B0A20202020637572736F723A6D6F76653B0A7D0A0A2E707674486F72697A4C697374206C69207B20646973706C61793A20696E6C696E653B207D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30803029556073744952)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_file_name=>'pivot.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E28297B76617220742C652C722C6E2C612C692C732C6F2C752C6C2C682C632C702C662C642C672C762C6D3D41727261792E70726F746F747970652E696E6465784F667C7C66756E6374696F6E2874297B666F722876617220653D30';
wwv_flow_api.g_varchar2_table(2) := '2C723D746869732E6C656E6774683B723E653B652B2B29696628746869735B655D3D3D3D742972657475726E20650D0A72657475726E2D317D2C623D4F626A6563742E70726F746F747970652E6861734F776E50726F70657274792C793D66756E637469';
wwv_flow_api.g_varchar2_table(3) := '6F6E28742C65297B72657475726E2066756E6374696F6E28297B72657475726E20742E6170706C7928652C617267756D656E7473297D7D0D0A743D6A51756572792C723D66756E6374696F6E2874297B76617220652C722C6E2C610D0A666F7228742B3D';
wwv_flow_api.g_varchar2_table(4) := '22222C723D742E73706C697428222E22292C6E3D725B305D2C613D722E6C656E6774683E313F222E222B725B315D3A22222C653D2F285C642B29285C647B337D292F3B652E74657374286E293B296E3D6E2E7265706C61636528652C2224312C24322229';
wwv_flow_api.g_varchar2_table(5) := '0D0A72657475726E206E2B617D2C703D66756E6374696F6E28742C65297B72657475726E206E756C6C3D3D74262628743D33292C6E756C6C3D3D65262628653D31292C66756E6374696F6E286E297B72657475726E20303D3D3D6E7C7C69734E614E286E';
wwv_flow_api.g_varchar2_table(6) := '297C7C21697346696E697465286E293F22223A722828652A6E292E746F4669786564287429297D7D2C6E3D7B73756D3A66756E6374696F6E28742C65297B72657475726E206E756C6C3D3D74262628743D33292C6E756C6C3D3D65262628653D31292C66';
wwv_flow_api.g_varchar2_table(7) := '756E6374696F6E2872297B766172206E0D0A72657475726E206E3D725B305D2C66756E6374696F6E28297B72657475726E7B73756D3A302C707573683A66756E6374696F6E2874297B72657475726E2069734E614E287061727365466C6F617428745B6E';
wwv_flow_api.g_varchar2_table(8) := '5D29293F766F696420303A746869732E73756D2B3D7061727365466C6F617428745B6E5D297D2C76616C75653A66756E6374696F6E28297B72657475726E20746869732E73756D7D2C666F726D61743A7028742C65292C6C6162656C3A2253756D206F66';
wwv_flow_api.g_varchar2_table(9) := '20222B6E7D7D7D7D2C617665726167653A66756E6374696F6E28742C65297B72657475726E206E756C6C3D3D74262628743D33292C6E756C6C3D3D65262628653D31292C66756E6374696F6E2872297B766172206E0D0A72657475726E206E3D725B305D';
wwv_flow_api.g_varchar2_table(10) := '2C66756E6374696F6E28297B72657475726E7B73756D3A302C6C656E3A302C707573683A66756E6374696F6E2874297B72657475726E2069734E614E287061727365466C6F617428745B6E5D29293F766F696420303A28746869732E73756D2B3D706172';
wwv_flow_api.g_varchar2_table(11) := '7365466C6F617428745B6E5D292C746869732E6C656E2B2B297D2C76616C75653A66756E6374696F6E28297B72657475726E20746869732E73756D2F746869732E6C656E7D2C666F726D61743A7028742C65292C6C6162656C3A2241766572616765206F';
wwv_flow_api.g_varchar2_table(12) := '6620222B6E7D7D7D7D2C73756D4F76657253756D3A66756E6374696F6E28742C65297B72657475726E206E756C6C3D3D74262628743D33292C6E756C6C3D3D65262628653D31292C66756E6374696F6E2872297B766172206E2C610D0A72657475726E20';
wwv_flow_api.g_varchar2_table(13) := '613D725B305D2C6E3D725B315D2C66756E6374696F6E28297B72657475726E7B73756D4E756D3A302C73756D44656E6F6D3A302C707573683A66756E6374696F6E2874297B72657475726E2069734E614E287061727365466C6F617428745B615D29297C';
wwv_flow_api.g_varchar2_table(14) := '7C28746869732E73756D4E756D2B3D7061727365466C6F617428745B615D29292C69734E614E287061727365466C6F617428745B6E5D29293F766F696420303A746869732E73756D44656E6F6D2B3D7061727365466C6F617428745B6E5D297D2C76616C';
wwv_flow_api.g_varchar2_table(15) := '75653A66756E6374696F6E28297B72657475726E20746869732E73756D4E756D2F746869732E73756D44656E6F6D7D2C666F726D61743A7028742C65292C6C6162656C3A22222B612B222F222B6E7D7D7D7D2C73756D4F76657253756D426F756E643830';
wwv_flow_api.g_varchar2_table(16) := '3A66756E6374696F6E28742C652C72297B72657475726E206E756C6C3D3D74262628743D33292C6E756C6C3D3D65262628653D31292C6E756C6C3D3D72262628723D2130292C66756E6374696F6E286E297B76617220612C690D0A72657475726E20693D';
wwv_flow_api.g_varchar2_table(17) := '6E5B305D2C613D6E5B315D2C66756E6374696F6E28297B72657475726E7B73756D4E756D3A302C73756D44656E6F6D3A302C707573683A66756E6374696F6E2874297B72657475726E2069734E614E287061727365466C6F617428745B695D29297C7C28';
wwv_flow_api.g_varchar2_table(18) := '746869732E73756D4E756D2B3D7061727365466C6F617428745B695D29292C69734E614E287061727365466C6F617428745B615D29293F766F696420303A746869732E73756D44656E6F6D2B3D7061727365466C6F617428745B615D297D2C76616C7565';
wwv_flow_api.g_varchar2_table(19) := '3A66756E6374696F6E28297B76617220740D0A72657475726E20743D723F313A2D312C282E3832313138373230373537343930382F746869732E73756D44656E6F6D2B746869732E73756D4E756D2F746869732E73756D44656E6F6D2B312E3238313535';
wwv_flow_api.g_varchar2_table(20) := '31353635353434363030342A742A4D6174682E73717274282E3431303539333630333738373435342F28746869732E73756D44656E6F6D2A746869732E73756D44656E6F6D292B746869732E73756D4E756D2A28312D746869732E73756D4E756D2F7468';
wwv_flow_api.g_varchar2_table(21) := '69732E73756D44656E6F6D292F28746869732E73756D44656E6F6D2A746869732E73756D44656E6F6D2929292F28312B312E3634323337343431353134393831362F746869732E73756D44656E6F6D297D2C666F726D61743A7028742C65292C6C616265';
wwv_flow_api.g_varchar2_table(22) := '6C3A22222B28723F225570706572223A224C6F77657222292B2220426F756E64206F6620222B692B222F222B617D7D7D7D7D2C613D7B636F756E743A66756E6374696F6E28297B72657475726E2066756E6374696F6E28297B72657475726E7B636F756E';
wwv_flow_api.g_varchar2_table(23) := '743A302C707573683A66756E6374696F6E28297B72657475726E20746869732E636F756E742B2B7D2C76616C75653A66756E6374696F6E28297B72657475726E20746869732E636F756E747D2C666F726D61743A702830292C6C6162656C3A22436F756E';
wwv_flow_api.g_varchar2_table(24) := '74227D7D7D2C636F756E74556E697175653A66756E6374696F6E2874297B76617220650D0A72657475726E20653D745B305D2C66756E6374696F6E28297B72657475726E7B756E69713A5B5D2C707573683A66756E6374696F6E2874297B76617220720D';
wwv_flow_api.g_varchar2_table(25) := '0A72657475726E20723D745B655D2C6D2E63616C6C28746869732E756E69712C72293C303F746869732E756E69712E7075736828745B655D293A766F696420307D2C76616C75653A66756E6374696F6E28297B72657475726E20746869732E756E69712E';
wwv_flow_api.g_varchar2_table(26) := '6C656E6774687D2C666F726D61743A702830292C6C6162656C3A22436F756E7420556E6971756520222B657D7D7D2C6C697374556E697175653A66756E6374696F6E2874297B76617220650D0A72657475726E20653D745B305D2C66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(27) := '297B72657475726E7B756E69713A5B5D2C707573683A66756E6374696F6E2874297B76617220720D0A72657475726E20723D745B655D2C6D2E63616C6C28746869732E756E69712C72293C303F746869732E756E69712E7075736828745B655D293A766F';
wwv_flow_api.g_varchar2_table(28) := '696420307D2C76616C75653A66756E6374696F6E28297B72657475726E20746869732E756E69712E6A6F696E28222C2022297D2C666F726D61743A66756E6374696F6E2874297B72657475726E20747D2C6C6162656C3A224C69737420556E6971756520';
wwv_flow_api.g_varchar2_table(29) := '222B657D7D7D2C696E7453756D3A6E2E73756D2830292C73756D3A6E2E73756D2833292C617665726167653A6E2E617665726167652833292C73756D4F76657253756D3A6E2E73756D4F76657253756D2833292C756238303A6E2E73756D4F7665725375';
wwv_flow_api.g_varchar2_table(30) := '6D426F756E64383028332C312C2130292C6C6238303A6E2E73756D4F76657253756D426F756E64383028332C312C2131297D2C643D7B5461626C653A66756E6374696F6E2874297B72657475726E20662874297D2C225461626C65204261726368617274';
wwv_flow_api.g_varchar2_table(31) := '223A66756E6374696F6E2874297B72657475726E20662874292E626172636861727428297D2C486561746D61703A66756E6374696F6E2874297B72657475726E20662874292E686561746D617028297D2C22526F7720486561746D6170223A66756E6374';
wwv_flow_api.g_varchar2_table(32) := '696F6E2874297B72657475726E20662874292E686561746D61702822726F77686561746D617022297D2C22436F6C20486561746D6170223A66756E6374696F6E2874297B72657475726E20662874292E686561746D61702822636F6C686561746D617022';
wwv_flow_api.g_varchar2_table(33) := '297D7D2C633D5B224A616E222C22466562222C224D6172222C22417072222C224D6179222C224A756E222C224A756C222C22417567222C22536570222C224F6374222C224E6F76222C22446563225D2C733D5B2253756E222C224D6F6E222C2254756522';
wwv_flow_api.g_varchar2_table(34) := '2C22576564222C22546875222C22467269222C22536174225D2C763D66756E6374696F6E2874297B72657475726E282230222B74292E737562737472282D322C32297D2C753D7B62696E3A66756E6374696F6E28742C65297B72657475726E2066756E63';
wwv_flow_api.g_varchar2_table(35) := '74696F6E2872297B72657475726E20725B745D2D725B745D25657D7D2C64617465466F726D61743A66756E6374696F6E28742C65297B72657475726E2066756E6374696F6E2872297B766172206E0D0A72657475726E206E3D6E65772044617465284461';
wwv_flow_api.g_varchar2_table(36) := '74652E706172736528725B745D29292C652E7265706C616365282F25282E292F672C66756E6374696F6E28742C65297B7377697463682865297B636173652279223A72657475726E206E2E67657446756C6C5965617228290D0A63617365226D223A7265';
wwv_flow_api.g_varchar2_table(37) := '7475726E2076286E2E6765744D6F6E746828292B31290D0A63617365226E223A72657475726E20635B6E2E6765744D6F6E746828295D0D0A636173652264223A72657475726E2076286E2E676574446174652829290D0A636173652277223A7265747572';
wwv_flow_api.g_varchar2_table(38) := '6E20735B6E2E67657444617928295D0D0A636173652278223A72657475726E206E2E67657444617928290D0A636173652248223A72657475726E2076286E2E676574486F7572732829290D0A63617365224D223A72657475726E2076286E2E6765744D69';
wwv_flow_api.g_varchar2_table(39) := '6E757465732829290D0A636173652253223A72657475726E2076286E2E6765745365636F6E64732829290D0A64656661756C743A72657475726E2225222B657D7D297D7D7D2C742E7069766F745574696C69746965733D7B61676772656761746F725465';
wwv_flow_api.g_varchar2_table(40) := '6D706C617465733A6E2C61676772656761746F72733A612C72656E6465726572733A642C64657269766572733A757D2C6F3D66756E6374696F6E28742C652C72297B766172206E2C612C692C730D0A666F72286E20696E206529613D655B6E5D2C745B6E';
wwv_flow_api.g_varchar2_table(41) := '5D3D6E756C6C213D28693D61287429293F693A745B6E5D0D0A666F72286E20696E207429622E63616C6C28742C6E2926266E756C6C3D3D28733D745B6E5D29262628745B6E5D3D226E756C6C22290D0A72657475726E20722874297D2C6C3D66756E6374';
wwv_flow_api.g_varchar2_table(42) := '696F6E28652C722C6E297B76617220612C692C732C752C6C2C682C632C702C662C642C672C760D0A696628613D66756E6374696F6E2874297B72657475726E206F28742C722C6E297D2C742E697346756E6374696F6E2865292972657475726E20652861';
wwv_flow_api.g_varchar2_table(43) := '290D0A696628742E69734172726179286529297B696628742E6973417272617928655B305D29297B673D5B5D0D0A666F72287320696E206529696628622E63616C6C28652C7329262628693D655B735D2C733E3029297B683D7B7D2C643D655B305D0D0A';
wwv_flow_api.g_varchar2_table(44) := '666F72287520696E206429622E63616C6C28642C75292626286C3D645B755D2C685B6C5D3D695B755D290D0A672E707573682861286829297D72657475726E20677D666F7228763D5B5D2C703D302C663D652E6C656E6774683B663E703B702B2B29683D';
wwv_flow_api.g_varchar2_table(45) := '655B705D2C762E707573682861286829290D0A72657475726E20767D72657475726E20633D5B5D2C7428227468656164203E207472203E207468222C65292E656163682866756E6374696F6E28297B72657475726E20632E707573682874287468697329';
wwv_flow_api.g_varchar2_table(46) := '2E746578742829297D292C74282274626F6479203E207472222C65292E656163682866756E6374696F6E28297B72657475726E20683D7B7D2C7428227464222C74686973292E656163682866756E6374696F6E2865297B72657475726E20685B635B655D';
wwv_flow_api.g_varchar2_table(47) := '5D3D742874686973292E7465787428297D292C612868297D297D2C693D66756E6374696F6E2874297B76617220650D0A72657475726E20653D5B5D2C6C28742C7B7D2C66756E6374696F6E2874297B72657475726E20652E707573682874297D292C657D';
wwv_flow_api.g_varchar2_table(48) := '2C653D66756E6374696F6E28297B66756E6374696F6E207428742C652C72297B746869732E61676772656761746F723D742C746869732E636F6C41747472733D652C746869732E726F7741747472733D722C746869732E67657441676772656761746F72';
wwv_flow_api.g_varchar2_table(49) := '3D7928746869732E67657441676772656761746F722C74686973292C746869732E666C617474656E4B65793D7928746869732E666C617474656E4B65792C74686973292C746869732E676574526F774B6579733D7928746869732E676574526F774B6579';
wwv_flow_api.g_varchar2_table(50) := '732C74686973292C746869732E676574436F6C4B6579733D7928746869732E676574436F6C4B6579732C74686973292C746869732E736F72744B6579733D7928746869732E736F72744B6579732C74686973292C746869732E617272536F72743D792874';
wwv_flow_api.g_varchar2_table(51) := '6869732E617272536F72742C74686973292C746869732E6E6174536F72743D7928746869732E6E6174536F72742C74686973292C746869732E747265653D7B7D2C746869732E726F774B6579733D5B5D2C746869732E636F6C4B6579733D5B5D2C746869';
wwv_flow_api.g_varchar2_table(52) := '732E666C6174526F774B6579733D5B5D2C746869732E666C6174436F6C4B6579733D5B5D2C746869732E726F77546F74616C733D7B7D2C746869732E636F6C546F74616C733D7B7D2C746869732E616C6C546F74616C3D746869732E6167677265676174';
wwv_flow_api.g_varchar2_table(53) := '6F7228292C746869732E736F727465643D21317D72657475726E20742E70726F746F747970652E6E6174536F72743D66756E6374696F6E28742C65297B76617220722C6E2C612C692C732C6F2C750D0A6966286F3D2F285C642B297C285C442B292F672C';
wwv_flow_api.g_varchar2_table(54) := '733D2F5C642F2C753D2F5E302F2C226E756D626572223D3D747970656F6620747C7C226E756D626572223D3D747970656F6620652972657475726E2069734E614E2874293F313A69734E614E2865293F2D313A742D650D0A696628723D28742B2222292E';
wwv_flow_api.g_varchar2_table(55) := '746F4C6F7765724361736528292C613D28652B2222292E746F4C6F7765724361736528292C723D3D3D612972657475726E20300D0A69662821732E746573742872297C7C21732E746573742861292972657475726E20723E613F313A2D310D0A666F7228';
wwv_flow_api.g_varchar2_table(56) := '723D722E6D61746368286F292C613D612E6D61746368286F293B722E6C656E6774682626612E6C656E6774683B296966286E3D722E736869667428292C693D612E736869667428292C6E213D3D692972657475726E20732E74657374286E292626732E74';
wwv_flow_api.g_varchar2_table(57) := '6573742869293F6E2E7265706C61636528752C222E3022292D692E7265706C61636528752C222E3022293A6E3E693F313A2D310D0A72657475726E20722E6C656E6774682D612E6C656E6774687D2C742E70726F746F747970652E617272536F72743D66';
wwv_flow_api.g_varchar2_table(58) := '756E6374696F6E28742C65297B72657475726E20746869732E6E6174536F727428742E6A6F696E28292C652E6A6F696E2829297D2C742E70726F746F747970652E736F72744B6579733D66756E6374696F6E28297B72657475726E20746869732E736F72';
wwv_flow_api.g_varchar2_table(59) := '7465647C7C28746869732E726F774B6579732E736F727428746869732E617272536F7274292C746869732E636F6C4B6579732E736F727428746869732E617272536F727429292C746869732E736F727465643D21307D2C742E70726F746F747970652E67';
wwv_flow_api.g_varchar2_table(60) := '6574436F6C4B6579733D66756E6374696F6E28297B72657475726E20746869732E736F72744B65797328292C746869732E636F6C4B6579737D2C742E70726F746F747970652E676574526F774B6579733D66756E6374696F6E28297B72657475726E2074';
wwv_flow_api.g_varchar2_table(61) := '6869732E736F72744B65797328292C746869732E726F774B6579737D2C742E70726F746F747970652E666C617474656E4B65793D66756E6374696F6E2874297B72657475726E20742E6A6F696E28537472696E672E66726F6D43686172436F6465283029';
wwv_flow_api.g_varchar2_table(62) := '297D2C742E70726F746F747970652E70726F636573735265636F72643D66756E6374696F6E2874297B76617220652C722C6E2C612C690D0A72657475726E20653D66756E6374696F6E28297B76617220652C722C6E2C610D0A666F72286E3D746869732E';
wwv_flow_api.g_varchar2_table(63) := '636F6C41747472732C613D5B5D2C653D302C723D6E2E6C656E6774683B723E653B652B2B29693D6E5B655D2C612E7075736828745B695D290D0A72657475726E20617D2E63616C6C2874686973292C613D66756E6374696F6E28297B76617220652C722C';
wwv_flow_api.g_varchar2_table(64) := '6E2C610D0A666F72286E3D746869732E726F7741747472732C613D5B5D2C653D302C723D6E2E6C656E6774683B723E653B652B2B29693D6E5B655D2C612E7075736828745B695D290D0A72657475726E20617D2E63616C6C2874686973292C6E3D746869';
wwv_flow_api.g_varchar2_table(65) := '732E666C617474656E4B65792861292C723D746869732E666C617474656E4B65792865292C746869732E616C6C546F74616C2E707573682874292C30213D3D612E6C656E6774682626286D2E63616C6C28746869732E666C6174526F774B6579732C6E29';
wwv_flow_api.g_varchar2_table(66) := '3C30262628746869732E726F774B6579732E707573682861292C746869732E666C6174526F774B6579732E70757368286E29292C746869732E726F77546F74616C735B6E5D7C7C28746869732E726F77546F74616C735B6E5D3D746869732E6167677265';
wwv_flow_api.g_varchar2_table(67) := '6761746F722829292C746869732E726F77546F74616C735B6E5D2E70757368287429292C30213D3D652E6C656E6774682626286D2E63616C6C28746869732E666C6174436F6C4B6579732C72293C30262628746869732E636F6C4B6579732E7075736828';
wwv_flow_api.g_varchar2_table(68) := '65292C746869732E666C6174436F6C4B6579732E70757368287229292C746869732E636F6C546F74616C735B725D7C7C28746869732E636F6C546F74616C735B725D3D746869732E61676772656761746F722829292C746869732E636F6C546F74616C73';
wwv_flow_api.g_varchar2_table(69) := '5B725D2E70757368287429292C30213D3D652E6C656E677468262630213D3D612E6C656E6774683F286E20696E20746869732E747265657C7C28746869732E747265655B6E5D3D7B7D292C7220696E20746869732E747265655B6E5D7C7C28746869732E';
wwv_flow_api.g_varchar2_table(70) := '747265655B6E5D5B725D3D746869732E61676772656761746F722829292C746869732E747265655B6E5D5B725D2E70757368287429293A766F696420307D2C742E70726F746F747970652E67657441676772656761746F723D66756E6374696F6E28742C';
wwv_flow_api.g_varchar2_table(71) := '65297B76617220722C6E2C610D0A72657475726E20613D746869732E666C617474656E4B65792874292C6E3D746869732E666C617474656E4B65792865292C723D303D3D3D742E6C656E6774682626303D3D3D652E6C656E6774683F746869732E616C6C';
wwv_flow_api.g_varchar2_table(72) := '546F74616C3A303D3D3D742E6C656E6774683F746869732E636F6C546F74616C735B6E5D3A303D3D3D652E6C656E6774683F746869732E726F77546F74616C735B615D3A746869732E747265655B615D5B6E5D2C6E756C6C213D723F723A7B76616C7565';
wwv_flow_api.g_varchar2_table(73) := '3A66756E6374696F6E28297B72657475726E206E756C6C7D2C666F726D61743A66756E6374696F6E28297B72657475726E22227D7D7D2C747D28292C683D66756E6374696F6E28742C722C6E2C612C692C73297B766172206F0D0A72657475726E206F3D';
wwv_flow_api.g_varchar2_table(74) := '6E6577206528612C722C6E292C6C28742C732C66756E6374696F6E2874297B72657475726E20692874293F6F2E70726F636573735265636F72642874293A766F696420307D292C6F7D2C673D66756E6374696F6E28742C652C72297B766172206E2C612C';
wwv_flow_api.g_varchar2_table(75) := '692C730D0A69662830213D3D65297B666F7228613D21302C733D303B723E3D303F723E3D733A733E3D723B723E3D303F732B2B3A732D2D29745B652D315D5B735D213D3D745B655D5B735D262628613D2131290D0A696628612972657475726E2D317D66';
wwv_flow_api.g_varchar2_table(76) := '6F72286E3D303B652B6E3C742E6C656E6774683B297B666F7228693D21312C733D303B723E3D303F723E3D733A733E3D723B723E3D303F732B2B3A732D2D29745B655D5B735D213D3D745B652B6E5D5B735D262628693D2130290D0A6966286929627265';
wwv_flow_api.g_varchar2_table(77) := '616B0D0A6E2B2B7D72657475726E206E7D2C663D66756E6374696F6E2865297B76617220722C6E2C612C692C732C6F2C752C6C2C682C632C702C662C642C762C6D2C792C782C770D0A613D652E636F6C41747472732C633D652E726F7741747472732C66';
wwv_flow_api.g_varchar2_table(78) := '3D652E676574526F774B65797328292C733D652E676574436F6C4B65797328292C683D7428223C7461626C6520636C6173733D277461626C65207461626C652D626F726465726564207076745461626C65273E22290D0A666F72287520696E2061296966';
wwv_flow_api.g_varchar2_table(79) := '28622E63616C6C28612C7529297B6E3D615B755D2C6D3D7428223C74723E22292C303D3D3D7061727365496E74287529262630213D3D632E6C656E67746826266D2E617070656E64287428223C74683E22292E617474722822636F6C7370616E222C632E';
wwv_flow_api.g_varchar2_table(80) := '6C656E677468292E617474722822726F777370616E222C612E6C656E67746829292C6D2E617070656E64287428223C746820636C6173733D27707674417869734C6162656C273E22292E74657874286E29290D0A666F72286F20696E207329622E63616C';
wwv_flow_api.g_varchar2_table(81) := '6C28732C6F29262628693D735B6F5D2C773D6728732C7061727365496E74286F292C7061727365496E74287529292C2D31213D3D77262628643D7428223C746820636C6173733D27707674436F6C4C6162656C273E22292E7465787428695B755D292E61';
wwv_flow_api.g_varchar2_table(82) := '7474722822636F6C7370616E222C77292C7061727365496E742875293D3D3D612E6C656E6774682D31262630213D3D632E6C656E6774682626642E617474722822726F777370616E222C32292C6D2E617070656E6428642929290D0A303D3D3D70617273';
wwv_flow_api.g_varchar2_table(83) := '65496E7428752926266D2E617070656E64287428223C746820636C6173733D27707674546F74616C4C6162656C273E22292E746578742822546F74616C7322292E617474722822726F777370616E222C612E6C656E6774682B28303D3D3D632E6C656E67';
wwv_flow_api.g_varchar2_table(84) := '74683F303A312929292C682E617070656E64286D297D69662830213D3D632E6C656E677468297B6D3D7428223C74723E22290D0A666F72286F20696E206329622E63616C6C28632C6F292626286C3D635B6F5D2C6D2E617070656E64287428223C746820';
wwv_flow_api.g_varchar2_table(85) := '636C6173733D27707674417869734C6162656C273E22292E74657874286C2929290D0A643D7428223C74683E22292C303D3D3D612E6C656E6774682626642E616464436C6173732822707674546F74616C4C6162656C22292E746578742822546F74616C';
wwv_flow_api.g_varchar2_table(86) := '7322292C6D2E617070656E642864292C682E617070656E64286D297D666F72286F20696E206629696628622E63616C6C28662C6F29297B703D665B6F5D2C6D3D7428223C74723E22290D0A666F72287520696E207029622E63616C6C28702C7529262628';
wwv_flow_api.g_varchar2_table(87) := '793D705B755D2C773D6728662C7061727365496E74286F292C7061727365496E74287529292C2D31213D3D77262628643D7428223C746820636C6173733D27707674526F774C6162656C273E22292E746578742879292E617474722822726F777370616E';
wwv_flow_api.g_varchar2_table(88) := '222C77292C7061727365496E742875293D3D3D632E6C656E6774682D31262630213D3D612E6C656E6774682626642E617474722822636F6C7370616E222C32292C6D2E617070656E6428642929290D0A666F72287520696E207329622E63616C6C28732C';
wwv_flow_api.g_varchar2_table(89) := '7529262628693D735B755D2C723D652E67657441676772656761746F7228702C69292C783D722E76616C756528292C6D2E617070656E64287428223C746420636C6173733D2770767456616C20726F77222B6F2B2220636F6C222B752B22273E22292E74';
wwv_flow_api.g_varchar2_table(90) := '65787428722E666F726D6174287829292E64617461282276616C7565222C782929290D0A763D652E67657441676772656761746F7228702C5B5D292C783D762E76616C756528292C6D2E617070656E64287428223C746420636C6173733D27707674546F';
wwv_flow_api.g_varchar2_table(91) := '74616C20726F77546F74616C273E22292E7465787428762E666F726D6174287829292E64617461282276616C7565222C78292E646174612822666F72222C22726F77222B6F29292C682E617070656E64286D297D6D3D7428223C74723E22292C643D7428';
wwv_flow_api.g_varchar2_table(92) := '223C746820636C6173733D27707674546F74616C4C6162656C273E22292E746578742822546F74616C7322292C642E617474722822636F6C7370616E222C632E6C656E6774682B28303D3D3D612E6C656E6774683F303A3129292C6D2E617070656E6428';
wwv_flow_api.g_varchar2_table(93) := '64290D0A666F72287520696E207329622E63616C6C28732C7529262628693D735B755D2C763D652E67657441676772656761746F72285B5D2C69292C783D762E76616C756528292C6D2E617070656E64287428223C746420636C6173733D27707674546F';
wwv_flow_api.g_varchar2_table(94) := '74616C20636F6C546F74616C273E22292E7465787428762E666F726D6174287829292E64617461282276616C7565222C78292E646174612822666F72222C22636F6C222B752929290D0A72657475726E20763D652E67657441676772656761746F72285B';
wwv_flow_api.g_varchar2_table(95) := '5D2C5B5D292C783D762E76616C756528292C6D2E617070656E64287428223C746420636C6173733D277076744772616E64546F74616C273E22292E7465787428762E666F726D6174287829292E64617461282276616C7565222C7829292C682E61707065';
wwv_flow_api.g_varchar2_table(96) := '6E64286D292C682E64617461282264696D656E73696F6E73222C5B662E6C656E6774682C732E6C656E6774685D292C687D2C742E666E2E7069766F743D66756E6374696F6E28652C72297B766172206E0D0A72657475726E206E3D7B636F6C733A5B5D2C';
wwv_flow_api.g_varchar2_table(97) := '726F77733A5B5D2C66696C7465723A66756E6374696F6E28297B72657475726E21307D2C61676772656761746F723A612E636F756E7428292C64657269766564417474726962757465733A7B7D2C72656E64657265723A667D2C723D742E657874656E64';
wwv_flow_api.g_varchar2_table(98) := '286E2C72292C746869732E68746D6C28722E72656E6465726572286828652C722E636F6C732C722E726F77732C722E61676772656761746F722C722E66696C7465722C722E64657269766564417474726962757465732929292C746869737D2C742E666E';
wwv_flow_api.g_varchar2_table(99) := '2E7069766F7455493D66756E6374696F6E28652C722C6E297B76617220732C6F2C752C682C632C702C662C672C762C782C772C412C542C4B2C4E2C532C462C432C442C6B2C4D2C4C2C712C4F2C492C522C552C482C6A2C422C562C7A2C5F0D0A6E756C6C';
wwv_flow_api.g_varchar2_table(100) := '3D3D6E2626286E3D2131292C633D7B64657269766564417474726962757465733A7B7D2C61676772656761746F72733A612C72656E6465726572733A642C68696464656E417474726962757465733A5B5D2C636F6C733A5B5D2C726F77733A5B5D2C7661';
wwv_flow_api.g_varchar2_table(101) := '6C733A5B5D7D2C703D746869732E6461746128227069766F7455494F7074696F6E7322292C673D6E756C6C3D3D707C7C6E3F742E657874656E6428632C72293A702C653D692865292C543D66756E6374696F6E28297B76617220742C720D0A743D655B30';
wwv_flow_api.g_varchar2_table(102) := '5D2C723D5B5D0D0A666F72286620696E207429622E63616C6C28742C66292626722E707573682866290D0A72657475726E20727D28292C483D672E64657269766564417474726962757465730D0A666F72287520696E204829622E63616C6C28482C7529';
wwv_flow_api.g_varchar2_table(103) := '26266D2E63616C6C28542C75293C302626542E707573682875290D0A666F72286F3D7B7D2C433D302C4C3D542E6C656E6774683B4C3E433B432B2B29463D545B435D2C6F5B465D3D7B7D0D0A6C28652C672E64657269766564417474726962757465732C';
wwv_flow_api.g_varchar2_table(104) := '66756E6374696F6E2874297B76617220652C722C6E2C612C690D0A693D5B5D0D0A666F72286520696E207429622E63616C6C28742C6529262628723D745B655D2C6E756C6C3D3D72262628723D226E756C6C22292C6E756C6C3D3D28613D286E3D6F5B65';
wwv_flow_api.g_varchar2_table(105) := '5D295B725D292626286E5B725D3D30292C692E70757368286F5B655D5B725D2B2B29290D0A72657475726E20697D292C533D7428223C7461626C6520636C6173733D277461626C65207461626C652D626F726465726564272063656C6C70616464696E67';
wwv_flow_api.g_varchar2_table(106) := '3D2735273E22292C413D7428223C74643E22292C773D7428223C73656C6563742069643D2772656E6465726572273E22292E62696E6428226368616E6765222C66756E6374696F6E28297B72657475726E207828297D292C6A3D672E72656E6465726572';
wwv_flow_api.g_varchar2_table(107) := '730D0A666F72284620696E206A29622E63616C6C286A2C46292626772E617070656E64287428223C6F7074696F6E3E22292E76616C2846292E74657874284629290D0A666F7228412E617070656E642877292C683D7428223C74642069643D27756E7573';
wwv_flow_api.g_varchar2_table(108) := '65642720636C6173733D2770767441786973436F6E7461696E657220707674486F72697A4C697374273E22292C443D302C713D542E6C656E6774683B713E443B442B2B29753D545B445D2C6D2E63616C6C28672E68696464656E41747472696275746573';
wwv_flow_api.g_varchar2_table(109) := '2C75293C3026262166756E6374696F6E2865297B76617220722C6E2C612C692C732C752C6C2C632C702C660D0A696628733D66756E6374696F6E28297B76617220740D0A743D5B5D0D0A666F72286920696E206F5B655D29742E707573682869290D0A72';
wwv_flow_api.g_varchar2_table(110) := '657475726E20747D28292C6E3D7428223C6E6F62723E22292E746578742865292C6C3D7428223C6469763E22292E637373287B227A2D696E646578223A3130302C77696474683A223238307078222C6865696768743A223335307078222C6F766572666C';
wwv_flow_api.g_varchar2_table(111) := '6F773A227363726F6C6C222C626F726465723A2231707820736F6C69642067726179222C6261636B67726F756E643A227768697465222C646973706C61793A226E6F6E65222C706F736974696F6E3A226162736F6C757465222C70616464696E673A2232';
wwv_flow_api.g_varchar2_table(112) := '307078227D292C6C2E617070656E64287428223C7374726F6E673E22292E746578742822222B732E6C656E6774682B222076616C75657320666F7220222B6529292C732E6C656E6774683E3530296C2E617070656E64287428223C703E22292E74657874';
wwv_flow_api.g_varchar2_table(113) := '282228746F6F206D616E7920746F206C697374292229290D0A656C736520666F7228723D7428223C703E22292C722E617070656E64287428223C627574746F6E3E22292E74657874282253656C65637420416C6C22292E62696E642822636C69636B222C';
wwv_flow_api.g_varchar2_table(114) := '66756E6374696F6E28297B72657475726E206C2E66696E642822696E70757422292E617474722822636865636B6564222C2130297D29292C722E617070656E64287428223C627574746F6E3E22292E74657874282253656C656374204E6F6E6522292E62';
wwv_flow_api.g_varchar2_table(115) := '696E642822636C69636B222C66756E6374696F6E28297B72657475726E206C2E66696E642822696E70757422292E617474722822636865636B6564222C2131297D29292C6C2E617070656E642872292C663D732E736F727428292C633D302C703D662E6C';
wwv_flow_api.g_varchar2_table(116) := '656E6774683B703E633B632B2B29693D665B635D2C753D6F5B655D5B695D2C613D7428223C6C6162656C3E22292C612E617070656E64287428223C696E70757420747970653D27636865636B626F782720636C6173733D2770767446696C746572273E22';
wwv_flow_api.g_varchar2_table(117) := '292E617474722822636865636B6564222C2130292E64617461282266696C746572222C5B652C695D29292C612E617070656E64287428223C7370616E3E22292E746578742822222B692B222028222B752B22292229292C6C2E617070656E64287428223C';
wwv_flow_api.g_varchar2_table(118) := '703E22292E617070656E64286129290D0A72657475726E206E2E62696E64282264626C636C69636B222C66756E6374696F6E2865297B72657475726E206C2E637373287B6C6566743A652E70616765582C746F703A652E70616765597D292E746F67676C';
wwv_flow_api.g_varchar2_table(119) := '6528292C6C2E62696E642822636C69636B222C66756E6374696F6E2874297B72657475726E20742E73746F7050726F7061676174696F6E28297D292C7428646F63756D656E74292E6F6E652822636C69636B222C66756E6374696F6E28297B7265747572';
wwv_flow_api.g_varchar2_table(120) := '6E207828292C6C2E746F67676C6528297D297D292C682E617070656E64287428223C6C6920636C6173733D276C6162656C206C6162656C2D696E666F272069643D27617869735F222B652E7265706C616365282F5C732F672C2222292B22273E22292E61';
wwv_flow_api.g_varchar2_table(121) := '7070656E64286E292E617070656E64286C29297D2875290D0A532E617070656E64287428223C74723E22292E617070656E642841292E617070656E64286829292C4B3D7428223C74723E22292C733D7428223C73656C6563742069643D27616767726567';
wwv_flow_api.g_varchar2_table(122) := '61746F72273E22292E63737328226D617267696E2D626F74746F6D222C2235707822292E62696E6428226368616E6765222C66756E6374696F6E28297B72657475726E207828297D292C423D672E61676772656761746F72730D0A666F72284620696E20';
wwv_flow_api.g_varchar2_table(123) := '4229622E63616C6C28422C46292626732E617070656E64287428223C6F7074696F6E3E22292E76616C2846292E74657874284629290D0A666F72284B2E617070656E64287428223C74642069643D2776616C732720636C6173733D277076744178697343';
wwv_flow_api.g_varchar2_table(124) := '6F6E7461696E657220707674486F72697A4C697374273E22292E6373732822746578742D616C69676E222C2263656E74657222292E617070656E642873292E617070656E64287428223C62723E222929292C4B2E617070656E64287428223C7464206964';
wwv_flow_api.g_varchar2_table(125) := '3D27636F6C732720636C6173733D2770767441786973436F6E7461696E657220707674486F72697A4C697374273E2229292C532E617070656E64284B292C4E3D7428223C74723E22292C4E2E617070656E64287428223C74642076616C69676E3D27746F';
wwv_flow_api.g_varchar2_table(126) := '70272069643D27726F77732720636C6173733D2770767441786973436F6E7461696E6572273E2229292C763D7428223C74642076616C69676E3D27746F70273E22292C4E2E617070656E642876292C532E617070656E64284E292C746869732E68746D6C';
wwv_flow_api.g_varchar2_table(127) := '2853292C563D672E636F6C732C6B3D302C4F3D562E6C656E6774683B4F3E6B3B6B2B2B29463D565B6B5D2C746869732E66696E64282223636F6C7322292E617070656E6428746869732E66696E64282223617869735F222B462E7265706C616365282F5C';
wwv_flow_api.g_varchar2_table(128) := '732F672C22222929290D0A666F72287A3D672E726F77732C4D3D302C493D7A2E6C656E6774683B493E4D3B4D2B2B29463D7A5B4D5D2C746869732E66696E64282223726F777322292E617070656E6428746869732E66696E64282223617869735F222B46';
wwv_flow_api.g_varchar2_table(129) := '2E7265706C616365282F5C732F672C22222929290D0A666F72285F3D672E76616C732C553D302C523D5F2E6C656E6774683B523E553B552B2B29463D5F5B555D2C746869732E66696E6428222376616C7322292E617070656E6428746869732E66696E64';
wwv_flow_api.g_varchar2_table(130) := '282223617869735F222B462E7265706C616365282F5C732F672C22222929290D0A72657475726E206E756C6C213D672E61676772656761746F724E616D652626746869732E66696E6428222361676772656761746F7222292E76616C28672E6167677265';
wwv_flow_api.g_varchar2_table(131) := '6761746F724E616D65292C6E756C6C213D672E72656E64657265724E616D652626746869732E66696E6428222372656E646572657222292E76616C28672E72656E64657265724E616D65292C783D792866756E6374696F6E28297B76617220722C6E2C61';
wwv_flow_api.g_varchar2_table(132) := '0D0A72657475726E206E3D7B64657269766564417474726962757465733A672E64657269766564417474726962757465737D2C6E2E636F6C733D5B5D2C6E2E726F77733D5B5D2C613D5B5D2C746869732E66696E64282223726F7773206C69206E6F6272';
wwv_flow_api.g_varchar2_table(133) := '22292E656163682866756E6374696F6E28297B72657475726E206E2E726F77732E7075736828742874686973292E746578742829297D292C746869732E66696E64282223636F6C73206C69206E6F627222292E656163682866756E6374696F6E28297B72';
wwv_flow_api.g_varchar2_table(134) := '657475726E206E2E636F6C732E7075736828742874686973292E746578742829297D292C746869732E66696E6428222376616C73206C69206E6F627222292E656163682866756E6374696F6E28297B72657475726E20612E707573682874287468697329';
wwv_flow_api.g_varchar2_table(135) := '2E746578742829297D292C6E2E61676772656761746F723D672E61676772656761746F72735B732E76616C28295D2861292C6E2E72656E64657265723D672E72656E6465726572735B772E76616C28295D2C723D5B5D2C746869732E66696E642822696E';
wwv_flow_api.g_varchar2_table(136) := '7075742E70767446696C74657222292E6E6F7428223A636865636B656422292E656163682866756E6374696F6E28297B72657475726E20722E7075736828742874686973292E64617461282266696C7465722229297D292C6E2E66696C7465723D66756E';
wwv_flow_api.g_varchar2_table(137) := '6374696F6E2874297B76617220652C6E2C612C690D0A666F7228613D302C6E3D722E6C656E6774683B6E3E613B612B2B29696628693D725B615D2C663D695B305D2C653D695B315D2C745B665D3D3D3D652972657475726E21310D0A72657475726E2130';
wwv_flow_api.g_varchar2_table(138) := '7D2C762E7069766F7428652C6E292C746869732E6461746128227069766F7455494F7074696F6E73222C7B636F6C733A6E2E636F6C732C726F77733A6E2E726F77732C76616C733A612C68696464656E417474726962757465733A672E68696464656E41';
wwv_flow_api.g_varchar2_table(139) := '7474726962757465732C72656E6465726572733A672E72656E6465726572732C61676772656761746F72733A672E61676772656761746F72732C64657269766564417474726962757465733A672E64657269766564417474726962757465732C61676772';
wwv_flow_api.g_varchar2_table(140) := '656761746F724E616D653A732E76616C28292C72656E64657265724E616D653A772E76616C28297D297D2C74686973292C7828292C746869732E66696E6428222E70767441786973436F6E7461696E657222292E736F727461626C65287B636F6E6E6563';
wwv_flow_api.g_varchar2_table(141) := '74576974683A222E70767441786973436F6E7461696E6572222C6974656D733A226C69227D292E62696E642822736F727473746F70222C78292C746869737D2C742E666E2E686561746D61703D66756E6374696F6E2865297B76617220722C6E2C612C69';
wwv_flow_api.g_varchar2_table(142) := '2C732C6F2C750D0A737769746368286E756C6C3D3D65262628653D22686561746D617022292C753D746869732E64617461282264696D656E73696F6E7322292C6F3D755B305D2C733D755B315D2C723D66756E6374696F6E28742C652C72297B76617220';
wwv_flow_api.g_varchar2_table(143) := '6E0D0A72657475726E206E3D66756E6374696F6E28297B7377697463682874297B6361736522726564223A72657475726E2066756E6374696F6E2874297B72657475726E226666222B742B747D0D0A6361736522677265656E223A72657475726E206675';
wwv_flow_api.g_varchar2_table(144) := '6E6374696F6E2874297B72657475726E22222B742B226666222B747D0D0A6361736522626C7565223A72657475726E2066756E6374696F6E2874297B72657475726E22222B742B742B226666227D7D7D28292C66756E6374696F6E2874297B7661722061';
wwv_flow_api.g_varchar2_table(145) := '2C690D0A72657475726E20693D3235352D4D6174682E726F756E64283235352A28742D65292F28722D6529292C613D692E746F537472696E67283136292E73706C697428222E22295B305D2C313D3D3D612E6C656E677468262628613D302B61292C6E28';
wwv_flow_api.g_varchar2_table(146) := '61297D7D2C6E3D792866756E6374696F6E28652C6E297B76617220612C692C730D0A72657475726E20693D792866756E6374696F6E2872297B72657475726E20746869732E66696E642865292E656163682866756E6374696F6E28297B76617220650D0A';
wwv_flow_api.g_varchar2_table(147) := '72657475726E20653D742874686973292E64617461282276616C756522292C6E756C6C213D652626697346696E6974652865293F7228652C74287468697329293A766F696420307D297D2C74686973292C733D5B5D2C692866756E6374696F6E2874297B';
wwv_flow_api.g_varchar2_table(148) := '72657475726E20732E707573682874297D292C613D72286E2C4D6174682E6D696E2E6170706C79284D6174682C73292C4D6174682E6D61782E6170706C79284D6174682C7329292C692866756E6374696F6E28742C65297B72657475726E20652E637373';
wwv_flow_api.g_varchar2_table(149) := '28226261636B67726F756E642D636F6C6F72222C2223222B61287429297D297D2C74686973292C65297B6361736522686561746D6170223A6E28222E70767456616C222C2272656422290D0A627265616B0D0A6361736522726F77686561746D6170223A';
wwv_flow_api.g_varchar2_table(150) := '666F7228613D303B6F3E3D303F6F3E613A613E6F3B6F3E3D303F612B2B3A612D2D296E28222E70767456616C2E726F77222B612C2272656422290D0A627265616B0D0A6361736522636F6C686561746D6170223A666F7228693D303B733E3D303F733E69';
wwv_flow_api.g_varchar2_table(151) := '3A693E733B733E3D303F692B2B3A692D2D296E28222E70767456616C2E636F6C222B692C2272656422297D72657475726E206E28222E707674546F74616C2E726F77546F74616C222C2272656422292C6E28222E707674546F74616C2E636F6C546F7461';
wwv_flow_api.g_varchar2_table(152) := '6C222C2272656422292C746869737D2C742E666E2E62617263686172743D66756E6374696F6E28297B76617220652C722C6E2C612C690D0A666F7228693D746869732E64617461282264696D656E73696F6E7322292C613D695B305D2C6E3D695B315D2C';
wwv_flow_api.g_varchar2_table(153) := '653D792866756E6374696F6E2865297B76617220722C6E2C612C690D0A72657475726E20723D792866756E6374696F6E2872297B72657475726E20746869732E66696E642865292E656163682866756E6374696F6E28297B76617220650D0A7265747572';
wwv_flow_api.g_varchar2_table(154) := '6E20653D742874686973292E64617461282276616C756522292C6E756C6C213D652626697346696E6974652865293F7228652C74287468697329293A766F696420307D297D2C74686973292C693D5B5D2C722866756E6374696F6E2874297B7265747572';
wwv_flow_api.g_varchar2_table(155) := '6E20692E707573682874297D292C6E3D4D6174682E6D61782E6170706C79284D6174682C69292C613D66756E6374696F6E2874297B72657475726E203130302A742F28312E342A6E297D2C722866756E6374696F6E28652C72297B766172206E2C690D0A';
wwv_flow_api.g_varchar2_table(156) := '72657475726E206E3D722E7465787428292C693D7428223C6469763E22292E637373287B706F736974696F6E3A2272656C6174697665222C6865696768743A2235357078227D292C692E617070656E64287428223C6469763E22292E637373287B706F73';
wwv_flow_api.g_varchar2_table(157) := '6974696F6E3A226162736F6C757465222C626F74746F6D3A302C6C6566743A302C72696768743A302C6865696768743A612865292B2225222C226261636B67726F756E642D636F6C6F72223A2267726179227D29292C692E617070656E64287428223C64';
wwv_flow_api.g_varchar2_table(158) := '69763E22292E74657874286E292E637373287B706F736974696F6E3A2272656C6174697665222C2270616464696E672D6C656674223A22357078222C2270616464696E672D7269676874223A22357078227D29292C722E637373287B70616464696E673A';
wwv_flow_api.g_varchar2_table(159) := '302C2270616464696E672D746F70223A22357078222C22746578742D616C69676E223A2263656E746572227D292E68746D6C2869297D297D2C74686973292C723D303B613E3D303F613E723A723E613B613E3D303F722B2B3A722D2D296528222E707674';
wwv_flow_api.g_varchar2_table(160) := '56616C2E726F77222B72290D0A72657475726E206528222E707674546F74616C2E636F6C546F74616C22292C746869737D7D292E63616C6C2874686973290D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30803040533307746211)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_file_name=>'pivot.min.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A21206A5175657279205549202D2076312E382E3232202D20323031322D30372D32340A2A2068747470733A2F2F6769746875622E636F6D2F6A71756572792F6A71756572792D75690A2A20496E636C756465733A206A71756572792E75692E736F72';
wwv_flow_api.g_varchar2_table(2) := '7461626C652E6A730A2A20436F7079726967687420286329203230313220415554484F52532E7478743B204C6963656E736564204D49542C2047504C202A2F0A2866756E6374696F6E28612C62297B612E776964676574282275692E736F727461626C65';
wwv_flow_api.g_varchar2_table(3) := '222C612E75692E6D6F7573652C7B7769646765744576656E745072656669783A22736F7274222C72656164793A21312C6F7074696F6E733A7B617070656E64546F3A22706172656E74222C617869733A21312C636F6E6E656374576974683A21312C636F';
wwv_flow_api.g_varchar2_table(4) := '6E7461696E6D656E743A21312C637572736F723A226175746F222C637572736F7241743A21312C64726F704F6E456D7074793A21302C666F726365506C616365686F6C64657253697A653A21312C666F72636548656C70657253697A653A21312C677269';
wwv_flow_api.g_varchar2_table(5) := '643A21312C68616E646C653A21312C68656C7065723A226F726967696E616C222C6974656D733A223E202A222C6F7061636974793A21312C706C616365686F6C6465723A21312C7265766572743A21312C7363726F6C6C3A21302C7363726F6C6C53656E';
wwv_flow_api.g_varchar2_table(6) := '73697469766974793A32302C7363726F6C6C53706565643A32302C73636F70653A2264656661756C74222C746F6C6572616E63653A22696E74657273656374222C7A496E6465783A3165337D2C5F6372656174653A66756E6374696F6E28297B76617220';
wwv_flow_api.g_varchar2_table(7) := '613D746869732E6F7074696F6E733B746869732E636F6E7461696E657243616368653D7B7D2C746869732E656C656D656E742E616464436C617373282275692D736F727461626C6522292C746869732E7265667265736828292C746869732E666C6F6174';
wwv_flow_api.g_varchar2_table(8) := '696E673D746869732E6974656D732E6C656E6774683F612E617869733D3D3D2278227C7C2F6C6566747C72696768742F2E7465737428746869732E6974656D735B305D2E6974656D2E6373732822666C6F61742229297C7C2F696E6C696E657C7461626C';
wwv_flow_api.g_varchar2_table(9) := '652D63656C6C2F2E7465737428746869732E6974656D735B305D2E6974656D2E6373732822646973706C61792229293A21312C746869732E6F66667365743D746869732E656C656D656E742E6F666673657428292C746869732E5F6D6F757365496E6974';
wwv_flow_api.g_varchar2_table(10) := '28292C746869732E72656164793D21307D2C64657374726F793A66756E6374696F6E28297B612E5769646765742E70726F746F747970652E64657374726F792E63616C6C2874686973292C746869732E656C656D656E742E72656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(11) := '2275692D736F727461626C652075692D736F727461626C652D64697361626C656422292C746869732E5F6D6F75736544657374726F7928293B666F722876617220623D746869732E6974656D732E6C656E6774682D313B623E3D303B622D2D2974686973';
wwv_flow_api.g_varchar2_table(12) := '2E6974656D735B625D2E6974656D2E72656D6F76654461746128746869732E7769646765744E616D652B222D6974656D22293B72657475726E20746869737D2C5F7365744F7074696F6E3A66756E6374696F6E28622C63297B623D3D3D2264697361626C';
wwv_flow_api.g_varchar2_table(13) := '6564223F28746869732E6F7074696F6E735B625D3D632C746869732E77696467657428295B633F22616464436C617373223A2272656D6F7665436C617373225D282275692D736F727461626C652D64697361626C65642229293A612E5769646765742E70';
wwv_flow_api.g_varchar2_table(14) := '726F746F747970652E5F7365744F7074696F6E2E6170706C7928746869732C617267756D656E7473297D2C5F6D6F757365436170747572653A66756E6374696F6E28622C63297B76617220643D746869733B696628746869732E726576657274696E6729';
wwv_flow_api.g_varchar2_table(15) := '72657475726E21313B696628746869732E6F7074696F6E732E64697361626C65647C7C746869732E6F7074696F6E732E747970653D3D22737461746963222972657475726E21313B746869732E5F726566726573684974656D732862293B76617220653D';
wwv_flow_api.g_varchar2_table(16) := '6E756C6C2C663D746869732C673D6128622E746172676574292E706172656E747328292E656163682866756E6374696F6E28297B696628612E6461746128746869732C642E7769646765744E616D652B222D6974656D22293D3D662972657475726E2065';
wwv_flow_api.g_varchar2_table(17) := '3D612874686973292C21317D293B612E6461746128622E7461726765742C642E7769646765744E616D652B222D6974656D22293D3D66262628653D6128622E74617267657429293B69662821652972657475726E21313B696628746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(18) := '6E732E68616E646C6526262163297B76617220683D21313B6128746869732E6F7074696F6E732E68616E646C652C65292E66696E6428222A22292E616E6453656C6628292E656163682866756E6374696F6E28297B746869733D3D622E74617267657426';
wwv_flow_api.g_varchar2_table(19) := '2628683D2130297D293B69662821682972657475726E21317D72657475726E20746869732E63757272656E744974656D3D652C746869732E5F72656D6F766543757272656E747346726F6D4974656D7328292C21307D2C5F6D6F75736553746172743A66';
wwv_flow_api.g_varchar2_table(20) := '756E6374696F6E28622C632C64297B76617220653D746869732E6F7074696F6E732C663D746869733B746869732E63757272656E74436F6E7461696E65723D746869732C746869732E72656672657368506F736974696F6E7328292C746869732E68656C';
wwv_flow_api.g_varchar2_table(21) := '7065723D746869732E5F63726561746548656C7065722862292C746869732E5F636163686548656C70657250726F706F7274696F6E7328292C746869732E5F63616368654D617267696E7328292C746869732E7363726F6C6C506172656E743D74686973';
wwv_flow_api.g_varchar2_table(22) := '2E68656C7065722E7363726F6C6C506172656E7428292C746869732E6F66667365743D746869732E63757272656E744974656D2E6F666673657428292C746869732E6F66667365743D7B746F703A746869732E6F66667365742E746F702D746869732E6D';
wwv_flow_api.g_varchar2_table(23) := '617267696E732E746F702C6C6566743A746869732E6F66667365742E6C6566742D746869732E6D617267696E732E6C6566747D2C612E657874656E6428746869732E6F66667365742C7B636C69636B3A7B6C6566743A622E70616765582D746869732E6F';
wwv_flow_api.g_varchar2_table(24) := '66667365742E6C6566742C746F703A622E70616765592D746869732E6F66667365742E746F707D2C706172656E743A746869732E5F676574506172656E744F666673657428292C72656C61746976653A746869732E5F67657452656C61746976654F6666';
wwv_flow_api.g_varchar2_table(25) := '73657428297D292C746869732E68656C7065722E6373732822706F736974696F6E222C226162736F6C75746522292C746869732E637373506F736974696F6E3D746869732E68656C7065722E6373732822706F736974696F6E22292C746869732E6F7269';
wwv_flow_api.g_varchar2_table(26) := '67696E616C506F736974696F6E3D746869732E5F67656E6572617465506F736974696F6E2862292C746869732E6F726967696E616C50616765583D622E70616765582C746869732E6F726967696E616C50616765593D622E70616765592C652E63757273';
wwv_flow_api.g_varchar2_table(27) := '6F7241742626746869732E5F61646A7573744F666673657446726F6D48656C70657228652E637572736F724174292C746869732E646F6D506F736974696F6E3D7B707265763A746869732E63757272656E744974656D2E7072657628295B305D2C706172';
wwv_flow_api.g_varchar2_table(28) := '656E743A746869732E63757272656E744974656D2E706172656E7428295B305D7D2C746869732E68656C7065725B305D213D746869732E63757272656E744974656D5B305D2626746869732E63757272656E744974656D2E6869646528292C746869732E';
wwv_flow_api.g_varchar2_table(29) := '5F637265617465506C616365686F6C64657228292C652E636F6E7461696E6D656E742626746869732E5F736574436F6E7461696E6D656E7428292C652E637572736F72262628612822626F647922292E6373732822637572736F72222926262874686973';
wwv_flow_api.g_varchar2_table(30) := '2E5F73746F726564437572736F723D612822626F647922292E6373732822637572736F722229292C612822626F647922292E6373732822637572736F72222C652E637572736F7229292C652E6F706163697479262628746869732E68656C7065722E6373';
wwv_flow_api.g_varchar2_table(31) := '7328226F7061636974792229262628746869732E5F73746F7265644F7061636974793D746869732E68656C7065722E63737328226F7061636974792229292C746869732E68656C7065722E63737328226F706163697479222C652E6F7061636974792929';
wwv_flow_api.g_varchar2_table(32) := '2C652E7A496E646578262628746869732E68656C7065722E63737328227A496E6465782229262628746869732E5F73746F7265645A496E6465783D746869732E68656C7065722E63737328227A496E6465782229292C746869732E68656C7065722E6373';
wwv_flow_api.g_varchar2_table(33) := '7328227A496E646578222C652E7A496E64657829292C746869732E7363726F6C6C506172656E745B305D213D646F63756D656E742626746869732E7363726F6C6C506172656E745B305D2E7461674E616D65213D2248544D4C22262628746869732E6F76';
wwv_flow_api.g_varchar2_table(34) := '6572666C6F774F66667365743D746869732E7363726F6C6C506172656E742E6F66667365742829292C746869732E5F7472696767657228227374617274222C622C746869732E5F7569486173682829292C746869732E5F707265736572766548656C7065';
wwv_flow_api.g_varchar2_table(35) := '7250726F706F7274696F6E737C7C746869732E5F636163686548656C70657250726F706F7274696F6E7328293B696628216429666F722876617220673D746869732E636F6E7461696E6572732E6C656E6774682D313B673E3D303B672D2D29746869732E';
wwv_flow_api.g_varchar2_table(36) := '636F6E7461696E6572735B675D2E5F7472696767657228226163746976617465222C622C662E5F756948617368287468697329293B72657475726E20612E75692E64646D616E61676572262628612E75692E64646D616E616765722E63757272656E743D';
wwv_flow_api.g_varchar2_table(37) := '74686973292C612E75692E64646D616E61676572262621652E64726F704265686176696F75722626612E75692E64646D616E616765722E707265706172654F66667365747328746869732C62292C746869732E6472616767696E673D21302C746869732E';
wwv_flow_api.g_varchar2_table(38) := '68656C7065722E616464436C617373282275692D736F727461626C652D68656C70657222292C746869732E5F6D6F757365447261672862292C21307D2C5F6D6F757365447261673A66756E6374696F6E2862297B746869732E706F736974696F6E3D7468';
wwv_flow_api.g_varchar2_table(39) := '69732E5F67656E6572617465506F736974696F6E2862292C746869732E706F736974696F6E4162733D746869732E5F636F6E76657274506F736974696F6E546F28226162736F6C75746522292C746869732E6C617374506F736974696F6E4162737C7C28';
wwv_flow_api.g_varchar2_table(40) := '746869732E6C617374506F736974696F6E4162733D746869732E706F736974696F6E416273293B696628746869732E6F7074696F6E732E7363726F6C6C297B76617220633D746869732E6F7074696F6E732C643D21313B746869732E7363726F6C6C5061';
wwv_flow_api.g_varchar2_table(41) := '72656E745B305D213D646F63756D656E742626746869732E7363726F6C6C506172656E745B305D2E7461674E616D65213D2248544D4C223F28746869732E6F766572666C6F774F66667365742E746F702B746869732E7363726F6C6C506172656E745B30';
wwv_flow_api.g_varchar2_table(42) := '5D2E6F66667365744865696768742D622E70616765593C632E7363726F6C6C53656E73697469766974793F746869732E7363726F6C6C506172656E745B305D2E7363726F6C6C546F703D643D746869732E7363726F6C6C506172656E745B305D2E736372';
wwv_flow_api.g_varchar2_table(43) := '6F6C6C546F702B632E7363726F6C6C53706565643A622E70616765592D746869732E6F766572666C6F774F66667365742E746F703C632E7363726F6C6C53656E7369746976697479262628746869732E7363726F6C6C506172656E745B305D2E7363726F';
wwv_flow_api.g_varchar2_table(44) := '6C6C546F703D643D746869732E7363726F6C6C506172656E745B305D2E7363726F6C6C546F702D632E7363726F6C6C5370656564292C746869732E6F766572666C6F774F66667365742E6C6566742B746869732E7363726F6C6C506172656E745B305D2E';
wwv_flow_api.g_varchar2_table(45) := '6F666673657457696474682D622E70616765583C632E7363726F6C6C53656E73697469766974793F746869732E7363726F6C6C506172656E745B305D2E7363726F6C6C4C6566743D643D746869732E7363726F6C6C506172656E745B305D2E7363726F6C';
wwv_flow_api.g_varchar2_table(46) := '6C4C6566742B632E7363726F6C6C53706565643A622E70616765582D746869732E6F766572666C6F774F66667365742E6C6566743C632E7363726F6C6C53656E7369746976697479262628746869732E7363726F6C6C506172656E745B305D2E7363726F';
wwv_flow_api.g_varchar2_table(47) := '6C6C4C6566743D643D746869732E7363726F6C6C506172656E745B305D2E7363726F6C6C4C6566742D632E7363726F6C6C537065656429293A28622E70616765592D6128646F63756D656E74292E7363726F6C6C546F7028293C632E7363726F6C6C5365';
wwv_flow_api.g_varchar2_table(48) := '6E73697469766974793F643D6128646F63756D656E74292E7363726F6C6C546F70286128646F63756D656E74292E7363726F6C6C546F7028292D632E7363726F6C6C5370656564293A612877696E646F77292E68656967687428292D28622E7061676559';
wwv_flow_api.g_varchar2_table(49) := '2D6128646F63756D656E74292E7363726F6C6C546F702829293C632E7363726F6C6C53656E7369746976697479262628643D6128646F63756D656E74292E7363726F6C6C546F70286128646F63756D656E74292E7363726F6C6C546F7028292B632E7363';
wwv_flow_api.g_varchar2_table(50) := '726F6C6C537065656429292C622E70616765582D6128646F63756D656E74292E7363726F6C6C4C65667428293C632E7363726F6C6C53656E73697469766974793F643D6128646F63756D656E74292E7363726F6C6C4C656674286128646F63756D656E74';
wwv_flow_api.g_varchar2_table(51) := '292E7363726F6C6C4C65667428292D632E7363726F6C6C5370656564293A612877696E646F77292E776964746828292D28622E70616765582D6128646F63756D656E74292E7363726F6C6C4C6566742829293C632E7363726F6C6C53656E736974697669';
wwv_flow_api.g_varchar2_table(52) := '7479262628643D6128646F63756D656E74292E7363726F6C6C4C656674286128646F63756D656E74292E7363726F6C6C4C65667428292B632E7363726F6C6C53706565642929292C64213D3D21312626612E75692E64646D616E61676572262621632E64';
wwv_flow_api.g_varchar2_table(53) := '726F704265686176696F75722626612E75692E64646D616E616765722E707265706172654F66667365747328746869732C62297D746869732E706F736974696F6E4162733D746869732E5F636F6E76657274506F736974696F6E546F28226162736F6C75';
wwv_flow_api.g_varchar2_table(54) := '746522293B69662821746869732E6F7074696F6E732E617869737C7C746869732E6F7074696F6E732E61786973213D22792229746869732E68656C7065725B305D2E7374796C652E6C6566743D746869732E706F736974696F6E2E6C6566742B22707822';
wwv_flow_api.g_varchar2_table(55) := '3B69662821746869732E6F7074696F6E732E617869737C7C746869732E6F7074696F6E732E61786973213D22782229746869732E68656C7065725B305D2E7374796C652E746F703D746869732E706F736974696F6E2E746F702B227078223B666F722876';
wwv_flow_api.g_varchar2_table(56) := '617220653D746869732E6974656D732E6C656E6774682D313B653E3D303B652D2D297B76617220663D746869732E6974656D735B655D2C673D662E6974656D5B305D2C683D746869732E5F696E746572736563747357697468506F696E7465722866293B';
wwv_flow_api.g_varchar2_table(57) := '696628216829636F6E74696E75653B69662867213D746869732E63757272656E744974656D5B305D2626746869732E706C616365686F6C6465725B683D3D313F226E657874223A2270726576225D28295B305D213D67262621612E75692E636F6E746169';
wwv_flow_api.g_varchar2_table(58) := '6E7328746869732E706C616365686F6C6465725B305D2C6729262628746869732E6F7074696F6E732E747970653D3D2273656D692D64796E616D6963223F21612E75692E636F6E7461696E7328746869732E656C656D656E745B305D2C67293A21302929';
wwv_flow_api.g_varchar2_table(59) := '7B746869732E646972656374696F6E3D683D3D313F22646F776E223A227570223B696628746869732E6F7074696F6E732E746F6C6572616E63653D3D22706F696E746572227C7C746869732E5F696E746572736563747357697468536964657328662929';
wwv_flow_api.g_varchar2_table(60) := '746869732E5F7265617272616E676528622C66293B656C736520627265616B3B746869732E5F7472696767657228226368616E6765222C622C746869732E5F7569486173682829293B627265616B7D7D72657475726E20746869732E5F636F6E74616374';
wwv_flow_api.g_varchar2_table(61) := '436F6E7461696E6572732862292C612E75692E64646D616E616765722626612E75692E64646D616E616765722E6472616728746869732C62292C746869732E5F747269676765722822736F7274222C622C746869732E5F7569486173682829292C746869';
wwv_flow_api.g_varchar2_table(62) := '732E6C617374506F736974696F6E4162733D746869732E706F736974696F6E4162732C21317D2C5F6D6F75736553746F703A66756E6374696F6E28622C63297B69662821622972657475726E3B612E75692E64646D616E61676572262621746869732E6F';
wwv_flow_api.g_varchar2_table(63) := '7074696F6E732E64726F704265686176696F75722626612E75692E64646D616E616765722E64726F7028746869732C62293B696628746869732E6F7074696F6E732E726576657274297B76617220643D746869732C653D642E706C616365686F6C646572';
wwv_flow_api.g_varchar2_table(64) := '2E6F666673657428293B642E726576657274696E673D21302C6128746869732E68656C706572292E616E696D617465287B6C6566743A652E6C6566742D746869732E6F66667365742E706172656E742E6C6566742D642E6D617267696E732E6C6566742B';
wwv_flow_api.g_varchar2_table(65) := '28746869732E6F6666736574506172656E745B305D3D3D646F63756D656E742E626F64793F303A746869732E6F6666736574506172656E745B305D2E7363726F6C6C4C656674292C746F703A652E746F702D746869732E6F66667365742E706172656E74';
wwv_flow_api.g_varchar2_table(66) := '2E746F702D642E6D617267696E732E746F702B28746869732E6F6666736574506172656E745B305D3D3D646F63756D656E742E626F64793F303A746869732E6F6666736574506172656E745B305D2E7363726F6C6C546F70297D2C7061727365496E7428';
wwv_flow_api.g_varchar2_table(67) := '746869732E6F7074696F6E732E7265766572742C3130297C7C3530302C66756E6374696F6E28297B642E5F636C6561722862297D297D656C736520746869732E5F636C65617228622C63293B72657475726E21317D2C63616E63656C3A66756E6374696F';
wwv_flow_api.g_varchar2_table(68) := '6E28297B76617220623D746869733B696628746869732E6472616767696E67297B746869732E5F6D6F7573655570287B7461726765743A6E756C6C7D292C746869732E6F7074696F6E732E68656C7065723D3D226F726967696E616C223F746869732E63';
wwv_flow_api.g_varchar2_table(69) := '757272656E744974656D2E63737328746869732E5F73746F726564435353292E72656D6F7665436C617373282275692D736F727461626C652D68656C70657222293A746869732E63757272656E744974656D2E73686F7728293B666F722876617220633D';
wwv_flow_api.g_varchar2_table(70) := '746869732E636F6E7461696E6572732E6C656E6774682D313B633E3D303B632D2D29746869732E636F6E7461696E6572735B635D2E5F74726967676572282264656163746976617465222C6E756C6C2C622E5F756948617368287468697329292C746869';
wwv_flow_api.g_varchar2_table(71) := '732E636F6E7461696E6572735B635D2E636F6E7461696E657243616368652E6F766572262628746869732E636F6E7461696E6572735B635D2E5F7472696767657228226F7574222C6E756C6C2C622E5F756948617368287468697329292C746869732E63';
wwv_flow_api.g_varchar2_table(72) := '6F6E7461696E6572735B635D2E636F6E7461696E657243616368652E6F7665723D30297D72657475726E20746869732E706C616365686F6C646572262628746869732E706C616365686F6C6465725B305D2E706172656E744E6F64652626746869732E70';
wwv_flow_api.g_varchar2_table(73) := '6C616365686F6C6465725B305D2E706172656E744E6F64652E72656D6F76654368696C6428746869732E706C616365686F6C6465725B305D292C746869732E6F7074696F6E732E68656C706572213D226F726967696E616C222626746869732E68656C70';
wwv_flow_api.g_varchar2_table(74) := '65722626746869732E68656C7065725B305D2E706172656E744E6F64652626746869732E68656C7065722E72656D6F766528292C612E657874656E6428746869732C7B68656C7065723A6E756C6C2C6472616767696E673A21312C726576657274696E67';
wwv_flow_api.g_varchar2_table(75) := '3A21312C5F6E6F46696E616C536F72743A6E756C6C7D292C746869732E646F6D506F736974696F6E2E707265763F6128746869732E646F6D506F736974696F6E2E70726576292E616674657228746869732E63757272656E744974656D293A6128746869';
wwv_flow_api.g_varchar2_table(76) := '732E646F6D506F736974696F6E2E706172656E74292E70726570656E6428746869732E63757272656E744974656D29292C746869737D2C73657269616C697A653A66756E6374696F6E2862297B76617220633D746869732E5F6765744974656D7341736A';
wwv_flow_api.g_varchar2_table(77) := '517565727928622626622E636F6E6E6563746564292C643D5B5D3B72657475726E20623D627C7C7B7D2C612863292E656163682866756E6374696F6E28297B76617220633D286128622E6974656D7C7C74686973292E6174747228622E61747472696275';
wwv_flow_api.g_varchar2_table(78) := '74657C7C22696422297C7C2222292E6D6174636828622E65787072657373696F6E7C7C2F282E2B295B2D3D5F5D282E2B292F293B632626642E707573682828622E6B65797C7C635B315D2B225B5D22292B223D222B28622E6B65792626622E6578707265';
wwv_flow_api.g_varchar2_table(79) := '7373696F6E3F635B315D3A635B325D29297D292C21642E6C656E6774682626622E6B65792626642E7075736828622E6B65792B223D22292C642E6A6F696E28222622297D2C746F41727261793A66756E6374696F6E2862297B76617220633D746869732E';
wwv_flow_api.g_varchar2_table(80) := '5F6765744974656D7341736A517565727928622626622E636F6E6E6563746564292C643D5B5D3B72657475726E20623D627C7C7B7D2C632E656163682866756E6374696F6E28297B642E70757368286128622E6974656D7C7C74686973292E6174747228';
wwv_flow_api.g_varchar2_table(81) := '622E6174747269627574657C7C22696422297C7C2222297D292C647D2C5F696E7465727365637473576974683A66756E6374696F6E2861297B76617220623D746869732E706F736974696F6E4162732E6C6566742C633D622B746869732E68656C706572';
wwv_flow_api.g_varchar2_table(82) := '50726F706F7274696F6E732E77696474682C643D746869732E706F736974696F6E4162732E746F702C653D642B746869732E68656C70657250726F706F7274696F6E732E6865696768742C663D612E6C6566742C673D662B612E77696474682C683D612E';
wwv_flow_api.g_varchar2_table(83) := '746F702C693D682B612E6865696768742C6A3D746869732E6F66667365742E636C69636B2E746F702C6B3D746869732E6F66667365742E636C69636B2E6C6566742C6C3D642B6A3E682626642B6A3C692626622B6B3E662626622B6B3C673B7265747572';
wwv_flow_api.g_varchar2_table(84) := '6E20746869732E6F7074696F6E732E746F6C6572616E63653D3D22706F696E746572227C7C746869732E6F7074696F6E732E666F726365506F696E746572466F72436F6E7461696E6572737C7C746869732E6F7074696F6E732E746F6C6572616E636521';
wwv_flow_api.g_varchar2_table(85) := '3D22706F696E746572222626746869732E68656C70657250726F706F7274696F6E735B746869732E666C6F6174696E673F227769647468223A22686569676874225D3E615B746869732E666C6F6174696E673F227769647468223A22686569676874225D';
wwv_flow_api.g_varchar2_table(86) := '3F6C3A663C622B746869732E68656C70657250726F706F7274696F6E732E77696474682F322626632D746869732E68656C70657250726F706F7274696F6E732E77696474682F323C672626683C642B746869732E68656C70657250726F706F7274696F6E';
wwv_flow_api.g_varchar2_table(87) := '732E6865696768742F322626652D746869732E68656C70657250726F706F7274696F6E732E6865696768742F323C697D2C5F696E746572736563747357697468506F696E7465723A66756E6374696F6E2862297B76617220633D746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(88) := '6E732E617869733D3D3D2278227C7C612E75692E69734F7665724178697328746869732E706F736974696F6E4162732E746F702B746869732E6F66667365742E636C69636B2E746F702C622E746F702C622E686569676874292C643D746869732E6F7074';
wwv_flow_api.g_varchar2_table(89) := '696F6E732E617869733D3D3D2279227C7C612E75692E69734F7665724178697328746869732E706F736974696F6E4162732E6C6566742B746869732E6F66667365742E636C69636B2E6C6566742C622E6C6566742C622E7769647468292C653D63262664';
wwv_flow_api.g_varchar2_table(90) := '2C663D746869732E5F67657444726167566572746963616C446972656374696F6E28292C673D746869732E5F67657444726167486F72697A6F6E74616C446972656374696F6E28293B72657475726E20653F746869732E666C6F6174696E673F67262667';
wwv_flow_api.g_varchar2_table(91) := '3D3D227269676874227C7C663D3D22646F776E223F323A313A66262628663D3D22646F776E223F323A31293A21317D2C5F696E74657273656374735769746853696465733A66756E6374696F6E2862297B76617220633D612E75692E69734F7665724178';
wwv_flow_api.g_varchar2_table(92) := '697328746869732E706F736974696F6E4162732E746F702B746869732E6F66667365742E636C69636B2E746F702C622E746F702B622E6865696768742F322C622E686569676874292C643D612E75692E69734F7665724178697328746869732E706F7369';
wwv_flow_api.g_varchar2_table(93) := '74696F6E4162732E6C6566742B746869732E6F66667365742E636C69636B2E6C6566742C622E6C6566742B622E77696474682F322C622E7769647468292C653D746869732E5F67657444726167566572746963616C446972656374696F6E28292C663D74';
wwv_flow_api.g_varchar2_table(94) := '6869732E5F67657444726167486F72697A6F6E74616C446972656374696F6E28293B72657475726E20746869732E666C6F6174696E672626663F663D3D227269676874222626647C7C663D3D226C65667422262621643A65262628653D3D22646F776E22';
wwv_flow_api.g_varchar2_table(95) := '2626637C7C653D3D2275702226262163297D2C5F67657444726167566572746963616C446972656374696F6E3A66756E6374696F6E28297B76617220613D746869732E706F736974696F6E4162732E746F702D746869732E6C617374506F736974696F6E';
wwv_flow_api.g_varchar2_table(96) := '4162732E746F703B72657475726E2061213D30262628613E303F22646F776E223A22757022297D2C5F67657444726167486F72697A6F6E74616C446972656374696F6E3A66756E6374696F6E28297B76617220613D746869732E706F736974696F6E4162';
wwv_flow_api.g_varchar2_table(97) := '732E6C6566742D746869732E6C617374506F736974696F6E4162732E6C6566743B72657475726E2061213D30262628613E303F227269676874223A226C65667422297D2C726566726573683A66756E6374696F6E2861297B72657475726E20746869732E';
wwv_flow_api.g_varchar2_table(98) := '5F726566726573684974656D732861292C746869732E72656672657368506F736974696F6E7328292C746869737D2C5F636F6E6E656374576974683A66756E6374696F6E28297B76617220613D746869732E6F7074696F6E733B72657475726E20612E63';
wwv_flow_api.g_varchar2_table(99) := '6F6E6E656374576974682E636F6E7374727563746F723D3D537472696E673F5B612E636F6E6E656374576974685D3A612E636F6E6E656374576974687D2C5F6765744974656D7341736A51756572793A66756E6374696F6E2862297B76617220633D7468';
wwv_flow_api.g_varchar2_table(100) := '69732C643D5B5D2C653D5B5D2C663D746869732E5F636F6E6E6563745769746828293B6966286626266229666F722876617220673D662E6C656E6774682D313B673E3D303B672D2D297B76617220683D6128665B675D293B666F722876617220693D682E';
wwv_flow_api.g_varchar2_table(101) := '6C656E6774682D313B693E3D303B692D2D297B766172206A3D612E6461746128685B695D2C746869732E7769646765744E616D65293B6A26266A213D746869732626216A2E6F7074696F6E732E64697361626C65642626652E70757368285B612E697346';
wwv_flow_api.g_varchar2_table(102) := '756E6374696F6E286A2E6F7074696F6E732E6974656D73293F6A2E6F7074696F6E732E6974656D732E63616C6C286A2E656C656D656E74293A61286A2E6F7074696F6E732E6974656D732C6A2E656C656D656E74292E6E6F7428222E75692D736F727461';
wwv_flow_api.g_varchar2_table(103) := '626C652D68656C70657222292E6E6F7428222E75692D736F727461626C652D706C616365686F6C64657222292C6A5D297D7D652E70757368285B612E697346756E6374696F6E28746869732E6F7074696F6E732E6974656D73293F746869732E6F707469';
wwv_flow_api.g_varchar2_table(104) := '6F6E732E6974656D732E63616C6C28746869732E656C656D656E742C6E756C6C2C7B6F7074696F6E733A746869732E6F7074696F6E732C6974656D3A746869732E63757272656E744974656D7D293A6128746869732E6F7074696F6E732E6974656D732C';
wwv_flow_api.g_varchar2_table(105) := '746869732E656C656D656E74292E6E6F7428222E75692D736F727461626C652D68656C70657222292E6E6F7428222E75692D736F727461626C652D706C616365686F6C64657222292C746869735D293B666F722876617220673D652E6C656E6774682D31';
wwv_flow_api.g_varchar2_table(106) := '3B673E3D303B672D2D29655B675D5B305D2E656163682866756E6374696F6E28297B642E707573682874686973297D293B72657475726E20612864297D2C5F72656D6F766543757272656E747346726F6D4974656D733A66756E6374696F6E28297B7661';
wwv_flow_api.g_varchar2_table(107) := '7220613D746869732E63757272656E744974656D2E66696E6428223A6461746128222B746869732E7769646765744E616D652B222D6974656D2922293B666F722876617220623D303B623C746869732E6974656D732E6C656E6774683B622B2B29666F72';
wwv_flow_api.g_varchar2_table(108) := '2876617220633D303B633C612E6C656E6774683B632B2B29615B635D3D3D746869732E6974656D735B625D2E6974656D5B305D2626746869732E6974656D732E73706C69636528622C31297D2C5F726566726573684974656D733A66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(109) := '62297B746869732E6974656D733D5B5D2C746869732E636F6E7461696E6572733D5B746869735D3B76617220633D746869732E6974656D732C643D746869732C653D5B5B612E697346756E6374696F6E28746869732E6F7074696F6E732E6974656D7329';
wwv_flow_api.g_varchar2_table(110) := '3F746869732E6F7074696F6E732E6974656D732E63616C6C28746869732E656C656D656E745B305D2C622C7B6974656D3A746869732E63757272656E744974656D7D293A6128746869732E6F7074696F6E732E6974656D732C746869732E656C656D656E';
wwv_flow_api.g_varchar2_table(111) := '74292C746869735D5D2C663D746869732E5F636F6E6E6563745769746828293B696628662626746869732E726561647929666F722876617220673D662E6C656E6774682D313B673E3D303B672D2D297B76617220683D6128665B675D293B666F72287661';
wwv_flow_api.g_varchar2_table(112) := '7220693D682E6C656E6774682D313B693E3D303B692D2D297B766172206A3D612E6461746128685B695D2C746869732E7769646765744E616D65293B6A26266A213D746869732626216A2E6F7074696F6E732E64697361626C6564262628652E70757368';
wwv_flow_api.g_varchar2_table(113) := '285B612E697346756E6374696F6E286A2E6F7074696F6E732E6974656D73293F6A2E6F7074696F6E732E6974656D732E63616C6C286A2E656C656D656E745B305D2C622C7B6974656D3A746869732E63757272656E744974656D7D293A61286A2E6F7074';
wwv_flow_api.g_varchar2_table(114) := '696F6E732E6974656D732C6A2E656C656D656E74292C6A5D292C746869732E636F6E7461696E6572732E70757368286A29297D7D666F722876617220673D652E6C656E6774682D313B673E3D303B672D2D297B766172206B3D655B675D5B315D2C6C3D65';
wwv_flow_api.g_varchar2_table(115) := '5B675D5B305D3B666F722876617220693D302C6D3D6C2E6C656E6774683B693C6D3B692B2B297B766172206E3D61286C5B695D293B6E2E6461746128746869732E7769646765744E616D652B222D6974656D222C6B292C632E70757368287B6974656D3A';
wwv_flow_api.g_varchar2_table(116) := '6E2C696E7374616E63653A6B2C77696474683A302C6865696768743A302C6C6566743A302C746F703A307D297D7D7D2C72656672657368506F736974696F6E733A66756E6374696F6E2862297B746869732E6F6666736574506172656E74262674686973';
wwv_flow_api.g_varchar2_table(117) := '2E68656C706572262628746869732E6F66667365742E706172656E743D746869732E5F676574506172656E744F66667365742829293B666F722876617220633D746869732E6974656D732E6C656E6774682D313B633E3D303B632D2D297B76617220643D';
wwv_flow_api.g_varchar2_table(118) := '746869732E6974656D735B635D3B696628642E696E7374616E6365213D746869732E63757272656E74436F6E7461696E65722626746869732E63757272656E74436F6E7461696E65722626642E6974656D5B305D213D746869732E63757272656E744974';
wwv_flow_api.g_varchar2_table(119) := '656D5B305D29636F6E74696E75653B76617220653D746869732E6F7074696F6E732E746F6C6572616E6365456C656D656E743F6128746869732E6F7074696F6E732E746F6C6572616E6365456C656D656E742C642E6974656D293A642E6974656D3B627C';
wwv_flow_api.g_varchar2_table(120) := '7C28642E77696474683D652E6F75746572576964746828292C642E6865696768743D652E6F757465724865696768742829293B76617220663D652E6F666673657428293B642E6C6566743D662E6C6566742C642E746F703D662E746F707D696628746869';
wwv_flow_api.g_varchar2_table(121) := '732E6F7074696F6E732E637573746F6D2626746869732E6F7074696F6E732E637573746F6D2E72656672657368436F6E7461696E65727329746869732E6F7074696F6E732E637573746F6D2E72656672657368436F6E7461696E6572732E63616C6C2874';
wwv_flow_api.g_varchar2_table(122) := '686973293B656C736520666F722876617220633D746869732E636F6E7461696E6572732E6C656E6774682D313B633E3D303B632D2D297B76617220663D746869732E636F6E7461696E6572735B635D2E656C656D656E742E6F666673657428293B746869';
wwv_flow_api.g_varchar2_table(123) := '732E636F6E7461696E6572735B635D2E636F6E7461696E657243616368652E6C6566743D662E6C6566742C746869732E636F6E7461696E6572735B635D2E636F6E7461696E657243616368652E746F703D662E746F702C746869732E636F6E7461696E65';
wwv_flow_api.g_varchar2_table(124) := '72735B635D2E636F6E7461696E657243616368652E77696474683D746869732E636F6E7461696E6572735B635D2E656C656D656E742E6F75746572576964746828292C746869732E636F6E7461696E6572735B635D2E636F6E7461696E65724361636865';
wwv_flow_api.g_varchar2_table(125) := '2E6865696768743D746869732E636F6E7461696E6572735B635D2E656C656D656E742E6F7574657248656967687428297D72657475726E20746869737D2C5F637265617465506C616365686F6C6465723A66756E6374696F6E2862297B76617220633D62';
wwv_flow_api.g_varchar2_table(126) := '7C7C746869732C643D632E6F7074696F6E733B69662821642E706C616365686F6C6465727C7C642E706C616365686F6C6465722E636F6E7374727563746F723D3D537472696E67297B76617220653D642E706C616365686F6C6465723B642E706C616365';
wwv_flow_api.g_varchar2_table(127) := '686F6C6465723D7B656C656D656E743A66756E6374696F6E28297B76617220623D6128646F63756D656E742E637265617465456C656D656E7428632E63757272656E744974656D5B305D2E6E6F64654E616D6529292E616464436C61737328657C7C632E';
wwv_flow_api.g_varchar2_table(128) := '63757272656E744974656D5B305D2E636C6173734E616D652B222075692D736F727461626C652D706C616365686F6C64657222292E72656D6F7665436C617373282275692D736F727461626C652D68656C70657222295B305D3B72657475726E20657C7C';
wwv_flow_api.g_varchar2_table(129) := '28622E7374796C652E7669736962696C6974793D2268696464656E22292C627D2C7570646174653A66756E6374696F6E28612C62297B69662865262621642E666F726365506C616365686F6C64657253697A652972657475726E3B622E68656967687428';
wwv_flow_api.g_varchar2_table(130) := '297C7C622E68656967687428632E63757272656E744974656D2E696E6E657248656967687428292D7061727365496E7428632E63757272656E744974656D2E637373282270616464696E67546F7022297C7C302C3130292D7061727365496E7428632E63';
wwv_flow_api.g_varchar2_table(131) := '757272656E744974656D2E637373282270616464696E67426F74746F6D22297C7C302C313029292C622E776964746828297C7C622E776964746828632E63757272656E744974656D2E696E6E6572576964746828292D7061727365496E7428632E637572';
wwv_flow_api.g_varchar2_table(132) := '72656E744974656D2E637373282270616464696E674C65667422297C7C302C3130292D7061727365496E7428632E63757272656E744974656D2E637373282270616464696E67526967687422297C7C302C313029297D7D7D632E706C616365686F6C6465';
wwv_flow_api.g_varchar2_table(133) := '723D6128642E706C616365686F6C6465722E656C656D656E742E63616C6C28632E656C656D656E742C632E63757272656E744974656D29292C632E63757272656E744974656D2E616674657228632E706C616365686F6C646572292C642E706C61636568';
wwv_flow_api.g_varchar2_table(134) := '6F6C6465722E75706461746528632C632E706C616365686F6C646572297D2C5F636F6E74616374436F6E7461696E6572733A66756E6374696F6E2862297B76617220633D6E756C6C2C643D6E756C6C3B666F722876617220653D746869732E636F6E7461';
wwv_flow_api.g_varchar2_table(135) := '696E6572732E6C656E6774682D313B653E3D303B652D2D297B696628612E75692E636F6E7461696E7328746869732E63757272656E744974656D5B305D2C746869732E636F6E7461696E6572735B655D2E656C656D656E745B305D2929636F6E74696E75';
wwv_flow_api.g_varchar2_table(136) := '653B696628746869732E5F696E74657273656374735769746828746869732E636F6E7461696E6572735B655D2E636F6E7461696E6572436163686529297B696628632626612E75692E636F6E7461696E7328746869732E636F6E7461696E6572735B655D';
wwv_flow_api.g_varchar2_table(137) := '2E656C656D656E745B305D2C632E656C656D656E745B305D2929636F6E74696E75653B633D746869732E636F6E7461696E6572735B655D2C643D657D656C736520746869732E636F6E7461696E6572735B655D2E636F6E7461696E657243616368652E6F';
wwv_flow_api.g_varchar2_table(138) := '766572262628746869732E636F6E7461696E6572735B655D2E5F7472696767657228226F7574222C622C746869732E5F756948617368287468697329292C746869732E636F6E7461696E6572735B655D2E636F6E7461696E657243616368652E6F766572';
wwv_flow_api.g_varchar2_table(139) := '3D30297D69662821632972657475726E3B696628746869732E636F6E7461696E6572732E6C656E6774683D3D3D3129746869732E636F6E7461696E6572735B645D2E5F7472696767657228226F766572222C622C746869732E5F75694861736828746869';
wwv_flow_api.g_varchar2_table(140) := '7329292C746869732E636F6E7461696E6572735B645D2E636F6E7461696E657243616368652E6F7665723D313B656C736520696628746869732E63757272656E74436F6E7461696E6572213D746869732E636F6E7461696E6572735B645D297B76617220';
wwv_flow_api.g_varchar2_table(141) := '663D3165342C673D6E756C6C2C683D746869732E706F736974696F6E4162735B746869732E636F6E7461696E6572735B645D2E666C6F6174696E673F226C656674223A22746F70225D3B666F722876617220693D746869732E6974656D732E6C656E6774';
wwv_flow_api.g_varchar2_table(142) := '682D313B693E3D303B692D2D297B69662821612E75692E636F6E7461696E7328746869732E636F6E7461696E6572735B645D2E656C656D656E745B305D2C746869732E6974656D735B695D2E6974656D5B305D2929636F6E74696E75653B766172206A3D';
wwv_flow_api.g_varchar2_table(143) := '746869732E636F6E7461696E6572735B645D2E666C6F6174696E673F746869732E6974656D735B695D2E6974656D2E6F666673657428292E6C6566743A746869732E6974656D735B695D2E6974656D2E6F666673657428292E746F703B4D6174682E6162';
wwv_flow_api.g_varchar2_table(144) := '73286A2D68293C66262628663D4D6174682E616273286A2D68292C673D746869732E6974656D735B695D2C746869732E646972656374696F6E3D6A2D683E303F22646F776E223A22757022297D6966282167262621746869732E6F7074696F6E732E6472';
wwv_flow_api.g_varchar2_table(145) := '6F704F6E456D7074792972657475726E3B746869732E63757272656E74436F6E7461696E65723D746869732E636F6E7461696E6572735B645D2C673F746869732E5F7265617272616E676528622C672C6E756C6C2C2130293A746869732E5F7265617272';
wwv_flow_api.g_varchar2_table(146) := '616E676528622C6E756C6C2C746869732E636F6E7461696E6572735B645D2E656C656D656E742C2130292C746869732E5F7472696767657228226368616E6765222C622C746869732E5F7569486173682829292C746869732E636F6E7461696E6572735B';
wwv_flow_api.g_varchar2_table(147) := '645D2E5F7472696767657228226368616E6765222C622C746869732E5F756948617368287468697329292C746869732E6F7074696F6E732E706C616365686F6C6465722E75706461746528746869732E63757272656E74436F6E7461696E65722C746869';
wwv_flow_api.g_varchar2_table(148) := '732E706C616365686F6C646572292C746869732E636F6E7461696E6572735B645D2E5F7472696767657228226F766572222C622C746869732E5F756948617368287468697329292C746869732E636F6E7461696E6572735B645D2E636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(149) := '43616368652E6F7665723D317D7D2C5F63726561746548656C7065723A66756E6374696F6E2862297B76617220633D746869732E6F7074696F6E732C643D612E697346756E6374696F6E28632E68656C706572293F6128632E68656C7065722E6170706C';
wwv_flow_api.g_varchar2_table(150) := '7928746869732E656C656D656E745B305D2C5B622C746869732E63757272656E744974656D5D29293A632E68656C7065723D3D22636C6F6E65223F746869732E63757272656E744974656D2E636C6F6E6528293A746869732E63757272656E744974656D';
wwv_flow_api.g_varchar2_table(151) := '3B72657475726E20642E706172656E74732822626F647922292E6C656E6774687C7C6128632E617070656E64546F213D22706172656E74223F632E617070656E64546F3A746869732E63757272656E744974656D5B305D2E706172656E744E6F6465295B';
wwv_flow_api.g_varchar2_table(152) := '305D2E617070656E644368696C6428645B305D292C645B305D3D3D746869732E63757272656E744974656D5B305D262628746869732E5F73746F7265644353533D7B77696474683A746869732E63757272656E744974656D5B305D2E7374796C652E7769';
wwv_flow_api.g_varchar2_table(153) := '6474682C6865696768743A746869732E63757272656E744974656D5B305D2E7374796C652E6865696768742C706F736974696F6E3A746869732E63757272656E744974656D2E6373732822706F736974696F6E22292C746F703A746869732E6375727265';
wwv_flow_api.g_varchar2_table(154) := '6E744974656D2E6373732822746F7022292C6C6566743A746869732E63757272656E744974656D2E63737328226C65667422297D292C28645B305D2E7374796C652E77696474683D3D22227C7C632E666F72636548656C70657253697A65292626642E77';
wwv_flow_api.g_varchar2_table(155) := '6964746828746869732E63757272656E744974656D2E77696474682829292C28645B305D2E7374796C652E6865696768743D3D22227C7C632E666F72636548656C70657253697A65292626642E68656967687428746869732E63757272656E744974656D';
wwv_flow_api.g_varchar2_table(156) := '2E6865696768742829292C647D2C5F61646A7573744F666673657446726F6D48656C7065723A66756E6374696F6E2862297B747970656F6620623D3D22737472696E6722262628623D622E73706C69742822202229292C612E6973417272617928622926';
wwv_flow_api.g_varchar2_table(157) := '2628623D7B6C6566743A2B625B305D2C746F703A2B625B315D7C7C307D292C226C65667422696E2062262628746869732E6F66667365742E636C69636B2E6C6566743D622E6C6566742B746869732E6D617267696E732E6C656674292C22726967687422';
wwv_flow_api.g_varchar2_table(158) := '696E2062262628746869732E6F66667365742E636C69636B2E6C6566743D746869732E68656C70657250726F706F7274696F6E732E77696474682D622E72696768742B746869732E6D617267696E732E6C656674292C22746F7022696E20622626287468';
wwv_flow_api.g_varchar2_table(159) := '69732E6F66667365742E636C69636B2E746F703D622E746F702B746869732E6D617267696E732E746F70292C22626F74746F6D22696E2062262628746869732E6F66667365742E636C69636B2E746F703D746869732E68656C70657250726F706F727469';
wwv_flow_api.g_varchar2_table(160) := '6F6E732E6865696768742D622E626F74746F6D2B746869732E6D617267696E732E746F70297D2C5F676574506172656E744F66667365743A66756E6374696F6E28297B746869732E6F6666736574506172656E743D746869732E68656C7065722E6F6666';
wwv_flow_api.g_varchar2_table(161) := '736574506172656E7428293B76617220623D746869732E6F6666736574506172656E742E6F666673657428293B746869732E637373506F736974696F6E3D3D226162736F6C757465222626746869732E7363726F6C6C506172656E745B305D213D646F63';
wwv_flow_api.g_varchar2_table(162) := '756D656E742626612E75692E636F6E7461696E7328746869732E7363726F6C6C506172656E745B305D2C746869732E6F6666736574506172656E745B305D29262628622E6C6566742B3D746869732E7363726F6C6C506172656E742E7363726F6C6C4C65';
wwv_flow_api.g_varchar2_table(163) := '667428292C622E746F702B3D746869732E7363726F6C6C506172656E742E7363726F6C6C546F702829293B696628746869732E6F6666736574506172656E745B305D3D3D646F63756D656E742E626F64797C7C746869732E6F6666736574506172656E74';
wwv_flow_api.g_varchar2_table(164) := '5B305D2E7461674E616D652626746869732E6F6666736574506172656E745B305D2E7461674E616D652E746F4C6F7765724361736528293D3D2268746D6C222626612E62726F777365722E6D73696529623D7B746F703A302C6C6566743A307D3B726574';
wwv_flow_api.g_varchar2_table(165) := '75726E7B746F703A622E746F702B287061727365496E7428746869732E6F6666736574506172656E742E6373732822626F72646572546F70576964746822292C3130297C7C30292C6C6566743A622E6C6566742B287061727365496E7428746869732E6F';
wwv_flow_api.g_varchar2_table(166) := '6666736574506172656E742E6373732822626F726465724C656674576964746822292C3130297C7C30297D7D2C5F67657452656C61746976654F66667365743A66756E6374696F6E28297B696628746869732E637373506F736974696F6E3D3D2272656C';
wwv_flow_api.g_varchar2_table(167) := '617469766522297B76617220613D746869732E63757272656E744974656D2E706F736974696F6E28293B72657475726E7B746F703A612E746F702D287061727365496E7428746869732E68656C7065722E6373732822746F7022292C3130297C7C30292B';
wwv_flow_api.g_varchar2_table(168) := '746869732E7363726F6C6C506172656E742E7363726F6C6C546F7028292C6C6566743A612E6C6566742D287061727365496E7428746869732E68656C7065722E63737328226C65667422292C3130297C7C30292B746869732E7363726F6C6C506172656E';
wwv_flow_api.g_varchar2_table(169) := '742E7363726F6C6C4C65667428297D7D72657475726E7B746F703A302C6C6566743A307D7D2C5F63616368654D617267696E733A66756E6374696F6E28297B746869732E6D617267696E733D7B6C6566743A7061727365496E7428746869732E63757272';
wwv_flow_api.g_varchar2_table(170) := '656E744974656D2E63737328226D617267696E4C65667422292C3130297C7C302C746F703A7061727365496E7428746869732E63757272656E744974656D2E63737328226D617267696E546F7022292C3130297C7C307D7D2C5F636163686548656C7065';
wwv_flow_api.g_varchar2_table(171) := '7250726F706F7274696F6E733A66756E6374696F6E28297B746869732E68656C70657250726F706F7274696F6E733D7B77696474683A746869732E68656C7065722E6F75746572576964746828292C6865696768743A746869732E68656C7065722E6F75';
wwv_flow_api.g_varchar2_table(172) := '74657248656967687428297D7D2C5F736574436F6E7461696E6D656E743A66756E6374696F6E28297B76617220623D746869732E6F7074696F6E733B622E636F6E7461696E6D656E743D3D22706172656E7422262628622E636F6E7461696E6D656E743D';
wwv_flow_api.g_varchar2_table(173) := '746869732E68656C7065725B305D2E706172656E744E6F6465293B696628622E636F6E7461696E6D656E743D3D22646F63756D656E74227C7C622E636F6E7461696E6D656E743D3D2277696E646F772229746869732E636F6E7461696E6D656E743D5B30';
wwv_flow_api.g_varchar2_table(174) := '2D746869732E6F66667365742E72656C61746976652E6C6566742D746869732E6F66667365742E706172656E742E6C6566742C302D746869732E6F66667365742E72656C61746976652E746F702D746869732E6F66667365742E706172656E742E746F70';
wwv_flow_api.g_varchar2_table(175) := '2C6128622E636F6E7461696E6D656E743D3D22646F63756D656E74223F646F63756D656E743A77696E646F77292E776964746828292D746869732E68656C70657250726F706F7274696F6E732E77696474682D746869732E6D617267696E732E6C656674';
wwv_flow_api.g_varchar2_table(176) := '2C286128622E636F6E7461696E6D656E743D3D22646F63756D656E74223F646F63756D656E743A77696E646F77292E68656967687428297C7C646F63756D656E742E626F64792E706172656E744E6F64652E7363726F6C6C486569676874292D74686973';
wwv_flow_api.g_varchar2_table(177) := '2E68656C70657250726F706F7274696F6E732E6865696768742D746869732E6D617267696E732E746F705D3B696628212F5E28646F63756D656E747C77696E646F777C706172656E7429242F2E7465737428622E636F6E7461696E6D656E7429297B7661';
wwv_flow_api.g_varchar2_table(178) := '7220633D6128622E636F6E7461696E6D656E74295B305D2C643D6128622E636F6E7461696E6D656E74292E6F666673657428292C653D612863292E63737328226F766572666C6F772229213D2268696464656E223B746869732E636F6E7461696E6D656E';
wwv_flow_api.g_varchar2_table(179) := '743D5B642E6C6566742B287061727365496E7428612863292E6373732822626F726465724C656674576964746822292C3130297C7C30292B287061727365496E7428612863292E637373282270616464696E674C65667422292C3130297C7C30292D7468';
wwv_flow_api.g_varchar2_table(180) := '69732E6D617267696E732E6C6566742C642E746F702B287061727365496E7428612863292E6373732822626F72646572546F70576964746822292C3130297C7C30292B287061727365496E7428612863292E637373282270616464696E67546F7022292C';
wwv_flow_api.g_varchar2_table(181) := '3130297C7C30292D746869732E6D617267696E732E746F702C642E6C6566742B28653F4D6174682E6D617828632E7363726F6C6C57696474682C632E6F66667365745769647468293A632E6F66667365745769647468292D287061727365496E74286128';
wwv_flow_api.g_varchar2_table(182) := '63292E6373732822626F726465724C656674576964746822292C3130297C7C30292D287061727365496E7428612863292E637373282270616464696E67526967687422292C3130297C7C30292D746869732E68656C70657250726F706F7274696F6E732E';
wwv_flow_api.g_varchar2_table(183) := '77696474682D746869732E6D617267696E732E6C6566742C642E746F702B28653F4D6174682E6D617828632E7363726F6C6C4865696768742C632E6F6666736574486569676874293A632E6F6666736574486569676874292D287061727365496E742861';
wwv_flow_api.g_varchar2_table(184) := '2863292E6373732822626F72646572546F70576964746822292C3130297C7C30292D287061727365496E7428612863292E637373282270616464696E67426F74746F6D22292C3130297C7C30292D746869732E68656C70657250726F706F7274696F6E73';
wwv_flow_api.g_varchar2_table(185) := '2E6865696768742D746869732E6D617267696E732E746F705D7D7D2C5F636F6E76657274506F736974696F6E546F3A66756E6374696F6E28622C63297B637C7C28633D746869732E706F736974696F6E293B76617220643D623D3D226162736F6C757465';
wwv_flow_api.g_varchar2_table(186) := '223F313A2D312C653D746869732E6F7074696F6E732C663D746869732E637373506F736974696F6E3D3D226162736F6C75746522262628746869732E7363726F6C6C506172656E745B305D3D3D646F63756D656E747C7C21612E75692E636F6E7461696E';
wwv_flow_api.g_varchar2_table(187) := '7328746869732E7363726F6C6C506172656E745B305D2C746869732E6F6666736574506172656E745B305D29293F746869732E6F6666736574506172656E743A746869732E7363726F6C6C506172656E742C673D2F2868746D6C7C626F6479292F692E74';
wwv_flow_api.g_varchar2_table(188) := '65737428665B305D2E7461674E616D65293B72657475726E7B746F703A632E746F702B746869732E6F66667365742E72656C61746976652E746F702A642B746869732E6F66667365742E706172656E742E746F702A642D28612E62726F777365722E7361';
wwv_flow_api.g_varchar2_table(189) := '666172692626746869732E637373506F736974696F6E3D3D226669786564223F303A28746869732E637373506F736974696F6E3D3D226669786564223F2D746869732E7363726F6C6C506172656E742E7363726F6C6C546F7028293A673F303A662E7363';
wwv_flow_api.g_varchar2_table(190) := '726F6C6C546F702829292A64292C6C6566743A632E6C6566742B746869732E6F66667365742E72656C61746976652E6C6566742A642B746869732E6F66667365742E706172656E742E6C6566742A642D28612E62726F777365722E736166617269262674';
wwv_flow_api.g_varchar2_table(191) := '6869732E637373506F736974696F6E3D3D226669786564223F303A28746869732E637373506F736974696F6E3D3D226669786564223F2D746869732E7363726F6C6C506172656E742E7363726F6C6C4C65667428293A673F303A662E7363726F6C6C4C65';
wwv_flow_api.g_varchar2_table(192) := '66742829292A64297D7D2C5F67656E6572617465506F736974696F6E3A66756E6374696F6E2862297B76617220633D746869732E6F7074696F6E732C643D746869732E637373506F736974696F6E3D3D226162736F6C75746522262628746869732E7363';
wwv_flow_api.g_varchar2_table(193) := '726F6C6C506172656E745B305D3D3D646F63756D656E747C7C21612E75692E636F6E7461696E7328746869732E7363726F6C6C506172656E745B305D2C746869732E6F6666736574506172656E745B305D29293F746869732E6F6666736574506172656E';
wwv_flow_api.g_varchar2_table(194) := '743A746869732E7363726F6C6C506172656E742C653D2F2868746D6C7C626F6479292F692E7465737428645B305D2E7461674E616D65293B746869732E637373506F736974696F6E3D3D2272656C617469766522262628746869732E7363726F6C6C5061';
wwv_flow_api.g_varchar2_table(195) := '72656E745B305D3D3D646F63756D656E747C7C746869732E7363726F6C6C506172656E745B305D3D3D746869732E6F6666736574506172656E745B305D29262628746869732E6F66667365742E72656C61746976653D746869732E5F67657452656C6174';
wwv_flow_api.g_varchar2_table(196) := '6976654F66667365742829293B76617220663D622E70616765582C673D622E70616765593B696628746869732E6F726967696E616C506F736974696F6E297B746869732E636F6E7461696E6D656E74262628622E70616765582D746869732E6F66667365';
wwv_flow_api.g_varchar2_table(197) := '742E636C69636B2E6C6566743C746869732E636F6E7461696E6D656E745B305D262628663D746869732E636F6E7461696E6D656E745B305D2B746869732E6F66667365742E636C69636B2E6C656674292C622E70616765592D746869732E6F6666736574';
wwv_flow_api.g_varchar2_table(198) := '2E636C69636B2E746F703C746869732E636F6E7461696E6D656E745B315D262628673D746869732E636F6E7461696E6D656E745B315D2B746869732E6F66667365742E636C69636B2E746F70292C622E70616765582D746869732E6F66667365742E636C';
wwv_flow_api.g_varchar2_table(199) := '69636B2E6C6566743E746869732E636F6E7461696E6D656E745B325D262628663D746869732E636F6E7461696E6D656E745B325D2B746869732E6F66667365742E636C69636B2E6C656674292C622E70616765592D746869732E6F66667365742E636C69';
wwv_flow_api.g_varchar2_table(200) := '636B2E746F703E746869732E636F6E7461696E6D656E745B335D262628673D746869732E636F6E7461696E6D656E745B335D2B746869732E6F66667365742E636C69636B2E746F7029293B696628632E67726964297B76617220683D746869732E6F7269';
wwv_flow_api.g_varchar2_table(201) := '67696E616C50616765592B4D6174682E726F756E642828672D746869732E6F726967696E616C5061676559292F632E677269645B315D292A632E677269645B315D3B673D746869732E636F6E7461696E6D656E743F682D746869732E6F66667365742E63';
wwv_flow_api.g_varchar2_table(202) := '6C69636B2E746F703C746869732E636F6E7461696E6D656E745B315D7C7C682D746869732E6F66667365742E636C69636B2E746F703E746869732E636F6E7461696E6D656E745B335D3F682D746869732E6F66667365742E636C69636B2E746F703C7468';
wwv_flow_api.g_varchar2_table(203) := '69732E636F6E7461696E6D656E745B315D3F682B632E677269645B315D3A682D632E677269645B315D3A683A683B76617220693D746869732E6F726967696E616C50616765582B4D6174682E726F756E642828662D746869732E6F726967696E616C5061';
wwv_flow_api.g_varchar2_table(204) := '676558292F632E677269645B305D292A632E677269645B305D3B663D746869732E636F6E7461696E6D656E743F692D746869732E6F66667365742E636C69636B2E6C6566743C746869732E636F6E7461696E6D656E745B305D7C7C692D746869732E6F66';
wwv_flow_api.g_varchar2_table(205) := '667365742E636C69636B2E6C6566743E746869732E636F6E7461696E6D656E745B325D3F692D746869732E6F66667365742E636C69636B2E6C6566743C746869732E636F6E7461696E6D656E745B305D3F692B632E677269645B305D3A692D632E677269';
wwv_flow_api.g_varchar2_table(206) := '645B305D3A693A697D7D72657475726E7B746F703A672D746869732E6F66667365742E636C69636B2E746F702D746869732E6F66667365742E72656C61746976652E746F702D746869732E6F66667365742E706172656E742E746F702B28612E62726F77';
wwv_flow_api.g_varchar2_table(207) := '7365722E7361666172692626746869732E637373506F736974696F6E3D3D226669786564223F303A746869732E637373506F736974696F6E3D3D226669786564223F2D746869732E7363726F6C6C506172656E742E7363726F6C6C546F7028293A653F30';
wwv_flow_api.g_varchar2_table(208) := '3A642E7363726F6C6C546F702829292C6C6566743A662D746869732E6F66667365742E636C69636B2E6C6566742D746869732E6F66667365742E72656C61746976652E6C6566742D746869732E6F66667365742E706172656E742E6C6566742B28612E62';
wwv_flow_api.g_varchar2_table(209) := '726F777365722E7361666172692626746869732E637373506F736974696F6E3D3D226669786564223F303A746869732E637373506F736974696F6E3D3D226669786564223F2D746869732E7363726F6C6C506172656E742E7363726F6C6C4C6566742829';
wwv_flow_api.g_varchar2_table(210) := '3A653F303A642E7363726F6C6C4C6566742829297D7D2C5F7265617272616E67653A66756E6374696F6E28612C622C632C64297B633F635B305D2E617070656E644368696C6428746869732E706C616365686F6C6465725B305D293A622E6974656D5B30';
wwv_flow_api.g_varchar2_table(211) := '5D2E706172656E744E6F64652E696E736572744265666F726528746869732E706C616365686F6C6465725B305D2C746869732E646972656374696F6E3D3D22646F776E223F622E6974656D5B305D3A622E6974656D5B305D2E6E6578745369626C696E67';
wwv_flow_api.g_varchar2_table(212) := '292C746869732E636F756E7465723D746869732E636F756E7465723F2B2B746869732E636F756E7465723A313B76617220653D746869732C663D746869732E636F756E7465723B77696E646F772E73657454696D656F75742866756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(213) := '663D3D652E636F756E7465722626652E72656672657368506F736974696F6E73282164297D2C30297D2C5F636C6561723A66756E6374696F6E28622C63297B746869732E726576657274696E673D21313B76617220643D5B5D2C653D746869733B217468';
wwv_flow_api.g_varchar2_table(214) := '69732E5F6E6F46696E616C536F72742626746869732E63757272656E744974656D2E706172656E7428292E6C656E6774682626746869732E706C616365686F6C6465722E6265666F726528746869732E63757272656E744974656D292C746869732E5F6E';
wwv_flow_api.g_varchar2_table(215) := '6F46696E616C536F72743D6E756C6C3B696628746869732E68656C7065725B305D3D3D746869732E63757272656E744974656D5B305D297B666F7228766172206620696E20746869732E5F73746F72656443535329696628746869732E5F73746F726564';
wwv_flow_api.g_varchar2_table(216) := '4353535B665D3D3D226175746F227C7C746869732E5F73746F7265644353535B665D3D3D227374617469632229746869732E5F73746F7265644353535B665D3D22223B746869732E63757272656E744974656D2E63737328746869732E5F73746F726564';
wwv_flow_api.g_varchar2_table(217) := '435353292E72656D6F7665436C617373282275692D736F727461626C652D68656C70657222297D656C736520746869732E63757272656E744974656D2E73686F7728293B746869732E66726F6D4F757473696465262621632626642E707573682866756E';
wwv_flow_api.g_varchar2_table(218) := '6374696F6E2861297B746869732E5F74726967676572282272656365697665222C612C746869732E5F75694861736828746869732E66726F6D4F75747369646529297D292C28746869732E66726F6D4F7574736964657C7C746869732E646F6D506F7369';
wwv_flow_api.g_varchar2_table(219) := '74696F6E2E70726576213D746869732E63757272656E744974656D2E7072657628292E6E6F7428222E75692D736F727461626C652D68656C70657222295B305D7C7C746869732E646F6D506F736974696F6E2E706172656E74213D746869732E63757272';
wwv_flow_api.g_varchar2_table(220) := '656E744974656D2E706172656E7428295B305D29262621632626642E707573682866756E6374696F6E2861297B746869732E5F747269676765722822757064617465222C612C746869732E5F7569486173682829297D293B69662821612E75692E636F6E';
wwv_flow_api.g_varchar2_table(221) := '7461696E7328746869732E656C656D656E745B305D2C746869732E63757272656E744974656D5B305D29297B637C7C642E707573682866756E6374696F6E2861297B746869732E5F74726967676572282272656D6F7665222C612C746869732E5F756948';
wwv_flow_api.g_varchar2_table(222) := '6173682829297D293B666F722876617220663D746869732E636F6E7461696E6572732E6C656E6774682D313B663E3D303B662D2D29612E75692E636F6E7461696E7328746869732E636F6E7461696E6572735B665D2E656C656D656E745B305D2C746869';
wwv_flow_api.g_varchar2_table(223) := '732E63757272656E744974656D5B305D2926262163262628642E707573682866756E6374696F6E2861297B72657475726E2066756E6374696F6E2862297B612E5F74726967676572282272656365697665222C622C746869732E5F756948617368287468';
wwv_flow_api.g_varchar2_table(224) := '697329297D7D2E63616C6C28746869732C746869732E636F6E7461696E6572735B665D29292C642E707573682866756E6374696F6E2861297B72657475726E2066756E6374696F6E2862297B612E5F747269676765722822757064617465222C622C7468';
wwv_flow_api.g_varchar2_table(225) := '69732E5F756948617368287468697329297D7D2E63616C6C28746869732C746869732E636F6E7461696E6572735B665D2929297D666F722876617220663D746869732E636F6E7461696E6572732E6C656E6774682D313B663E3D303B662D2D29637C7C64';
wwv_flow_api.g_varchar2_table(226) := '2E707573682866756E6374696F6E2861297B72657475726E2066756E6374696F6E2862297B612E5F74726967676572282264656163746976617465222C622C746869732E5F756948617368287468697329297D7D2E63616C6C28746869732C746869732E';
wwv_flow_api.g_varchar2_table(227) := '636F6E7461696E6572735B665D29292C746869732E636F6E7461696E6572735B665D2E636F6E7461696E657243616368652E6F766572262628642E707573682866756E6374696F6E2861297B72657475726E2066756E6374696F6E2862297B612E5F7472';
wwv_flow_api.g_varchar2_table(228) := '696767657228226F7574222C622C746869732E5F756948617368287468697329297D7D2E63616C6C28746869732C746869732E636F6E7461696E6572735B665D29292C746869732E636F6E7461696E6572735B665D2E636F6E7461696E65724361636865';
wwv_flow_api.g_varchar2_table(229) := '2E6F7665723D30293B746869732E5F73746F726564437572736F722626612822626F647922292E6373732822637572736F72222C746869732E5F73746F726564437572736F72292C746869732E5F73746F7265644F7061636974792626746869732E6865';
wwv_flow_api.g_varchar2_table(230) := '6C7065722E63737328226F706163697479222C746869732E5F73746F7265644F706163697479292C746869732E5F73746F7265645A496E6465782626746869732E68656C7065722E63737328227A496E646578222C746869732E5F73746F7265645A496E';
wwv_flow_api.g_varchar2_table(231) := '6465783D3D226175746F223F22223A746869732E5F73746F7265645A496E646578292C746869732E6472616767696E673D21313B696628746869732E63616E63656C48656C70657252656D6F76616C297B6966282163297B746869732E5F747269676765';
wwv_flow_api.g_varchar2_table(232) := '7228226265666F726553746F70222C622C746869732E5F7569486173682829293B666F722876617220663D303B663C642E6C656E6774683B662B2B29645B665D2E63616C6C28746869732C62293B746869732E5F74726967676572282273746F70222C62';
wwv_flow_api.g_varchar2_table(233) := '2C746869732E5F7569486173682829297D72657475726E20746869732E66726F6D4F7574736964653D21312C21317D637C7C746869732E5F7472696767657228226265666F726553746F70222C622C746869732E5F7569486173682829292C746869732E';
wwv_flow_api.g_varchar2_table(234) := '706C616365686F6C6465725B305D2E706172656E744E6F64652E72656D6F76654368696C6428746869732E706C616365686F6C6465725B305D292C746869732E68656C7065725B305D213D746869732E63757272656E744974656D5B305D262674686973';
wwv_flow_api.g_varchar2_table(235) := '2E68656C7065722E72656D6F766528292C746869732E68656C7065723D6E756C6C3B6966282163297B666F722876617220663D303B663C642E6C656E6774683B662B2B29645B665D2E63616C6C28746869732C62293B746869732E5F7472696767657228';
wwv_flow_api.g_varchar2_table(236) := '2273746F70222C622C746869732E5F7569486173682829297D72657475726E20746869732E66726F6D4F7574736964653D21312C21307D2C5F747269676765723A66756E6374696F6E28297B612E5769646765742E70726F746F747970652E5F74726967';
wwv_flow_api.g_varchar2_table(237) := '6765722E6170706C7928746869732C617267756D656E7473293D3D3D21312626746869732E63616E63656C28297D2C5F7569486173683A66756E6374696F6E2862297B76617220633D627C7C746869733B72657475726E7B68656C7065723A632E68656C';
wwv_flow_api.g_varchar2_table(238) := '7065722C706C616365686F6C6465723A632E706C616365686F6C6465727C7C61285B5D292C706F736974696F6E3A632E706F736974696F6E2C6F726967696E616C506F736974696F6E3A632E6F726967696E616C506F736974696F6E2C6F66667365743A';
wwv_flow_api.g_varchar2_table(239) := '632E706F736974696F6E4162732C6974656D3A632E63757272656E744974656D2C73656E6465723A623F622E656C656D656E743A6E756C6C7D7D7D292C612E657874656E6428612E75692E736F727461626C652C7B76657273696F6E3A22312E382E3232';
wwv_flow_api.g_varchar2_table(240) := '227D297D29286A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(30803042332457682879)
,p_plugin_id=>wwv_flow_api.id(30753074645209156515)
,p_file_name=>'jquery.ui.sortable.min.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(99838429995479296)
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
,p_user_interface_id=>wwv_flow_api.id(99838429995479296)
,p_tab_set=>'TS1'
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Home'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200817112057'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99840721932479309)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99832305102479262)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(99840232616479307)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(99838013991479292)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99847901176597878)
,p_plug_name=>'CURSOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99833223190479265)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"ID_CURSO",',
'"NOMBRE",',
'"DESCRIPCION",',
'"FECHA_INICIA",',
'"SEMANA"',
'from "#OWNER#"."E_CURSO" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(99848116459597879)
,p_name=>'CURSOS'
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
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::P2_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'1462'
,p_internal_uid=>99848116459597879
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99848207902597906)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99848306462597917)
,p_db_column_name=>'ID_CURSO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Curso'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ID_CURSO:#ID_CURSO#'
,p_column_linktext=>'#ID_CURSO#'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID_CURSO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99848422729597918)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99848517956597920)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPCION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99848629802597921)
,p_db_column_name=>'FECHA_INICIA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha Inicia'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA_INICIA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99848726892597925)
,p_db_column_name=>'SEMANA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Semana'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SEMANA'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(99849122447598084)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'998492'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:ID_CURSO:NOMBRE:DESCRIPCION:FECHA_INICIA:SEMANA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99848926736597925)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(99847901176597878)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:2'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(99908413294571575)
,p_branch_name=>'curso_piloto'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(99838429995479296)
,p_name=>'Form on E_CURSO'
,p_step_title=>'Form on E_CURSO'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200812110111'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99843810137597690)
,p_plug_name=>'Form on E_CURSO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99832824108479264)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99844130515597695)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(99843810137597690)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99844401240597706)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(99843810137597690)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99844006983597695)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(99843810137597690)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P2_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99844201750597695)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(99843810137597690)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
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
 p_id=>wwv_flow_api.id(99845313836597726)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99845530659597806)
,p_name=>'P2_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(99843810137597690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99845728048597820)
,p_name=>'P2_ID_CURSO'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(99843810137597690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Curso'
,p_source=>'ID_CURSO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99837232281479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99845905363597837)
,p_name=>'P2_NOMBRE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(99843810137597690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99846123282597837)
,p_name=>'P2_DESCRIPCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(99843810137597690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99846319269597837)
,p_name=>'P2_FECHA_INICIA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(99843810137597690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Inicia'
,p_source=>'FECHA_INICIA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99846512098597840)
,p_name=>'P2_SEMANA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(99843810137597690)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Semana'
,p_source=>'SEMANA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99847430201597851)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from E_CURSO'
,p_attribute_02=>'E_CURSO'
,p_attribute_03=>'P2_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99847615145597853)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of E_CURSO'
,p_attribute_02=>'E_CURSO'
,p_attribute_03=>'P2_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99847821447597853)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(99844201750597695)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(99838429995479296)
,p_tab_set=>'TS1'
,p_name=>'CURSO X EMPLEADO'
,p_step_title=>'CURSO X EMPLEADO'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200812151105'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99854615417623385)
,p_plug_name=>'CURSO X EMPLEADO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99833223190479265)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"ID_EMP",',
'"ID_CURSO",',
'"ID_PILOTO",',
'(SELECT nombre_pila||'' '' ||primer_apellido||'' ''||segundo_apellido nombre FROM EMPLEADO@SOFTLAND WHERE EMPLEADO=ID_PILOTO) AS NOMBRE,',
'"NOTA",',
'"FECHA_RECIBE"',
'from E_CURSO_EMP ',
'  ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(99854828382623387)
,p_name=>'CURSO X EMPLEADO'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'C'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_detail_link=>'f?p=&APP_ID.:4:&APP_SESSION.::::P4_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif"  border="0">'
,p_owner=>'1462'
,p_internal_uid=>99854828382623387
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99854915881623400)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99855011311623403)
,p_db_column_name=>'ID_EMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Emp'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID_EMP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99855123583623404)
,p_db_column_name=>'ID_CURSO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Curso'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID_CURSO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99855206403623406)
,p_db_column_name=>'ID_PILOTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Piloto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID_PILOTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99855321220623407)
,p_db_column_name=>'NOTA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nota'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOTA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99855417582623410)
,p_db_column_name=>'FECHA_RECIBE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha Recibe'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA_RECIBE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99900628095397620)
,p_db_column_name=>'NOMBRE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(99855812451623567)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'998559'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ROWID:ID_EMP:ID_CURSO:ID_PILOTO:NOTA:FECHA_RECIBE:NOMBRE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99855625762623410)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(99854615417623385)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(99838429995479296)
,p_tab_set=>'TS1'
,p_name=>'Form on E_CURSO_EMP'
,p_step_title=>'Form on E_CURSO_EMP'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200909142943'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99850320096623360)
,p_plug_name=>'Form on E_CURSO_EMP'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99832824108479264)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99915514060740576)
,p_plug_name=>'SEGUIMIENTO'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99833223190479265)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"ID_EMP",',
'"ID_CURSO",',
'"ID_PILOTO",',
'(SELECT nombre_pila||'' '' ||primer_apellido||'' ''||segundo_apellido nombre FROM EMPLEADO@SOFTLAND WHERE EMPLEADO=ID_PILOTO) AS NOMBRE,',
'(select UBICACION from empleado@softland where empleado =id_piloto) AS UBICACION,',
'"NOTA",',
'"FECHA_RECIBE"',
'from E_CURSO_EMP where id_curso =:P4_ID_CURSO order by id_emp '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(99915609276740576)
,p_name=>'SEGUIMIENTO'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_detail_link=>'N'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'1462'
,p_internal_uid=>99915609276740576
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99915806845740585)
,p_db_column_name=>'ROWID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_tz_dependent=>'N'
,p_static_id=>'ROWID'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99915910675740587)
,p_db_column_name=>'ID_EMP'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Emp'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID_EMP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99916001945740587)
,p_db_column_name=>'ID_CURSO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id Curso'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID_CURSO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99916115822740587)
,p_db_column_name=>'ID_PILOTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Id Piloto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID_PILOTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99916218113740587)
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
 p_id=>wwv_flow_api.id(99916318034740587)
,p_db_column_name=>'NOTA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Nota'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOTA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(99916408326740587)
,p_db_column_name=>'FECHA_RECIBE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Fecha Recibe'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA_RECIBE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(103038832298370979)
,p_db_column_name=>'UBICACION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(99916514752740776)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'999166'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID_EMP:ID_CURSO:ID_PILOTO:NOMBRE:UBICACION:NOTA:FECHA_RECIBE:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99850619901623364)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(99850320096623360)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99850903798623364)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(99850320096623360)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99850512016623364)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(99850320096623360)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99850705723623364)
,p_button_sequence=>20
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(99851502921623367)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99851723103623368)
,p_name=>'P4_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(99850320096623360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99851908423623373)
,p_name=>'P4_ID_EMP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(99850320096623360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Emp'
,p_source=>'ID_EMP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99837232281479289)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99852113136623373)
,p_name=>'P4_ID_CURSO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(99850320096623360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Curso'
,p_source=>'ID_CURSO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99852312027623375)
,p_name=>'P4_ID_PILOTO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(99850320096623360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Piloto'
,p_source=>'ID_PILOTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  TO_NUMBER (empleado)||''-''||nombre,TO_NUMBER (empleado) from  empleado@softland where empleado not in ( select id_piloto from e_curso_emp where id_curso=:P4_ID_CURSO) ',
'and estado_empleado =''ACT'' and puesto=''12'' order by empleado'))
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99852528100623375)
,p_name=>'P4_NOTA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(99850320096623360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nota'
,p_source=>'NOTA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:0,1,2,3,4,5,6,7,8,9,10'
,p_cSize=>32
,p_cMaxlength=>20
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99852711126623375)
,p_name=>'P4_FECHA_RECIBE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(99850320096623360)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Recibe'
,p_source=>'FECHA_RECIBE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99853623418623378)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from E_CURSO_EMP'
,p_attribute_02=>'E_CURSO_EMP'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99853828799623381)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of E_CURSO_EMP'
,p_attribute_02=>'E_CURSO_EMP'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99854000793623381)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(99850705723623364)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(99838429995479296)
,p_tab_set=>'TS1'
,p_name=>'Report 1'
,p_step_title=>'Report 1'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Report 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200908160055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(102899132069204214)
,p_plug_name=>'E_LEARNING'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(99833223190479265)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id_curso,a.nombre as curso,a.fecha_inicia,a.semana,b.id_piloto,c.nombre,b.nota,b.fecha_recibe from e_curso a',
'inner join e_curso_emp b on a.id_curso=b.id_curso',
'inner join empleado@softland c on b.id_piloto=c.empleado'))
,p_plug_source_type=>'PLUGIN_MULEDEV.PIVOT_REGION'
,p_attribute_01=>'my_pivot_div'
,p_attribute_02=>'curso'
,p_attribute_03=>'id_piloto'
,p_attribute_04=>'Heatmap'
,p_attribute_05=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(99838429995479296)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(99820600925479209)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20200812084432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99839406866479306)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(99832824108479264)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(99839720137479307)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(99839406866479306)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(99837430583479290)
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
 p_id=>wwv_flow_api.id(99839507839479307)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(99839406866479306)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(99839609025479307)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(99839406866479306)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(99836914644479289)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99839923251479307)
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
 p_id=>wwv_flow_api.id(99839817361479307)
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
 p_id=>wwv_flow_api.id(99840114144479307)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(99840000867479307)
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
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(102901718984231178)
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
