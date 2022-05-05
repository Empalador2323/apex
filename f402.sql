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
,p_default_application_id=>402
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 402 - Reporte_Planilla
--
-- Application Export:
--   Application:     402
--   Name:            Reporte_Planilla
--   Date and Time:   12:41 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      5
--     Items:                   17
--     Processes:                4
--     Regions:                  6
--     Buttons:                  3
--     Dynamic Actions:          4
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 4
--       Breadcrumbs:            1
--       NavBar Entries:         2
--     Security:
--       Authentication:         3
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                17
--         Region:              34
--         Label:                6
--         List:                17
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               7
--         Report:              11
--     Globalization:
--     Reports:
--       Layouts:                1
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,402)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Reporte_Planilla')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_401402')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'282C2AC9D5403A79D6FFBD49055124C672E7CB2A2E34808F856723AE85B5258D'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD/MM/YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(205235150176042110)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Reporte_Planilla'
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
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220131175019'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16959826704096244)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16959942001096244)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16960085673096244)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16960231883096247)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16960326585096248)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(16960480947096248)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(205224861933041891)
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
 p_id=>wwv_flow_api.id(205312636368644094)
,p_icon_sequence=>10
,p_icon_subtext=>'INICIO'
,p_icon_target=>'f?p=112:1:&SESSION.::&DEBUG.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(205234857366042102)
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
 p_id=>wwv_flow_api.id(205236738679042152)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Home'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'1'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(108067024677872150)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'Analisis planilla'
,p_tab_text=>'Analisis planilla'
,p_tab_step=>2
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(108951027182360050)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'Planilla Mensual'
,p_tab_text=>'Planilla Mensual'
,p_tab_step=>3
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(7075533761209843)
,p_tab_set=>'TS1'
,p_tab_sequence=>40
,p_tab_name=>'Planilla_RHNYS'
,p_tab_text=>'Planilla_RHNYS'
,p_tab_step=>4
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
 p_id=>wwv_flow_api.id(205236238083042140)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205224954752041923)
,p_theme_id=>24
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD# id="uLogin">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uLoginContainer">',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uSingleAlertMessage red" id="uNotificationMessage">',
'	<p>#MESSAGE#</p>',
'	<a href="javascript:void(0)" class="closeMessage" onclick="$x_Remove(''uNotificationMessage'')"></a>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0"'
,p_theme_class_id=>6
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225057397041940)
,p_theme_id=>24
,p_name=>'No Tabs - Left Sidebar'
,p_internal_name=>'NO_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        <li><span>#WELCOME_USER#</span></li>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_and_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225160124041941)
,p_theme_id=>24
,p_name=>'No Tabs - Left and Right Sidebar'
,p_internal_name=>'NO_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>'summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_no_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225256606041941)
,p_theme_id=>24
,p_name=>'No Tabs - No Sidebar'
,p_internal_name=>'NO_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading uErrorRegion">',
'  <div class="uRegionContent">',
'    <p><strong>#MESSAGE#</strong></p>',
'    <p>#ADDITIONAL_INFO#</p>',
'    <div class="uErrorTechInfo">#TECHNICAL_INFO#</div>',
'  </div>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      <a href="#BACK_LINK#" class="uButtonLarge uHotButton"><span>#OK#</span></a>',
'    </span>',
'  </div>',
'</section>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225355315041941)
,p_theme_id=>24
,p_name=>'No Tabs - Right Sidebar'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_content_frame
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225440335041943)
,p_theme_id=>24
,p_name=>'One Level Tabs - Content Frame'
,p_internal_name=>'ONE_LEVEL_TABS_CONTENT_FRAME'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'<section class="uRegion uRegionNoPadding clearfix uRegionFrame">',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'		#REGION_POSITION_02#',
'    </span>',
'  </div>',
'  <div class="uFrameContent">',
'	<div class="uFrameMain">',
'		#BODY#',
'	</div>',
'	<div class="uFrameSide">',
'		#REGION_POSITION_03#',
'	</div>',
'  </div>',
'</section>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225536442041943)
,p_theme_id=>24
,p_name=>'One Level Tabs - Left Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225633401041943)
,p_theme_id=>24
,p_name=>'One Level Tabs - Left and Right Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_no_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225730623041944)
,p_theme_id=>24
,p_name=>'One Level Tabs - No Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225847100041944)
,p_theme_id=>24
,p_name=>'One Level Tabs - Right Sidebar'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>16
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_wizard_page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205225930595041944)
,p_theme_id=>24
,p_name=>'One Level Tabs - Wizard Page'
,p_internal_name=>'ONE_LEVEL_TABS_WIZARD_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'',
'<div class="cWizard">',
'	<div class="cWizardHeader">',
'		#REGION_POSITION_02#',
'	</div>',
'    <div class="cWizardContentContainer">',
'    <div class="cWizardContent">',
'        #BODY##REGION_POSITION_03#',
'    </div>',
'    <div class="clear"></div>',
'</div>',
'',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/popup
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205226037870041944)
,p_theme_id=>24
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD# id="uPopup">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_04#',
'  #REGION_POSITION_05#',
'  #REGION_POSITION_06#',
'  #REGION_POSITION_07#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<a href="#LINK#">#TEXT#</a>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>4
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/printer_friendly
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205226157400041944)
,p_theme_id=>24
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD# id="uPrinterFriendly">',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  #REGION_POSITION_01#',
'  #REGION_POSITION_04#',
'</header>',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>',
''))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>5
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
,p_template_comment=>'3'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_left_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205226254231041946)
,p_theme_id=>24
,p_name=>'Two Level Tabs - Left Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'    #REGION_POSITION_03#',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_left_and_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205226353399041946)
,p_theme_id=>24
,p_name=>'Two Level Tabs - Left and Right Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uThreeColumns">',
'<table id="uPageCols" class="uThreeCol"><tr>',
'  <td id="uLeftCol">',
'    <aside>',
'    #REGION_POSITION_02#',
'    </aside>',
'  </td>',
'  <td id="uMidCol">',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a class="active" href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li class="active"><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_02'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>18
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_no_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205226433206041946)
,p_theme_id=>24
,p_name=>'Two Level Tabs - No Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_NO_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uOneCol">',
'  #REGION_POSITION_02#',
'  #BODY#',
'  #REGION_POSITION_03#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="success" id="success-message">',
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>',
'</div>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_grid_always_use_max_columns=>false
,p_grid_has_column_span=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/two_level_tabs_right_sidebar
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(205226537031041948)
,p_theme_id=>24
,p_name=>'Two Level Tabs - Right Sidebar'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<!--[if lt IE 7 ]> <html class="ie6 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7 ]>    <html class="ie7 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8 ]>    <html class="ie8 no-css3" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9 ]>    <html class="ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if (gt IE 9)|!(IE)]><!--> <html lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="UTF-8">',
'  ',
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
'  <meta name="viewport" content="width=device-width, initial-scale=1.0">',
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css">',
'  <script src="#IMAGE_PREFIX#themes/theme_24/js/4_1.js"></script>',
'</head>',
'<body #ONLOAD#>',
'  <!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'  #FORM_OPEN#',
'  <div id="uBodyContainer">'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header id="uHeader">',
'  #REGION_POSITION_07#',
'  <hgroup>',
'    <a href="#HOME_LINK#" id="uLogo">#LOGO#</a>',
'    <div class="uAPEXNavBar">',
'      <ul>',
'        #NAVIGATION_BAR#',
'      </ul>',
'    </div>',
'    #REGION_POSITION_08#',
'  </hgroup>',
'  <div class="uParentTabs">',
'    <ul>',
'      #PARENT_TAB_CELLS#',
'    </ul>',
'  </div>',
'  <nav>',
'    <ul>',
'      #TAB_CELLS#',
'    </ul>',
'  </nav>',
'  #REGION_POSITION_04#',
'</header>',
'#REGION_POSITION_01#',
'#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'<div id="uTwoColumns">',
'<table id="uPageCols" class="uTwoCol"><tr>',
'  <td id="uMidCol">',
'    #REGION_POSITION_02#',
'    #BODY#',
'  </td>',
'  <td id="uRightCol">',
'    <aside>',
'    #REGION_POSITION_03#',
'    </aside>',
'  </td>',
'</tr></table>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<footer id="uFooter">',
'  <div class="uFooterContent">',
'    <div id="customize">#CUSTOMIZE#</div>',
'    #REGION_POSITION_05#',
'    #APP_VERSION#',
'  </div>',
'  <div class="uFooterBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</footer>',
'<div id="uHiddenItems">',
'  #REGION_POSITION_08#',
'</div>',
'</div>',
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#GENERATED_CSS#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uSuccessMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uSuccessMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uCheckmarkIcon" alt="" />',
'    <div class="uMessageText">',
'      #SUCCESS_MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_non_current_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_current_tab=>'<li><a href="#TAB_LINK#" class="active">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_top_non_curr_tab=>'<li><a href="#TAB_LINK#">#TAB_LABEL#</a>#TAB_INLINE_EDIT#</li>'
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uMessageRegion clearfix" id="uNotificationMessage">',
'  <div class="uRegionContent clearfix">',
'    <a href="javascript:void(0)" onclick="$x_Remove(''uNotificationMessage'')" class="uCloseMessage"></a>',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uWarningIcon" alt="" />',
'    <div class="uMessageText">',
'      #MESSAGE#',
'    </div>',
'  </div>',
'</section>'))
,p_navigation_bar=>'#BAR_BODY#'
,p_navbar_entry=>'<li><a href="#LINK#">#TEXT#</a>#EDIT#</li>'
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>2
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/button/html_button_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(16960747438096481)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(205233438261042013)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>'<a href="#LINK#" class="uButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButton uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/button/interactive_report_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(205233540582042018)
,p_template_name=>'Interactive Report Button'
,p_internal_name=>'INTERACTIVE_REPORT_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonIR #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonIR uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/button/large_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(205233656449042018)
,p_template_name=>'Large Button'
,p_internal_name=>'LARGE_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonLarge #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonLarge uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'Standard Button'
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/button/small_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(205233759399042018)
,p_template_name=>'Small Button'
,p_internal_name=>'SMALL_BUTTON'
,p_template=>'<a href="#LINK#" class="uButtonSmall #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_hot_template=>'<a href="#LINK#" class="uButtonSmall uHotButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a> '
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/button/add_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(205233862926042018)
,p_template_name=>'[ + ] Add Button'
,p_internal_name=>'[_+_]_ADD_BUTTON'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" title="#LABEL#" class="addIcon" /></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" title="#LABEL#" class="addIcon"/></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(205233958495042018)
,p_template_name=>'[ Text ] Button'
,p_internal_name=>'[_TEXT_]_BUTTON'
,p_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_hot_template=>'<a href="#LINK#" class="uIconButton #BUTTON_CSS_CLASSES#" id="#BUTTON_ID#" #BUTTON_ATTRIBUTES# role="button"><span>#LABEL#</span></a>'
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>24
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205226662511041949)
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
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205226757355041962)
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
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205226857843041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBracketedRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Bracketed Region'
,p_internal_name=>'BRACKETED_REGION'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/breadcrumb_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205226954806041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="uBreadcrumbs" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="uBreadcrumbsBG">',
'    <div class="uLeft"></div>',
'    <div class="uRight"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>24
,p_theme_class_id=>6
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Use this region template to contain breadcrumb menus.  Breadcrumb menus are implemented using breadcrumbs.  Breadcrumb menus are designed to displayed in #REGION_POSITION_01#'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/button_region_with_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205227043391041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>',
''))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205227132113041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uButtonRegionContentContainer">',
'    <div class="uButtonRegionContent">#BODY#</div>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>',
''))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>24
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205227236233041963)
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
,p_page_plug_template_name=>'Chart List'
,p_internal_name=>'CHART_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/chart_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205227352634041963)
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
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/content_frame_body_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205227435756041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#SUB_REGION_HEADERS#',
'#BODY#',
'<div class="uFrameContainer #REGION_CSS_CLASSES#">',
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
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205227539589041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#BODY#',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'</div>'))
,p_page_plug_template_name=>'DIV Region with ID'
,p_internal_name=>'DIV_REGION_WITH_ID'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205227660988041963)
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
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205227738913041963)
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
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>24
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_hidden_first_borderless
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205227839744041963)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion #REGION_CSS_CLASSES# uHideShowRegion clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Hide and Show Region (Hidden First) - Borderless'
,p_internal_name=>'HIDE_AND_SHOW_REGION_HIDDEN_FIRST_BORDERLESS'
,p_theme_id=>24
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hide_and_show_region_borderless
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205227944345041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uBorderlessRegion uHideShowRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Hide and Show Region - Borderless'
,p_internal_name=>'HIDE_AND_SHOW_REGION_BORDERLESS'
,p_theme_id=>24
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/irr_region_template
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228047626041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'    #BODY#',
'</div>'))
,p_page_plug_template_name=>'IRR Region Template'
,p_internal_name=>'IRR_REGION_TEMPLATE'
,p_theme_id=>24
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228143998041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uRegionNoPadding uLoginRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uLoginHeading">',
'    <span class="bgArrow"></span>',
'    <div class="appIcon">',
'      <img src="#IMAGE_PREFIX#f_spacer.gif" class="appIcon #REGION_STATIC_ID#" alt=""/>',
'    </div> ',
'    <h1>#TITLE#</h1>',
'  </div>',
'  <div class="uLoginBody clearfix">',
'    #BODY#',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Login Region'
,p_internal_name=>'LOGIN_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/modal_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228258854041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion uModalRegion uAlertRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Modal Region'
,p_internal_name=>'MODAL_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/navigation_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228333827041966)
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
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>24
,p_theme_class_id=>5
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region_heading_inside
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228438859041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Navigation Region - Heading Inside'
,p_internal_name=>'NAVIGATION_REGION_HEADING_INSIDE'
,p_theme_id=>24
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228561907041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix">',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>',
''))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205228635365041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uNoHeading #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205228754694041966)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uButtonRegion uNoHeading uReportFilter #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix">',
'    <div class="uReportFilterRow">',
'    <img src="#IMAGE_PREFIX#f_spacer.gif" class="uSearchIcon" alt="" />',
'    #BODY#',
'    </div>',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Report Filter - Single Row'
,p_internal_name=>'REPORT_FILTER_SINGLE_ROW'
,p_theme_id=>24
,p_theme_class_id=>31
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/report_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228859655041966)
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
,p_page_plug_template_name=>'Report List'
,p_internal_name=>'REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
,p_theme_class_id=>29
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205228938687041968)
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
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205229030305041968)
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
,p_page_plug_template_name=>'Reports Region - 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/reports_region_heading_inside
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229137246041968)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Reports Region - Heading Inside'
,p_internal_name=>'REPORTS_REGION_HEADING_INSIDE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/scrollable_content_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229246360041968)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="uRegionHeading">',
'    <h1>#TITLE#</h1>',
'    <span class="uButtonContainer">',
'      #CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'    </span>',
'  </div>',
'  <div class="uRegionContent clearfix"  style="height: 400px; overflow:scroll">',
'    #BODY#',
'  </div>',
'</section>'))
,p_page_plug_template_name=>'Scrollable Content Region'
,p_internal_name=>'SCROLLABLE_CONTENT_REGION'
,p_theme_id=>24
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1826089610826571714
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/search_filter_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229349768041968)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="ebaSearchFilterRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'<h3>#TITLE#</h3>',
'#BODY#',
'<div class="ebaSearchFilterButtons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'</div>'))
,p_page_plug_template_name=>'Search Filter Region'
,p_internal_name=>'SEARCH_FILTER_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/sidebar_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229432527041968)
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
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/region/sidebar_region_heading_inside
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229549999041969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<section class="uRegion uWhiteRegion #REGION_CSS_CLASSES# clearfix" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
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
,p_page_plug_template_name=>'Sidebar Region - Heading Inside'
,p_internal_name=>'SIDEBAR_REGION_HEADING_INSIDE'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>24
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_buttons
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229661825041969)
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
,p_theme_id=>24
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229738601041969)
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
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205229843064041969)
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
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>24
,p_theme_class_id=>20
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/jquery_modal_region_template
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(205229937200041969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" style="display:none" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">',
'#BODY#',
'</div>'))
,p_page_plug_template_name=>'jQuery Modal Region Template'
,p_internal_name=>'JQUERY_MODAL_REGION_TEMPLATE'
,p_theme_id=>24
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/button_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205231139987041987)
,p_list_template_current=>'<a href="#LINK#" class="uButtonSmall uHotButton" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_noncurrent=>'<a href="#LINK#" class="uButtonSmall" #A01# role="button"><span>#TEXT#</span></a> '
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>24
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="uButtonList">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/dhtml_tree
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205231253744041994)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_internal_name=>'DHTML_TREE'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205231331979041994)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_internal_name=>'HIERARCHICAL_EXPANDING'
,p_theme_id=>24
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
prompt --application/shared_components/user_interface/templates/list/horizontal_images_with_label_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205231442821041996)
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
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205231556315041996)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li> '
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>24
,p_theme_class_id=>3
,p_list_template_before_rows=>'<ul class="uHorizontalLinksList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_wizard_progress_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205231639264041998)
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
,p_theme_id=>24
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="uHorizontalProgressList">',
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
 p_id=>wwv_flow_api.id(205231741484041998)
