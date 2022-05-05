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
,p_default_application_id=>392
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 392 - Cargo Notas de Viaje
--
-- Application Export:
--   Application:     392
--   Name:            Cargo Notas de Viaje
--   Date and Time:   12:39 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      2
--     Items:                    6
--     Processes:                6
--     Regions:                  4
--     Buttons:                  3
--     Dynamic Actions:          1
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 2
--       Breadcrumbs:            1
--         Entries:              1
--       NavBar Entries:         2
--     Security:
--       Authentication:         2
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                15
--         Region:              30
--         Label:                5
--         List:                20
--         Popup LOV:            1
--         Calendar:             3
--         Breadcrumb:           2
--         Button:               8
--         Report:              10
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,392)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Cargo Notas de Viaje')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'STRA001')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt_last_reset=>'20200605110309'
,p_bookmark_checksum_function=>'MD5'
,p_max_session_length_sec=>28800
,p_html_escaping_mode=>'B'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'0'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(115994307528319643)
,p_populate_roles=>'A'
,p_logout_url=>'wwv_flow_custom_auth_std.logout?p_this_flow=&APP_ID.&p_next_flow_page_sess=&APP_ID.:101'
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Cargo Notas de Viaje'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_deep_linking=>'Y'
,p_runtime_api_usage=>'T:O:W'
,p_authorize_public_pages_yn=>'Y'
,p_rejoin_existing_sessions=>'P'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200605110309'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(13050017670090378)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(13050136895090378)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(13050288251090381)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(13050482503090381)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(13050572686090381)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(13050628957090381)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122617511551993178)
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
 p_id=>wwv_flow_api.id(115993680848256042)
,p_icon_sequence=>10
,p_icon_subtext=>'Inicio'
,p_icon_target=>'f?p=LPSIG:home:&SESSION.::&DEBUG.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(124370815959752232)
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
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(124372893283768620)
,p_name=>'FSP_AFTER_LOGIN_URL'
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
 p_id=>wwv_flow_api.id(124372220154752249)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_PAGE_1'
,p_tab_text=>'Page 1'
,p_tab_step=>1
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(124515111893086336)
,p_tab_set=>'TS1'
,p_tab_sequence=>20
,p_tab_name=>'T_PAGE2'
,p_tab_text=>'Page 2'
,p_tab_step=>2
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
 p_id=>wwv_flow_api.id(124371912985752245)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(124372421485752251)
,p_parent_id=>0
,p_short_name=>'Page 1'
,p_link=>'f?p=&APP_ID.:1:&SESSION.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124360819877752203)
,p_theme_id=>21
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="login">',
'  <div id="messages">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#</div>',
'  <div id="login-main">#REGION_POSITION_02##BODY##REGION_POSITION_03#</div>',
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
,p_translate_this_template=>'N'
,p_template_comment=>'18'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/no_tabs_left_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124360912932752205)
,p_theme_id=>21
,p_name=>'No Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'NO_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
 p_id=>wwv_flow_api.id(124360990941752205)
,p_theme_id=>21
,p_name=>'No Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'NO_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
 p_id=>wwv_flow_api.id(124361109967752206)
,p_theme_id=>21
,p_name=>'No Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
 p_id=>wwv_flow_api.id(124361203674752206)
,p_theme_id=>21
,p_name=>'No Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'NO_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<div id="tabs">',
'  <div class="frame">',
'    <div class="bg">',
'      <div class="tab-holder">',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<div class="error_container">',
'	<div class="rounded-corner-region-blank-alt">',
'		<div class="rc-gray-top">',
'			<div class="rc-gray-top-r"></div>',
'		</div>',
'		<div class="rc-body">',
'			<div class="rc-body-r">',
'				<div class="rc-content-main">',
'					<div class="sErrorText">',
'					<strong>#ADDITIONAL_INFO#</strong>',
'					<strong>#MESSAGE#</strong>',
'					<p>',
'						<button onclick="#BACK_LINK#" class="button-default" type="button">',
'						  <span>#OK#</span>',
'						</button>',
'					</p>',
'					</div>',
'					<div class="clear"></div>',
'				</div>',
'				<div class="clear"></div>',
'			</div>',
'		</div>',
'		<div class="rc-bottom">',
'			<div class="rc-bottom-r"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_grid_type=>'TABLE'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124361294107752206)
,p_theme_id=>21
,p_name=>'One Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_left_and_right_sidebar_fixedwidth_div_left_and_optional_tablebased_right
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124361389793752206)
,p_theme_id=>21
,p_name=>'One Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'ONE_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/page/one_level_tabs_right_sidebar_fixedwidth_div_based
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124361489469752206)
,p_theme_id=>21
,p_name=>'One Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
 p_id=>wwv_flow_api.id(124361620065752206)
,p_theme_id=>21
,p_name=>'One Level Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'ONE_LEVEL_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
prompt --application/shared_components/user_interface/templates/page/popup
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124361697210752207)
,p_theme_id=>21
,p_name=>'Popup'
,p_internal_name=>'POPUP'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'<title>#TITLE#</title>',
'<link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD# class="pop-up-body">#FORM_OPEN#'))
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
prompt --application/shared_components/user_interface/templates/page/printer_friendly
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(124361811258752207)
,p_theme_id=>21
,p_name=>'Printer Friendly'
,p_internal_name=>'PRINTER_FRIENDLY'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
'</head>',
'<body #ONLOAD#>',
'<!--[if lte IE 6]><div id="outdated-browser">#OUTDATED_BROWSER#</div><![endif]-->',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="header">',
'  <div id="logo"><a href="#HOME_LINK#">#LOGO##REGION_POSITION_06#</a></div>',
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
'        <td class="tbl-sidebar" style="padding-right: 10px;">#REGION_POSITION_02#</td>     ',
'        <td class="tbl-main" width="100%">#BODY#</td>',
'        <td class="tbl-sidebar">#REGION_POSITION_03#</td>     ',
'      </tr>',
'    </tbody>',
'  </table>',
'</div>',
''))
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
 p_id=>wwv_flow_api.id(124361907603752207)
,p_theme_id=>21
,p_name=>'Two Level Tabs - Left Sidebar (fixed-width / DIV based)'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
'',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
 p_id=>wwv_flow_api.id(124362016195752207)
,p_theme_id=>21
,p_name=>'Two Level Tabs - Left and Right Sidebar (fixed-width / DIV left and optional table-based right)'
,p_internal_name=>'TWO_LEVEL_TABS_LEFT_AND_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_LEFT_AND_OPTIONAL_TABLEBASED_RIGHT'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
 p_id=>wwv_flow_api.id(124362107321752207)
,p_theme_id=>21
,p_name=>'Two Level Tabs - Right Sidebar (fixed-width / DIV based)'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR_FIXEDWIDTH_/_DIV_BASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
 p_id=>wwv_flow_api.id(124362195397752207)
,p_theme_id=>21
,p_name=>'Two Level Tabs - Right Sidebar (optional / table-based)'
,p_internal_name=>'TWO_LEVEL_TABS_RIGHT_SIDEBAR_OPTIONAL_/_TABLEBASED'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'<html lang="&BROWSER_LANGUAGE." xmlns="http://www.w3.org/1999/xhtml" xmlns:htmldb="http://htmldb.oracle.com" xmlns:apex="http://apex.oracle.com">',
'<head>',
'  <title>#TITLE#</title>',
'  <link rel="icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
'  <link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">',
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
'  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" />',
'  <!--[if IE]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie.css" type="text/css" /><![endif]-->',
'  <!--[if IE 6]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie6.css" type="text/css" /><![endif]-->',
'  <!--[if IE 7]><link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0_ie7.css" type="text/css" /><![endif]-->',
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
'    <div class="app-user">#WELCOME_USER#</div>',
'    #NAVIGATION_BAR#',
'    #REGION_POSITION_08#',
'  </div>',
'  <div id="parent-tabs">',
'    <div class="tab-holder">#PARENT_TAB_CELLS#</div>',
'  </div>',
'</div>',
'<ul id="tabs">',
'#TAB_CELLS#',
'<li class="last"><span></span></li>',
'</ul>',
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
'<div id="customize">#CUSTOMIZE#</div>',
'<div class="app-version">#APP_VERSION#</div>',
'<div class="clear"></div>',
'  #REGION_POSITION_05#',
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
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
,p_non_current_tab=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="#TAB_STATUS#">',
'<a class="tab_link" href="#TAB_LINK#"><span></span>#TAB_LABEL#</a>#TAB_INLINE_EDIT#',
'</li>'))
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
prompt --application/shared_components/user_interface/templates/button/html_button_legacy_apex_5_migration
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(13051092713090498)
,p_template_name=>'HTML button (legacy - APEX 5 migration)'
,p_internal_name=>'HTML_BUTTON_LEGACY_APEX_5_MIGRATION'
,p_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_hot_template=>' <input type="button" value="#LABEL#" onclick="#JAVASCRIPT#" id="#BUTTON_ID#" class="#BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES#/>'
,p_translate_this_template=>'N'
,p_theme_class_id=>13
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362298477752207)
,p_template_name=>'Button'
,p_internal_name=>'BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-default" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/hot_button_black
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362399961752208)
,p_template_name=>'Hot Button (Black)'
,p_internal_name=>'HOT_BUTTON_BLACK'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt5" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/hot_button_red_outline
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362489431752208)
,p_template_name=>'Hot Button (Red Outline)'
,p_internal_name=>'HOT_BUTTON_RED_OUTLINE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt4" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/hot_button_red
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362610916752208)
,p_template_name=>'Hot Button (Red)'
,p_internal_name=>'HOT_BUTTON_RED'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt1" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/small_button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362701685752208)
,p_template_name=>'Small Button'
,p_internal_name=>'SMALL_BUTTON'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt2" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_template_comment=>'XP Square FFFFFF'
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/small_hot_button_red_outline
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362801850752209)
,p_template_name=>'Small Hot Button (Red Outline)'
,p_internal_name=>'SMALL_HOT_BUTTON_RED_OUTLINE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt6" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/button/small_hot_button_red
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(124362889527752209)
,p_template_name=>'Small Hot Button (Red)'
,p_internal_name=>'SMALL_HOT_BUTTON_RED'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#LABEL#" onclick="#LINK#" class="button-alt3" type="button">',
'  <span>#LABEL#</span>',
'</button>'))
,p_translate_this_template=>'N'
,p_theme_class_id=>2
,p_template_comment=>'Standard Button'
,p_theme_id=>21
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124363011329752209)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="blank-region">',
'#BODY#',
'<div class="clear"></div>',
'</div>'))
,p_page_plug_template_name=>'Blank Region'
,p_internal_name=>'BLANK_REGION'
,p_theme_id=>21
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/borderless_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124363096414752210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">#TITLE#</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region'
,p_internal_name=>'BORDERLESS_REGION'
,p_theme_id=>21
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
prompt --application/shared_components/user_interface/templates/region/borderless_region_no_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124363217386752210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    ',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>',
'<div class="clear"></div>'))
,p_page_plug_template_name=>'Borderless Region - No Title'
,p_internal_name=>'BORDERLESS_REGION_NO_TITLE'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124363294331752210)
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
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124363405409752210)
,p_layout=>'TABLE'
,p_template=>'<div class="breadcrumb-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Breadcrumb Region'
,p_internal_name=>'BREADCRUMB_REGION'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124363499551752210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          <h3>#TITLE#</h3>',
'        </div>',
'        <div class="rc-right">',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Button Region with Title'
,p_internal_name=>'BUTTON_REGION_WITH_TITLE'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124363615168752210)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top">',
'    <div class="rc-gray-top-r"></div>',
'  </div>',
'  <div class="rc-body">',
'    <div class="rc-body-r">',
'      <div class="rc-content-main">',
'        <div class="rc-left">',
'          #BODY#',
'        </div>',
'        <div class="rc-right">',
'#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'        </div>',
'        <div class="clear"></div>',
'      </div>',
'    </div>',
'  </div>',
'  <div class="rc-bottom">',
'    <div class="rc-bottom-r"></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Button Region without Title'
,p_internal_name=>'BUTTON_REGION_WITHOUT_TITLE'
,p_theme_id=>21
,p_theme_class_id=>17
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/centered_tab_set_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124363691039752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="tSC">',
'  #BODY#',
'</div>',
'<div class="tSF">',
'  <div class="tSFO">',
'    <div class="tSFI">',
'    </div>',
'  </div>',
'</div>',
''))
,p_page_plug_template_name=>'Centered Tab Set Region'
,p_internal_name=>'CENTERED_TAB_SET_REGION'
,p_theme_id=>21
,p_theme_class_id=>21
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/chart_list
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124363814187752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'    <div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r"><div class="rc-content-main">',
'     <div class="rc-image"><img src="#IMAGE_PREFIX#themes/theme_21/images/report_icon.png" alt="" /></div>',
'      <div class="rc-content">#BODY#</div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart List'
,p_internal_name=>'CHART_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124363892594752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Chart Region'
,p_internal_name=>'CHART_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>21
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
prompt --application/shared_components/user_interface/templates/region/form_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124364013592752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">',
'#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Form Region'
,p_internal_name=>'FORM_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124364096663752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="hide-show-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="hide-show-top">',
'    <div class="hide-show-title"><a href="javascript:hideShow(''region#REGION_SEQUENCE_ID#'',''shIMG#REGION_SEQUENCE_ID#'',''#IMAGE_PREFIX#themes/theme_21/images/right_arrow.png'',''#IMAGE_PREFIX#themes/theme_21/images/down_arrow.png'');" class="t1HideandSho'
||'wRegionLink"><img src="#IMAGE_PREFIX#themes/theme_21/images/right_arrow.png" ',
'  id="shIMG#REGION_SEQUENCE_ID#" alt="" /></a> #TITLE#</div>',
'    <div class="hide-show-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'<div class="hide" id="region#REGION_SEQUENCE_ID#" style="float:left;">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Hide and Show Region'
,p_internal_name=>'HIDE_AND_SHOW_REGION'
,p_theme_id=>21
,p_theme_class_id=>1
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
,p_template_comment=>'Gray Head, white body'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/navigation_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124364189624752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="navigation-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'    <h3>#TITLE#</h3>',
'  <div>',
'    #BODY#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Navigation Region'
,p_internal_name=>'NAVIGATION_REGION'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124364312204752211)
,p_layout=>'TABLE'
,p_template=>'<div class="navigation-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>#BODY#</div>'
,p_page_plug_template_name=>'Navigation Region, Alternative 1'
,p_internal_name=>'NAVIGATION_REGION,_ALTERNATIVE_1'
,p_theme_id=>21
,p_theme_class_id=>16
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/nested_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124364416314752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-nested" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'	<div class="nr-top">',
'		<div class="nr-top-r">',
'    <div class="nr-title">#TITLE#</div>',
'    <div class="nr-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'		</div>',
'	</div>',
'	<div class="nr-body">',
'		<div class="nr-content-main">',
'			#BODY#',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Nested Region'
,p_internal_name=>'NESTED_REGION'
,p_theme_id=>21
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
prompt --application/shared_components/user_interface/templates/region/region_without_buttons_and_titles
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124364506796752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Buttons and Titles'
,p_internal_name=>'REGION_WITHOUT_BUTTONS_AND_TITLES'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124364617501752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="borderless-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="bl-top">',
'    <div class="bl-title">&nbsp;</div>',
'    <div class="bl-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div>',
'  <div class="bl-body">#BODY#</div>',
'</div>'))
,p_page_plug_template_name=>'Region without Title'
,p_internal_name=>'REGION_WITHOUT_TITLE'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124364701982752211)
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
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124364806154752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'    <div class="rc-content-main">',
'    #BODY#',
'    </div>',
'  </div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Report List'
,p_internal_name=>'REPORT_LIST'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>21
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
prompt --application/shared_components/user_interface/templates/region/reports_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124364893844752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> '))
,p_page_plug_template_name=>'Reports Region'
,p_internal_name=>'REPORTS_REGION'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124364996598752211)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region float-left-100pct" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>',
''))
,p_page_plug_template_name=>'Reports Region 100% Width'
,p_internal_name=>'REPORTS_REGION_100%_WIDTH'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>21
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
prompt --application/shared_components/user_interface/templates/region/reports_region_no_title
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365089675752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-white" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region No Title'
,p_internal_name=>'REPORTS_REGION_NO_TITLE'
,p_theme_id=>21
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_no_title_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365216882752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-alt" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region No Title, Alternative 1'
,p_internal_name=>'REPORTS_REGION_NO_TITLE,_ALTERNATIVE_1'
,p_theme_id=>21
,p_theme_class_id=>10
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/reports_region_alternative_1
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365302865752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'<div class="rc-content-main">#BODY#<div class="clear"></div>',
'<div class="clear"></div>',
'</div>',
'</div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Reports Region, Alternative 1'
,p_internal_name=>'REPORTS_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>21
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
prompt --application/shared_components/user_interface/templates/region/sidebar_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365401462752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region'
,p_internal_name=>'SIDEBAR_REGION'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124365490796752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sidebar-region">',
'<div class="rounded-corner-region-alt" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div> ',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Alternative 1'
,p_internal_name=>'SIDEBAR_REGION,_ALTERNATIVE_1'
,p_plug_table_bgcolor=>'#f7f7e7'
,p_theme_id=>21
,p_theme_class_id=>3
,p_plug_heading_bgcolor=>'#f7f7e7'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_bordered
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365591053752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-white sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Bordered'
,p_internal_name=>'SIDEBAR_REGION,_BORDERED'
,p_theme_id=>21
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/sidebar_region_bordered_alternative
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365716299752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-blank-alt sidebar-alt2" id="#REGION_STATIC_ID#"  #REGION_ATTRIBUTES#>',
'	<div class="rc-gray-top">',
'		<div class="rc-gray-top-r"></div>',
'	</div>',
'	<div class="rc-body">',
'		<div class="rc-body-r">',
'			<div class="rc-content-main">',
'				#BODY#',
'				<div class="clear"></div>',
'			</div>',
'			<div class="rc-content-buttons">',
'				#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#',
'			</div>',
'			<div class="clear"></div>',
'		</div>',
'	</div>',
'	<div class="rc-bottom">',
'		<div class="rc-bottom-r"></div>',
'	</div>',
'</div>'))
,p_page_plug_template_name=>'Sidebar Region, Bordered Alternative'
,p_internal_name=>'SIDEBAR_REGION,_BORDERED_ALTERNATIVE'
,p_theme_id=>21
,p_theme_class_id=>3
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(124365796524752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region'
,p_internal_name=>'WIZARD_REGION'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124365906242752212)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="rounded-corner-region-wizard" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="rc-gray-top"><div class="rc-gray-top-r">',
'    <div class="rc-title">#TITLE#</div>',
'<div class="rc-buttons">#CLOSE##PREVIOUS##NEXT##DELETE##EDIT##CHANGE##CREATE##CREATE2##EXPAND##COPY##HELP#</div>',
'  </div></div>',
'  <div class="rc-body"><div class="rc-body-r">',
'<div class="rc-content-main">#BODY#<div class="clear"></div></div></div></div>',
'  <div class="rc-bottom"><div class="rc-bottom-r"></div></div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Region with Icon'
,p_internal_name=>'WIZARD_REGION_WITH_ICON'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124366000405752212)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-alt1" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button value="#TEXT#" onclick="javascript:location.href=''#LINK#''" class="button-default" type="button">',
'  <span>#TEXT#</span>',
'</button>'))
,p_list_template_name=>'Button List'
,p_internal_name=>'BUTTON_LIST'
,p_theme_id=>21
,p_theme_class_id=>6
,p_list_template_before_rows=>'<div class="button-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/centered_tab_set
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366096177752213)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'          <li class="#LIST_STATUS#">',
'            <a href="#LINK#"><span>#TEXT#</span></a>',
'          </li>'))
,p_list_template_name=>'Centered Tab Set'
,p_internal_name=>'CENTERED_TAB_SET'
,p_theme_id=>21
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="tS">',
'  <div class="tSO">',
'    <div class="tSI">',
'      <div class="tSU">',
'        <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'         </ul>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/dhtml_tree
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366210583752214)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'DHTML Tree'
,p_internal_name=>'DHTML_TREE'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124366306426752214)
,p_list_template_current=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle" alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><img src="#IMAGE_PREFIX#themes/theme_13/node.gif" align="middle"  alt="" /><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Hierarchical Expanding'
,p_internal_name=>'HIERARCHICAL_EXPANDING'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124366412687752214)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item-current">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="list-item">',
'  <div class="list-item-image"><a href="#LINK#" class="current"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR# alt="" / ></a></div>',
'  <div class="list-item-label"><a href="#LINK#" class="current">#TEXT#</a></div>',
'</div>'))
,p_list_template_name=>'Horizontal Images with Label List'
,p_internal_name=>'HORIZONTAL_IMAGES_WITH_LABEL_LIST'
,p_theme_id=>21
,p_theme_class_id=>4
,p_list_template_before_rows=>'<div class="horizontal-images-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366504461752214)
,p_list_template_current=>'<a href="#LINK#" class="current">#TEXT#</a>'
,p_list_template_noncurrent=>'<a href="#LINK#">#TEXT#</a>'
,p_list_template_name=>'Horizontal Links List'
,p_internal_name=>'HORIZONTAL_LINKS_LIST'
,p_theme_id=>21
,p_theme_class_id=>3
,p_list_template_before_rows=>'<div class="horizontal-links-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366596462752214)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List'
,p_internal_name=>'HORIZONTAL_TABS_ROUNDED_LIST'
,p_theme_id=>21
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/horizontal_tabs_rounded_list_full_width
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366707367752214)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Horizontal Tabs Rounded List (Full Width)'
,p_internal_name=>'HORIZONTAL_TABS_ROUNDED_LIST_FULL_WIDTH'
,p_theme_id=>21
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sHFWTabs">',
'<div class="sHTabs">',
'	<div class="sHTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'			<li class="last"></li>',
'		</ul>',
'	</div>',
'</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/page_level_tabs_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366810805752215)
,p_list_template_current=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="#LIST_STATUS#"><a href="#LINK#"><span></span>#TEXT#</a></li>'
,p_list_template_name=>'Page Level Tabs List'
,p_internal_name=>'PAGE_LEVEL_TABS_LIST'
,p_theme_id=>21
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sBTabs">',
'	<div class="sBTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'			<li class="last"></li>',
'		</ul>',
'	</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366890918752215)
,p_list_template_current=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li class="dhtmlMenuItem"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Pull Down Menu'
,p_internal_name=>'PULL_DOWN_MENU'
,p_theme_id=>21
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="dhtmlMenuLG2">'
,p_list_template_after_rows=>'</ul><br style="clear:both;"/><br style="clear:both;"/>'
,p_before_sub_list=>'<ul id="#PARENT_LIST_ITEM_ID#" htmldb:listlevel="#LEVEL#" class="dhtmlSubMenu2" style="display:none;">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="dhtmlMenuSep2"><img src="#IMAGE_PREFIX#themes/theme_13/1px_trans.gif"  width="1" height="1" alt="" class="dhtmlMenuSep2" /></li>'
,p_sub_list_item_noncurrent=>'<li><a href="#LINK#" class="dhtmlSubMenuN" onmouseover="dhtml_CloseAllSubMenusL(this)">#TEXT#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" />',
'</li>'))
,p_item_templ_noncurr_w_child=>'<li class="dhtmlMenuItem1"><a href="#LINK#">#TEXT#</a><img src="#IMAGE_PREFIX#themes/theme_21/images/menu-small.gif" alt="Expand" onclick="app_AppMenuMultiOpenBottom2(this,''#LIST_ITEM_ID#'',false)" /></li>'
,p_sub_templ_curr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" /></a></li>'
,p_sub_templ_noncurr_w_child=>'<li class="dhtmlSubMenuS"><a href="#LINK#" class="dhtmlSubMenuS" onmouseover="dhtml_MenuOpen(this,''#LIST_ITEM_ID#'',true,''Left'')"><span style="float:left;">#TEXT#</span><img class="t13MIMG" src="#IMAGE_PREFIX#menu_open_right2.gif" alt="" / ></a></li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/pull_down_menu_with_image
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124366993321752215)
,p_list_template_current=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  /></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a><'
||'/div>'
,p_list_template_noncurrent=>'<div class="dhtmlMenuItem"><a href="#LINK#" id="#LIST_ITEM_ID#"><img src="#IMAGE_PREFIX##IMAGE#" #IMAGE_ATTR#  "/></a><img src="#IMAGE_PREFIX#menu/drop_down_nochild.png" width="20" height="128" alt="" /><a href="#LINK#" class="dhtmlBottom">#TEXT#</a>'
||'</div>'
,p_list_template_name=>'Pull Down Menu with Image'
,p_internal_name=>'PULL_DOWN_MENU_WITH_IMAGE'
,p_theme_id=>21
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
 p_id=>wwv_flow_api.id(124367100155752215)