,p_list_template_current=>'<li><a href="#LINK#" class="active">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_internal_name=>'PAGE_LEVEL_TABS_LIST'
,p_theme_id=>24
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<nav class="uPageTabs">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</nav>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205231831121041998)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_internal_name=>'PULL_DOWN_MENU'
,p_theme_id=>24
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#f_spacer.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#arrow_down_gray_dark.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205231930869041999)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>24
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
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''S#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" /></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabbed_navigation_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205232058732042001)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205232130354042001)
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
,p_theme_id=>24
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
 p_id=>wwv_flow_api.id(205232251219042001)
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
,p_theme_id=>24
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="largeLinkList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205232345504042001)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>24
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="uNumberedList">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205232459864042001)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>24
,p_theme_class_id=>19
,p_list_template_before_rows=>'<ul class="uVerticalSidebarList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205232540726042001)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>24
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="uVerticalList">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205232646683042002)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITHOUT_BULLETS'
,p_theme_id=>24
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="uVerticalList noBullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_vertical
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(205232757217042002)
,p_list_template_current=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><img src="#IMAGE_PREFIX#f_spacer.gif" alt="" /><span>#TEXT#</span></li>'
,p_list_template_name=>'Wizard Progress List - Vertical'
,p_internal_name=>'WIZARD_PROGRESS_LIST_VERTICAL'
,p_theme_id=>24
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="uVerticalProgressList" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/borderless_report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(205230041869041971)
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
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(205230041869041971)
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
 p_id=>wwv_flow_api.id(205230145343041984)
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
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/fixed_headers
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(205230248689041984)
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
,p_theme_id=>24
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(205230248689041984)
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
 p_id=>wwv_flow_api.id(205230341779041984)
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
,p_theme_id=>24
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(205230341779041984)
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
 p_id=>wwv_flow_api.id(205230438699041984)
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
,p_theme_id=>24
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(205230438699041984)
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
 p_id=>wwv_flow_api.id(205230535729041984)
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
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(205230639321041984)
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
,p_theme_id=>24
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(205230639321041984)
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
 p_id=>wwv_flow_api.id(205230732088041985)
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
,p_theme_id=>24
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(205230732088041985)
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
 p_id=>wwv_flow_api.id(205230842762041985)
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
,p_theme_id=>24
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(205230962302041985)
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
,p_theme_id=>24
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_left_aligned
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(205231043667041985)
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
,p_row_template_before_rows=>'<ul class="vapList" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>'</ul>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_theme_id=>24
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden_label_read_by_screen_reader
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(205232851313042002)
,p_template_name=>'Hidden label, read by screen reader'
,p_internal_name=>'HIDDEN_LABEL,_READ_BY_SCREEN_READER'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999" class="hideMeButHearMe">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#'
,p_theme_id=>24
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/no_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(205232962981042012)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="uNoLabel">'
,p_template_body2=>'</span>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(205233047212042012)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional">'
,p_template_body2=>'</label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(205233133489042012)
,p_template_name=>'Optional with help'
,p_internal_name=>'OPTIONAL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uOptional"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(205233260588042012)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired">'
,p_template_body2=>' <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(205233335565042012)
,p_template_name=>'Required with help'
,p_internal_name=>'REQUIRED_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="uRequired"><a class="uHelpLink" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a> <img src="#IMAGE_PREFIX#f_spacer.gif" alt="#VALUE_REQUIRED#" class="uAsterisk" /></label>'
,p_on_error_after_label=>'<span class="uLabelError">#ERROR_MESSAGE#</span>'
,p_theme_id=>24
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(205234031370042018)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>'<ul>'
,p_current_page_option=>'<li class="active"><span>#NAME#</span></li> '
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li> '
,p_between_levels=>'<li class="uSeparator"><img src="#IMAGE_PREFIX#f_spacer.gif" class="uBreadcrumbSeparator" alt="" /></li> '
,p_after_last=>'</ul>'
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(205234151716042026)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>24
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(205234546620042052)
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
'<!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge" /><![endif]-->',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_24/css/4_1.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'class="uPopUpLOV"'
,p_before_field_text=>'<div class="uActionBar">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="smallButton"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="smallButton hotButton"'
,p_next_button_text=>'Next >'
,p_next_button_attr=>'class="smallButton"'
,p_prev_button_text=>'< Previous'
,p_prev_button_attr=>'class="smallButton"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'400'
,p_height=>'450'
,p_result_row_x_of_y=>'<div class="lovPagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="lovLinks">'
,p_theme_id=>24
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(205234238966042027)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>'<th scope="col" valign="bottom" class="DayOfWeek" id="#DY#">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarAlternative1Holder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="CalendarAlternative1">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" height="100" headers="#DY#">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today" headers="#DY#">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay" headers="#DY#">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek" id="#DY#">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendarAlternative1">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top" headers="#DY#">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top" headers="#DY#">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay" headers="#DY#">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek" id="#DY#">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendarAlternative1">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day" headers="#DY#">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today" headers="#DY#">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendar" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>24
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar_alternative
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(205234333556042049)
,p_cal_template_name=>'Calendar - Alternative'
,p_internal_name=>'CALENDAR_ALTERNATIVE'
,p_day_of_week_format=>'<th scope="col" class="DayOfWeek" id="#DY#">#IDAY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="CalendarHolder"> ',
' <tr>',
'   <td class="MonthTitle">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="Calendar">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>',
''))
,p_day_title_format=>'<div class="DayTitle">#DD#</div>'
,p_day_open_format=>'<td class="Day" valign="top" headers="#DY#">#TITLE_FORMAT##DATA#'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td valign="top" class="Today" headers="#DY#">#TITLE_FORMAT##DATA#'
,p_weekend_title_format=>'<div class="WeekendDayTitle">#DD#</div>'
,p_weekend_open_format=>'<td valign="top" class="WeekendDay" headers="#DY#">#TITLE_FORMAT##DATA#'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<div class="NonDayTitle">#DD#</div>'
,p_nonday_open_format=>'<td class="NonDay" valign="top" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="WeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek" id="#DY#">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="WeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top" headers="#DY#">'
,p_weekly_day_close_format=>'<br /></td>'
,p_weekly_today_open_format=>'<td class="Today" valign="top" headers="#DY#">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay" headers="#DY#">'
,p_weekly_weekend_close_format=>'<br /></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek" id="#DY#">#IDAY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="2" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="DayCalendar">'
,p_daily_month_close_format=>'</table></td> </tr> </table>'
,p_daily_day_open_format=>'<td valign="top" class="Day" headers="#DY#">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today" headers="#DY#">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarAlternateHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarAlternate" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'''
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>24
,p_theme_class_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/small_calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(205234462808042049)
,p_cal_template_name=>'Small Calendar'
,p_internal_name=>'SMALL_CALENDAR'
,p_day_of_week_format=>'<th scope="col" class="day-of-week">#DY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #IMONTH# #YYYY#" class="small-calendar">'
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
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th scope="col" class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" role="presentation" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="SmallDayCalendar">'
,p_daily_month_close_format=>'</table></td></tr></table>'
,p_daily_day_open_format=>'<td valign="top" class="Day">'
,p_daily_day_close_format=>'<br /></td>'
,p_daily_today_open_format=>'<td valign="top" class="Today">'
,p_daily_time_open_format=>'<th scope="row" class="Hour">'
,p_daily_time_close_format=>'<br /></th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_agenda_format=>'<table class="ListCalendarSmallHolder" summary="" role="presentation"><tr><td class="MonthTitle">#LTITLE#</td></tr><tr><td><table class="ListCalendarSmall" summary="#CALENDAR_TITLE# #LTITLE#">#DAYS#</td></tr></table>'''
,p_agenda_past_day_format=>'<tr> <th id="#MON#_#DD#_#YYYY#" colspan="2" class="PastDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_today_day_format=>'<tr>  <th  id="#MON#_#DD#_#YYYY#" colspan="2"  class="ToDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_future_day_format=>'<tr>   <th  id="#MON#_#DD#_#YYYY#" colspan="2" class="FutureDayTitle" >#IMON# #DD# #YYYY#  </th>   </tr>'
,p_agenda_past_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="PastHour" >#TIME#</th><td class="PastDay" headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_today_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="TodayHour" >#TIME#</th><td class="ToDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_agenda_future_entry_format=>'<tr>   <th headers="#MON#_#DD#_#YYYY#" id="#MON#_#DD#_#YYYY#_#DAY_SEQ#" class="FutureHour" >#TIME#</th><td class="FutureDay"  headers="#MON#_#DD#_#YYYY# #MON#_#DD#_#YYYY#_#DAY_SEQ#">#DATA#</td>   </tr>'
,p_month_data_entry_format=>'#DATA#'
,p_theme_id=>24
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(205234635404042073)
,p_theme_id=>24
,p_theme_name=>'Cloudy'
,p_theme_internal_name=>'CLOUDY'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(205225730623041944)
,p_error_template=>wwv_flow_api.id(205225256606041941)
,p_printer_friendly_template=>wwv_flow_api.id(205226157400041944)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(205224954752041923)
,p_default_button_template=>wwv_flow_api.id(205233438261042013)
,p_default_region_template=>wwv_flow_api.id(205228938687041968)
,p_default_chart_template=>wwv_flow_api.id(205227352634041963)
,p_default_form_template=>wwv_flow_api.id(205227660988041963)
,p_default_reportr_template=>wwv_flow_api.id(205228938687041968)
,p_default_tabform_template=>wwv_flow_api.id(205228938687041968)
,p_default_wizard_template=>wwv_flow_api.id(205229738601041969)
,p_default_menur_template=>wwv_flow_api.id(205226954806041963)
,p_default_listr_template=>wwv_flow_api.id(205227236233041963)
,p_default_irr_template=>wwv_flow_api.id(205228047626041966)
,p_default_report_template=>wwv_flow_api.id(205230639321041984)
,p_default_label_template=>wwv_flow_api.id(205233047212042012)
,p_default_menu_template=>wwv_flow_api.id(205234031370042018)
,p_default_calendar_template=>wwv_flow_api.id(205234238966042027)
,p_default_list_template=>wwv_flow_api.id(205232540726042001)
,p_default_option_label=>wwv_flow_api.id(205233133489042012)
,p_default_required_label=>wwv_flow_api.id(205233335565042012)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(24),'')
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
prompt --application/shared_components/reports/report_layouts/rplanilla
begin
    wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
    wwv_flow_api.g_varchar2_table(1) := '<?xml version="1.0" encoding="UTF-8"?>'||wwv_flow.LF||