,p_list_template_current=>'<li class="active"><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#"><span>#TEXT#</span></a></li>'
,p_list_template_name=>'Tabbed Navigation List'
,p_internal_name=>'TABBED_NAVIGATION_LIST'
,p_theme_id=>21
,p_theme_class_id=>7
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sHorizontalTabs">',
'	<div class="sHorizontalTabsInner">',
'		<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		</ul>',
'	</div>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_images_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367208612752215)
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
,p_theme_id=>21
,p_theme_class_id=>5
,p_list_template_before_rows=>'<div class="vertical-images-list">'
,p_list_template_after_rows=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_ordered_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367301147752215)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Ordered List'
,p_internal_name=>'VERTICAL_ORDERED_LIST'
,p_theme_id=>21
,p_theme_class_id=>2
,p_list_template_before_rows=>'<ol class="vertical-ordered-List">'
,p_list_template_after_rows=>'</ol>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_sidebar_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367413075752215)
,p_list_template_current=>'<li class="active"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Sidebar List'
,p_internal_name=>'VERTICAL_SIDEBAR_LIST'
,p_theme_id=>21
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="vertical-sidebar-list">',
'<ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367503110752215)
,p_list_template_current=>'<li class="current"><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS'
,p_theme_id=>21
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets-alt">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_with_bullets_alternative
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367615559752215)
,p_list_template_current=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List with Bullets, Alternative'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITH_BULLETS,_ALTERNATIVE'
,p_theme_id=>21
,p_theme_class_id=>1
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-with-bullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/vertical_unordered_list_without_bullets
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367700924752215)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li><a href="#LINK#">#TEXT#</a></li>'
,p_list_template_name=>'Vertical Unordered List without Bullets'
,p_internal_name=>'VERTICAL_UNORDERED_LIST_WITHOUT_BULLETS'
,p_theme_id=>21
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="vertical-unordered-list-without-bullets">'
,p_list_template_after_rows=>'</ul>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367806228752215)
,p_list_template_current=>'<li class="current">#TEXT#</li>'
,p_list_template_noncurrent=>'<li class="non-current">#TEXT#</li>'
,p_list_template_name=>'Wizard Progress List'
,p_internal_name=>'WIZARD_PROGRESS_LIST'
,p_theme_id=>21
,p_theme_class_id=>17
,p_list_template_before_rows=>'<div class="wizard-progress-list" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_between_items=>'<li class="progress-indicator">&nbsp;</li>'
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress_list_horizontal_train
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(124367898035752215)
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
,p_theme_id=>21
,p_theme_class_id=>17
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="sHorizontalProgressList">',
'  <ul>'))
,p_list_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  </ul>',
'</div>'))
);
end;
/
prompt --application/shared_components/user_interface/templates/report/borderless_report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(124368018819752215)
,p_row_template_name=>'Borderless Report'
,p_internal_name=>'BORDERLESS_REPORT'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#<tr>',
'<td><table class="report-borderless" cellpadding="0" border="0" cellspacing="0" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th class="header"#ALIGNMENT# id="#COLUMN_HEADER_NAME#">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>21
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(124368018819752215)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/fixed_headers
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(124368103980752217)
,p_row_template_name=>'Fixed Headers'
,p_internal_name=>'FIXED_HEADERS'
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
,p_row_template_table_attr=>'OMIT'
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
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>',
''))
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#D6D6D6'
,p_row_style_checked=>'#D6D6D6'
,p_theme_id=>21
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(124368103980752217)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
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
 p_id=>wwv_flow_api.id(124368216698752217)