'<jasperReport xmlns="http://jasperreports.sourceforge.net/jas';
    wwv_flow_api.g_varchar2_table(2) := 'perreports" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://jasperr';
    wwv_flow_api.g_varchar2_table(3) := 'eports.sourceforge.net/jasperreports http://jasperreports.sourceforge.net/xsd/jasperreport.xsd" name';
    wwv_flow_api.g_varchar2_table(4) := '="r_planilla" language="groovy" pageWidth="842" pageHeight="595" orientation="Landscape" columnWidth';
    wwv_flow_api.g_varchar2_table(5) := '="802" leftMargin="20" rightMargin="20" topMargin="20" bottomMargin="20" uuid="b33d888b-7e0a-4c48-a0';
    wwv_flow_api.g_varchar2_table(6) := '4a-780fbd4484a9">'||wwv_flow.LF||
'	<property name="ireport.zoom" value="1.0"/>'||wwv_flow.LF||
'	<property name="ireport.x" value="47';
    wwv_flow_api.g_varchar2_table(7) := '"/>'||wwv_flow.LF||
'	<property name="ireport.y" value="451"/>'||wwv_flow.LF||
'	<style name="Title" forecolor="#FFFFFF" fontName="Tim';
    wwv_flow_api.g_varchar2_table(8) := 'es New Roman" fontSize="50" isBold="false" pdfFontName="Times-Bold"/>'||wwv_flow.LF||
'	<style name="SubTitle" foreco';
    wwv_flow_api.g_varchar2_table(9) := 'lor="#666666" fontName="Times New Roman" fontSize="18" isBold="false" pdfFontName="Times-Roman"/>'||wwv_flow.LF||
'	<';
    wwv_flow_api.g_varchar2_table(10) := 'style name="Column header" forecolor="#666666" fontName="Times New Roman" fontSize="14" isBold="true';
    wwv_flow_api.g_varchar2_table(11) := '" pdfFontName="Times-Roman"/>'||wwv_flow.LF||
'	<style name="Detail" mode="Transparent" fontName="Times New Roman" pd';
    wwv_flow_api.g_varchar2_table(12) := 'fFontName="Times-Roman"/>'||wwv_flow.LF||
'	<style name="Row" mode="Transparent" fontName="Times New Roman" pdfFontNa';
    wwv_flow_api.g_varchar2_table(13) := 'me="Times-Roman">'||wwv_flow.LF||
'		<conditionalStyle>'||wwv_flow.LF||
'			<conditionExpression><![CDATA[$V{REPORT_COUNT}%2 == 0]]></';
    wwv_flow_api.g_varchar2_table(14) := 'conditionExpression>'||wwv_flow.LF||
'			<style mode="Opaque" backcolor="#F0EFEF"/>'||wwv_flow.LF||
'		</conditionalStyle>'||wwv_flow.LF||
'	</style>'||wwv_flow.LF||
'	';
    wwv_flow_api.g_varchar2_table(15) := '<subDataset name="PieChartDataset" uuid="1a5663af-7c6d-4024-9683-307985b1080d"/>'||wwv_flow.LF||
'	<group name="Group';
    wwv_flow_api.g_varchar2_table(16) := '1">'||wwv_flow.LF||
'		<groupExpression><![CDATA[(int)($V{REPORT_COUNT}/15)]]></groupExpression>'||wwv_flow.LF||
'		<groupHeader>'||wwv_flow.LF||
'			<';
    wwv_flow_api.g_varchar2_table(17) := 'band height="31">'||wwv_flow.LF||
'				<frame>'||wwv_flow.LF||
'					<reportElement uuid="c230c22c-e255-4ae0-9a4e-a3f5fa7cda96" mode="';
    wwv_flow_api.g_varchar2_table(18) := 'Opaque" x="229" y="7" width="573" height="24" forecolor="#B89F7D" backcolor="#70A9C6"/>'||wwv_flow.LF||
'					<textFi';
    wwv_flow_api.g_varchar2_table(19) := 'eld isStretchWithOverflow="true" isBlankWhenNull="true">'||wwv_flow.LF||
'						<reportElement uuid="60300bca-647b-40';
    wwv_flow_api.g_varchar2_table(20) := '08-bd59-9025ca365d4c" style="SubTitle" isPrintRepeatedValues="false" x="2" y="1" width="263" height=';
    wwv_flow_api.g_varchar2_table(21) := '"23" forecolor="#FFFFFF"/>'||wwv_flow.LF||
'						<textElement>'||wwv_flow.LF||
'							<font fontName="Arial" isBold="false" pdfFontN';
    wwv_flow_api.g_varchar2_table(22) := 'ame="Helvetica"/>'||wwv_flow.LF||
'						</textElement>'||wwv_flow.LF||
'						<textFieldExpression><![CDATA["GroupField"]]></textFiel';
    wwv_flow_api.g_varchar2_table(23) := 'dExpression>'||wwv_flow.LF||
'					</textField>'||wwv_flow.LF||
'				</frame>'||wwv_flow.LF||
'			</band>'||wwv_flow.LF||
'		</groupHeader>'||wwv_flow.LF||
'		<groupFooter>'||wwv_flow.LF||
'			<band hei';
    wwv_flow_api.g_varchar2_table(24) := 'ght="6"/>'||wwv_flow.LF||
'		</groupFooter>'||wwv_flow.LF||
'	</group>'||wwv_flow.LF||
'	<group name="Group2">'||wwv_flow.LF||
'		<groupExpression><![CDATA[(int)($V{REP';
    wwv_flow_api.g_varchar2_table(25) := 'ORT_COUNT}/5)]]></groupExpression>'||wwv_flow.LF||
'		<groupHeader>'||wwv_flow.LF||
'			<band height="24">'||wwv_flow.LF||
'				<textField isBlankWhenN';
    wwv_flow_api.g_varchar2_table(26) := 'ull="true">'||wwv_flow.LF||
'					<reportElement uuid="5e707eaa-da84-4c68-80f8-01f422a2ce46" positionType="Float" x="';
    wwv_flow_api.g_varchar2_table(27) := '231" y="4" width="571" height="20" forecolor="#000000"/>'||wwv_flow.LF||
'					<textElement>'||wwv_flow.LF||
'						<font fontName="Ar';
    wwv_flow_api.g_varchar2_table(28) := 'ial" size="16" isBold="true" pdfFontName="Helvetica-Bold"/>'||wwv_flow.LF||
'					</textElement>'||wwv_flow.LF||
'					<textFieldExpre';
    wwv_flow_api.g_varchar2_table(29) := 'ssion><![CDATA["GroupField"]]></textFieldExpression>'||wwv_flow.LF||
'				</textField>'||wwv_flow.LF||
'			</band>'||wwv_flow.LF||
'		</groupHeader>'||wwv_flow.LF||
'	<';
    wwv_flow_api.g_varchar2_table(30) := '/group>'||wwv_flow.LF||
'	<background>'||wwv_flow.LF||
'		<band height="555" splitType="Stretch">'||wwv_flow.LF||
'			<pie3DChart>'||wwv_flow.LF||
'				<chart isShowLeg';
    wwv_flow_api.g_varchar2_table(31) := 'end="false" evaluationTime="Report">'||wwv_flow.LF||
'					<reportElement uuid="de3f77bb-9330-446b-9b45-f4d3dbf971b5"';
    wwv_flow_api.g_varchar2_table(32) := ' x="-18" y="406" width="229" height="139"/>'||wwv_flow.LF||
'					<chartTitle/>'||wwv_flow.LF||
'					<chartSubtitle/>'||wwv_flow.LF||
'					<chartLege';
    wwv_flow_api.g_varchar2_table(33) := 'nd/>'||wwv_flow.LF||
'				</chart>'||wwv_flow.LF||
'				<pieDataset>'||wwv_flow.LF||
'					<dataset>'||wwv_flow.LF||
'						<datasetRun subDataset="PieChartDataset" uui';
    wwv_flow_api.g_varchar2_table(34) := 'd="43f2b050-f946-46c1-8ee7-d570f40a4473">'||wwv_flow.LF||
'							<dataSourceExpression><![CDATA[new net.sf.jasperrep';
    wwv_flow_api.g_varchar2_table(35) := 'orts.engine.JREmptyDataSource(5)]]></dataSourceExpression>'||wwv_flow.LF||
'						</datasetRun>'||wwv_flow.LF||
'					</dataset>'||wwv_flow.LF||
'					';
    wwv_flow_api.g_varchar2_table(36) := '<keyExpression><![CDATA[/* Replace with your key expression here */'||wwv_flow.LF||
'$V{REPORT_COUNT}]]></keyExpressi';
    wwv_flow_api.g_varchar2_table(37) := 'on>'||wwv_flow.LF||
'					<valueExpression><![CDATA[new Double(200*Math.random()*5)]]></valueExpression>'||wwv_flow.LF||
'				</pieDat';
    wwv_flow_api.g_varchar2_table(38) := 'aset>'||wwv_flow.LF||
'				<pie3DPlot>'||wwv_flow.LF||
'					<plot backgroundAlpha="0.5" foregroundAlpha="0.8">'||wwv_flow.LF||
'						<seriesColor ser';
    wwv_flow_api.g_varchar2_table(39) := 'iesOrder="0" color="#3399FF"/>'||wwv_flow.LF||
'						<seriesColor seriesOrder="1" color="#00CCFF"/>'||wwv_flow.LF||
'						<seriesCol';
    wwv_flow_api.g_varchar2_table(40) := 'or seriesOrder="2" color="#0066CC"/>'||wwv_flow.LF||
'						<seriesColor seriesOrder="3" color="#6699FF"/>'||wwv_flow.LF||
'						<ser';
    wwv_flow_api.g_varchar2_table(41) := 'iesColor seriesOrder="4" color="#004A94"/>'||wwv_flow.LF||
'						<seriesColor seriesOrder="5" color="#00356A"/>'||wwv_flow.LF||
'				';
    wwv_flow_api.g_varchar2_table(42) := '	</plot>'||wwv_flow.LF||
'					<itemLabel color="#000000" backgroundColor="#FFFFFF"/>'||wwv_flow.LF||
'				</pie3DPlot>'||wwv_flow.LF||
'			</pie3DChar';
    wwv_flow_api.g_varchar2_table(43) := 't>'||wwv_flow.LF||
'			<image>'||wwv_flow.LF||
'				<reportElement uuid="77aecc72-66aa-4c61-a2ba-2f43825bfc68" x="-20" y="65" width="2';
    wwv_flow_api.g_varchar2_table(44) := '29" height="250">'||wwv_flow.LF||
'					<printWhenExpression><![CDATA[$V{PAGE_NUMBER} == 1]]></printWhenExpression>'||wwv_flow.LF||
'	';
    wwv_flow_api.g_varchar2_table(45) := '			</reportElement>'||wwv_flow.LF||
'				<imageExpression><![CDATA["flower1.png"]]></imageExpression>'||wwv_flow.LF||
'			</image>'||wwv_flow.LF||
'			';
    wwv_flow_api.g_varchar2_table(46) := '<image>'||wwv_flow.LF||
'				<reportElement uuid="a89f4547-eed3-48f6-8592-682a17c5ae07" x="-20" y="-20" width="229" h';
    wwv_flow_api.g_varchar2_table(47) := 'eight="250">'||wwv_flow.LF||
'					<printWhenExpression><![CDATA[$V{PAGE_NUMBER} > 1]]></printWhenExpression>'||wwv_flow.LF||
'				</r';
    wwv_flow_api.g_varchar2_table(48) := 'eportElement>'||wwv_flow.LF||
'				<imageExpression><![CDATA["flower1.png"]]></imageExpression>'||wwv_flow.LF||
'			</image>'||wwv_flow.LF||
'			<stati';
    wwv_flow_api.g_varchar2_table(49) := 'cText>'||wwv_flow.LF||
'				<reportElement uuid="5184d7e7-adf1-4a47-b9e5-5234f60cbf19" mode="Opaque" x="318" y="315" ';
    wwv_flow_api.g_varchar2_table(50) := 'width="239" height="181" backcolor="#FFFFCC">'||wwv_flow.LF||
'					<printWhenExpression><![CDATA[Boolean.FALSE]]></p';
    wwv_flow_api.g_varchar2_table(51) := 'rintWhenExpression>'||wwv_flow.LF||
'				</reportElement>'||wwv_flow.LF||
'				<box topPadding="4" leftPadding="4" bottomPadding="4" r';
    wwv_flow_api.g_varchar2_table(52) := 'ightPadding="4">'||wwv_flow.LF||
'					<pen lineWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'					<topPen lineWidth="1.0" lineCo';
    wwv_flow_api.g_varchar2_table(53) := 'lor="#CC9900"/>'||wwv_flow.LF||
'					<leftPen lineWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'					<bottomPen lineWidth="1.0" ';
    wwv_flow_api.g_varchar2_table(54) := 'lineColor="#CC9900"/>'||wwv_flow.LF||
'					<rightPen lineWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'				</box>'||wwv_flow.LF||
'				<textEleme';
    wwv_flow_api.g_varchar2_table(55) := 'nt>'||wwv_flow.LF||
'					<font size="12"/>'||wwv_flow.LF||
'				</textElement>'||wwv_flow.LF||
'				<text><![CDATA[Each chart is populated on each pag';
    wwv_flow_api.g_varchar2_table(56) := 'e.'||wwv_flow.LF||
'The 3 pie charts are currently using an empty datasource and the values are'||wwv_flow.LF||
'generated using a ran';
    wwv_flow_api.g_varchar2_table(57) := 'dom generator.'||wwv_flow.LF||
''||wwv_flow.LF||
'This rectangle element is not printed (see the print when expression of this'||wwv_flow.LF||
'element';
    wwv_flow_api.g_varchar2_table(58) := ')]]></text>'||wwv_flow.LF||
'			</staticText>'||wwv_flow.LF||
'			<line>'||wwv_flow.LF||
'				<reportElement uuid="4f2bfc5f-60bb-4bbe-861e-32dc60204aac';
    wwv_flow_api.g_varchar2_table(59) := '" x="201" y="431" width="117" height="1">'||wwv_flow.LF||
'					<printWhenExpression><![CDATA[Boolean.FALSE]]></print';
    wwv_flow_api.g_varchar2_table(60) := 'WhenExpression>'||wwv_flow.LF||
'				</reportElement>'||wwv_flow.LF||
'				<graphicElement>'||wwv_flow.LF||
'					<pen lineWidth="3.0" lineStyle="Dotte';
    wwv_flow_api.g_varchar2_table(61) := 'd" lineColor="#996600"/>'||wwv_flow.LF||