,p_row_template_name=>'Horizontal Border'
,p_internal_name=>'HORIZONTAL_BORDER'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" class="horizontal-border" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" cellspacing="0" border="0" class="report-standard" summary="">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_checked=>'#ccc'
,p_theme_id=>21
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(124368216698752217)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/one_column_unordered_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(124368319872752217)
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
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>21
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(124368319872752217)
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
 p_id=>wwv_flow_api.id(124368402339752217)
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
,p_theme_id=>21
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(124368494261752217)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td#ALIGNMENT# headers="#COLUMN_HEADER_NAME#" class="data">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">#TOP_PAGINATION#',
'<tr>',
'<td><table cellpadding="0" border="0" cellspacing="0" summary="" class="report-standard">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td>',
'</tr>',
'#PAGINATION#',
'</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_column_heading_template=>'<th#ALIGNMENT# id="#COLUMN_HEADER_NAME#" class="header">#COLUMN_HEADER#</th>'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_row_style_mouse_over=>'#F0F0F0'
,p_row_style_checked=>'#E8E8E8'
,p_theme_id=>21
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(124368494261752217)
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
 p_id=>wwv_flow_api.id(124368596231752217)
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
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>21
,p_theme_class_id=>5
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(124368596231752217)
,p_row_template_before_first=>'<tr #HIGHLIGHT_ROW#>'
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
 p_id=>wwv_flow_api.id(124368697341752217)
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
,p_theme_id=>21
,p_theme_class_id=>7
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_div
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(124368805895752218)
,p_row_template_name=>'Value Attribute Pairs - Div'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_DIV'
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
,p_theme_id=>21
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_table
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(124368902124752218)
,p_row_template_name=>'Value Attribute Pairs - Table'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_TABLE'
,p_row_template1=>'<tr><th class="header">#COLUMN_HEADER#</th><td class="data">#COLUMN_VALUE#</td></tr>'
,p_row_template_before_rows=>'<table cellpadding="0" border="0" cellspacing="0" summary="" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" class="ValueAttributePairsParent">#TOP_PAGINATION#<tr><td><table cellpadding="0" cellspacing="0" border="0" summary="" class="ValueAttribu'
||'tePairs">'
,p_row_template_after_rows=>'</table><div class="CSV">#EXTERNAL_LINK##CSV_LINK#</div></td></tr>#PAGINATION#</table>'
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_next_page_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT#</a>'
,p_previous_page_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS#</a>'
,p_next_set_template=>'<a href="#LINK#" class="sPaginationNext">#PAGINATION_NEXT_SET#</a>'
,p_previous_set_template=>'<a href="#LINK#" class="sPaginationPrev">#PAGINATION_PREVIOUS_SET#</a>'
,p_theme_id=>21
,p_theme_class_id=>6
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/no_label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(124369010561752218)
,p_template_name=>'No Label'
,p_internal_name=>'NO_LABEL'
,p_template_body1=>'<span class="hidden-label">'
,p_template_body2=>'</span>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>21
,p_theme_class_id=>13
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(124369107080752219)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><span class="optional">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>21
,p_theme_class_id=>3
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(124369214217752219)
,p_template_name=>'Optional with help'
,p_internal_name=>'OPTIONAL_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="optional-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999">'
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>21
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(124369289350752219)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUIRED#" tabindex="999" /> <span class="required">'
,p_template_body2=>'</span></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>21
,p_theme_class_id=>4
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_with_help
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(124369412981752219)
,p_template_name=>'Required with help'
,p_internal_name=>'REQUIRED_WITH_HELP'
,p_template_body1=>'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" tabindex="999"><a class="required-w-help" href="javascript:popupFieldHelp(''#CURRENT_ITEM_ID#'',''&SESSION.'')" tabindex="999"><img src="#IMAGE_PREFIX#themes/theme_21/images/required.png" alt="#VALUE_REQUI'
||'RED#" tabindex="999" /> '
,p_template_body2=>'</a></label>'
,p_on_error_before_label=>'<div class="t1InlineError">'
,p_on_error_after_label=>'<br/>#ERROR_MESSAGE#</div>'
,p_theme_id=>21
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(124369514567752219)
,p_name=>'Breadcrumb Menu'
,p_internal_name=>'BREADCRUMB_MENU'
,p_before_first=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="breadcrumb_container">',
'	<ul>',
'		<li class="open"><span></span></li>'))
,p_current_page_option=>'		<li class="active"><a href="#LINK#">#NAME#</a></li>'
,p_non_current_page_option=>'		<li><a href="#LINK#">#NAME#</a></li>'
,p_between_levels=>'		<li class="sep"><span></span></li>'
,p_after_last=>wwv_flow_string.join(wwv_flow_t_varchar2(
'		<li class="close"><span></span></li>',
'	</ul>',
'</div>'))
,p_max_levels=>12
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>21
,p_theme_class_id=>1
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/hierarchical_menu
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(124369606960752220)
,p_name=>'Hierarchical Menu'
,p_internal_name=>'HIERARCHICAL_MENU'
,p_before_first=>'<ul class="t1HierarchicalMenu">'
,p_current_page_option=>'<li class="t1current">#NAME#</li>'
,p_non_current_page_option=>'<li><a href="#LINK#">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>11
,p_start_with_node=>'CHILD_MENU'
,p_theme_id=>21
,p_theme_class_id=>2
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(124370290066752223)
,p_popup_icon=>'#IMAGE_PREFIX#themes/theme_21/images/sPopupLOVIcon.png'
,p_popup_icon_attr=>'alt="Popup Lov"'
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
'<link rel="shortcut icon" href="#IMAGE_PREFIX#favicon.ico" type="image/x-icon">  <link rel="stylesheet" href="#IMAGE_PREFIX#themes/theme_21/css/theme_4_0.css" type="text/css" media="all"/>',
'',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="pop-up-lov"'
,p_before_field_text=>'<div class="t1PopupHead">'
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
,p_result_row_x_of_y=>'<div style="padding:5px 10px; font-size:10px;">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>500
,p_before_result_set=>'<div class="t1PopupBody">'
,p_theme_id=>21
,p_theme_class_id=>1
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(124369700729752220)
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
,p_theme_id=>21
,p_theme_class_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar_alternative_1
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(124369893734752221)
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
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="CalendarAlternative1">'
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
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="WeekCalendarAlternative1Holder">',
'<tr>',
'<td class="MonthTitle">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#IDAY#<br>#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="WeekCalendarAlternative1">'
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
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="DayCalendarAlternative1Holder"> <tr><td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td></tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="DayCalendarAlternative1">'
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
,p_cust_month_open_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="CalendarAlternative1">',
''))
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr>'
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
,p_cust_wk_month_open_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table border="0" cellpadding="0" cellspacing="4" summary="0" class="WeekCalendarAlternative1">',
''))
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
,p_theme_id=>21
,p_theme_class_id=>2
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/small_calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(124370107734752222)
,p_cal_template_name=>'Small Calendar'
,p_internal_name=>'SMALL_CALENDAR'
,p_day_of_week_format=>'<th class="day-of-week">#DY#</th>'
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="small-calendar-holder"> ',
' <tr>',
'   <td class="month-title">#IMONTH# #YYYY#</td>',
' </tr>',
' <tr>',
' <td>'))
,p_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="" class="small-calendar">'
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
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallWeekCalendarHolder">',
'<tr>',
'<td class="MonthTitle" id="test">#WTITLE#</td>',
'</tr>',
'<tr>',
'<td>'))
,p_weekly_day_of_week_format=>'<th class="DayOfWeek">#DY#<br />#MM#/#DD#</th>'
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallWeekCalendar">'
,p_weekly_month_close_format=>'</table></td></tr></table>'
,p_weekly_day_open_format=>'<td class="Day" valign="top"><div class="inner">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t1Today" valign="top"><div class="inner">'
,p_weekly_weekend_open_format=>'<td valign="top" class="NonDay"><div class="inner">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th class="Hour">'
,p_weekly_time_close_format=>'<br /></th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th class="DayOfWeek">#DY# #DD#/#MM#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table cellspacing="0" cellpadding="0" border="0" summary="" class="SmallDayCalendarHolder"> <tr> <td class="MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr><tr><td>',
''))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="0" class="SmallDayCalendar">'
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
,p_cust_week_close_format=>'</tr>'
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
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table></td>',
'</tr>',
'</table>'))
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
,p_theme_id=>21
,p_theme_class_id=>3
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(124370394785752223)
,p_theme_id=>21
,p_theme_name=>'Scarlet'
,p_theme_internal_name=>'SCARLET'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(124361620065752206)
,p_error_template=>wwv_flow_api.id(124361203674752206)
,p_printer_friendly_template=>wwv_flow_api.id(124361811258752207)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(124360819877752203)
,p_default_button_template=>wwv_flow_api.id(124362298477752207)
,p_default_region_template=>wwv_flow_api.id(124364893844752211)
,p_default_chart_template=>wwv_flow_api.id(124363892594752211)
,p_default_form_template=>wwv_flow_api.id(124364013592752211)
,p_default_reportr_template=>wwv_flow_api.id(124364893844752211)
,p_default_tabform_template=>wwv_flow_api.id(124364893844752211)
,p_default_wizard_template=>wwv_flow_api.id(124365796524752212)
,p_default_menur_template=>wwv_flow_api.id(124363405409752210)
,p_default_listr_template=>wwv_flow_api.id(124363814187752211)
,p_default_irr_template=>wwv_flow_api.id(124364506796752211)
,p_default_report_template=>wwv_flow_api.id(124368494261752217)
,p_default_label_template=>wwv_flow_api.id(124369214217752219)
,p_default_menu_template=>wwv_flow_api.id(124369514567752219)
,p_default_calendar_template=>wwv_flow_api.id(124369700729752220)
,p_default_list_template=>wwv_flow_api.id(124367503110752215)
,p_default_option_label=>wwv_flow_api.id(124369214217752219)
,p_default_required_label=>wwv_flow_api.id(124369412981752219)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(21),'')
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
 p_id=>wwv_flow_api.id(115994307528319643)