'				</graphicElement>'||wwv_flow.LF||
'			</line>'||wwv_flow.LF||
'			<staticText>'||wwv_flow.LF||
'				<reportElement uuid="9';
    wwv_flow_api.g_varchar2_table(62) := 'd91f919-2e47-4b72-a842-6e5110169247" mode="Opaque" x="275" y="-10" width="240" height="181" backcolo';
    wwv_flow_api.g_varchar2_table(63) := 'r="#FFFFCC">'||wwv_flow.LF||
'					<printWhenExpression><![CDATA[Boolean.FALSE]]></printWhenExpression>'||wwv_flow.LF||
'				</reportE';
    wwv_flow_api.g_varchar2_table(64) := 'lement>'||wwv_flow.LF||
'				<box topPadding="4" leftPadding="4" bottomPadding="4" rightPadding="4">'||wwv_flow.LF||
'					<pen lineWi';
    wwv_flow_api.g_varchar2_table(65) := 'dth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'					<topPen lineWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'					<leftPen lin';
    wwv_flow_api.g_varchar2_table(66) := 'eWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'					<bottomPen lineWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'					<right';
    wwv_flow_api.g_varchar2_table(67) := 'Pen lineWidth="1.0" lineColor="#CC9900"/>'||wwv_flow.LF||
'				</box>'||wwv_flow.LF||
'				<textElement markup="none">'||wwv_flow.LF||
'					<font size';
    wwv_flow_api.g_varchar2_table(68) := '="12"/>'||wwv_flow.LF||
'				</textElement>'||wwv_flow.LF||
'				<text><![CDATA[Flowers'||wwv_flow.LF||
''||wwv_flow.LF||
'There are two flowers, the first one is print';
    wwv_flow_api.g_varchar2_table(69) := 'ed only starting from the second page, the other one only in the first page.]]></text>'||wwv_flow.LF||
'			</staticTe';
    wwv_flow_api.g_varchar2_table(70) := 'xt>'||wwv_flow.LF||
'			<line>'||wwv_flow.LF||
'				<reportElement uuid="36224b21-2778-49d8-ae18-48a7b928447f" x="72" y="37" width="20';
    wwv_flow_api.g_varchar2_table(71) := '4" height="1">'||wwv_flow.LF||
'					<printWhenExpression><![CDATA[Boolean.FALSE]]></printWhenExpression>'||wwv_flow.LF||
'				</repor';
    wwv_flow_api.g_varchar2_table(72) := 'tElement>'||wwv_flow.LF||
'				<graphicElement>'||wwv_flow.LF||
'					<pen lineWidth="3.0" lineStyle="Dotted" lineColor="#996600"/>'||wwv_flow.LF||
'		';
    wwv_flow_api.g_varchar2_table(73) := '		</graphicElement>'||wwv_flow.LF||
'			</line>'||wwv_flow.LF||
'		</band>'||wwv_flow.LF||
'	</background>'||wwv_flow.LF||
'	<title>'||wwv_flow.LF||
'		<band height="94" splitType="Stre';
    wwv_flow_api.g_varchar2_table(74) := 'tch">'||wwv_flow.LF||
'			<staticText>'||wwv_flow.LF||
'				<reportElement uuid="5fa941ff-860c-4916-87db-f310e0ab99b1" style="SubTitle';
    wwv_flow_api.g_varchar2_table(75) := '" x="336" y="65" width="449" height="29"/>'||wwv_flow.LF||
'				<textElement textAlignment="Right">'||wwv_flow.LF||
'					<font size="';
    wwv_flow_api.g_varchar2_table(76) := '22" isBold="false"/>'||wwv_flow.LF||
'				</textElement>'||wwv_flow.LF||
'				<text><![CDATA[Flower SubTitle]]></text>'||wwv_flow.LF||
'			</staticText';
    wwv_flow_api.g_varchar2_table(77) := '>'||wwv_flow.LF||
'			<frame>'||wwv_flow.LF||
'				<reportElement uuid="a93df522-2428-407b-9977-1b10be4e8380" mode="Opaque" x="-20" y=';
    wwv_flow_api.g_varchar2_table(78) := '"0" width="822" height="65" forecolor="#006699" backcolor="#006699"/>'||wwv_flow.LF||
'				<staticText>'||wwv_flow.LF||
'					<reportE';
    wwv_flow_api.g_varchar2_table(79) := 'lement uuid="e40558ba-e85e-4f46-9725-4a8955e801a8" style="Title" x="231" y="0" width="578" height="6';
    wwv_flow_api.g_varchar2_table(80) := '5"/>'||wwv_flow.LF||
'					<textElement textAlignment="Right">'||wwv_flow.LF||
'						<font size="54" isBold="false"/>'||wwv_flow.LF||
'					</textElem';
    wwv_flow_api.g_varchar2_table(81) := 'ent>'||wwv_flow.LF||
'					<text><![CDATA[Flower Title]]></text>'||wwv_flow.LF||
'				</staticText>'||wwv_flow.LF||
'			</frame>'||wwv_flow.LF||
'		</band>'||wwv_flow.LF||
'	</title>'||wwv_flow.LF||
'	<';
    wwv_flow_api.g_varchar2_table(82) := 'pageHeader>'||wwv_flow.LF||
'		<band splitType="Stretch"/>'||wwv_flow.LF||
'	</pageHeader>'||wwv_flow.LF||
'	<columnHeader>'||wwv_flow.LF||
'		<band height="14" splitTy';
    wwv_flow_api.g_varchar2_table(83) := 'pe="Stretch">'||wwv_flow.LF||
'			<frame>'||wwv_flow.LF||
'				<reportElement uuid="0590eb63-38d8-447b-939c-7844d7ec227e" x="227" y="0';
    wwv_flow_api.g_varchar2_table(84) := '" width="575" height="14"/>'||wwv_flow.LF||
'				<staticText>'||wwv_flow.LF||
'					<reportElement uuid="e11bfb6a-e1b0-418c-9f39-7a5bf';
    wwv_flow_api.g_varchar2_table(85) := '4494018" style="Column header" positionType="Float" x="0" y="0" width="132" height="14" forecolor="#';
    wwv_flow_api.g_varchar2_table(86) := '000000"/>'||wwv_flow.LF||
'					<textElement>'||wwv_flow.LF||
'						<font fontName="Arial" size="12" isBold="true" pdfFontName="Helve';
    wwv_flow_api.g_varchar2_table(87) := 'tica"/>'||wwv_flow.LF||
'					</textElement>'||wwv_flow.LF||
'					<text><![CDATA[Label]]></text>'||wwv_flow.LF||
'				</staticText>'||wwv_flow.LF||
'			</frame>'||wwv_flow.LF||
'		</ba';
    wwv_flow_api.g_varchar2_table(88) := 'nd>'||wwv_flow.LF||
'	</columnHeader>'||wwv_flow.LF||
'	<detail>'||wwv_flow.LF||
'		<band height="15" splitType="Stretch">'||wwv_flow.LF||
'			<line>'||wwv_flow.LF||
'				<reportElement';
    wwv_flow_api.g_varchar2_table(89) := ' uuid="b238b213-7997-4619-bc3b-81a043d7d73b" positionType="FixRelativeToBottom" x="227" y="14" width';
    wwv_flow_api.g_varchar2_table(90) := '="575" height="1"/>'||wwv_flow.LF||
'			</line>'||wwv_flow.LF||
'			<frame>'||wwv_flow.LF||
'				<reportElement uuid="065f3689-7f66-4453-bf6c-700c624f9';
    wwv_flow_api.g_varchar2_table(91) := '2bd" x="227" y="0" width="575" height="14"/>'||wwv_flow.LF||
'				<textField isStretchWithOverflow="true" isBlankWhen';
    wwv_flow_api.g_varchar2_table(92) := 'Null="true">'||wwv_flow.LF||
'					<reportElement uuid="0f952808-ea06-44b2-9711-bcca1669f4db" style="Detail" position';
    wwv_flow_api.g_varchar2_table(93) := 'Type="Float" x="0" y="0" width="172" height="14"/>'||wwv_flow.LF||
'					<textElement>'||wwv_flow.LF||
'						<font fontName="Arial" s';
    wwv_flow_api.g_varchar2_table(94) := 'ize="12" isBold="false" pdfFontName="Helvetica"/>'||wwv_flow.LF||
'					</textElement>'||wwv_flow.LF||
'					<textFieldExpression><![C';
    wwv_flow_api.g_varchar2_table(95) := 'DATA["Field"]]></textFieldExpression>'||wwv_flow.LF||
'				</textField>'||wwv_flow.LF||
'			</frame>'||wwv_flow.LF||
'		</band>'||wwv_flow.LF||
'	</detail>'||wwv_flow.LF||
'	<columnFoot';
    wwv_flow_api.g_varchar2_table(96) := 'er>'||wwv_flow.LF||
'		<band height="7" splitType="Stretch">'||wwv_flow.LF||
'			<line>'||wwv_flow.LF||
'				<reportElement uuid="46e93d7e-ae4c-43c7-99';
    wwv_flow_api.g_varchar2_table(97) := '07-939d36a8288e" positionType="FixRelativeToBottom" x="0" y="3" width="555" height="1"/>'||wwv_flow.LF||
'				<graphi';
    wwv_flow_api.g_varchar2_table(98) := 'cElement>'||wwv_flow.LF||
'					<pen lineWidth="0.5" lineColor="#999999"/>'||wwv_flow.LF||
'				</graphicElement>'||wwv_flow.LF||
'			</line>'||wwv_flow.LF||
'		</band>';
    wwv_flow_api.g_varchar2_table(99) := ''||wwv_flow.LF||
'	</columnFooter>'||wwv_flow.LF||
'	<pageFooter>'||wwv_flow.LF||
'		<band height="16" splitType="Stretch">'||wwv_flow.LF||
'			<frame>'||wwv_flow.LF||
'				<reportEleme';
    wwv_flow_api.g_varchar2_table(100) := 'nt uuid="5b0c2435-22ec-4ba7-8e69-9f7a97d509a0" mode="Opaque" x="2" y="0" width="800" height="16" for';
    wwv_flow_api.g_varchar2_table(101) := 'ecolor="#D0B48E" backcolor="#006699"/>'||wwv_flow.LF||
'				<textField evaluationTime="Report">'||wwv_flow.LF||
'					<reportElement u';
    wwv_flow_api.g_varchar2_table(102) := 'uid="2b86ec92-3a60-46e9-88e4-a9d7f2b0a8cf" style="Column header" x="753" y="0" width="40" height="16';
    wwv_flow_api.g_varchar2_table(103) := '" forecolor="#FFFFFF"/>'||wwv_flow.LF||
'					<textElement verticalAlignment="Middle">'||wwv_flow.LF||
'						<font fontName="Arial" s';
    wwv_flow_api.g_varchar2_table(104) := 'ize="12" isBold="false" pdfFontName="Helvetica"/>'||wwv_flow.LF||
'					</textElement>'||wwv_flow.LF||
'					<textFieldExpression><![C';
    wwv_flow_api.g_varchar2_table(105) := 'DATA[" " + $V{PAGE_NUMBER}]]></textFieldExpression>'||wwv_flow.LF||
'				</textField>'||wwv_flow.LF||
'				<textField>'||wwv_flow.LF||
'					<reportEle';
    wwv_flow_api.g_varchar2_table(106) := 'ment uuid="036f4461-2f4c-4f6a-aa85-129604c8b04f" style="Column header" x="673" y="0" width="80" heig';
    wwv_flow_api.g_varchar2_table(107) := 'ht="16" forecolor="#FFFFFF"/>'||wwv_flow.LF||
'					<textElement textAlignment="Right" verticalAlignment="Middle">'||wwv_flow.LF||
'		';
    wwv_flow_api.g_varchar2_table(108) := '				<font fontName="Arial" size="12" isBold="false" pdfFontName="Helvetica"/>'||wwv_flow.LF||
'					</textElement>'||wwv_flow.LF||
'		';
    wwv_flow_api.g_varchar2_table(109) := '			<textFieldExpression><![CDATA["Page "+$V{PAGE_NUMBER}+" of"]]></textFieldExpression>'||wwv_flow.LF||
'				</textFi';
    wwv_flow_api.g_varchar2_table(110) := 'eld>'||wwv_flow.LF||
'				<textField pattern="EEEEE dd MMMMM yyyy">'||wwv_flow.LF||
'					<reportElement uuid="56866840-46e7-4f43-8dd3';
    wwv_flow_api.g_varchar2_table(111) := '-fa86e57e34e9" style="Column header" x="2" y="0" width="197" height="16" forecolor="#FFFFFF"/>'||wwv_flow.LF||
'					';
    wwv_flow_api.g_varchar2_table(112) := '<textElement verticalAlignment="Middle">'||wwv_flow.LF||
'						<font fontName="Arial" size="12" isBold="false" pdfFo';
    wwv_flow_api.g_varchar2_table(113) := 'ntName="Helvetica"/>'||wwv_flow.LF||
'					</textElement>'||wwv_flow.LF||
'					<textFieldExpression><![CDATA[new java.util.Date()]]><';
    wwv_flow_api.g_varchar2_table(114) := '/textFieldExpression>'||wwv_flow.LF||
'				</textField>'||wwv_flow.LF||
'			</frame>'||wwv_flow.LF||
'		</band>'||wwv_flow.LF||
'	</pageFooter>'||wwv_flow.LF||
'	<summary>'||wwv_flow.LF||
'		<band split';
    wwv_flow_api.g_varchar2_table(115) := 'Type="Stretch"/>'||wwv_flow.LF||
'	</summary>'||wwv_flow.LF||
'</jasperReport>'||wwv_flow.LF||
'';
wwv_flow_api.create_report_layout(
 p_id=>wwv_flow_api.id(105279605591311545)
,p_report_layout_name=>'Rplanilla'
,p_report_layout_type=>'RTF_FILE'
,p_varchar2_table=>wwv_flow_api.g_varchar2_table
);
end;
/
prompt --application/shared_components/security/authentications/asignacion
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(205234939509042110)
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
 p_id=>wwv_flow_api.id(205235032843042110)
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
 p_id=>wwv_flow_api.id(205235150176042110)
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
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(205234740636042079)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>24
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
,p_user_interface_id=>wwv_flow_api.id(205234740636042079)
,p_tab_set=>'TS1'
,p_name=>'Planilla'
,p_alias=>'HOME'
,p_step_title=>'Planilla'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Planilla'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_footer_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script type="text/JavaScript">',
'$s(''P1_URL'', window.location.href);',
'</script>'))
,p_autocomplete_on_off=>'ON'
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'',
'function setValue(pItemName, pValue){',
'  $x(pItemName).value = pValue;',
'  xlibJasperDemo_makeDemoUrl();',
'',
'  return false;',
'}',
'',
'function xlibJasperDemo_generateUrl(pBaseUrl, pRepName, pRepFormat, pDataSource, pOutFilename, pRepLocale, pRepEncoding, pAdditionalParams){',
'  var url;',
'',
'  url = pBaseUrl;',
'  url = url + "?_repName=" + pRepName;',
'  url = url + "&_repFormat=" + pRepFormat;',
'  url = url + "&_dataSource=" + pDataSource;',
'  url = url + "&_outFilename=" + pOutFilename;',
'  url = url + "&_repLocale=" + pRepLocale;',
'  url = url + "&_repEncoding=" + pRepEncoding;',
'  url = url + "&NOMINA=" + pAdditionalParams; ',
'',
'  return url;',
'}',
'',
'function xlibJasperDemo_makeDemoUrl(){ ',
'$x(''P2_REPORT_URL'').value=xlibJasperDemo_generateUrl($x(''P1_URLR'').value, $x(''P2_REP_NAME'').value, $x(''P2_REP_FORMAT'').value, $x(''P2_DATA_SOURCE'').value, $x(''P2_OUT_FILE'').value, $x(''P2_REP_LOCALE'').value, $x(''P2_REP_ENCODING'').value,',
'',
'$x(''NOMINA'').value)',
';',
'}',
'',
'function xlibShowUrl(pUrl){',
'  window.open(pUrl);',
'  ',
'  return false; ',
'}',
'',
'function xlibShowUrlTunnel(pUrl){',
'  var newUrl;',
'',
'  alert(pUrl);',
'   // !!! use encodeURIComponent, not escape !!!',
'  newUrl = encodeURIComponent(pUrl.replace(/:/gi,''|''));',
'  alert(newUrl);',
'  newUrl = ''f?p=&APP_ID.:0:&APP_SESSION.:APPLICATION_PROCESS=prc_show_url:::F_TMP_1:'' + newUrl;',
'',
'  alert(newUrl);',
'  window.open(newUrl);',
'  ',
'  return false; ',
'}',
'',
'',
'</script>',
''))
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210507160651'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(207405131681775105)
,p_plug_name=>'Planilla'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(205228047626041966)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select c.descripcion departamento,e.descripcion puesto,ubicacion,  a.EMPLEADO,nombre_pila||'' ''||primer_apellido||'' ''||segundo_apellido nombre, a.numero_nomina, a.TOT, a.descrip from (select numero_nomina,empleado,tot,descrip from (',
'select numero_nomina,empleado,sum(total)as tot, ''DESCUENTOS'' as descrip from empleado_conc_nomi@softland  a inner join concepto@softland b on a.concepto=b.concepto',
'where a.concepto in (''QS-165'',''QS-164'',''QS-163'',''QS-162'',''QS-161'',''QS-160'',''QS-159'',''QS-158'',''QS-157'',''QS-156'',''QS-155'',''QS-154'',''QS-153'',''QS-152'',''QS-151'') and numero_nomina=:NOMINA',
'group by empleado,numero_nomina',
'union all',
'select numero_nomina,empleado,sum(total)as tot, ''IGSS'' as descrip from empleado_conc_nomi@softland',
'where concepto in (''QD-001'') and numero_nomina=:NOMINA   group by empleado,numero_nomina',
'union all',
'select numero_nomina,empleado, sum(total) as tot,''DIAS'' as descrip from empleado_conc_nomi@softland',
'where concepto in (''QS-005'') and numero_nomina=:NOMINA  group by empleado,numero_nomina',
'union all',
'select numero_nomina,empleado, neto as tot , ''neto'' as descrip from empleado_nomi_neto@softland  where numero_nomina=:NOMINA',
'union all ',
'select numero_nomina,empleado,sum(total)as tot, ''ORDINARIO'' as descrip from empleado_conc_nomi@softland  ',
'where concepto in (''QB-001'') and numero_nomina=:NOMINA   group by empleado,numero_nomina',
'union all ',
'select numero_nomina,empleado,sum(total)as tot, ''BONO-DECRETO'' as descrip from empleado_conc_nomi@softland  ',
'where concepto in (''QB-002'') and numero_nomina=:NOMINA   group by empleado,numero_nomina',
'union all',
'select numero_nomina,empleado, total_beneficios as tot, ''BENEFICIOS''  as descrip from empleado_nomi_neto@softland ) a',
'where numero_nomina=:NOMINA  order by 2) a inner join empleado@softland b on a.EMPLEADO=b.EMPLEADO inner join departamento@softland c on b.departamento=c.departamento inner join puesto@softland e on b.puesto=e.puesto)',
'pivot ( sum(tot) for descrip in (''DIAS'' DIAS_LABORADOS,''BENEFICIOS'' BENEFICIOS,''DESCUENTOS'' DESCUENTOS, ''IGSS'' IGSS, ''ORDINARIO'' ORDINARIO,''BONO-DECRETO'' BONO_DECRETO,''neto'' NETO))',
'order by ubicacion,departamento,puesto',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'NOMINA'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(207405248664775105)
,p_name=>'Planilla'
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
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'1462'
,p_internal_uid=>103688818448116671
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207405432829775305)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Departamento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTAMENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207405556521775305)
,p_db_column_name=>'PUESTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Puesto'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUESTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207405647423775305)
,p_db_column_name=>'UBICACION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207405760709775305)
,p_db_column_name=>'NOMBRE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207405848497775305)
,p_db_column_name=>'NUMERO_NOMINA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Numero Nomina'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NUMERO_NOMINA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207405960518775305)
,p_db_column_name=>'EMPLEADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Empleado'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLEADO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207406040107775307)
,p_db_column_name=>'IGSS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Igss'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IGSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207406151288775307)
,p_db_column_name=>'DIAS_LABORADOS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dias Laborados'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DIAS_LABORADOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207406233984775307)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Descuentos'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DESCUENTOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207406343423775307)
,p_db_column_name=>'BENEFICIOS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Beneficios'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFICIOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207406440803775307)
,p_db_column_name=>'NETO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Neto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NETO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108637316976068625)
,p_db_column_name=>'ORDINARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ordinario'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDINARIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108637406246068626)
,p_db_column_name=>'BONO_DECRETO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Bono Decreto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BONO_DECRETO'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(207406554002775718)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1036902'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'DEPARTAMENTO:PUESTO:UBICACION:EMPLEADO:NOMBRE:NUMERO_NOMINA:DIAS_LABORADOS:BENEFICIOS:IGSS:DESCUENTOS:ORDINARIO:BONO_DECRETO:NETO:'
,p_break_on=>'UBICACION:DEPARTAMENTO:0:0:0:0'
,p_break_enabled_on=>'UBICACION:DEPARTAMENTO:0:0:0:0'
,p_sum_columns_on_break=>'NETO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(108638209183078998)
,p_report_id=>wwv_flow_api.id(207406554002775718)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'UBICACION'
,p_operator=>'='
,p_expr=>'LPN'
,p_condition_sql=>' (case when ("UBICACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''LPN''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99CCFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(108638327315078998)
,p_report_id=>wwv_flow_api.id(207406554002775718)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'UBICACION'
,p_operator=>'='
,p_expr=>'LPS'
,p_condition_sql=>' (case when ("UBICACION" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''LPS''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99FF99'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(207407150324784104)
,p_plug_name=>'datos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(205228938687041968)
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
 p_id=>wwv_flow_api.id(207421436322969240)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(207407150324784104)