,p_name=>'CUSTOM'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_auth'
,p_attribute_05=>'N'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=LPSIG:home:&SESSION.::&DEBUG.'
,p_logout_url=>'f?p=INFOSMAINSIG:101:&SESSION.:LOGOUT'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/application_express
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(124370500326752231)
,p_name=>'Application Express'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_attribute_15=>'5063919775186251'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=&APP_ID.:101'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_comments=>'Use internal Application Express account credentials and login page in this application.'
);
end;
/
prompt --application/shared_components/plugins/process_type/nl_amis_scheffer_process_excel2collection
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(124390417198288714)
,p_plugin_type=>'PROCESS TYPE'
,p_name=>'NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_display_name=>'Excel2Collection'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('PROCESS TYPE','NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function parse_excel',
'  ( p_process apex_plugin.t_process',
'  , p_plugin apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_process_exec_result',
'is',
'  e_no_doc exception;',
'  t_rv apex_plugin.t_process_exec_result;',
'  t_time date := sysdate;',
'  t_what varchar2(100);',
'  t_file_id number;',
'  t_document blob;',
'  t_filename varchar2(32767);',
'  t_parse varchar2(32767);',
'  p_browse_item varchar2(32767);',
'  p_collection_name varchar2(32767);',
'  p_sheet_nrs varchar2(32767);',
'  p_separator varchar2(32767);',
'  p_enclosed_by varchar2(32767);',
'  p_encoding varchar2(32767);',
'--',
'  t_parse_csv varchar2(32767) :=',
'    ''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'' ||',
'    ''5yT33OOek9xzj3tOcs897jnJPfe45yT33OOek9xzj3tOcs897jnJPfe45yT3wuNe'' ||',
'    ''kNwLj3tBci887gXJvfC4FyT3wuNekNwLj3tBci887gXJvfC4FyT3wuNekNwLj3tB'' ||',
'    ''ci897iXJvfS4lyT30uNektxLj3tJci897iXJvfS4lyT30uNektxLj3tJci897iXJ'' ||',
'    ''vfS4lyT3yuNekdwrj3tFcq887hXJvfK4VyT3yuNekdwrj3tFcq887hXJvfK4VyT3'' ||',
'    ''yuNekdwrj3tFcn/pcX+JuT/ohPtiNlrgQ5/DhhLvtvzGJM3zZKvN6XlLtCHehpD4'' ||',
'    ''mDPR7OKCm/+smtuBYDuB7US4ncR2MtxOYTsVbneJ7S7D7a6w3VW43TW2uw63u8F2'' ||',
'    ''N+F2t9juNtiOXyA7aFCC7bBeeLheONYLD9cLx3rh4XrhWC88XC8c64WH64VjvfBw'' ||',
'    ''vXCsFx6uF471wsP1wrFeeLheBNaLCNeLwHoR4XoRWC8iXC8C60WE60VgvYhwvQis'' ||',
'    ''FxGuF4H1IsL1IrBeRLheBNaLCNeLwHoR4XqRWC8yXC8S60WG60VivchwvUisFxmu'' ||',
'    ''F4n1IsP1IrFeZLheJNaLDNeLxHqR4XqRWC8yXC8S60WG60VhvahwvSisFxWuF4X1'' ||',
'    ''osL1orBeVLheFNaLCteLwnpR4XpRWC8qXC8K60WF60VhvahwvSisFxWul0usl8sQ'' ||',
'    ''vXj/xew22NPxoM7pg0tz8Povj4tjw+UnAAA='';',
'--',
'  t_parse_xml varchar2(32767) :=',
'    ''H4sIAAAAAAAAC6WY227jNhCG7/MURG4so7bXPOTkYLcttihQYNuLIkV7Z8gS7ajR'' ||',
'    ''wRDlJAvsw3dInUYTJsvdGkgsUzPk8OPP4UhnqU7yuNZnjDXbtEpOhS4btsur3a1t'' ||',
'    ''+nzUrDlu95nOU8Myw5p4l2tW7dljXCf3cS0iKa4ur+YsK1P9zHaf2TE326xs9EHX'' ||',
'    ''uIs8K/W0B9TvV3zTuImpa9ffa56tT+fbtiRVnuukyapyu4uNpjN4YVTGhd+oi0qA'' ||',
'    ''7SSq+Kift/HxmGdJ7Ho4AMY4Xz0m27iuxRvBuq66Lm/PlktoPNZVotNTrVleHSJ2'' ||',
'    ''3BbmMETD5mCRGfi304esBA8GHzd+qnenw7bQxsQHvdJ1XdW9t4veawZD9Ned8QK+'' ||',
'    ''cv2oc/b+A1PWdblMd4XZVqfmeGpW8OeWYNK3LtMu+v2pdBAZhJ7h+S5YPf2Z4J9u'' ||',
'    ''XrVuTnU5zHU6UzuBziCxi/h0r8tutaNsHtXzlX7OTGOiZM4ae8+cdqYBBNgGbi4Y'' ||',
'    ''XzC1Xq/ZvA0bRz+yP8a10dvnIncD28lO9ohrtajMvdaNGddn856Vp7z1GtbKrrT1'' ||',
'    ''2iYmS+F+sYMZW0sAYN2MbrZZGrHZz5+k+Ovu1+sZYGWwtsm9Th4gvqRKs/IAOmL/'' ||',
'    ''/P6J/QifrlcIkMGfVeZt19Tuj36j9K0uzrKmCrS36urJ12yV6Wl+jHPf3uh2nt7u'' ||',
'    ''i2a8z9fruZ3oLE2XRbH8DB92fy/Upsg2xsx6x3IEGIneBaZVmvfnsOAbAxyK2CyL'' ||',
'    ''LKkrU+2bZVIVm2q/zxK9Mcdax6mb3zmbsS9fXKf+T9spDP2N/Y6RpsxtBugnrYoV'' ||',
'    ''/JVVOqAvc9/dHGQ5Woivm8i3TMbd4NLDzArVasMK4ylr7pnFGCeNtqpyPCYys7kt'' ||',
'    ''mshxzoYFtGoC9J2gsOgXUxeqKnBaI0TwE8+giB+0nUI0aT3opu9d59p+Te+X+gm+'' ||',
'    ''epOoC2+O4y3zcSiTu81rTFWvjLap3A5pIhfRgs3e/V3VD7uqenAXLvDZotVe19++'' ||',
'    ''qiFlwR5bs9WKhprr8tDcR+2gc7ZkvFuD6tjpbUJj/PED47edRbaHRDLmDDhBhlTh'' ||',
'    ''Pnb80uWs2cYt3GAK19C06Nubyq1nhIaZdzZw8YGtv6PPlxRhp590tZ+uStbooqWw'' ||',
'    ''AFiQTWc/GbP5A1Q10HwlknnPCZLz0NqlqxXoWzf6FrXbrAQgOW6zu+frC/52uHf2'' ||',
'    ''0H73Z/VEVr9XwL8hChBIAkQGk+jLxzz6drJiAVH0aH+ztcMQ6yu5bdEO+cpdNMM+'' ||',
'    ''sU/J9mnne9kOAX/Uee7h2pJ9CCErCdkXbNEMvo+uXEAk30S35QuDvnp/Mtf+lPTS'' ||',
'    ''DA0OYvsFyhYvTJdJ/nfX7+z87yDPjxsXTl24o+8y2M3TCeE9S+Y4JqPKVQBRewsG'' ||',
'    ''sse9PfbT9PzufDz2V+dQfZ3PbCyoZiAzhJoMZkmxumQROa3PI7ck8zbbwoDUthNJ'' ||',
'    ''e/HDVO62d6urW9+mbS8mHi/tu6qy+14l1QnOKHs4uQ5Q6TVMZULvjPba16D98f7y'' ||',
'    ''qQU63kCbO8Gtx1ChRmzjDuqF/e6Su6PZFgi2MHC29hR0pwcK2eVq1jntoSWdtSX/'' ||',
'    ''4F5Uj7a8aCr2cQgoMvNZO8T0zJz03O7iYfe+fMLqF2cyS3y62dMxAz1nC2ardViR'' ||',
'    ''XiWT0Fz07dTsM4czmzzyjGOsEqjpQHBVvW1qeFKx1+PdyBNkD8PtueFRYljv/oRD'' ||',
'    ''G6R9qCMnmuVkT2KIbeBk+8lj03Qmkzw3Gax7sKnH/ET2YztkxLh9xrFcD1G2gEcs'' ||',
'    ''TjJ/ayWIlfBaSWIlvVaKWCmv1QWxuvBaXRKrS6/VFbG68lpdE6trr9UNsbrxWfH1'' ||',
'    ''1Ap++6wIe+5lzwl77mXPCXvuZc8Je+5lzwl77mXPCXvuZc8Je+5lzwl77mXPCXvu'' ||',
'    ''ZS8Ie+FlLwh74WUvCHvhZS8Ie+FlLwh74WUvCHvhZS8Ie+FlLwh74WUvCHvhZS8I'' ||',
'    ''e+FlLwl76WUvCXvpZS8Je+llLwl76WUvCXvpZS8Je+llLwl76WUvCXvpZS8Je+ll'' ||',
'    ''Lwl76WWvCHvlZa8Ie+Vlrwh75WWvCHvlZa8Ie+Vlrwh75WWvCHvlZa8Ie+Vlrwh7'' ||',
'    ''5WWvCHvlZX9B2F9g9jo32pPMeo/ZbFozjhUsrSBpYRKn6bbQ9sWg8ZQhb7zS6j72'' ||',
'    ''XWSyXnP71nYsB4L9BPYT4X4S+8lwP4X9VLjfBfa7CPe7xH6X4X5X2O8q3O8a+12H'' ||',
'    ''+91gv5tgP75GflCgBPthvfBwvXCsFx6uF471wsP1wrFeeLheONYLD9cLx3rh4Xrh'' ||',
'    ''WC88XC8c64WH64VjvfBwvQisFxGuF4H1IsL1IrBeRLheBNaLCNeLwHoR4XoRWC8i'' ||',
'    ''XC8C60WE60VgvYhwvQisFxGuF4H1IsL1IrFeZLheJNaLDNeLxHqR4XqRWC8yXC8S'' ||',
'    ''60WG60VivchwvUisFxmuF4n1IsP1IrFeZLheJNaLDNeLwnpR4XpRWC8qXC8K60WF'' ||',
'    ''60VhvahwvSisFxWuF4X1osL1orBeVLheFNaLCteLwnpR4XpRWC8qXC8XWC8XIXrp'' ||',
'    ''avKxyMYF9vB6UKf+F5f2bet/wC970gEjAAA='';',
'--',
'  t_parse_xlsx varchar2(32767) :=',
'    ''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'' ||',
'    ''Dj4AAA=='';',
'--',
'  t_parse_xls varchar2(32767) :=',
'    ''H4sIAAAAAAAAC+1d63PbuBH/nr8C/dCRdJFdAqRkOTlnxrHla6a2c2M70/aThpZo'' ||',
'    ''m40kakjqEnfujy/eXIAgRT38uF407UXGYxf7w2KBBRbQm0k0noZp9Aah/HERoXwx'' ||',
'    ''uouj6SRDcYby8HYaoeQO/Ram44cwJW2fHPQPOiieT6Lv6PYRLabZKJ7n0X2Uvgck'' ||',
'    ''pvE8MikAuivqTsI8tKtKelU1RR1ZV6SMk+k0GudxMh/dhllkS1AqNA9n7kKyVYSW'' ||',
'    ''NVoVLqLvo3CxmMbjkFO4nya34XT/t/EoTFNS01hOSpJ8/2ZvjyYu0mQcTZZphKbJ'' ||',
'    ''fRstRrPsXrcGdWiJOKP/uY3u4zmtgeiH859Et8v70SzKsvA+2o/SNElVbd56ZzHK'' ||',
'    ''Qn2Xhbv0n2n0WzRFRx9QwKru7U1uZ9koWeaLZb5P/8+7wKAdzSey9XfLOQcR0abH'' ||',
'    ''UN4uSs0/x/BPLlca5ct0rmU1JWUCyAJj1onfHqK57O123Gmnnf3oe5zlWXvcQTnL'' ||',
'    ''y5a3WU4hgGVoZhfhLgo8z0Md0WzY+gL7RZhm0ej7NOOMmbCTZLycRfMc3dLO5akM'' ||',
'    ''quwhivKs6J93R2i+nE55vu4r1tPfkvTrbZJ85dXfy0SqGAjoA0vKHGlTKo6VNAu/'' ||',
'    ''u5LHtH1W0n16G+coDb+1cUel3cZ3dz1EmzONwrnmnKe8WKHwLDWfLRypaTR2pFKg'' ||',
'    ''I3zoBRZlOWyyLN/IkPC20bqChEmTcTSISs61xL7fiXqyvkq+m+WudMmJVqIFDF5Q'' ||',
'    ''f1fwY1U1EcDQZWZ4P9K0URaBfOx5HaZdrX8OBxfX//x0iUmPtCyEmTLyvqHNpP8k'' ||',
'    ''6YTnMwV2GTWZ2UVA52Rax0G5ZMUBv7q+E3U1FSPdIKP1nZt4ZeuhdpmYaUwmk73Z'' ||',
'    ''bO+RftDDAwnezeJ3WdaSgxoO6zQKJ6PlPB4nk4gpfDy/5yXkMC1MjRoQcjy/l4nf'' ||',
'    ''HmIqvRhnH5AnU6dJspBfKak7tMynIzo69unAG4XzSVuNwi56iL7nCRs4qOXhFjVB'' ||',
'    ''HXRUStSkmB3TfwjS7cJIvJXt+AkR2hbFkxqF+/yhLcdoh5bCkASbBmhdbtGpIdov'' ||',
'    ''rKQyUF1EutI0vZW25y2bCMyG+ieex9pPJ6CTz5c3ny6/DC02HfC3LUgBrmr2OJnT'' ||',
'    ''ubMtMro6uWgelaarJO8o9SzIMSAoOfFlr4TGSnrob4jYNFkWp2lhYZdjyVCUMKNm'' ||',
'    ''M6FGdh6mj2o0tBtjTif5AoBpnOfTaESnqJhatZLYwrhT5rXEcUE8KNNgerKKghBy'' ||',
'    ''z6REVatMLZOoYZgRTbOovv+dHdMFGl7JqDwaKnTDM1rELN5dkWK10D3S1hhlzzPI'' ||',
'    ''VowxNnevwnj3Q+nHMHrGYdSki9UwajiENhk+dOGf0EUQXQdQYfb3HeOENRSqqzFn'' ||',
'    ''yuasOSVQknTp0mXwmTMrHzQdu72MIxjwhgRmfuEQAIcm/Urmy9ltxL2q9Ctb/kqB'' ||',
'    ''pFsicquWE9B3oVXzhDa4XV4p2FIyVlzzuJAtz+eiWVOtcIZaHmkJ12fVECpxFVxa'' ||',
'    ''Zydn/NOqGTp0ogwq2PvPxN7zKhrg1Tdgkizp2rVdUjBaUXxaXdG11ewrGOPtGTcA'' ||',
'    ''pR4WbMMivdsKdabaStiKmjGi36X2mhrN8qv0mc6QhcOnlsxwCpI0KAqcDQVpj/6P'' ||',
'    ''lW51W6enexcXe/+mnxabPHkT4FgsRqaLjM/IeGUySpY91NcmFQpv+QHju1tWY3zH'' ||',
'    ''fXIpuhSV2aMHWigSPnEPE21PqPv8SD0R6lxFadnfYfnRnPoX1LWgfxQelwcIZNl/'' ||',
'    ''FUyQAGIzfRaNqSFDWfzfCJTXFcrlH5I0d9eiaZ8mpVo6n9pPVUYV/itz+HQJ5fxF'' ||',
'    ''49jaBDTK13h/fKsiC/OCDACBJjvTq8oLEVl3EC8YQDgZBCM6qvKQOowp2GKR00oU'' ||',
'    ''zqxENg87W2v7yYh96WgVQmg8OkujaHQdjT+d6rFGeWd5SCdKuCdA57I9/J71Eash'' ||',
'    ''u6iLZuEj4ntVbLakQwbdUZ+yi26XfHdhnuRs8ynn+4rzRyRar3kP55PR57vRyQOV'' ||',
'    ''VLahkjfhvG/SMJ4yZRSlKc9Qfh0zIpry9fGNJVQ1ZZ9TvhYdQhu9zKIJ638mjeym'' ||',
'    ''cDpNxG6o0BrN56LMqJJPUMNnRm0sLVbFDvTX6aer0XC2yB8NXmJHjLGxlw6cKa9g'' ||',
'    ''kLhmhe6jlSSwIvElY+0TtSxKXCNXUiIWJUMTGKHzZPwVNZDKV4RYhY/UemUGmV/T'' ||',
'    ''ZBGlFJ8VZAJFRlUwqFwlVHUbNKanqPAKEB9z+0WaX9eamhntLqJGuQvXzsJp0xXZ'' ||',
'    ''YFJbsfxD1aS8LpWFO+hnRs9ZuFhxisJ8PTagVf5iCHbqnZxhPPSO8UeMj4fGTo7+'' ||',
'    ''6pgi3fOeMctQDIpN7+pmkcMuc3tMJ/JsKBYPxgLFXD4wvwIsQO51ulpByOketOjI'' ||',
'    ''TcolJZgP2V7d8Tnuf7k5w/3zYUuLDh2bqvKtKqD45EiLLpJvbHlJuo1XoGUIfdwV'' ||',
'    ''nqMhLfAm5GS8K3Z+JTtqwPjpDluqNDF4onnaDfOYG4a9Q+ZturYp9fKggctd3f6D'' ||',
'    ''A7rsitFPKOgyn9iWA7hb36mDLc9sJOMjYyp9D1rGVgzs+KgjnVNe3u2q7UqQ/mGt'' ||',
'    ''AGrfV7L6y5FzKq7GOamzY1yDuTnjLjhTr58KXtb2gNnBojT1iWg3F8bL8q0VoOJf'' ||',
'    ''6n0s53m7I9BdHzG1jOG9zlq3qudLrvd2Pab479WrXMHWGEhsX+52GU8nDdYqDOr/'' ||',
'    ''AKgN9GqH1SbdLfroP2IzsVmP4+oelx3+Cvq7WUewFfxefXfsaKDXt/+PMNDrul31'' ||',
'    ''+yvoeLPHCpUUSasG6iROOX+62KdzxE5VIPhj23pMBvVK0HAjvb7HGZe3qN9zrk/g'' ||',
'    ''1ipfGTKWH8AM5DyO4K61bFiMB/N9yp01jHnYzZqDiy102Sq9VCxt95rb03z53Eji'' ||',
'    ''A+5TGE3n6xboupmC2ZKiovPHtHQe5dFsQVfj6WNbb0fQtqfLyN6St3ZldtSJGB+s'' ||',
'    ''GLpPoDmYrLIXtvpsM6R7bgltAcs9VQx3gHv9kC8+pTMMq/fDxSISx/+q09ezCqBJ'' ||',
'    ''3DKU0XOpjLa0INlRsWyuZbp9yPTyIJV2+LrSDVP/bofWdnCVTI0hXZ7GM2PUc113'' ||',
'    ''jwJuH1mEjzwvbDVRXxBZJqThjJq10uD68ek5AjvK9n62sqIlhXh15nTjMeMcMa7x'' ||',
'    ''YmOwe+uykW1xDxWHXYGRVaoim6h3uKYUf1NF19jEWZ0i8d0ztbYydFITuKPr0XoS'' ||',
'    ''7o2qukaIDeFNeMuaLpZy+w7GzxanXjqcVcccmhEHRYgpXMzeR3mxdarNgCQhg2aa'' ||',
'    ''BWjYgW+H3oDtUrIPdQI+fj5Twq8TScMiaOhyuW1u6fMdZ07109lZzzEnNP1YUQZe'' ||',
'    ''H9AdbEG3s4ms/RKEPR0tpGYQJALR1W6/ZARUS4UCrwpcsTA+cgBsnq09cyDP6igj'' ||',
'    ''w6jC3UhW/sNRoe+uPcvNVPoYnCYV+vwyAJnmZx0xzoogtOvrm0IKc74uro4Un3yU'' ||',
'    ''Lq0I9SKLMnBnFYf04WTCrWqbX0mYl+4LFB99aC8+8BwJiG9E9C2kz9o8bhY9W+gs'' ||',
'    ''Qs1cl6axdaLsi8XXSfgl9D8fVWFebrNLaBBrZ8fTrAhNdHoWVnCeaedcfoDLPVor'' ||',
'    ''/q8mipAzcC7VK2MCq6qAszv2KQ+JSnrrhTIOCnFwKUpX76AbQYEbaV5Q8Bk0DdBy'' ||',
'    ''LKQLm+K7vAUZ67i+m2CEW64zNBxRmKRcRgeoruBciiR1MigpUOM7CwPXnYVBq5m5'' ||',
'    ''KrAvKYpoKJsunhf9Zvg7x7xurtdkOK6BceDCOFgbY6dxEfPu9hgH6xt/xvhnVArd'' ||',
'    ''rDbysqXiCzWW5DA47B+Qw/4mNlN3bmlqrOhcyb1h5zruFTnGYSbPZhxHM+X9cBn2'' ||',
'    ''bMRLNBrdQjHFmQ2XozQxlLxzY7KggGy6VhwULkj74+cvl6ed678Ph5WLxl1MmiIw'' ||',
'    ''hTkxkHD58GE7y34gA7Ab3ieoj8ofVAfks5tw+/XnJDLuHdwRNI8+yncEdiF6zZ2J'' ||',
'    ''ailLs9EO78Y5u3n1xaLDmjtFDkvgvATYtJ8PK/p5/csS7OPcFXzSSxMcE/densMI'' ||',
'    ''NtXeVVatTFtRloZuQz3GzWctyTBr62+mwZapOzGZhGiTCSLpHaZSX67eaq8Giz2J'' ||',
'    ''XbQcD8VShcU3f766OP4/MPP+Ls18UGnm2SXmV2Pf/XVWzKvNfu9Vmv3+M5r9/p/M'' ||',
'    ''7K/Q5k3svXqKob2Fsa9T6hLKtP1tqqdzSYPy77JXBRg2Hxw+C4sOtwrPZmsUfnys'' ||',
'    ''LLwb2zz09Kzyr7OntMvqdYu2/rZt2Nl6RmkLjAIC9mFPh78e/zJ8SqTEBnSqr36q'' ||',
'    ''jWZ+XtXCHjlosQue3kA16nixmEboKpmFlrVju9DzacZHGJ0fRjE1p/xZkOOTq88X'' ||',
'    ''x5d8k0ZeJTJvQHAFWzGBqllHvTWiidYNWvvv1TvTtoWxY90sZaoMt5WPuYBwcWU8'' ||',
'    ''1INAQEdjPr0w/KCNsfLdLVQSqnuU7LIdDM0Dy0TdWNBUAIhaW2aos2/txz3NCer6'' ||',
'    ''Z6j2+V7FQedWx5XYM44rOSom6TaCD8+UNbmwq613LfT770Vx+p0mdVW6no0yGekg'' ||',
'    ''8l0muDlN1Y9ZR7g8lTRX3QKS793sT6JplEdwDL3IiU2TQyVrUdLsOPXJDlRf8HBr'' ||',
'    ''07nnYMgv9/FbcP+oN8i7OFfi3pO2lBvOyb211lTORTpX9Cdb1L0tBe7qz8Y8VyxE'' ||',
'    ''qniy4aOMTnHTHjwhUb3Zxs8dRXSZfvGqicfyp8S2OaLUcN9cHDL7fXl+Pbr8cjG8'' ||',
'    ''+nQyOvn78dXxyc3w6vpov1vaXi+7JlssNz1fD3nK/ePw6sew/79WzWLYV7TBfhWk'' ||',
'    ''rLh1B90/LESzbngS8F/emPT14pntvX45P34Wa2I4sCvOi7j7KZxb/sAN28jrykcN'' ||',
'    ''7C5zXrYXWidUwLpqLx/EscmsNEUvYBArQ7debDQ+/3h8RYax8rz/T9sdr8ZAVsSx'' ||',
'    ''lbur4g21CjtUkt96s4vvlXw+Hx5fOpB6Ub14Cc3QT42sxPdQ2Xnr8bXW2fH59bBl'' ||',
'    ''w9y6ufpCU62wRKNHiNUjV1eOFrpOZEoPwLFY5ZurT5e/sH262XIaOgg1nnprQnm9'' ||',
'    ''A72mF/xcKuSOb3KHTINqozT5Zj+I9HRaWIZUNYO9UL+bZjRQSnczXPHcRQObx0Cr'' ||',
'    ''Gi8aCa27d0fxwrqftjoFXqEi1WxV+Fkl3M6Te4NG1QARDOoPW/3Kw1ZIQxpxMaY6'' ||',
'    ''banVNYZ3veN5Nv7HD9H4K12MX97ws4GESpXyt+PCsXi1J88q2FVElKu2171Nq7rO'' ||',
'    ''EctcfBrEJj4ZVk1CGDUOFUGcMs+VUVWlAlLX3KHvHKIn9NYCPU2cH38cnj/Tzk95'' ||',
'    ''0Dl3Z7YOD1wv3H3TmLk/1/7F0xqfnWr3abEXcVVaBf3Q7x/6/QfX77NTrd/cesNb'' ||',
'    ''kE+m4C+mDc+rC/IBjnxjrgf1Ub2l2MlNleBjoQQXX86f48z2WeM6dfTN0zBzKFqD'' ||',
'    ''+4AVvPbIGswc4ZOrTHSPR6v8hFg40J6y1l0WwOK40rXVdjI3duuGKr7G7eR43Z3f'' ||',
'    ''2nNbDovf6CT8dW7nNoSjOQg73E513/4qReCu3lRxPc3Cf2lP/mtfmQC/5VV6pkQT'' ||',
'    ''Uq/1qx2f8o83UlrvaBp/tojV0D/U10bv+KsmXfavjNnikPCfUWz96/xalJ1QFEUA'' ||',
'    ''V9FKHryFZKU7mjJpIfXmu6g+S35jr8zlCTrRDWpnHYm6HbwIKItYQG2Gyj80ycGx'' ||',
'    ''pYRBa8xrje/aLHrbQ8broEbTxM+pcdG0BqqC/JcfCx7yQaVRko7ydMkixyOQ23Y0'' ||',
'    ''sngAX/3uA/tFRd3FKuTNeFmE/aalFdTGcEp1AHxBZ0qHpyxi/5ZaUUiGc6bW76MJ'' ||',
'    ''Rm2E2Q88MjTv23GXvdFN26zyiJVHQJ5v5fkgL7DyApDXs/J6IK9v5fVB3oGVdwDy'' ||',
'    ''BlbeAOQdWnmHRR72zDzsgTwLFwxwwRYuGOCCLVwwwAVbuGCAC7ZwwQAXbOGCAS7Y'' ||',
'    ''wgUDXLCFCwa4YAsXDHAhFi4E4EIsXAjAhVi4EIALsXAhABdi4UIALsTChQBciIUL'' ||',
'    ''AbgQCxcCcCEWLgTgQixcCMDFt3DxAS6+hYsPcPEtXHyAi2/h4gNcfAsXH+DiW7j4'' ||',
'    ''ABffwsUHuPgWLj7Axbdw8QEuvoWLD3AJLFwCgEtg4RIAXAILlwDgEli4BACXwMIl'' ||',
'    ''ALgEFi4BwCWwcAkALoGFSwBwCSxcAoBLYOESAFx6Fi49z7yBERlLBzEsVY1Wy1wy'' ||',
'    ''VP3mVnmSYk8ZzCK2PsocU9Ib9ltNY8/D7HeKizlAJROYTHSyD5N9nRzA5EAn92By'' ||',
'    ''Tyf3YXJfJx/A5AOdPIDJA518CJMPVTL2QDI14yoZSom1lBhKibWUGEqJtZQYSom1'' ||',
'    ''lBhKibWUGEqJtZQYSom1lBhKibWUGEqJtZQESkm0lARKSbSUBEpJtJQESkm0lARK'' ||',
'    ''SbSUBEpJtJQESkm0lARKSbSUBEpJtJQESkm0lD6U0tdS+lBKX0vpQyl9LaUPpfS1'' ||',
'    ''lD6U0tdS+lBKX0vpQyl9LaUPpfS1lD6U0tdS+lBKX0sZQCkDLWUApQy0lAGUMtBS'' ||',
'    ''BlDKQEsZQCkDLWUApQy0lAGUMtBSBlDKQEsZQCkDLWUApQy0lD0oJTV/bzrmrSDT'' ||',
'    ''mul1eTRxewzMzfkf5U6pzm5/AAA='';',
'--',
'  procedure log( p_msg varchar2 )',
'  is',
'  begin',
'--    apex_debug_message.error( p_msg );',
'    apex_debug_message.log_message( p_msg, p_level => 4 );',
'  end;',
'--',
'begin',
'  p_browse_item     := p_process.attribute_01;',
'  p_collection_name := p_process.attribute_02;',
'  p_sheet_nrs       := p_process.attribute_03;',
'  p_separator       := p_process.attribute_04;',
'  p_enclosed_by     := p_process.attribute_05;',
'  p_encoding        := p_process.attribute_06;',
'--',
'  t_filename := apex_util.get_session_state(  p_browse_item );',
'  log( ''looking for uploaded file '' || t_filename );',
'--',
'  begin',
'    select aaf.id',
'         , aaf.blob_content',
'         , aaf.filename',
'    into t_file_id',
'       , t_document',
'       , t_filename',
'    from apex_application_files aaf',
'    where aaf.name = t_filename;',
'--',
'    delete from apex_application_files aaf',
'    where aaf.id = t_file_id;',
'--',
'    log( ''retrieved!''  );',
'  exception',
'    when no_data_found',
'    then',
'      raise e_no_doc;',
'  end;',
'--',
'  if t_document is null or dbms_lob.getlength( t_document ) = 0',
'  then',
'    log( ''file is empty'' );',
'    return null;',
'  else',
'    log( ''file with length '' || dbms_lob.getlength( t_document ) || '' found '' );',
'  end if;',
'--',
'  if apex_collection.collection_exists( p_collection_name )',
'  then',
'    apex_collection.delete_collection( p_collection_name );',
'  end if;',
'  for i in 1 .. 10',
'  loop',
'    if apex_collection.collection_exists( p_collection_name || i )',
'    then',
'      apex_collection.delete_collection( p_collection_name || i );',
'    end if;',
'  end loop;',
'--',
'  if dbms_lob.substr( t_document, 4, 1 ) = hextoraw( ''504B0304'' )',
'  then',
'    log( ''parsing XLSX'' );',
'    t_what := ''XLSX-file'';',
'    t_parse := utl_raw.cast_to_varchar2( utl_compress.lz_uncompress( utl_encode.base64_decode( utl_raw.cast_to_raw( t_parse_xlsx ) ) ) );',
'    execute immediate t_parse using p_collection_name, t_document, p_sheet_nrs;',
'  elsif dbms_lob.substr( t_document, 8, 1 ) = hextoraw( ''D0CF11E0A1B11AE1'' )',
'  then',
'    log( ''parsing XLS'' );',
'    t_what := ''XLS-file'';',
'    t_parse := utl_raw.cast_to_varchar2( utl_compress.lz_uncompress( utl_encode.base64_decode( utl_raw.cast_to_raw( t_parse_xls ) ) ) );',
'    execute immediate t_parse using p_collection_name, t_document, p_sheet_nrs;',
'  elsif (  dbms_lob.substr( t_document, 1, 1 ) = hextoraw( ''3C'' )',
'        or dbms_lob.substr( t_document, 2, 1 ) = hextoraw( ''003C'' )',
'        or dbms_lob.substr( t_document, 4, 1 ) = hextoraw( ''0000003C'' )',
'        )',
'  then',
'    log( ''parsing XML'' );',
'    t_what := ''XML-file'';',
'    t_parse := utl_raw.cast_to_varchar2( utl_compress.lz_uncompress( utl_encode.base64_decode( utl_raw.cast_to_raw( t_parse_xml ) ) ) );',
'    execute immediate t_parse using p_collection_name, t_document, p_sheet_nrs;',
'  else',
'    log( ''parsing CSV'' );',
'    t_what := ''CSV-file'';',
'    t_parse := utl_raw.cast_to_varchar2( utl_compress.lz_uncompress( utl_encode.base64_decode( utl_raw.cast_to_raw( t_parse_csv ) ) ) );',
'    execute immediate t_parse using p_collection_name, t_document, p_separator, p_enclosed_by, p_encoding;',
'  end if;',
'--',
'    t_rv.success_message := ''Loaded a '' || t_what || '' in '' || to_char( trunc( ( sysdate - t_time ) * 24 * 60 * 60 ) ) || '' seconds'';',
'    return t_rv;',
'exception',
'  when e_no_doc',
'  then',
'    t_rv.success_message := ''No uploaded document found'';',
'    return t_rv;',
'  when others',
'  then',
'    log( dbms_utility.format_error_stack );',
'    log( dbms_utility.format_error_backtrace );',
'    t_rv.success_message := ''Oops, something went wrong in '' || p_plugin.name ||',
'         ''<br/>'' || dbms_utility.format_error_stack || ''<br/><br/>'' ||',
'       dbms_utility.format_error_backtrace || ''<br/><br/>'' ||',
'         ''This could be caused by<ul>'' ||',
'           ''<li>'' || ''my (lack of) programming skills'' || ''</li>'' ||',
'           ''<li>'' || ''something else, people do a lot more with Apex than I ever could imagine''||',
'           ''</li></ul><br/>'' ||',
'           ''try running this plugin in debug mode, and send the debug messages to me, scheffer@amis.nl'';',
'    return t_rv;',
'end;',
''))
,p_api_version=>1
,p_execution_function=>'parse_excel'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'0.800'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(124434894586035742)
,p_plugin_id=>wwv_flow_api.id(124390417198288714)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Browse Item'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The name of the File Browse Item which is used to select the uploaded Excel file.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(124435592208063471)
,p_plugin_id=>wwv_flow_api.id(124390417198288714)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Collection name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The name of the Collection in which the first sheet is placed.',
'<br/>Eventually, other sheets are placed in Colections with a sequence number attached to this name: <br/>',
'<br/>&lt;Collection name&gt;2',
'<br/>&lt;Collection name&gt;3',
'<br/>&lt;Collection name&gt;4'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(124436906800096030)
,p_plugin_id=>wwv_flow_api.id(124390417198288714)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Sheets'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A colon separated list of sheets which should loaded.',
'<br/>When left empty all sheets are loaded.<br/>',
'A sheet is identified by its name or positional number.',
'<br/><br/>For instance',
'<br/>',
'&nbsp;&nbsp;1:3 will load the first and the third sheet<br/>',
'&nbsp;&nbsp;Sheet1:Sheet2 will load the sheets with the names "Sheet1" and  "Sheet2"'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(124437611002125660)
,p_plugin_id=>wwv_flow_api.id(124390417198288714)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'CSV Separator'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>';'
,p_is_translatable=>false
,p_help_text=>'The column separator character used for CSV-files.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(124438308840143914)
,p_plugin_id=>wwv_flow_api.id(124390417198288714)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'CSV Enclosed By'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'"'
,p_is_translatable=>false
,p_help_text=>'A delimiter character used for CSV-files. This character is used to delineate the starting and ending boundary of a data value.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(124439003131180142)
,p_plugin_id=>wwv_flow_api.id(124390417198288714)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'CSV Character set'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The character set used for loading a CSV file.',
'<br/>When left empty the database character set is used.',
'<br/>Use the Oracle name for the character set, for instance WE8MSWIN1252 and not Windows-1252'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(122617384772993178)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'DESKTOP'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>21
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
,p_user_interface_id=>wwv_flow_api.id(122617384772993178)
,p_tab_set=>'TS1'
,p_name=>'Page 1'
,p_alias=>'HOME'
,p_step_title=>'Page 1'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Page 1'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_api.id(124361203674752206)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'1462'
,p_last_upd_yyyymmddhh24miss=>'20200605110309'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124372319168752250)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(124364893844752211)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124375821240984624)
,p_plug_name=>'Datos de la Partida Cargados'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(124364893844752211)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select collection_name',
'     , seq_id',
'     , c001',
'     , c002',
'     , c003',
'     , c004',
'     , c005',
'     , c006',
'     , c007',
'     , c008',
'     , c009',
'     , c010',
'     , c011',
'     , c012',
'     , c013',
'     , c014',
'     , c015',
'     , c016',
'     , c017',
'     , c018',
'     , c020',
'     , c021',
'     , c022',
'     , c023',
'from apex_collections col',
'where collection_name = ''ANTON''',
'order by seq_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_collections',
'where collection_name = ''ANTON'''))
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(124375896233984624)
,p_name=>'First Collection'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
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
,p_owner=>'ANTON'
,p_internal_uid=>5069315682418644
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483112460364190)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Collection Name'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COLLECTION_NAME'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483202937364191)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEQ_ID'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483297242364191)
,p_db_column_name=>'C001'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C001'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483412466364191)
,p_db_column_name=>'C002'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C002'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483497826364191)
,p_db_column_name=>'C003'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'C003'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C003'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483610947364191)
,p_db_column_name=>'C004'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'C004'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C004'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483693417364191)
,p_db_column_name=>'C005'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'C005'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C005'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483796517364192)
,p_db_column_name=>'C006'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'C006'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C006'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124483920541364192)
,p_db_column_name=>'C007'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'C007'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C007'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124484019463364192)
,p_db_column_name=>'C008'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'C008'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C008'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124484119960364192)
,p_db_column_name=>'C009'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'C009'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C009'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(124484193211364192)
,p_db_column_name=>'C010'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'C010'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C010'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(119316388471377143)
,p_db_column_name=>'C011'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'C011'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C011'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(119316486920377164)
,p_db_column_name=>'C012'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'C012'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C012'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(119316602318377164)
,p_db_column_name=>'C013'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'C013'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C013'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(119316688388377165)
,p_db_column_name=>'C014'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'C014'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'C014'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(119316799026377165)
,p_db_column_name=>'C015'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'C015'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'C015'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95810723973208933)
,p_db_column_name=>'C016'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'C016'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C016'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95810844351208938)
,p_db_column_name=>'C017'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'C017'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C017'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95810946061208940)
,p_db_column_name=>'C018'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'C018'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C018'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95811023792208943)
,p_db_column_name=>'C020'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'C020'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C020'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95811138079208944)
,p_db_column_name=>'C021'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'C021'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C021'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95811235431208946)
,p_db_column_name=>'C022'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'C022'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C022'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(95811349561208949)
,p_db_column_name=>'C023'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'C023'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'C023'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(124382792141985939)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'17658'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'SEQ_ID:C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015:C016:C017:C018:C020:C021:C022:C023'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(124469405250366500)
,p_name=>'Second Collection'
,p_template=>wwv_flow_api.id(124364893844752211)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_display_column=>1
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select collection_name',
'     , seq_id',
'     , c001',
'     , c002',
'     , c003',
'     , c004',
'     , c005',
'     , c006',
'     , c007',
'     , c008',
'     , c009',
'     , c010',
'     , c011',
'     , c012',
'     , c013',
'     , c014',
'     , c015',
'from apex_collections col',
'where collection_name like ''ANTON_''',
'order by collection_name, seq_id'))
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null',
'from apex_collections col',
'where collection_name like ''ANTON_'''))
,p_display_condition_type=>'EXISTS'
,p_ajax_enabled=>'Y'
,p_fixed_header=>'NONE'
,p_query_row_template=>wwv_flow_api.id(124368494261752217)
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124469700010366509)
,p_query_column_id=>1
,p_column_alias=>'COLLECTION_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'COLLECTION_NAME'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124469805501366510)
,p_query_column_id=>2
,p_column_alias=>'SEQ_ID'
,p_column_display_sequence=>2
,p_column_heading=>'SEQ_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124469909936366510)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124469991557366510)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470115090366510)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470189915366510)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470321416366510)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470410342366510)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470517179366510)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470602083366510)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470707860366510)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(124470809641366510)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(119315795372374185)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(119315900108374197)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(119315991175374198)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(119316077962374198)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(119316180435374198)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(124538720289398524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(124372319168752250)
,p_button_name=>'P1_LOAD'
,p_button_static_id=>'P1_LOAD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(124362399961752208)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'LOAD'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'EXCEL_LOAD'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(95947727238460457)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(124372319168752250)
,p_button_name=>'SUBMIT'
,p_button_static_id=>'Borrar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(13051092713090498)
,p_button_image_alt=>'Borrar'
,p_button_position=>'TEMPLATE_DEFAULT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(124374094646814562)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>99
,p_branch_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_branch_condition=>'EXCEL_LOAD'
,p_save_state_before_branch_yn=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(95815844177549013)
,p_name=>'P1_COD_CLIENTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(124372319168752250)
,p_prompt=>'Cliente'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(124369214217752219)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108065373076465994)
,p_name=>'P1_FECHA_POLIZA'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(124372319168752250)
,p_prompt=>'Fecha Poliza'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(124369214217752219)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(108066978534645739)
,p_name=>'P1_MENSAJE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(124372319168752250)
,p_prompt=>'Mensaje'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>4000
,p_cHeight=>1
,p_tag_attributes=>'disabled=disabled '
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(124369214217752219)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(124373698047788928)
,p_name=>'P1_BROWSE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(124372319168752250)
,p_prompt=>'Browse'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(124369289350752219)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'WWV_FLOW_FILES'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(95948743093559688)
,p_name=>'borra_datos'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(95947727238460457)
,p_bind_type=>'bind'
,p_bind_event_type=>'mousedown'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124390718461355283)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'PLUGIN_NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_process_name=>'Load Excel'
,p_attribute_01=>'P1_BROWSE'
,p_attribute_02=>'ANTON'
,p_attribute_04=>','
,p_attribute_05=>'"'
,p_process_when_button_id=>wwv_flow_api.id(124538720289398524)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(108061069930662933)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'COPIOLOSDATOS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'--',
'cursor c1 is',
'select * ',
'from vel_GPS_TMP',
'ORDER BY ID',
';',
'   ',
'tmensaje varchar2(1000);',
'begin',
'delete vel_GPS_TMP;',
'--',
'commit;',
'-- ',
'insert into vel_gps',
'(ID, grupo,flota,movil,placa,fecha,latitud,longitud,localizacion,evento,velocidad,zona) ',
'select  seq_id, C001, C002, C003, C004, to_date(C005,''dd/mm/yyyy''), C006, C007, C008, C009, C010, C011               ',
'from apex_collections col',
'where collection_name = ''ANTON''',
'  and seq_id > 1',
'order by  seq_id;',
'',
'commit;',
'--',
'',
':P1_MENSAJE:= ''Se ha cargado las Velocidades, verifique por favor.'';',
'',
'exception',
'when others then',
'   rollback;',
'   tmensaje := sqlerrm;',
'   insert into GPS_EROR values(tmensaje);',
'   commit;',
'end;'))
,p_process_error_message=>'ERROR'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(124538720289398524)
,p_process_success_message=>'EXITO'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(122617384772993178)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Login Page'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_comment=>'This page was generated by the Login Page wizard'
,p_last_updated_by=>'ANTON'
,p_last_upd_yyyymmddhh24miss=>'20130224212341'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(124571504100481046)
,p_plug_name=>'Login Items'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(124572106866481049)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(124571504100481046)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(13051092713090498)
,p_button_image_alt=>'Login'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_request_source=>'LOGIN'
,p_request_source_type=>'STATIC'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_grid_column_span=>1
,p_grid_row_span=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(124571692068481048)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(124571504100481046)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(124571894863481049)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(124571504100481046)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>20
,p_cMaxlength=>100
,p_colspan=>1
,p_rowspan=>1
,p_label_alignment=>'RIGHT'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124572509021481050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'sys.owa_util.mime_header(''text/html'', FALSE);',
'sys.owa_cookie.send(',
'    name=>''LOGIN_USERNAME_COOKIE'',',
'    value=>lower(:P101_USERNAME));',
'exception when others then null;',
'end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124572298723481049)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'wwv_flow_custom_auth_std.login(',
'    p_uname       => :P101_USERNAME,',
'    p_password    => :P101_PASSWORD,',
'    p_session_id  => v(''APP_SESSION''),',
'    p_flow_page   => :APP_ID||'':1''',
'    );'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124572714105481050)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(124572908397481051)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v varchar2(255) := null;',
'    c sys.owa_cookie.cookie;',
'begin',
'   c := sys.owa_cookie.get(''LOGIN_USERNAME_COOKIE'');',
'   :P101_USERNAME := c.vals(1);',
'exception when others then null;',
'end;'))
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(102437935999935515)
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