,p_button_name=>'P1_ACTUALIZAR'
,p_button_static_id=>'P1_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16960747438096481)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(103721527408704981)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(207407150324784104)
,p_button_name=>'IMPRIMIR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(205233438261042013)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Imprimir'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103721901250724879)
,p_name=>'P2_REP_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(207405131681775105)
,p_item_default=>'planilla1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103722318059732210)
,p_name=>'P2_REP_FORMAT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(207405131681775105)
,p_item_default=>'pdf'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103722904688738467)
,p_name=>'P2_DATA_SOURCE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(207405131681775105)
,p_item_default=>'default'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103723101022740165)
,p_name=>'P2_OUT_FILE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(207405131681775105)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103724132052756120)
,p_name=>'P2_REP_LOCALE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(207405131681775105)
,p_item_default=>'en_US'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103724704664768790)
,p_name=>'P2_REP_ENCODING'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(207405131681775105)
,p_item_default=>'UTF-8'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103724927080773657)
,p_name=>'P2_REPORT_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(207407150324784104)
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103725105945783456)
,p_name=>'P1_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(207407150324784104)
,p_prompt=>'Url'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103729704817844703)
,p_name=>'P1_URLR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(207407150324784104)
,p_prompt=>'Urlr'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(207408240131801866)
,p_name=>'NOMINA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(207407150324784104)
,p_prompt=>'Nomina'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select numero_nomina ||''-''|| fecha_pago as "nomina-fecha", numero_nomina  from  nomina_historico@softland where fecha_aprobacion is not null'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(103732714968928396)
,p_name=>'IMPRIMIRF'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(103721527408704981)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103805705776114609)
,p_event_id=>wwv_flow_api.id(103732714968928396)
,p_event_result=>'TRUE'
,p_action_sequence=>5
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'select substr(:P1_URL,1,INSTR(:P1_URL,''/'',1,3))||',
'''JasperReportsIntegration/report''',
'INTO :P1_URLR',
'from dual;',
'END;',
''))
,p_attribute_02=>'P1_URL'
,p_attribute_03=>'P1_URL,P1_URLR'
,p_attribute_04=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103971108196501828)
,p_event_id=>wwv_flow_api.id(103732714968928396)
,p_event_result=>'TRUE'
,p_action_sequence=>6
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P2_REPORT_URL'
,p_attribute_01=>'xlibJasperDemo_makeDemoUrl();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103733017115928396)
,p_event_id=>wwv_flow_api.id(103732714968928396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'xlibJasperDemo_makeDemoUrl();'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(103734231042938964)
,p_event_id=>wwv_flow_api.id(103732714968928396)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'xlibShowUrl($x(''P2_REPORT_URL'').value);'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(205234740636042079)
,p_tab_set=>'TS1'
,p_name=>'Analisis planilla'
,p_step_title=>'Analisis planilla'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Analisis planilla'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210427091328'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108067117358872151)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(205228047626041966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select * from  (',
'select c.descripcion puesto,ubicacion, sum(neto)neto,to_char(f.fecha_pago, ''MM'') mes',
' from empleado_nomi_neto@softland a',
'  inner join empleado@softland b on a.EMPLEADO=b.EMPLEADO',
'   inner join departamento@softland c on b.departamento=c.departamento ',
'   inner join puesto@softland e on b.puesto=e.puesto ',
'inner join nomina_historico@softland f on a.numero_nomina=f.numero_nomina    ',
' where fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P2_ANIO group by c.descripcion, ubicacion, fecha_pago )',
'pivot ( sum(neto)',
'for mes in (''01''Enero,''02''Febrero,''03''Marzo,''04''Abril,''05''Mayo,''06''Junio,''07''Julio,''08''Agosto,''09''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
') order by ubicacion desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_ANIO'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(108067213374872151)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'0'
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
,p_internal_uid=>108067213374872151
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108067403886872164)
,p_db_column_name=>'PUESTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Puesto'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUESTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108067510440872167)
,p_db_column_name=>'UBICACION'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108067630264872167)
,p_db_column_name=>'ENERO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Enero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ENERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108067714076872167)
,p_db_column_name=>'FEBRERO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Febrero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FEBRERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108067819643872167)
,p_db_column_name=>'MARZO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Marzo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MARZO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108067903968872167)
,p_db_column_name=>'ABRIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Abril'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ABRIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068015246872167)
,p_db_column_name=>'MAYO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mayo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAYO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068110921872167)
,p_db_column_name=>'JUNIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Junio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JUNIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068208963872168)
,p_db_column_name=>'JULIO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Julio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JULIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068305913872168)
,p_db_column_name=>'AGOSTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Agosto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AGOSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068400836872168)
,p_db_column_name=>'SEPTIEMBRE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Septiembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEPTIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068529462872168)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Octubre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OCTUBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068621390872168)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Noviembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOVIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108068708521872168)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Diciembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DICIEMBRE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(108069909473881715)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1080700'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PUESTO:UBICACION:ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE:APXWS_CC_001'
,p_break_on=>'UBICACION:0:0:0:0:0'
,p_break_enabled_on=>'UBICACION:0:0:0:0:0'
,p_sum_columns_on_break=>'ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(108071809520910120)
,p_report_id=>wwv_flow_api.id(108069909473881715)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'C  + D + E + F + G + H + I + J + K + L + + N'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'TOTAL'
,p_report_label=>'TOTAL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108069320762878401)
,p_name=>'P2_ANIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108067117358872151)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:2020,2021,2022,2023'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(108069508780881482)
,p_name=>'actualizar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(108069815983881485)
,p_event_id=>wwv_flow_api.id(108069508780881482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(205234740636042079)
,p_tab_set=>'TS1'
,p_name=>'Planilla mensual'
,p_step_title=>'Planilla mensual'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Planilla mensual'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20201030092836'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108951125606360051)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(205228047626041966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
unistr('select a\00C3\00B1o,mes,c.descripcion departamento,e.descripcion puesto,ubicacion,  a.EMPLEADO,nombre_pila||'' ''||primer_apellido||'' ''||segundo_apellido nombre, a.TOT, a.descrip,a.centro_costo,a.descripcion from ('),
unistr('select a\00C3\00B1o,mes,numero_nomina,empleado,tot,descrip,a.centro_costo,a.descripcion from ('),
unistr('select to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''DESCUENTOS'' as descrip, a.centro_costo, g.descripcion from empleado_conc_nomi@softland  a inner join concepto@softland b on a.conce')
||'pto=b.concepto',
'inner join nomina_historico@softland f on a.numero_nomina=f.numero_nomina  ',
'inner join centro_costo@softland g on a.centro_costo=g.centro_costo',
'where a.concepto in (''QS-165'',''QS-164'',''QS-163'',''QS-162'',''QS-161'',''QS-160'',''QS-159'',''QS-158'',''QS-157'',''QS-156'',''QS-155'',''QS-154'',''QS-153'',''QS-152'',''QS-151'') ',
'and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.descripcion',
'union all',
unistr('select  to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''IGSS'' as descrip,a.centro_costo,g.descripcion from empleado_conc_nomi@softland a'),
'inner join nomina_historico@softland f on a.numero_nomina=f.numero_nomina ',
'inner join centro_costo@softland g on a.centro_costo=g.centro_costo',
'where concepto in (''QD-001'')   ',
'and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''), a.CENTRO_COSTO,g.DESCRIPCION',
'union all',
unistr('select to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado, sum(total) as tot,''DIAS'' as descrip,a.centro_costo,g.descripcion  from empleado_conc_nomi@softland a'),
'inner join nomina_historico@softland f on a.numero_nomina=f.numero_nomina  ',
'inner join centro_costo@softland g on a.centro_costo=g.centro_costo',
'where concepto in (''QS-005'') and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.descripcion',
'union all',
unistr('select  to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,a.empleado, sum(neto) as tot , ''neto'' as descrip ,g.CENTRO_COSTO,h.descripcion from empleado_nomi_neto@softland a inner join nomina_historico@softland f on a.')
||'numero_nomina=f.numero_nomina ',
'inner join empleado@softland g on a.empleado=g.empleado ',
'inner join centro_costo@softland h on g.centro_costo=h.centro_costo',
' where  fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by a.empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),g.centro_costo,h.descripcion',
'union all ',
unistr('select to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''ORDINARIO'' as descrip ,a.centro_costo,g.descripcion from empleado_conc_nomi@softland  a inner join nomina_historico@softland f on a')
||'.numero_nomina=f.numero_nomina',
'inner join centro_costo@softland g on a.centro_costo=g.centro_costo ',
'where concepto in (''QB-001'') and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.DESCRIPCION',
'union all ',
unistr('select to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''BONO-DECRETO'' as descrip ,a.centro_costo,g.descripcion from empleado_conc_nomi@softland  a inner join nomina_historico@softland f o')
||'n a.numero_nomina=f.numero_nomina ',
'inner join centro_costo@softland g on a.centro_costo=g.centro_costo',
'where concepto in (''QB-002'') and  fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.descripcion',
'union all',
unistr('select to_char (f.fecha_pago, ''YYYY'')a\00C3\00B1o ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,a.empleado, sum(total_beneficios) as tot, ''BENEFICIOS''  as descrip,g.centro_costo, h.descripcion from empleado_nomi_neto@softland a inner join nomina_historico')
||'@softland f on a.numero_nomina=f.numero_nomina ',
'inner join empleado@softland g on a.empleado=g.empleado ',
'inner join centro_costo@softland h on g.centro_costo=h.centro_costo',
'where fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P3_ANIO and to_char (f.fecha_pago, ''MM'')=:P3_MES',
'group by a.empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),g.CENTRO_COSTO,h.descripcion',
' ) a ',
unistr('where a\00C3\00B1o=:P3_ANIO and mes=:P3_MES order by 2) a inner join empleado@softland b on a.EMPLEADO=b.EMPLEADO inner join departamento@softland c on b.departamento=c.departamento inner join puesto@softland e on b.puesto=e.puesto)'),
'pivot ( sum(tot) for descrip in (''DIAS'' DIAS_LABORADOS,''BENEFICIOS'' BENEFICIOS,''DESCUENTOS'' DESCUENTOS, ''IGSS'' IGSS, ''ORDINARIO'' ORDINARIO,''BONO-DECRETO'' BONO_DECRETO,''neto'' NETO))',
'order by ubicacion,departamento,puesto'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P3_MES,P3_ANIO'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(108951205862360051)
,p_name=>'Report 1'
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
,p_owner=>'LP'
,p_internal_uid=>108951205862360051
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108951407625360121)
,p_db_column_name=>unistr('A\00C3\0091O')
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('A\00C3\00B1o')
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>unistr('A\00C3\0091O')
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108951519626360126)
,p_db_column_name=>'MES'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mes'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MES'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108951605286360126)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Departamento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTAMENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108951709604360126)
,p_db_column_name=>'PUESTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Puesto'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUESTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108951814137360126)
,p_db_column_name=>'UBICACION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108951928724360126)
,p_db_column_name=>'EMPLEADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Empleado'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLEADO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952006149360126)
,p_db_column_name=>'NOMBRE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952128539360126)
,p_db_column_name=>'DIAS_LABORADOS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dias Laborados'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DIAS_LABORADOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952211383360126)
,p_db_column_name=>'BENEFICIOS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Beneficios'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFICIOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952306706360128)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Descuentos'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DESCUENTOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952410508360128)
,p_db_column_name=>'IGSS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Igss'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IGSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952511055360128)
,p_db_column_name=>'ORDINARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ordinario'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDINARIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952601136360128)
,p_db_column_name=>'BONO_DECRETO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Bono Decreto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BONO_DECRETO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(108952708369360128)
,p_db_column_name=>'NETO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Neto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NETO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(109300420034860878)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Centro Costo'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CENTRO_COSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(109300500356860889)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Descripcion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPCION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(108954213390372048)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1089543'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>unistr('A\00C3\0091O:MES:DEPARTAMENTO:PUESTO:CENTRO_COSTO:DESCRIPCION:UBICACION:EMPLEADO:NOMBRE:DIAS_LABORADOS:BENEFICIOS:DESCUENTOS:IGSS:ORDINARIO:BONO_DECRETO:NETO:')
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108953010869364268)
,p_name=>'P3_MES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108951125606360051)
,p_prompt=>'Mes'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:ENERO;01,FEBRERO;02,MARZO;03,ABRIL;04,MAYO;05,JUNIO;06,JULIO;07,AGOSTO;08,SEPTIEMBRE;09,OCTUBRE;10,NOVIEMBRE;11,DICIEMBRE;12'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108953222780364271)
,p_name=>'P3_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108951125606360051)
,p_prompt=>unistr('A\00C3\00B1o')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:2020,2021,2022,2023'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(108955431744377306)
,p_name=>'actualizar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(108955704911377306)
,p_event_id=>wwv_flow_api.id(108955431744377306)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(108951125606360051)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(205234740636042079)
,p_tab_set=>'TS1'
,p_name=>'planilla_RHNYS'
,p_step_title=>'planilla_RHNYS'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'planilla_RHNYS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220131175019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116026180186569893)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(205228047626041966)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select anio,mes,c.descripcion departamento,e.descripcion puesto,ubicacion,  a.EMPLEADO,nombre_pila||'' ''||primer_apellido||'' ''||segundo_apellido nombre, a.TOT, a.descrip,a.centro_costo,a.descripcion from (',
'select anio,mes,numero_nomina,empleado,tot,descrip,a.centro_costo,a.descripcion from (',
'select to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''DESCUENTOS'' as descrip, a.centro_costo, g.descripcion ',
'from rhnys.empleado_conc_nomi  a inner join rhnys.concepto b on a.concepto=b.concepto',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina  ',
'inner join rhnys.centro_costo g on a.centro_costo=g.centro_costo',
'where a.concepto in (''N-D003'',''N-D004'',''N-D005'',''N-D006'',''N-D007'',''N-D008'',''N-D010'',''N-D011'',''N-D012'',''N-D013'',''N-D014'',''N-D015'',''N-D016'',''N-D017'',''N-D018'',''N-D019'',''N-D020'',''N-D021'') ',
'and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.descripcion',
'union all',
'select  to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''IGSS'' as descrip,a.centro_costo,g.descripcion ',
'from rhnys.empleado_conc_nomi a',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina ',
'inner join rhnys.centro_costo g on a.centro_costo=g.centro_costo',
'where concepto in (''N-D001'')   ',
'and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''), a.CENTRO_COSTO,g.DESCRIPCION',
'union all',
'select to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado, sum(total) as tot,''DIAS'' as descrip,a.centro_costo,g.descripcion  ',
'from       rhnys.empleado_conc_nomi a',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina  ',
'inner join rhnys.centro_costo g on a.centro_costo=g.centro_costo  ',
'where concepto in (''N-S006'') and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.descripcion',
'union all',
'select  to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,a.empleado, sum(neto) as tot , ''neto'' as descrip ,g.CENTRO_COSTO,h.descripcion ',
'from rhnys.empleado_nomi_neto a ',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina ',
'inner join rhnys.empleado g on a.empleado=g.empleado ',
'inner join rhnys.centro_costo h on g.centro_costo=h.centro_costo',
' where  fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by a.empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),g.centro_costo,h.descripcion',
'union all',
'select to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''ORDINARIO'' as descrip ,a.centro_costo,g.descripcion ',
'from rhnys.empleado_conc_nomi a ',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina',
'inner join rhnys.centro_costo g on a.centro_costo=g.centro_costo ',
'where concepto in (''N-S010'') and fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.DESCRIPCION',
'union all',
'select to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,empleado,sum(total)as tot, ''BONO-DECRETO'' as descrip ,a.centro_costo,g.descripcion ',
'from rhnys.empleado_conc_nomi a ',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina ',
'inner join rhnys.centro_costo g on a.centro_costo=g.centro_costo',
'where concepto in (''N-R021'') and  fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),a.centro_costo,g.descripcion',
'union all',
'select to_char (f.fecha_pago, ''YYYY'')anio ,to_char (f.fecha_pago, ''MM'')mes,f.numero_nomina,a.empleado, sum(total_beneficios) as tot, ''BENEFICIOS''  as descrip,g.centro_costo, h.descripcion ',
'from rhnys.empleado_nomi_neto a ',
'inner join rhnys.nomina_historico f on a.numero_nomina=f.numero_nomina ',
'inner join rhnys.empleado g on a.empleado=g.empleado ',
'inner join rhnys.centro_costo h on g.centro_costo=h.centro_costo',
'where fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P4_ANIO and to_char (f.fecha_pago, ''MM'')=:P4_MES',
'group by a.empleado,f.numero_nomina,to_char (f.fecha_pago, ''MM''),to_char (f.fecha_pago, ''YYYY''),g.CENTRO_COSTO,h.descripcion',
' ) a ',
'where anio=:P4_ANIO and mes=:P4_MES order by 2) a inner join rhnys.empleado b on a.EMPLEADO=b.EMPLEADO inner join rhnys.departamento c on b.departamento=c.departamento inner join rhnys.puesto e on b.puesto=e.puesto)',
'pivot ( sum(tot) for descrip in (''DIAS'' DIAS_LABORADOS,''BENEFICIOS'' BENEFICIOS,''DESCUENTOS'' DESCUENTOS, ''IGSS'' IGSS, ''ORDINARIO'' ORDINARIO,''BONO-DECRETO'' BONO_DECRETO,''neto'' NETO))',
'order by ubicacion,departamento,puesto'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P4_MES,P4_ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(116026260442569893)
,p_name=>'Report 1'
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
,p_owner=>'LP'
,p_internal_uid=>116026260442569893
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7076411230209845)
,p_db_column_name=>'MES'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Mes'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MES'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7076894345209845)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Departamento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTAMENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7077252713209845)
,p_db_column_name=>'PUESTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Puesto'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUESTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7077605898209845)
,p_db_column_name=>'UBICACION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7078041973209846)
,p_db_column_name=>'EMPLEADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Empleado'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLEADO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7078489774209846)
,p_db_column_name=>'NOMBRE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7078874788209846)
,p_db_column_name=>'DIAS_LABORADOS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dias Laborados'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DIAS_LABORADOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7079247950209846)
,p_db_column_name=>'BENEFICIOS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Beneficios'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFICIOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7079674499209848)
,p_db_column_name=>'DESCUENTOS'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Descuentos'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DESCUENTOS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7080035189209848)
,p_db_column_name=>'IGSS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Igss'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IGSS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7080449022209848)
,p_db_column_name=>'ORDINARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ordinario'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORDINARIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7080810950209848)
,p_db_column_name=>'BONO_DECRETO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Bono Decreto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BONO_DECRETO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7081202803209848)
,p_db_column_name=>'NETO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Neto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NETO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7081697021209850)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Centro Costo'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CENTRO_COSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7082096459209850)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Descripcion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPCION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5497087272929709)
,p_db_column_name=>'ANIO'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Anio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(116029267970581890)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'70824'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'MES:DEPARTAMENTO:PUESTO:CENTRO_COSTO:DESCRIPCION:UBICACION:EMPLEADO:NOMBRE:DIAS_LABORADOS:BENEFICIOS:DESCUENTOS:IGSS:ORDINARIO:BONO_DECRETO:NETO::ANIO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7082871464209850)
,p_name=>'P4_MES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(116026180186569893)
,p_prompt=>'Mes'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:ENERO;01,FEBRERO;02,MARZO;03,ABRIL;04,MAYO;05,JUNIO;06,JULIO;07,AGOSTO;08,SEPTIEMBRE;09,OCTUBRE;10,NOVIEMBRE;11,DICIEMBRE;12'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7083287440209851)
,p_name=>'P4_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(116026180186569893)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:2020,2021,2022,2023'
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7083619819209851)
,p_name=>'actualizar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7084187835209851)
,p_event_id=>wwv_flow_api.id(7083619819209851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(116026180186569893)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(205234740636042079)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(205224954752041923)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20200826144422'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(205235443018042116)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(205227660988041963)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(205235747323042127)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(205235443018042116)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(205233438261042013)
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
 p_id=>wwv_flow_api.id(205235556737042123)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(205235443018042116)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(205235640294042127)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(205235443018042116)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(205233047212042012)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(205235931493042138)
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
 p_id=>wwv_flow_api.id(205235837683042129)
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
 p_id=>wwv_flow_api.id(205236148499042140)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(205236039998042138)
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
 p_id=>wwv_flow_api.id(207378250446717841)
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
