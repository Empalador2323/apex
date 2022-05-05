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
,p_default_application_id=>305
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 305 - Movimientos de Proyectos
--
-- Application Export:
--   Application:     305
--   Name:            Movimientos de Proyectos
--   Date and Time:   12:28 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      9
--     Items:                   24
--     Processes:                4
--     Regions:                 18
--     Buttons:                  9
--     Dynamic Actions:          5
--   Shared Components:
--     Logic:
--     Navigation:
--       Tab Sets:               1
--         Tabs:                 8
--       Lists:                  1
--       Breadcrumbs:            1
--         Entries:              2
--       NavBar Entries:         2
--     Security:
--       Authentication:         2
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
--         Button:               6
--         Report:              11
--       LOVs:                   4
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,305)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Movimientos de Proyectos')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'F_305')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'CA6C7077C92908D9963608A26E0C50520C6F91BBDE1B50A16BFA0DD59B08F8A1'
,p_bookmark_checksum_function=>'MD5'
,p_compatibility_mode=>'4.2'
,p_flow_language=>'es-hn'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD/MM/YYYY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(25392555390285293)
,p_populate_roles=>'A'
,p_application_tab_set=>0
,p_logo_image=>'TEXT:Movimientos de Proyectos'
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
,p_last_upd_yyyymmddhh24miss=>'20220118171455'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/navigation
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(37268470690171164)
,p_name=>'Navigation'
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8739037506052108)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8739172155052108)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8739225492052108)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'LEGACY'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8739408539052108)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8739537126052108)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'classic'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(8739697257052108)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(37256877561170958)
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
 p_id=>wwv_flow_api.id(37284867811468703)
,p_icon_sequence=>10
,p_icon_subtext=>'Inicio'
,p_icon_target=>'f?p=112:1:&SESSION.::&DEBUG.'
,p_nav_entry_is_feedback_yn=>'N'
,p_begins_on_new_line=>'NO'
,p_cell_colspan=>1
);
wwv_flow_api.create_icon_bar_item(
 p_id=>wwv_flow_api.id(37266877298171080)
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
 p_id=>wwv_flow_api.id(37268379789171156)
,p_tab_set=>'TS1'
,p_tab_sequence=>10
,p_tab_name=>'T_HOME'
,p_tab_text=>'Por Proyecto/CC/Unidad'
,p_tab_step=>1
,p_tab_also_current_for_pages=>'2'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(17320024175243121)
,p_tab_set=>'TS1'
,p_tab_sequence=>30
,p_tab_name=>'T_MOVS.XO.T.'
,p_tab_text=>'Movs. x O.T.'
,p_tab_step=>3
,p_tab_parent_tabset=>'TS1'
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(50068509056739993)
,p_tab_set=>'TS1'
,p_tab_sequence=>40
,p_tab_name=>'SERVICIOS EXTERNOS'
,p_tab_text=>'SERVICIOS EXTERNOS'
,p_tab_step=>2
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(50442029295473156)
,p_tab_set=>'TS1'
,p_tab_sequence=>50
,p_tab_name=>'Caja Chica'
,p_tab_text=>'Caja Chica'
,p_tab_step=>4
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(57396121335708707)
,p_tab_set=>'TS1'
,p_tab_sequence=>60
,p_tab_name=>'T_ANALISIS'
,p_tab_text=>'ANALISIS'
,p_tab_step=>5
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(93981013324812270)
,p_tab_set=>'TS1'
,p_tab_sequence=>70
,p_tab_name=>'EXTERNOS SOFTLNAD'
,p_tab_text=>'EXTERNOS SOFTLNAD'
,p_tab_step=>8
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(75741753041471352)
,p_tab_set=>'TS1'
,p_tab_sequence=>80
,p_tab_name=>'Costo 2'
,p_tab_text=>'Costo 2'
,p_tab_step=>6
);
wwv_flow_api.create_tab(
 p_id=>wwv_flow_api.id(143539122091063024)
,p_tab_set=>'TS1'
,p_tab_sequence=>90
,p_tab_name=>'Por Proyecto/CC/Unidad 9000s'
,p_tab_text=>'9000''s'
,p_tab_step=>7
);
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/lov_bodegas
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(37273373400223036)
,p_lov_name=>'LOV_BODEGAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select cod_bodega||''-''||descripcion descripcion, cod_bodega from bodegas',
'where cod_cia = :P1_COD_CIA',
'ORDER BY 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_cias
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(37272280054210395)
,p_lov_name=>'LOV_CIAS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nom_comercial compania, cod_cia',
'from  cias',
'order by 1'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_doctoinv
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22413550233782775)
,p_lov_name=>'LOV_DOCTOINV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nom_docto, cod_doctoi',
'from doctos_inv',
'where cod_cia = :P2_COD_CIA'))
);
end;
/
prompt --application/shared_components/user_interface/lovs/lov_productos
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(37274588687246336)
,p_lov_name=>'LOV_PRODUCTOS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COD_PROD||''-''||NOMBRE NOMBRE, COD_PROD from productos',
'where cod_cia = :P1_COD_CIA',
'ORDER BY 1'))
);
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
 p_id=>wwv_flow_api.id(37268074270171111)
,p_name=>' Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(25387757322235920)
,p_parent_id=>0
,p_short_name=>'Parametros'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75754676122471670)
,p_short_name=>'Costo 2'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(37256969623170995)
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
 p_id=>wwv_flow_api.id(37257083628171012)
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
 p_id=>wwv_flow_api.id(37257185699171016)
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
 p_id=>wwv_flow_api.id(37257273455171017)
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
 p_id=>wwv_flow_api.id(37257391095171017)
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
 p_id=>wwv_flow_api.id(37257479248171017)
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
 p_id=>wwv_flow_api.id(37257592164171017)
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
 p_id=>wwv_flow_api.id(37257677073171019)
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
 p_id=>wwv_flow_api.id(37257797268171019)
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
 p_id=>wwv_flow_api.id(37257886351171020)
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
 p_id=>wwv_flow_api.id(37257969580171022)
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
 p_id=>wwv_flow_api.id(37258067834171022)
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
 p_id=>wwv_flow_api.id(37258193799171022)
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
 p_id=>wwv_flow_api.id(37258272837171022)
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
 p_id=>wwv_flow_api.id(37258384554171022)
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
 p_id=>wwv_flow_api.id(37258497690171023)
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
 p_id=>wwv_flow_api.id(37258582340171023)
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
prompt --application/shared_components/user_interface/templates/button/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(37265492660171061)
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
 p_id=>wwv_flow_api.id(37265568787171061)
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
 p_id=>wwv_flow_api.id(37265670216171061)
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
 p_id=>wwv_flow_api.id(37265768444171061)
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
 p_id=>wwv_flow_api.id(37265888984171061)
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
 p_id=>wwv_flow_api.id(37265984931171061)
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
 p_id=>wwv_flow_api.id(37258676339171026)
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
 p_id=>wwv_flow_api.id(37258768592171034)
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
 p_id=>wwv_flow_api.id(37258895460171037)
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
 p_id=>wwv_flow_api.id(37258971449171037)
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
 p_id=>wwv_flow_api.id(37259096263171037)
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
 p_id=>wwv_flow_api.id(37259170445171037)
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
 p_id=>wwv_flow_api.id(37259286970171037)
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
 p_id=>wwv_flow_api.id(37259372453171037)
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
 p_id=>wwv_flow_api.id(37259473456171037)
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
 p_id=>wwv_flow_api.id(37259573064171037)
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
 p_id=>wwv_flow_api.id(37259680405171037)
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
 p_id=>wwv_flow_api.id(37259779254171037)
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
 p_id=>wwv_flow_api.id(37259867042171037)
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
 p_id=>wwv_flow_api.id(37259970461171037)
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
 p_id=>wwv_flow_api.id(37260095097171037)
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
 p_id=>wwv_flow_api.id(37260180198171037)
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
 p_id=>wwv_flow_api.id(37260266279171037)
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
 p_id=>wwv_flow_api.id(37260367579171037)
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
 p_id=>wwv_flow_api.id(37260474648171037)
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
 p_id=>wwv_flow_api.id(37260568215171039)
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
 p_id=>wwv_flow_api.id(37260671271171039)
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
 p_id=>wwv_flow_api.id(37260775870171039)
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
 p_id=>wwv_flow_api.id(37260897093171039)
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
 p_id=>wwv_flow_api.id(37260997357171039)
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
 p_id=>wwv_flow_api.id(37261076984171039)
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
 p_id=>wwv_flow_api.id(37261195369171039)
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
 p_id=>wwv_flow_api.id(37261265948171039)
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
 p_id=>wwv_flow_api.id(37261389804171042)
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
 p_id=>wwv_flow_api.id(37261470121171042)
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
 p_id=>wwv_flow_api.id(37261590439171042)
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
 p_id=>wwv_flow_api.id(37261681264171042)
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
 p_id=>wwv_flow_api.id(37261796819171042)
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
 p_id=>wwv_flow_api.id(37261866507171042)
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
 p_id=>wwv_flow_api.id(37261981027171042)
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
 p_id=>wwv_flow_api.id(37263194839171051)
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
 p_id=>wwv_flow_api.id(37263283611171055)
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
 p_id=>wwv_flow_api.id(37263392931171055)
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
 p_id=>wwv_flow_api.id(37263493219171055)
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
 p_id=>wwv_flow_api.id(37263576903171055)
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
 p_id=>wwv_flow_api.id(37263695527171055)
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
 p_id=>wwv_flow_api.id(37263767427171055)
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
 p_id=>wwv_flow_api.id(37263879210171055)
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
 p_id=>wwv_flow_api.id(37263997234171055)
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
 p_id=>wwv_flow_api.id(37264080689171056)
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
 p_id=>wwv_flow_api.id(37264181058171056)
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
 p_id=>wwv_flow_api.id(37264296649171056)
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
 p_id=>wwv_flow_api.id(37264365944171056)
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
 p_id=>wwv_flow_api.id(37264470234171056)
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
 p_id=>wwv_flow_api.id(37264576716171056)
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
 p_id=>wwv_flow_api.id(37264669887171056)
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
 p_id=>wwv_flow_api.id(37264766076171056)
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
 p_id=>wwv_flow_api.id(37262084725171045)
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
 p_id=>wwv_flow_api.id(37262084725171045)
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
 p_id=>wwv_flow_api.id(37262195128171048)
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
 p_id=>wwv_flow_api.id(37262269185171048)
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
 p_id=>wwv_flow_api.id(37262269185171048)
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
 p_id=>wwv_flow_api.id(37262394469171048)
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
 p_id=>wwv_flow_api.id(37262394469171048)
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
 p_id=>wwv_flow_api.id(37262476207171048)
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
 p_id=>wwv_flow_api.id(37262476207171048)
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
 p_id=>wwv_flow_api.id(37262587749171048)
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
 p_id=>wwv_flow_api.id(37262673162171048)
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
 p_id=>wwv_flow_api.id(37262673162171048)
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
 p_id=>wwv_flow_api.id(37262766927171048)
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
 p_id=>wwv_flow_api.id(37262766927171048)
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
 p_id=>wwv_flow_api.id(37262885658171048)
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
 p_id=>wwv_flow_api.id(37262982257171048)
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
 p_id=>wwv_flow_api.id(37263095308171048)
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
 p_id=>wwv_flow_api.id(37264892244171056)
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
 p_id=>wwv_flow_api.id(37264983339171058)
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
 p_id=>wwv_flow_api.id(37265079730171058)
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
 p_id=>wwv_flow_api.id(37265186981171058)
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
 p_id=>wwv_flow_api.id(37265283607171058)
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
 p_id=>wwv_flow_api.id(37265392671171058)
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
 p_id=>wwv_flow_api.id(37266094310171062)
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
 p_id=>wwv_flow_api.id(37266186948171062)
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
 p_id=>wwv_flow_api.id(37266567300171072)
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
 p_id=>wwv_flow_api.id(37266276853171062)
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
 p_id=>wwv_flow_api.id(37266380069171072)
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
 p_id=>wwv_flow_api.id(37266472247171072)
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
 p_id=>wwv_flow_api.id(37266685369171076)
,p_theme_id=>24
,p_theme_name=>'Cloudy'
,p_theme_internal_name=>'CLOUDY'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'T'
,p_nav_bar_type=>'NAVBAR'
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(37257797268171019)
,p_error_template=>wwv_flow_api.id(37257273455171017)
,p_printer_friendly_template=>wwv_flow_api.id(37258193799171022)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(37256969623170995)
,p_default_button_template=>wwv_flow_api.id(37265492660171061)
,p_default_region_template=>wwv_flow_api.id(37260997357171039)
,p_default_chart_template=>wwv_flow_api.id(37259372453171037)
,p_default_form_template=>wwv_flow_api.id(37259680405171037)
,p_default_reportr_template=>wwv_flow_api.id(37260997357171039)
,p_default_tabform_template=>wwv_flow_api.id(37260997357171039)
,p_default_wizard_template=>wwv_flow_api.id(37261796819171042)
,p_default_menur_template=>wwv_flow_api.id(37258971449171037)
,p_default_listr_template=>wwv_flow_api.id(37259286970171037)
,p_default_irr_template=>wwv_flow_api.id(37260095097171037)
,p_default_report_template=>wwv_flow_api.id(37262673162171048)
,p_default_label_template=>wwv_flow_api.id(37265079730171058)
,p_default_menu_template=>wwv_flow_api.id(37266094310171062)
,p_default_calendar_template=>wwv_flow_api.id(37266276853171062)
,p_default_list_template=>wwv_flow_api.id(37264576716171056)
,p_default_option_label=>wwv_flow_api.id(37265186981171058)
,p_default_required_label=>wwv_flow_api.id(37265392671171058)
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
prompt --application/shared_components/security/authentications/custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(25392555390285293)
,p_name=>'CUSTOM'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom_auth'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_logout_url=>'f?p=LPSIG:LOGIN_DESKTOP:&SESSION.:LOGOUT'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(37266973428171080)
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
 p_id=>wwv_flow_api.id(37266771677171078)
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
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
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
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220118171455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37268681079171183)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(37268470690171164)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(37264576716171056)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37268888670171184)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37258971449171037)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37268074270171111)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(37266094310171062)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75764564297498812)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select  ''0'' cuenta,''infos'' as modulo,',
'decode(cod_agencia,10,''01'',20,''02'')sucursal ,to_char(a.cod_sucursal) Bodega,  a.cod_obra centro_costo,a.cod_obra unidad, '' '' Ot_orignal,',
' A.REFE OT, trunc(a.fecha_docto) fecha_mov, c.cod_prod, e.nombre,',
'  c.cantidad, c.costo_unit, round(c.cantidad*c.costo_unit,2) costo_total,  to_char(i.cod_falla) cod,to_char(i.cod_falla)codigo_falla ,',
'   i.dsrepara,to_char( i.tipo_ot) Tipo_OT,  i.taller, k.descripcion, l.dstiporden',
'  FROM INV_MOVM a, inv_detm c, productos e, agencias f, bodegas g, bodegas h, tordenserv i, tactivos j,  empleados b, empleados d,',
'  tbl_fallas k, ttiporden l',
'  WHERE ',
'     a.cod_doctoi   IN (16)',
'    and trunc(a.fecha_docto) between to_date(:p1_fecha_inicio,''dd/mm/yyyy'') and to_date(:p1_fecha_fin,''dd/mm/yyyy'')',
'    AND a.cod_obra = decode(:p1_proyecto, ''0'',a.cod_obra,:p1_proyecto)',
'    AND a.doc_stat not in (''A'', ''P'')',
'    and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
'    and e.cod_cia = c.cod_cia',
'    and e.cod_prod = c.cod_prod',
'    and f.cod_cia = a.cod_cia',
'    and f.cod_agencia = a.cod_sucursal',
'    and g.cod_cia = a.cod_cia',
'    and g.cod_bodega = a.cod_bodega',
'    and h.cod_cia(+) = a.cod_cia',
'    and a.cod_cia = b.cod_cia(+)',
'    and a.cod_emp_aut = b.cod_emp(+)',
'    and a.cod_cia = d.cod_cia(+)',
'    and a.cod_emp_recibe = d.cod_emp(+)',
'    and h.cod_bodega(+) = a.cod_bodega_orig',
'    and i.CDEMPRESA(+) = replace(to_char(a.cod_cia,''00''),'' '','''')',
'    and i.NMORDEN(+) =  a.refe',
'    and i.cdclase=j.cdclase',
'    and i.correlativo=j.correlativo',
'    and i.cod_falla=k.cod_falla',
'    and i.cdtiporden=l.cdtiporden',
'    and REPLACE(i.cdclase(+)||''-''||i.correlativo(+),'''','' '') = a.cod_obra',
'                            union all                            ',
' select b.cuenta_contable cuenta, a.modulo_origen,cddelegacion sucursal,b.bodega, c.descripcion centro_costo,d.descripcion UNIDAD,f.cdclase||''-''||f.correlativo Ot_original , a.aplicacion OT, trunc(fecha)fecha_mov,b.articulo, ',
'e.descripcion,b.cantidad,round(b.costo_tot_fisc_loc/b.cantidad ,2) costo_unitario,b.costo_tot_FISC_loc costo, to_char(a.consecutivo) cod,to_char(f.cod_falla)codigo_falla, dsrepara,f.tipo_ot,f.taller',
',g.descripcion, h.dstiporden',
' from audit_trans_inv@softland a ',
' inner join transaccion_inv@softland b on a.audit_trans_inv=b.audit_trans_inv',
'inner join centro_costo@Softland c on b.centro_costo=c.Centro_costo ',
'inner join paquete_inventario@softland d on a.paquete_inventario=d.paquete_inventario',
'inner join articulo@softland e on b.articulo=e.articulo',
'inner join tordenserv f on a.aplicacion=to_char(f.nmorden) and f.cddelegacion=decode(BODEGA,''BDN'',''02'',''BDS'',''01'')',
'inner join tbl_fallas g on to_char(f.cod_falla)=to_char(g.cod_falla)',
'inner join ttiporden h on f.cdtiporden=h.cdtiporden',
'--inner join empleado@softland g on f.reportado_por=g.empleado',
'where trunc(fecha) >=to_date(:p1_fecha_inicio,''dd/mm/yyyy'') and  trunc(fecha)<= ',
'(case when to_date(:p1_fecha_fin,''dd/mm/yyyy'')< to_date(''30/09/2020'',''dd/mm/yyyy'' )then to_Date(:p1_fecha_fin,''dd/mm/yyyy'' )else to_Date(''30/09/2020'',''dd/mm/yyyy'') end)',
'and c.descripcion=decode(:p1_proyecto,''0'',c.descripcion,:p1_proyecto) ',
'union all*/',
'Select  c.centro_costo centro, b.cuenta_contable cuenta, a.modulo_origen,cddelegacion sucursal,b.bodega, c.descripcion centro_costo,d.descripcion UNIDAD,f.cdclase||''-''||f.correlativo Ot_original ,u_ot_lp OT,   trunc(b.fecha)fecha_mov,b.articulo, ',
'e.descripcion,b.cantidad,round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) costo_unitario,(round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) )*b.cantidad costo, to_char(a.consecutivo) cod,to_char(f.cod_falla)codigo_falla, dsrepara,f.tipo_ot,f.taller',
',g.nombre, h.dstiporden,to_char(b.fecha,''MM'') mes,e.clasificacion_1 as familia,j.nombre as sistema',
', decode(substr(i.centro_costo,1,7),''1.02.01'', ''Limpios Sur'',''1.02.02'',''Granesles Sur'',''2.02.01'',''Limpios Norte'',''2.02.02'',''Graneles Norte'',''2.02.03'',''Bitumen'',''2.02.04'',''BUNKER'',''2.01.02'',''Operaciones norte'' ,''1.01.02'', ''Operaciones Sur'') FLota',
' from   pipasgt.audit_trans_inv a left  join pipasgt.u_invsoftland i on a.aplicacion= i.u_codigo ',
'inner join pipasgt.transaccion_inv b on a.audit_trans_inv=b.audit_trans_inv',
'inner join pipasgt.centro_costo c on b.centro_costo=c.Centro_costo ',
'inner join pipasgt.paquete_inventario d on a.paquete_inventario=d.paquete_inventario',
'inner join pipasgt.articulo e on b.articulo=e.articulo',
'left  join tordenserv f on to_char(f.nmorden)=i.u_OT_LP',
'left join tipo_falla g on to_char(f.cod_falla)=to_char(g.id_cod)',
'left join ttiporden h on f.cdtiporden=h.cdtiporden',
'inner join tipo_general_falla j on f.sistema=j.ID_COD',
'inner join pipasgt.centro_costo i on i.descripcion=f.cdclase||''-''||f.correlativo',
'where  ',
'trunc(b.fecha) >= (case when to_date(:p1_fecha_inicio,''dd/mm/yyyy'')>to_date(''30/09/2020'',''dd/mm/yyyy'' )then to_Date(:p1_fecha_inicio,''dd/mm/yyyy'' )else  to_Date(''30/09/2020'',''dd/mm/yyyy'') end) and',
'trunc(b.fecha) <=to_date(:p1_fecha_FIn,''dd/mm/yyyy'')',
'and c.descripcion=decode(:p1_proyecto,''0'',c.descripcion,:p1_proyecto)and taller not in (17)',
'union all ',
'Select   c.centro_costo centro,b.cuenta_contable cuenta, a.modulo_origen,cddelegacion sucursal,b.bodega, c.descripcion centro_costo,d.descripcion UNIDAD,f.cdclase||''-''||f.correlativo Ot_original ,u_ot_lp OT,   trunc(b.fecha)fecha_mov,b.articulo, ',
'e.descripcion,b.cantidad,round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) costo_unitario,(round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) )*b.cantidad costo, to_char(a.consecutivo) cod,to_char(f.cod_falla)codigo_falla, dsrepara,f.tipo_ot,f.taller',
',g.nombre, h.dstiporden,to_char(b.fecha,''MM'') mes,e.clasificacion_1 as familia,j.nombre as sistema',
',decode(substr(i.centro_costo,1,7),''1.02.01'', ''Limpios Sur'',''1.02.02'',''Granesles Sur'',''2.02.01'',''Limpios Norte'',''2.02.02'',''Graneles Norte'',''2.02.03'',''Bitumen'',''2.02.04'',''BUNKER'',''2.01.02'',''Operaciones norte'' ,''1.01.02'', ''Operaciones Sur'') FLota',
' from   pipascon.audit_trans_inv a ',
' left  join pipascon.u_invsoftland i on a.aplicacion= i.u_codigo ',
'inner join pipascon.transaccion_inv b on a.audit_trans_inv=b.audit_trans_inv',
'inner join pipascon.centro_costo c on b.centro_costo=c.Centro_costo ',
'inner join pipascon.paquete_inventario d on a.paquete_inventario=d.paquete_inventario',
'inner join pipascon.articulo e on b.articulo=e.articulo',
'left  join tordenserv f on to_char(f.nmorden)=i.u_OT_LP',
'left join tipo_falla g on to_char(f.cod_falla)=to_char(g.id_cod)',
'left join ttiporden h on f.cdtiporden=h.cdtiporden',
'inner join tipo_general_falla j on f.sistema=j.ID_COD',
'inner join pipasgt.centro_costo i on i.descripcion=f.cdclase||''-''||f.correlativo',
'where  ',
'trunc(b.fecha) >= (case when to_date(:p1_fecha_inicio,''dd/mm/yyyy'')>to_date(''30/09/2020'',''dd/mm/yyyy'' )then to_Date(:p1_fecha_inicio,''dd/mm/yyyy'' )else  to_Date(''30/09/2020'',''dd/mm/yyyy'') end) and',
'trunc(b.fecha) <=to_date(:p1_fecha_FIn,''dd/mm/yyyy'')',
'and c.descripcion=decode(:p1_proyecto,''0'',c.descripcion,:p1_proyecto)and taller not in (17)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1_PROYECTO,P1_FECHA_INICIO,P1_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(75764673970498813)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>75764673970498813
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75764708909498814)
,p_db_column_name=>'CUENTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cuenta'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75764822683498815)
,p_db_column_name=>'MODULO_ORIGEN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Modulo Origen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75764960285498816)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765050641498817)
,p_db_column_name=>'BODEGA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765102661498818)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Centro Costo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765295593498819)
,p_db_column_name=>'UNIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765366308498820)
,p_db_column_name=>'OT_ORIGINAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ot Original'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765457742498821)
,p_db_column_name=>'OT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765511085498822)
,p_db_column_name=>'FECHA_MOV'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Mov'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765602227498823)
,p_db_column_name=>'ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765798617498824)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765868231498825)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75765972170498826)
,p_db_column_name=>'COSTO_UNITARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766003163498827)
,p_db_column_name=>'COSTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766146860498828)
,p_db_column_name=>'COD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766251326498829)
,p_db_column_name=>'CODIGO_FALLA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Codigo Falla'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766300044498830)
,p_db_column_name=>'DSREPARA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Dsrepara'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766454843498831)
,p_db_column_name=>'TIPO_OT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tipo Ot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766581578498832)
,p_db_column_name=>'TALLER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Taller'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766664285498833)
,p_db_column_name=>'NOMBRE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766779878498834)
,p_db_column_name=>'DSTIPORDEN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Dstiporden'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75766998981498836)
,p_db_column_name=>'MES'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(118962693912145602)
,p_db_column_name=>'FAMILIA'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Familia'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122051025075142947)
,p_db_column_name=>'SISTEMA'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Sistema'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(132798324635976602)
,p_db_column_name=>'FLOTA'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Flota'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5496404081929703)
,p_db_column_name=>'CENTRO'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Centro'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75814208878053375)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'758143'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUENTA:MODULO_ORIGEN:SUCURSAL:BODEGA:OT_ORIGINAL:OT:FECHA_MOV:ARTICULO:DESCRIPCION:CANTIDAD:COSTO_UNITARIO:COSTO:COD:CODIGO_FALLA:DSREPARA:TIPO_OT:TALLER:NOMBRE:DSTIPORDEN:MES:FAMILIA:SISTEMA:FLOTA:CENTRO'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(84186014882329328)
,p_report_id=>wwv_flow_api.id(75814208878053375)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'BODEGA'
,p_operator=>'='
,p_expr=>'BDS'
,p_condition_sql=>'"BODEGA" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''BDS''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(84186325960329334)
,p_report_id=>wwv_flow_api.id(75814208878053375)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SUCURSAL'
,p_operator=>'='
,p_expr=>'02'
,p_condition_sql=>'"SUCURSAL" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''02''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37275277938257131)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(37268681079171183)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
,p_button_image_alt=>'Generar Reporte'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37272794319213341)
,p_name=>'P1_COD_CIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37268681079171183)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37273568008225550)
,p_name=>'P1_PROYECTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37268681079171183)
,p_prompt=>'Proyecto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROYECTO||''-''||NOMBRE NOMBRE, PROYECTO',
'FROM PROYECTO',
'WHERE COD_CIA = :P1_COD_CIA',
'UNION',
'SELECT ''TODOS'' NOMBRE, ''0'' PROYECTO',
'FROM DUAL',
'  ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1_COD_CIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37274977688251458)
,p_name=>'P1_FECHA_INICIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(37268681079171183)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37275173806253297)
,p_name=>'P1_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(37268681079171183)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(103183305661233879)
,p_name=>'P1_ESTACION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(37268681079171183)
,p_prompt=>'Estacion'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37280993054327705)
,p_name=>'NOMBRE_PRODUCTO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PRODUCTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37281291380327712)
,p_event_id=>wwv_flow_api.id(37280993054327705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE FROM PRODUCTOS',
'WHERE COD_CIA = :P1_COD_CIA',
'AND COD_PROD = :P1_PRODUCTOS'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(37282093185337270)
,p_name=>'ocultar'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(37282369167337270)
,p_event_id=>wwv_flow_api.id(37282093185337270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1_NOMBRE'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_tab_set=>'TS1'
,p_name=>'Servicios'
,p_step_title=>'Servicios'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Servicios'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210426170516'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50068619644739996)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Formatted on 13/07/2017 03:03:01 p.m. (QP5 v5.114.809.3010) */',
'  SELECT   fecrea fecha_ot,',
'           fecha_mov,',
'           cod_sucursal,',
'           sucursal,',
'           cod_bodega_salida,',
'           bodega_salida,',
'           consignacion,',
'           cod_bodega_destino,',
'           bodega_destino, ',
'           dstiporden,',
'           refe OT,',
'           cod_obra unidad,',
'           cod_falla,',
'            descripcion_repara,',
'           SUM (costo_total) costo,',
'                     tipo_ot,',
'           estado,',
'           descripcion,',
'           es_servicio,',
'           requisicion,',
'           empleado_autoriza,',
'           AGENCIA_UNIDAD     , description     ',
'    FROM   (SELECT   a.cod_sucursal,',
'                     f.nom_agencia sucursal,',
'                     a.cod_bodega cod_bodega_salida,',
'                     G.DESCRIPCION bodega_salida,',
'                     g.consignacion,',
'                     a.COD_BODEGA_ORIG cod_bodega_destino,',
'                     h.descripcion bodega_destino,',
'                     a.cod_obra,',
'                     A.REFE,',
'                     TRUNC (a.fecha_docto) fecha_mov,',
'                     c.cod_prod,',
'                     e.nombre,',
'                     c.cantidad,',
'                     c.costo_unit,',
'                     ROUND (c.cantidad * c.costo_unit, 2) costo_total,',
'                     k.dstiporden,',
'                     i.Fecrea,',
'                     i.cod_falla,',
'                     i.dsrepara,',
'                     i.tipo_ot,',
'                     i.estado,',
'                     i.dsrepara descripcion,',
'                     i.es_servicio,',
'                     j.descripcion descripcion_repara,',
'                     a.num_req requisicion,',
'                     b.nombres||''-''||b.apellidos empleado_autoriza  ,',
'                     w.description,',
'                     (select delegacion from proyecto where cod_obra=proyecto) as AGENCIA_UNIDAD                   ',
'              FROM   INV_MOVM a,',
'                     inv_detm c,',
'                     productos e,',
'                     agencias f,',
'                     bodegas g,',
'                     bodegas h,',
'                     tordenserv i,',
'                     tbl_fallas j,',
'                     ttiporden  k,',
'                     empleados b,',
'                     tbl_taller w',
'             WHERE    a.cod_doctoi IN (16)',
'                     AND TRUNC (a.fecha_docto) BETWEEN to_date(:p3_fecha_inicio,''dd/mm/yyyy'')  ',
'                                                   AND  to_date(:p3_fecha_fin,''dd/mm/yyyy'') ',
'                     AND a.doc_stat NOT IN (''A'', ''P'')',
'                     AND c.cod_cia = a.cod_cia',
'                     AND c.cod_bodega = a.cod_bodega',
'                     AND c.cod_doctoi = a.cod_doctoi',
'                     AND c.num_docto = a.num_docto',
'                     AND e.cod_cia = c.cod_cia',
'                     AND e.cod_prod = c.cod_prod',
'                     AND f.cod_cia = a.cod_cia',
'                     AND f.cod_agencia = a.cod_sucursal',
'                     AND g.cod_cia = a.cod_cia',
'                     AND g.cod_bodega = a.cod_bodega',
'                     and a.cod_cia = b.cod_cia(+)',
'                     and a.cod_emp_aut = b.cod_emp(+)',
'                     AND h.cod_cia(+) = a.cod_cia',
'                     AND h.cod_bodega(+) = a.cod_bodega_orig',
'                     AND i.CDEMPRESA(+) =',
'                           REPLACE (TO_CHAR (a.cod_cia, ''00''), '' '', '''')',
'                     AND i.NMORDEN(+) = a.refe',
'                     and i.cod_falla=j.cod_falla',
'                     and i.cdtiporden=k.cdtiporden',
'                     and i.taller=w.id',
'                     AND REPLACE (i.cdclase(+) || ''-'' || i.correlativo(+),',
'                                  '''',',
'                                  '' '') = a.cod_obra--order by 1, 3, 5,7, 8, 9, 10',
'           )',
'GROUP BY   fecrea,',
'           fecha_mov,',
'           cod_sucursal,',
'           sucursal,',
'           cod_bodega_salida,',
'           bodega_salida,',
'           consignacion,',
'           cod_bodega_destino,',
'           bodega_destino,',
'           refe,',
'           cod_obra,',
'           cod_falla,',
'           tipo_ot,',
'           estado,',
'           descripcion,',
'           es_servicio,',
'           descripcion_repara,',
'           dstiporden,',
'           requisicion,',
'           empleado_autoriza,AGENCIA_UNIDAD, description   ',
'ORDER BY   2, 3, 10'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(50068717232739996)
,p_name=>'Report 1'
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
,p_internal_uid=>50068717232739996
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50068927416740020)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Sucursal'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUCURSAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50069300813740028)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPCION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50438512082351878)
,p_db_column_name=>'TIPO_OT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tipo Ot'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TIPO_OT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77365581547705701)
,p_db_column_name=>'FECHA_OT'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Fecha Ot'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77365675034705702)
,p_db_column_name=>'FECHA_MOV'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Fecha Mov'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77365733035705703)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>46
,p_column_identifier=>'S'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77365865928705704)
,p_db_column_name=>'COD_BODEGA_SALIDA'
,p_display_order=>56
,p_column_identifier=>'T'
,p_column_label=>'Cod Bodega Salida'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77365961164705705)
,p_db_column_name=>'BODEGA_SALIDA'
,p_display_order=>66
,p_column_identifier=>'U'
,p_column_label=>'Bodega Salida'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366044939705706)
,p_db_column_name=>'CONSIGNACION'
,p_display_order=>76
,p_column_identifier=>'V'
,p_column_label=>'Consignacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366142973705707)
,p_db_column_name=>'COD_BODEGA_DESTINO'
,p_display_order=>86
,p_column_identifier=>'W'
,p_column_label=>'Cod Bodega Destino'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366261211705708)
,p_db_column_name=>'BODEGA_DESTINO'
,p_display_order=>96
,p_column_identifier=>'X'
,p_column_label=>'Bodega Destino'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366341386705709)
,p_db_column_name=>'DSTIPORDEN'
,p_display_order=>106
,p_column_identifier=>'Y'
,p_column_label=>'Dstiporden'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366465639705710)
,p_db_column_name=>'OT'
,p_display_order=>116
,p_column_identifier=>'Z'
,p_column_label=>'Ot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366511368705711)
,p_db_column_name=>'UNIDAD'
,p_display_order=>126
,p_column_identifier=>'AA'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366692388705712)
,p_db_column_name=>'COD_FALLA'
,p_display_order=>136
,p_column_identifier=>'AB'
,p_column_label=>'Cod Falla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366785511705713)
,p_db_column_name=>'DESCRIPCION_REPARA'
,p_display_order=>146
,p_column_identifier=>'AC'
,p_column_label=>'Descripcion Repara'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366888079705714)
,p_db_column_name=>'COSTO'
,p_display_order=>156
,p_column_identifier=>'AD'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77366952657705715)
,p_db_column_name=>'ESTADO'
,p_display_order=>166
,p_column_identifier=>'AE'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367035509705716)
,p_db_column_name=>'ES_SERVICIO'
,p_display_order=>176
,p_column_identifier=>'AF'
,p_column_label=>'Es Servicio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367108266705717)
,p_db_column_name=>'REQUISICION'
,p_display_order=>186
,p_column_identifier=>'AG'
,p_column_label=>'Requisicion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367220586705718)
,p_db_column_name=>'EMPLEADO_AUTORIZA'
,p_display_order=>196
,p_column_identifier=>'AH'
,p_column_label=>'Empleado Autoriza'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367301281705719)
,p_db_column_name=>'AGENCIA_UNIDAD'
,p_display_order=>206
,p_column_identifier=>'AI'
,p_column_label=>'Agencia Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367490279705720)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>216
,p_column_identifier=>'AJ'
,p_column_label=>'Description'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(50070322807740260)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'500704'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUCURSAL:DESCRIPCION:CANTIDAD_UNITARIO:TIPO_:FECHA_FECHA_MOV:COD_SUCURSAL:COD_BODEGA_SALIDA:BODEGA_SALIDA:CONSIGNACION:COD_BODEGA_DESTINO:BODEGA_DESTINO:DSTIPORDEN:OT:UNIDAD:COD_FALLA:DESCRIPCION_REPARA:COSTO:ESTADO:ES_SERVICIO:REQUISICION:EMPLEADO_A'
||'UTORIZA:AGENCIA_UNIDAD:DESCRIPTION'
,p_sum_columns_on_break=>'SUB_TOTAL'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(50439104384375581)
,p_report_id=>wwv_flow_api.id(50070322807740260)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SUCURSAL'
,p_operator=>'='
,p_expr=>'10-Predio Sur'
,p_condition_sql=>'"SUCURSAL" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''10-Predio Sur''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(50439226506375581)
,p_report_id=>wwv_flow_api.id(50070322807740260)
,p_group_by_columns=>'COD_PRODUCTO'
,p_function_01=>'SUM'
,p_function_column_01=>'SUB_TOTAL'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50070801120743498)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>5
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
 p_id=>wwv_flow_api.id(50071720860749168)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(50070801120743498)
,p_button_name=>'P2_MOSTRAR'
,p_button_static_id=>'P2_MOSTRAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Mostrar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50071326426746481)
,p_name=>'P2_FECHA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50070801120743498)
,p_prompt=>'Fecha Inicial'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50071519953746485)
,p_name=>'P2_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50070801120743498)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_tab_set=>'TS1'
,p_name=>'Moviiento por OT'
,p_step_title=>'Moviiento por OT'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210430103237'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17317128200214294)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17317340634219736)
,p_plug_name=>'Movimientos por O.T.'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    /* Formatted on 13/07/2017 03:03:01 p.m. (QP5 v5.114.809.3010) */',
'      SELECT   fecrea fecha_ot,',
'               fecha_mov,',
'               cod_sucursal,',
'               sucursal,',
'               cod_bodega_salida,',
'               bodega_salida,',
'               consignacion,',
'               cod_bodega_destino,',
'               bodega_destino, ',
'               dstiporden,',
'               refe OT,',
'               cod_obra unidad,',
'               cod_falla,',
'                descripcion_repara,',
'               SUM (costo_total) costo,',
'                         tipo_ot,',
'               estado,',
'               a.descripcion,',
'               es_servicio,',
'               requisicion,',
'               empleado_autoriza,',
'               AGENCIA_UNIDAD     , description  , cod_prod   ,nombre,',
'               decode(substr(centro_costo,1,7),''2.02.03'',''Bitumen Norte'',''2.02.04'',''Bunker Norte'',''1.02.01'',''Limpios Sur'',''1.02.02'',''Graneles Sur'',''2.02.01'',''Limpios Norte'',''2.02.02'',''Graneles Norte'') as flota',
'        FROM   (SELECT  ',
'        a.cod_sucursal,',
'                         f.nom_agencia sucursal,',
'                         a.cod_bodega cod_bodega_salida,',
'                         G.DESCRIPCION bodega_salida,',
'                         g.consignacion,',
'                         a.COD_BODEGA_ORIG cod_bodega_destino,',
'                         h.descripcion bodega_destino,',
'                         a.cod_obra,',
'                         A.REFE,',
'                         TRUNC (a.fecha_docto) fecha_mov,',
'                         c.cod_prod,',
'                         e.nombre,',
'                         c.cantidad,',
'                         c.costo_unit,',
'                         ROUND (c.cantidad * c.costo_unit, 2) costo_total,',
'                         k.dstiporden,',
'                         i.Fecrea,',
'                         i.cod_falla,',
'                         i.dsrepara,',
'                         i.tipo_ot,',
'                         i.estado,',
'                         i.dsrepara descripcion,',
'                         i.es_servicio,',
'                         j.descripcion descripcion_repara,',
'                         a.num_req requisicion,',
'                         b.nombres||''-''||b.apellidos empleado_autoriza  ,',
'                         w.description,',
'                         (select delegacion from proyecto where cod_obra=proyecto) as AGENCIA_UNIDAD                   ',
'                  FROM   INV_MOVM a,',
'                         inv_detm c,',
'                        productos e,',
'                         agencias f,',
'                         bodegas g,',
'                         bodegas h,',
'                         tordenserv i,',
'                         tbl_fallas j,',
'                         ttiporden  k,',
'                         empleados b,',
'                         tbl_taller w',
'                 WHERE    a.cod_doctoi IN (16)',
'                         AND TRUNC (a.fecha_docto) BETWEEN to_date(:p3_fecha_inicio,''dd/mm/yyyy'')  ',
'                                                       AND  to_date(:p3_fecha_fin,''dd/mm/yyyy'') ',
'                         AND a.doc_stat NOT IN (''A'', ''P'')',
'                         AND c.cod_cia = a.cod_cia',
'                         AND c.cod_bodega = a.cod_bodega',
'                         AND c.cod_doctoi = a.cod_doctoi',
'                         AND c.num_docto = a.num_docto',
'                         AND e.cod_cia = c.cod_cia',
'                         AND e.cod_prod = c.cod_prod',
'                         AND f.cod_cia = a.cod_cia',
'                         AND f.cod_agencia = a.cod_sucursal',
'                         AND g.cod_cia = a.cod_cia',
'                         AND g.cod_bodega = a.cod_bodega',
'                         and a.cod_cia = b.cod_cia(+)',
'                         and a.cod_emp_aut = b.cod_emp(+)',
'                                and c.cod_prod not in(''3894'')',
'                         AND h.cod_cia(+) = a.cod_cia',
'                         AND h.cod_bodega(+) = a.cod_bodega_orig',
'                         AND i.CDEMPRESA(+) =',
'                               REPLACE (TO_CHAR (a.cod_cia, ''00''), '' '', '''')',
'                         AND i.NMORDEN(+) = a.refe',
'                         and i.cod_falla=j.cod_falla',
'                         and i.cdtiporden=k.cdtiporden',
'                         and i.taller=w.id',
'                         AND REPLACE (i.cdclase(+) || ''-'' || i.correlativo(+),',
'                                      '''',',
'                                      '' '') = a.cod_obra--order by 1, 3, 5,7, 8, 9, 10',
'               ) a',
'               left join  pipasgt.centro_costo b on a.cod_obra=b.descripcion',
'                   GROUP BY   fecrea,',
'               fecha_mov,',
'               cod_sucursal,',
'               sucursal,',
'               cod_bodega_salida,',
'               bodega_salida,',
'               consignacion,',
'               cod_bodega_destino,',
'               bodega_destino,',
'               refe,',
'               cod_obra,',
'               cod_falla,',
'               tipo_ot,',
'               estado,',
'               a.descripcion,',
'               es_servicio,',
'               descripcion_repara,',
'               dstiporden,',
'               requisicion,',
'               empleado_autoriza,AGENCIA_UNIDAD, description   ,cod_prod, nombre, centro_costo',
'    ORDER BY   2, 3, 10',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P3_FECHA_INICIO,P3_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
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
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#ffffff'
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
 p_id=>wwv_flow_api.id(17317441872219736)
,p_name=>'Movimientos por O.T.'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'SIG'
,p_internal_uid=>3521427579503918
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17317641209219760)
,p_db_column_name=>'FECHA_OT'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fecha Ot'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA_OT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17317739394219763)
,p_db_column_name=>'FECHA_MOV'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Mov'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA_MOV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17317843114219763)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cod Sucursal'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_SUCURSAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17317933990219763)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Sucursal'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUCURSAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318016583219763)
,p_db_column_name=>'COD_BODEGA_SALIDA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cod Bodega Salida'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_BODEGA_SALIDA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318117754219763)
,p_db_column_name=>'BODEGA_SALIDA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Bodega Salida'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BODEGA_SALIDA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318219719219764)
,p_db_column_name=>'CONSIGNACION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Consignacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONSIGNACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318317117219764)
,p_db_column_name=>'COD_BODEGA_DESTINO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cod Bodega Destino'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_BODEGA_DESTINO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318424477219764)
,p_db_column_name=>'BODEGA_DESTINO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Bodega Destino'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BODEGA_DESTINO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318515539219764)
,p_db_column_name=>'OT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Ot'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'OT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318626191219764)
,p_db_column_name=>'UNIDAD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Unidad'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UNIDAD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318742969219764)
,p_db_column_name=>'COD_FALLA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cod Falla'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_FALLA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17318844512219764)
,p_db_column_name=>'COSTO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Costo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'S999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'COSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17341527793687775)
,p_db_column_name=>'TIPO_OT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Tipo O.T.'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TIPO_OT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17341615039687780)
,p_db_column_name=>'ESTADO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Estado'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ESTADO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17341734245687783)
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
 p_id=>wwv_flow_api.id(17341835724687785)
,p_db_column_name=>'ES_SERVICIO'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Es Servicio'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ES_SERVICIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17499919161621828)
,p_db_column_name=>'DSTIPORDEN'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Dstiporden'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DSTIPORDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17500035005621836)
,p_db_column_name=>'DESCRIPCION_REPARA'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Descripcion Repara'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPCION_REPARA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18063621701640847)
,p_db_column_name=>'REQUISICION'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Requisicion'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'REQUISICION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18063738782640847)
,p_db_column_name=>'EMPLEADO_AUTORIZA'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Empleado Autoriza'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLEADO_AUTORIZA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(21340544857444063)
,p_db_column_name=>'AGENCIA_UNIDAD'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Agencia Unidad'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'AGENCIA_UNIDAD'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(45931913724553201)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Description'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369661019705742)
,p_db_column_name=>'COD_PROD'
,p_display_order=>33
,p_column_identifier=>'X'
,p_column_label=>'Cod Prod'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369758261705743)
,p_db_column_name=>'NOMBRE'
,p_display_order=>43
,p_column_identifier=>'Y'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369850948705744)
,p_db_column_name=>'FLOTA'
,p_display_order=>53
,p_column_identifier=>'Z'
,p_column_label=>'Flota'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17320233408246063)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'35243'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FECHA_OT:FECHA_MOV:COD_SUCURSAL:SUCURSAL:COD_BODEGA_SALIDA:BODEGA_SALIDA:CONSIGNACION:COD_BODEGA_DESTINO:BODEGA_DESTINO:OT:UNIDAD:COD_FALLA:COSTO:TIPO_OT:ESTADO:DESCRIPCION:ES_SERVICIO:DSTIPORDEN:DESCRIPCION_REPARA:REQUISICION:EMPLEADO_AUTORIZA:AGENC'
||'IA_UNIDAD:DESCRIPTION:COD_PROD:NOMBRE:FLOTA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17321126051262836)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17317128200214294)
,p_button_name=>'GENERAR_REPORTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265568787171061)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar Reporte'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17319328299235449)
,p_name=>'P3_FECHA_INICIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17317128200214294)
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17319518612235449)
,p_name=>'P3_FECHA_FIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17317128200214294)
,p_prompt=>'Fecha Fin'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_tab_set=>'TS1'
,p_name=>'Caja Chica'
,p_step_title=>'Caja Chica'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Caja Chica'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20190308193132'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50442116513473157)
,p_plug_name=>'Caja Chica'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>'select proyecto,cod_gasto, des_mov,fec_docto,cod_caja, total_compra from Mov_caja  where fec_docto>=to_date(:P4_FECHA_INICAL,''dd/mm/yyyy'') and fec_docto<=to_date(:P4_FECHA_FIN,''dd/mm/yyyy'')'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(50442207309473157)
,p_name=>'Caja Chica'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_show_pivot=>'N'
,p_download_formats=>'CSV:HTML:EMAIL'
,p_owner=>'LP'
,p_internal_uid=>50442207309473157
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50442400290473178)
,p_db_column_name=>'PROYECTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Proyecto'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PROYECTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50442528433473178)
,p_db_column_name=>'COD_GASTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cod Gasto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_GASTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50442614847473178)
,p_db_column_name=>'DES_MOV'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Des Mov'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DES_MOV'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50442703819473178)
,p_db_column_name=>'FEC_DOCTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fec Docto'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FEC_DOCTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50442820827473178)
,p_db_column_name=>'COD_CAJA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cod Caja'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COD_CAJA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(50442919571473178)
,p_db_column_name=>'TOTAL_COMPRA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Total Compra'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_COMPRA'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(50443822102484815)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'504439'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'PROYECTO:COD_GASTO:DES_MOV:FEC_DOCTO:COD_CAJA:TOTAL_COMPRA'
,p_sort_column_1=>'COD_CAJA'
,p_sort_direction_1=>'ASC'
,p_sum_columns_on_break=>'TOTAL_COMPRA'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(50446727839675748)
,p_report_id=>wwv_flow_api.id(50443822102484815)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'COD_CAJA'
,p_operator=>'in'
,p_expr=>'1,2,5,7,8'
,p_condition_sql=>'"COD_CAJA" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#, #APXWS_EXPR_VAL3#, #APXWS_EXPR_VAL4#, #APXWS_EXPR_VAL5#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# 1, 2, 5, 7, 8  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(50446801902675748)
,p_report_id=>wwv_flow_api.id(50443822102484815)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'PROYECTO'
,p_operator=>'not in'
,p_expr=>'ADM,9000-3,9000-5'
,p_condition_sql=>'"PROYECTO" not in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#, #APXWS_EXPR_VAL3#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''ADM, 9000-3, 9000-5''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(50446926362675748)
,p_report_id=>wwv_flow_api.id(50443822102484815)
,p_group_by_columns=>'PROYECTO'
,p_function_01=>'SUM'
,p_function_column_01=>'TOTAL_COMPRA'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'TOTAL'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50443621409484598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50442116513473157)
,p_button_name=>'GENERAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generar'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50443230517480146)
,p_name=>'P4_FECHA_INICAL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50442116513473157)
,p_prompt=>'Fecha Inical'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50443409148480151)
,p_name=>'P4_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50442116513473157)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
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
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211216151242'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(57397917756708768)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75768125019498848)
,p_plug_name=>'Analisis'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *  from (',
'select PROYECTO,DELEGACION,DESCRIPCION,COSTO_TOTAL,ORIGEN,decode(substr(centro_costo,1,7),''1.02.01'', ''Limpios Sur'',''1.02.02'',''Granesles Sur'',''2.02.01'',''Limpios Norte'',''2.02.02'',''Graneles Norte'',''2.02.03'',''Bitumen'',''2.02.04'',''BUNKER'',''2.01.02'',''Operac'
||'iones norte'' ,''1.01.02'', ''Operaciones Sur'') FLota from (',
'--caja chica',
'Select proyecto, sum(costo_total) costo_total, origen, delegacion  from  (',
'select descripcion proyecto ,sum(monto) costo_total,''Caja_chica'' origen,decode( substr(a.centro_costo,1,1),1,''01'',2,''02'') delegacion',
'    from docs_soporte a inner join centro_costo  b on a.CENTRO_COSTO = b.CENTRO_COSTO',
'        WHERE  A.FECHA >= to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'')',
'    and A.FECHA <=to_date(:p5_fecha_fin,''dd/mm/yyyy'')',
'   group by  descripcion , substr(a.centro_costo,1,1) ',
'    union all ',
'      select proyecto,  nvl( sum(total_compra),0)  costo_total, ''Caja_chica'' Origen, C.cddelegacion from Mov_caja a inner join tactivos b on ',
'   a.proyecto=b.cdclase||''-''||b.correlativo',
'   INNER JOIN CXP.CAJA_CHICA C ON A.COD_CAJA=C.COD_CAJA',
'where fec_docto>=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and fec_docto<=to_date(:p5_fecha_fin,''dd/mm/yyyy'')',
'   group by proyecto, C.cddelegacion',
'   )',
'       group by  proyecto ,origen, delegacion   ',
'union all ',
'--bodega',
'Select proyecto, sum(costo_total), origen, delegacion  from (',
'SELECT    a.cod_obra proyecto, sum( ROUND (c.cantidad * c.costo_unit, 2) )costo_total, ''Bodega'' origen,',
' decode (a.cod_sucursal,10,''01'',20,''02'') delegacion                ',
'              FROM   INV_MOVM a,',
'                     inv_detm c,',
'                     productos e,',
'                     agencias f,',
'                     bodegas g,',
'                     bodegas h,',
'                     tordenserv i,',
'                     tbl_fallas j,',
'                     ttiporden  k,',
'                     empleados b,',
'                     tbl_taller w',
'             WHERE    a.cod_doctoi IN (16)',
'                     AND TRUNC (a.fecha_docto) BETWEEN to_date(:p5_fecha_inicio,''dd/mm/yyyy'') ',
'                                                   AND  to_date(:p5_fecha_fin,''dd/mm/yyyy'') ',
'                     AND a.doc_stat NOT IN (''A'', ''P'')',
'                     AND c.cod_cia = a.cod_cia',
'                     AND c.cod_bodega = a.cod_bodega',
'                     AND c.cod_doctoi = a.cod_doctoi',
'                     AND c.num_docto = a.num_docto',
'                     AND e.cod_cia = c.cod_cia',
'                     AND e.cod_prod = c.cod_prod',
'                     AND f.cod_cia = a.cod_cia',
'                     AND f.cod_agencia = a.cod_sucursal',
'                     AND g.cod_cia = a.cod_cia',
'                     AND g.cod_bodega = a.cod_bodega',
'                     and a.cod_cia = b.cod_cia(+)',
'                     and a.cod_emp_aut = b.cod_emp(+)',
'                     AND h.cod_cia(+) = a.cod_cia',
'                     AND h.cod_bodega(+) = a.cod_bodega_orig',
'                     AND i.CDEMPRESA(+) =',
'                           REPLACE (TO_CHAR (a.cod_cia, ''00''), '' '', '''')',
'                     AND i.NMORDEN(+) = a.refe',
'                     and i.cod_falla=j.cod_falla',
'                     and i.cdtiporden=k.cdtiporden',
'                     and i.taller=w.id',
'                       and c.cod_prod not in(''3894'')',
'                     AND REPLACE (i.cdclase(+) || ''-'' || i.correlativo(+),',
'                                  '''',',
'                                  '' '') = a.cod_obra',
'                  group by cod_obra, a.cod_sucursal                         ',
'union all ',
'select  d.descripcion proyecto,  nvl(sum(b.costo_tot_fisc_loc),0) costo_Total,''Bodega'' origen , decode (b.bodega,''BDS'',''01'',''BDN'',''02'',''BDCS'',''01'',''BDCN'',''02'')   ',
'   from audit_trans_inv@softland a ',
' inner join transaccion_inv@softland b on a.audit_trans_inv=b.audit_trans_inv',
'inner join centro_costo@Softland c on b.centro_costo=c.Centro_costo ',
'inner join paquete_inventario@softland d on a.paquete_inventario=d.paquete_inventario',
'inner join tactivos f on f.cdclase||''-''||f.correlativo=c.descripcion ',
'where trunc(fecha) >=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and  trunc(fecha)<= to_date(:p5_fecha_fin,''dd/mm/yyyy'') ',
'group by d.descripcion,bodega',
')',
' group by  proyecto ,origen, delegacion ',
'  --combustible',
' union all  ',
'select cdclasact||''-''|| corract proyecto , nvl((sum (cantdespacha)),0) costo_total, ''Combustible'', b.cddelegacion  from tvales a  inner join ',
'tactivos b on  a.cdclasact||''-''|| a.corract= b.cdclase||''-''||b.correlativo',
'  where  fecha>=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and fecha<=to_date(:p5_fecha_fin,''dd/mm/yyyy'')',
'    group by   cdclasact||''-''|| corract, b.cddelegacion  ',
' --kilometros',
' union all ',
' select cdclasact||''-''|| corract proyecto , nvl((sum (a.recorrido)),0) costo_total, ''KM'' , a.cddelegacion  from tvales a  inner join ',
'tactivos b on  a.cdclasact||''-''|| a.corract= b.cdclase||''-''||b.correlativo',
'  where  fecha>=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and fecha<=to_date(:p5_fecha_fin,''dd/mm/yyyy'')',
' group by   cdclasact||''-''|| corract, a.cddelegacion',
'union all ',
'Select cdclase_comp||''-''|| correlcomp proyecto, nvl((sum(b.recorrido)),0) costo_total,''KM'', a.cddelegacion from  tvales b',
'inner join ',
'tactivos a on  a.cdclase||''-''|| a.correlativo= b.cdclase_comp||''-''||b.correlcomp',
'where  fecha>=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and fecha<=to_date(:p5_fecha_fin,''dd/mm/yyyy'')',
'group by cdclase_comp|| ''-''|| correlcomp, a.cddelegacion  ',
'  --COMISION ',
'   UNION ALL',
'     Select CDCLASEUNI||''-''||CORRELATIVOUNI PROYECTO ,ROUND (SUM(COMISION+COMISION_EXTRA),2) COSTO_TOTAL , ''COMISION'' origen,CDDELEGACION delegacion  ',
'    from  TCOMIEMP A INNER JOIN TNOTAVIAJE B ON A.NMNOTA=B.NMNOTA',
'WHERE a.fecha>=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and a.fecha<=to_date(:P5_FECHA_FIN,''dd/mm/yyyy'')',
'GROUP BY   CDCLASEUNI||''-''||CORRELATIVOUNI ,CDDELEGACION ',
'--externos',
'   union all ',
' select * from (',
'SELECT',
'(select max(cdclase||''-''||correlativo)  from tordenserv h where h.nmorden=a.orden_trabajo and h.cddelegacion= decode(b.Cod_sucursal,''10'',''01'',''20'',''02'')) AS Cod_obra, ',
'a.costo+ a.val_isv COSTO_TOTAL, ''Exterior'' origen,',
'decode(b.Cod_sucursal,''10'',''01'',''20'',''02'') cddelegacion ',
'from det_orden_compra a, ordenes_compra b, agencias c --,  tactivos d',
'WHERE a.TIP_PRODUCTO=2',
'  and b.cod_cia = a.cod_cia',
'  and b.periodo= A.PERIODo',
'  AND b.num_orden_compra =  a.num_orden_compra',
'  and b.fecha between to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') AND to_date(:p5_fecha_fin,''dd/mm/yyyy'')',
'  AND b.cod_cia = ''01''',
'  and c.cod_cia(+) = b.cod_cia',
'  and c.cod_agencia(+) = b.cod_sucursal ',
' union all',
'select b.descripcion,sum( debito_local) COSTO_TOTAL, ''Exterior'' origen,decode( substr(b.centro_costo,1,1),1,''01'',2,''02'') delegacion',
'from pipasgt.mayor a ',
'inner join pipasgt.centro_costo b on a.centro_costo=b.centro_costo ',
'where tipo_asiento=''CP'' and a.centro_costo not in (''0.00.00.0000'') and a.fecha>=to_date(:P5_FECHA_INICIO,''dd/mm/yyyy'') and a.fecha<=to_date(:P5_FECHA_FIN,''dd/mm/yyyy'')',
'     and cuenta_contable>=(''6.1.1.02.000'')  and cuenta_contable<=(''6.1.1.02.021'')',
'group by b.descripcion, b.centro_costo',
')',
') j',
'inner join pipasgt.centro_costo k on j.proyecto=k.descripcion',
')',
'pivot ',
'(',
'   sum(costo_total)',
'   for  origen in (''COMISION'' Comision,''Caja_chica'' caja_chica,''Bodega''Bodega,''Combustible''Combustible,''Exterior''Exterior,''KM''KM)',
') ',
'order by proyecto',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_FECHA_INICIO,P5_FECHA_FIN'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(75768356439498850)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'0'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>75768356439498850
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75920888557660401)
,p_db_column_name=>'PROYECTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Proyecto'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75921321457660406)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75921598125660408)
,p_db_column_name=>'DELEGACION'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'Delegacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75921614288660409)
,p_db_column_name=>'CAJA_CHICA'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Caja Chica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75921790218660410)
,p_db_column_name=>'BODEGA'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Bodega'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75921813034660411)
,p_db_column_name=>'COMBUSTIBLE'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Combustible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75921951242660412)
,p_db_column_name=>'EXTERIOR'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Exterior'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75922024812660413)
,p_db_column_name=>'KM'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75922367453660416)
,p_db_column_name=>'COMISION'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75922429858660417)
,p_db_column_name=>'FLOTA'
,p_display_order=>140
,p_column_identifier=>'O'
,p_column_label=>'Flota'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75928366071661911)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'759284'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROYECTO:CDCENTRO_COSTO:DESCRIPCION:DELEGACION:CAJA_CHICA:BODEGA:COMBUSTIBLE:EXTERIOR:KM:COMISION:FLOTA'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76020114813774700)
,p_application_user=>'LP'
,p_name=>'LIMPIOS'
,p_report_seq=>10
,p_report_alias=>'760202'
,p_status=>'PUBLIC'
,p_display_rows=>100000
,p_report_columns=>'PROYECTO:DELEGACION:CAJA_CHICA:BODEGA:COMBUSTIBLE:EXTERIOR:KM:COMISION:FLOTA::APXWS_CC_001'
,p_sort_column_1=>'PROYECTO'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'FLOTA'
,p_sort_direction_2=>'ASC'
,p_sum_columns_on_break=>'CAJA_CHICA:BODEGA:COMBUSTIBLE:EXTERIOR:KM'
,p_avg_columns_on_break=>'APXWS_CC_001'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(76020597701774709)
,p_report_id=>wwv_flow_api.id(76020114813774700)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'FLOTA'
,p_operator=>'in'
,p_expr=>'BUNKER, Bitumen, Limpios Norte, Limpios Sur'
,p_condition_sql=>'"FLOTA" in (#APXWS_EXPR_VAL1#, #APXWS_EXPR_VAL2#, #APXWS_EXPR_VAL3#, #APXWS_EXPR_VAL4#)'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''BUNKER, Bitumen, Limpios Norte, Limpios Sur''  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(76020830176774718)
,p_report_id=>wwv_flow_api.id(76020114813774700)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'(NVL(I,0)+ NVL(J,0)+NVL( L,0))/ M'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'COSTO KM'
,p_report_label=>'COSTO KM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(57398104813708770)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(57397917756708768)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265670216171061)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'TOP'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57398500747708781)
,p_name=>'P5_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(57397917756708768)
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(57398711270708781)
,p_name=>'P5_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(57397917756708768)
,p_prompt=>'Fecha Fin'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(57399104304708784)
,p_name=>'ACTUALIZAR'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(57398104813708770)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_tab_set=>'TS1'
,p_name=>'Costo 2'
,p_step_title=>'Costo 2'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Costo 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210415174006'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75661585578174133)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select b.cuenta_contable cuenta, a.modulo_origen,cddelegacion sucursal,b.bodega, c.descripcion centro_costo,d.descripcion UNIDAD,f.cdclase||''-''||f.correlativo Ot_original , a.aplicacion OT, trunc(fecha)fecha_mov,b.articulo, ',
'e.descripcion des_articulo ,b.cantidad,round(b.costo_tot_fisc_loc/b.cantidad ,2) costo_unitario,b.costo_tot_FISC_loc costo, to_char(a.consecutivo) cod,to_char(f.cod_falla)codigo_falla, dsrepara,f.tipo_ot,f.taller',
',g.descripcion, h.dstiporden,to_char(fecha,''MM'')mes',
' from audit_trans_inv@softland a ',
' inner join transaccion_inv@softland b on a.audit_trans_inv=b.audit_trans_inv',
'inner join centro_costo@Softland c on b.centro_costo=c.Centro_costo ',
'inner join paquete_inventario@softland d on a.paquete_inventario=d.paquete_inventario',
'inner join articulo@softland e on b.articulo=e.articulo',
'inner join tordenserv f on a.aplicacion=to_char(f.nmorden) and f.cddelegacion=decode(BODEGA,''BDN'',''02'',''BDS'',''01'')',
'inner join tbl_fallas g on to_char(f.cod_falla)=to_char(g.cod_falla)',
'inner join ttiporden h on f.cdtiporden=h.cdtiporden',
'--inner join empleado@softland g on f.reportado_por=g.empleado',
'where trunc(fecha) >=to_date(:p6_fecha_inicio,''dd/mm/yyyy'') and  trunc(fecha)<= ',
'(case when to_date(:p6_fecha_fin,''dd/mm/yyyy'')< to_date(''30/09/2020'',''dd/mm/yyyy'' )then to_Date(:p6_fecha_fin,''dd/mm/yyyy'' )else to_Date(''30/09/2020'',''dd/mm/yyyy'') end)',
'and c.descripcion=decode(:p6_proyecto,''0'',c.descripcion,:p6_proyecto) '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P6_FECHA_INICIO,P6_FECHA_FIN,P6_PROYECTO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>210
,p_prn_height=>297
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
 p_id=>wwv_flow_api.id(75661640486174134)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>75661640486174134
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75661748633174135)
,p_db_column_name=>'CUENTA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Cuenta'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75661870241174136)
,p_db_column_name=>'MODULO_ORIGEN'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Modulo Origen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75661937596174137)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662086652174138)
,p_db_column_name=>'BODEGA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662196000174139)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Centro Costo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662239173174140)
,p_db_column_name=>'UNIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662385240174141)
,p_db_column_name=>'OT_ORIGINAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ot Original'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662491433174142)
,p_db_column_name=>'OT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662519693174143)
,p_db_column_name=>'FECHA_MOV'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Fecha Mov'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662698846174144)
,p_db_column_name=>'ARTICULO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662725253174145)
,p_db_column_name=>'DES_ARTICULO'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Des Articulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662802181174146)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75662916073174147)
,p_db_column_name=>'COSTO_UNITARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75663095294174148)
,p_db_column_name=>'COSTO'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75663155449174149)
,p_db_column_name=>'COD'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75663254497174150)
,p_db_column_name=>'CODIGO_FALLA'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Codigo Falla'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763481047498801)
,p_db_column_name=>'DSREPARA'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Dsrepara'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763528742498802)
,p_db_column_name=>'TIPO_OT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Tipo Ot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763637961498803)
,p_db_column_name=>'TALLER'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Taller'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763708327498804)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763828895498805)
,p_db_column_name=>'DSTIPORDEN'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Dstiporden'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75763924662498806)
,p_db_column_name=>'MES'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75775416037504391)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'757755'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUENTA:MODULO_ORIGEN:SUCURSAL:BODEGA:CENTRO_COSTO:UNIDAD:OT_ORIGINAL:OT:FECHA_MOV:ARTICULO:DES_ARTICULO:CANTIDAD:COSTO_UNITARIO:COSTO:COD:CODIGO_FALLA:DSREPARA:TIPO_OT:TALLER:DESCRIPCION:DSTIPORDEN:MES'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113009924401642423)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>10
,p_plug_display_column=>1
,p_plug_display_point=>'BODY_3'
,p_list_id=>wwv_flow_api.id(37268470690171164)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(37264576716171056)
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113010131992642424)
,p_plug_name=>'Breadcrumbs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37258971449171037)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(37268074270171111)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(37266094310171062)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75751924389471612)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(113009924401642423)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
,p_button_image_alt=>'Generar Reporte'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75752283527471630)
,p_name=>'P6_COD_CIA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(113009924401642423)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75752672995471658)
,p_name=>'P6_PROYECTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(113009924401642423)
,p_prompt=>'Proyecto'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROYECTO||''-''||NOMBRE NOMBRE, PROYECTO',
'FROM PROYECTO',
'WHERE COD_CIA = :P6_COD_CIA',
'UNION',
'SELECT ''TODOS'' NOMBRE, ''0'' PROYECTO',
'FROM DUAL',
'  ORDER BY 2'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P6_COD_CIA'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75753042381471661)
,p_name=>'P6_FECHA_INICIO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(113009924401642423)
,p_prompt=>'Fecha Inicio'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75753476858471661)
,p_name=>'P6_FECHA_FIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(113009924401642423)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75753817632471661)
,p_name=>'P6_ESTACION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(113009924401642423)
,p_prompt=>'Estacion'
,p_display_as=>'NATIVE_HIDDEN'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75754846157471686)
,p_name=>'NOMBRE_PRODUCTO'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6_PRODUCTOS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75755310756471697)
,p_event_id=>wwv_flow_api.id(75754846157471686)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_NOMBRE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NOMBRE FROM PRODUCTOS',
'WHERE COD_CIA = :P6_COD_CIA',
'AND COD_PROD = :P6_PRODUCTOS'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75755742155471708)
,p_name=>'ocultar'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75756223486471708)
,p_event_id=>wwv_flow_api.id(75755742155471708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P6_NOMBRE'
,p_attribute_01=>'N'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_tab_set=>'TS1'
,p_name=>'Por Proyecto/CC/Unidad 9000''s'
,p_step_title=>'Por Proyecto/CC/Unidad 9000''s'
,p_step_sub_title=>'Por Proyecto/CC/Unidad 9000''s'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220111094600'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(132798483299976603)
,p_plug_name=>'Parametros'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143539329972063028)
,p_plug_name=>'Por Proyecto/CC/Unidad 9000''s'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260095097171037)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select   b.cuenta_contable cuenta, a.modulo_origen,cddelegacion sucursal,b.bodega, c.descripcion centro_costo,d.descripcion UNIDAD,f.cdclase||''-''||f.correlativo Ot_original ,u_ot_lp OT,   trunc(b.fecha)fecha_mov,b.articulo, ',
'e.descripcion,b.cantidad,round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) costo_unitario,(round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) )*b.cantidad costo, to_char(a.consecutivo) cod,to_char(f.cod_falla)codigo_falla, dsrepara,f.tipo_ot,f.taller',
',g.nombre, h.dstiporden,to_char(b.fecha,''MM'') mes,e.clasificacion_1 as familia,j.nombre as sistema',
'--, decode(substr(i.centro_costo,1,7),''1.02.01'', ''Limpios Sur'',''1.02.02'',''Granesles Sur'',''2.02.01'',''Limpios Norte'',''2.02.02'',''Graneles Norte'',''2.02.03'',''Bitumen'',''2.02.04'',''BUNKER'',''2.01.02'',''Operaciones norte'' ,''1.01.02'', ''Operaciones Sur'') FLota',
' from   pipasgt.audit_trans_inv a left  join pipasgt.u_invsoftland i on a.aplicacion= i.u_codigo ',
'inner join pipasgt.transaccion_inv b on a.audit_trans_inv=b.audit_trans_inv',
'inner join pipasgt.centro_costo c on b.centro_costo=c.Centro_costo ',
'inner join pipasgt.paquete_inventario d on a.paquete_inventario=d.paquete_inventario',
'inner join pipasgt.articulo e on b.articulo=e.articulo',
'left  join tordenserv f on to_char(f.nmorden)=i.u_OT_LP',
'left join tipo_falla g on to_char(f.cod_falla)=to_char(g.id_cod)',
'left join ttiporden h on f.cdtiporden=h.cdtiporden',
'inner join tipo_general_falla j on f.sistema=j.ID_COD',
'--inner join pipasgt.centro_costo i on i.descripcion=f.cdclase||''-''||f.correlativo',
'where  ',
'trunc(b.fecha) >= (case when to_date(:p7_fecha_inicio,''dd/mm/yyyy'')>to_date(''30/09/2020'',''dd/mm/yyyy'' )then to_Date(:p7_fecha_inicio,''dd/mm/yyyy'' )else  to_Date(''30/09/2020'',''dd/mm/yyyy'') end) and',
'trunc(b.fecha) <=to_date(:p7_fecha_FIn,''dd/mm/yyyy'')',
'and f.cdclase||''-''||f.correlativo in (''9000-1'',''9000-2'',''9000-3'',''9000-4'',''9000-5'',''9000-6'',''9000-7'',''9000-8'',''9000-9'',''9000-11'',''9000-12'',''9000-13'',''9000-14'',''9000-15'',''9000-16'',''9000-18'',''9000-19'',''9000-20'',''9000-21'') and taller not in (17)',
'union all ',
'Select   b.cuenta_contable cuenta, a.modulo_origen,cddelegacion sucursal,b.bodega, c.descripcion centro_costo,d.descripcion UNIDAD,f.cdclase||''-''||f.correlativo Ot_original ,u_ot_lp OT,   trunc(b.fecha)fecha_mov,b.articulo, ',
'e.descripcion,b.cantidad,round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) costo_unitario,(round(b.costo_tot_fisc_loc/abs(b.cantidad) ,2) )*b.cantidad costo, to_char(a.consecutivo) cod,to_char(f.cod_falla)codigo_falla, dsrepara,f.tipo_ot,f.taller',
',g.nombre, h.dstiporden,to_char(b.fecha,''MM'') mes,e.clasificacion_1 as familia,j.nombre as sistema',
'--,decode(substr(i.centro_costo,1,7),''1.02.01'', ''Limpios Sur'',''1.02.02'',''Granesles Sur'',''2.02.01'',''Limpios Norte'',''2.02.02'',''Graneles Norte'',''2.02.03'',''Bitumen'',''2.02.04'',''BUNKER'',''2.01.02'',''Operaciones norte'' ,''1.01.02'', ''Operaciones Sur'') FLota',
' from   pipascon.audit_trans_inv a ',
' left  join pipascon.u_invsoftland i on a.aplicacion= i.u_codigo ',
'inner join pipascon.transaccion_inv b on a.audit_trans_inv=b.audit_trans_inv',
'inner join pipascon.centro_costo c on b.centro_costo=c.Centro_costo ',
'inner join pipascon.paquete_inventario d on a.paquete_inventario=d.paquete_inventario',
'inner join pipascon.articulo e on b.articulo=e.articulo',
'left  join tordenserv f on to_char(f.nmorden)=i.u_OT_LP',
'left join tipo_falla g on to_char(f.cod_falla)=to_char(g.id_cod)',
'left join ttiporden h on f.cdtiporden=h.cdtiporden',
'inner join tipo_general_falla j on f.sistema=j.ID_COD',
'--inner join pipasgt.centro_costo i on i.descripcion=f.cdclase||''-''||f.correlativo',
'where  ',
'trunc(b.fecha) >= (case when to_date(:p7_fecha_inicio,''dd/mm/yyyy'')>to_date(''30/09/2020'',''dd/mm/yyyy'' )then to_Date(:p7_fecha_inicio,''dd/mm/yyyy'' )else  to_Date(''30/09/2020'',''dd/mm/yyyy'') end) and',
'trunc(b.fecha) <=to_date(:p7_fecha_FIn,''dd/mm/yyyy'')',
'and f.cdclase||''-''||f.correlativo in (''9000-1'',''9000-2'',''9000-3'',''9000-4'',''9000-5'',''9000-6'',''9000-7'',''9000-8'',''9000-9'',''9000-11'',''9000-12'',''9000-13'',''9000-14'',''9000-15'',''9000-16'',''9000-18'',''9000-19'',''9000-20'',''9000-21'',''9000-22'') and taller not in (1'
||'7)'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(143539452889063028)
,p_name=>'Por Proyecto/CC/Unidad 9000''s'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>143539452889063028
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143539898732063098)
,p_db_column_name=>'CUENTA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Cuenta'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143540161009063137)
,p_db_column_name=>'MODULO_ORIGEN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Modulo Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143540573575063148)
,p_db_column_name=>'SUCURSAL'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Sucursal'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143540979807063149)
,p_db_column_name=>'BODEGA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143541388497063151)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Centro Costo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143541704240063152)
,p_db_column_name=>'UNIDAD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143542102681063152)
,p_db_column_name=>'OT_ORIGINAL'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Ot Original'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143542549128063154)
,p_db_column_name=>'OT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Ot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143542933684063157)
,p_db_column_name=>'FECHA_MOV'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Fecha Mov'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143543335618063159)
,p_db_column_name=>'ARTICULO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143543799292063162)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143544104292063168)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143544531960063168)
,p_db_column_name=>'COSTO_UNITARIO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Costo Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143544928527063170)
,p_db_column_name=>'COSTO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143545391939063171)
,p_db_column_name=>'COD'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Cod'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143545725836063171)
,p_db_column_name=>'CODIGO_FALLA'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Codigo Falla'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143546112251063173)
,p_db_column_name=>'DSREPARA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Dsrepara'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143546543754063176)
,p_db_column_name=>'TIPO_OT'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Tipo Ot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143546916932063177)
,p_db_column_name=>'TALLER'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Taller'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143547352288063179)
,p_db_column_name=>'NOMBRE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143547747462063180)
,p_db_column_name=>'DSTIPORDEN'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Dstiporden'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143548110168063180)
,p_db_column_name=>'MES'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Mes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143548567417063184)
,p_db_column_name=>'FAMILIA'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Familia'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(143548975148063185)
,p_db_column_name=>'SISTEMA'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Sistema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(143552362775077863)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1435524'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CUENTA:MODULO_ORIGEN:SUCURSAL:BODEGA:CENTRO_COSTO:UNIDAD:OT_ORIGINAL:OT:FECHA_MOV:ARTICULO:DESCRIPCION:CANTIDAD:COSTO_UNITARIO:COSTO:COD:CODIGO_FALLA:DSREPARA:TIPO_OT:TALLER:NOMBRE:DSTIPORDEN:MES:FAMILIA:SISTEMA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(132798785868976606)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(132798483299976603)
,p_button_name=>'Generar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
,p_button_image_alt=>'Generar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132798565876976604)
,p_name=>'P7_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(132798483299976603)
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(132798639603976605)
,p_name=>'P7_FECHA_FIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(132798483299976603)
,p_prompt=>'Fecha Fin'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_label_alignment=>'RIGHT-CENTER'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_tab_set=>'TS1'
,p_name=>'externo softland'
,p_step_title=>'externo softland'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20201204115703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93991824629927912)
,p_plug_name=>'data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93993203420940684)
,p_plug_name=>'reporte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37260997357171039)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select asiento, a.centro_costo, b.descripcion, referencia, fecha,fuente, tipo_asiento, debito_local,credito_local, u_ot, nit, (Select distinct(case when contribuyente = ''ND'' then ''ND'' else nombre end)nombre from  proveedor@softland where contribuyent'
||'e=nit) as nombre, (Select distinct(case when contribuyente = ''ND'' then ''ND'' else alias end)nombre from  proveedor@softland where contribuyente=nit) as alias,  a.cuenta_contable ',
'from pipasgt.mayor a ',
'inner join pipasgt.centro_costo b on a.centro_costo=b.centro_costo ',
'where tipo_asiento=''CP'' and a.centro_costo not in (''0.00.00.0000'') and a.fecha>=to_date(:P8_FECHA_INI,''dd/mm/yyyy'') and a.fecha<=to_date(:P8_FECHA_FIN,''dd/mm/yyyy'')',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(93993332634940684)
,p_name=>'reporte'
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
,p_internal_uid=>93993332634940684
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993515247940693)
,p_db_column_name=>'ASIENTO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Asiento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ASIENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993624432940695)
,p_db_column_name=>'CENTRO_COSTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Centro Costo'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CENTRO_COSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993721642940695)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPCION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993823614940695)
,p_db_column_name=>'REFERENCIA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Referencia'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REFERENCIA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93993901160940695)
,p_db_column_name=>'FECHA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93994013544940695)
,p_db_column_name=>'FUENTE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fuente'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FUENTE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93994124237940695)
,p_db_column_name=>'TIPO_ASIENTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Tipo Asiento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TIPO_ASIENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93994204850940695)
,p_db_column_name=>'DEBITO_LOCAL'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Debito Local'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DEBITO_LOCAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93994300853940695)
,p_db_column_name=>'CREDITO_LOCAL'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Credito Local'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CREDITO_LOCAL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(93994429677940696)
,p_db_column_name=>'U_OT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'U Ot'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'U_OT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101496817040257307)
,p_db_column_name=>'NIT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Nit'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NIT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101496911760257312)
,p_db_column_name=>'NOMBRE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(101497013432257312)
,p_db_column_name=>'ALIAS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Alias'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ALIAS'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(111478817211115671)
,p_db_column_name=>'CUENTA_CONTABLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Cuenta Contable'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CUENTA_CONTABLE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(93994504112940921)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'939946'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ASIENTO:CENTRO_COSTO:DESCRIPCION:REFERENCIA:FECHA:FUENTE:TIPO_ASIENTO:DEBITO_LOCAL:CREDITO_LOCAL:U_OT:NIT:NOMBRE:ALIAS:CUENTA_CONTABLE:'
,p_break_on=>'DESCRIPCION:0:0:0:0:0'
,p_break_enabled_on=>'DESCRIPCION:0:0:0:0:0'
,p_sum_columns_on_break=>'DEBITO_LOCAL:CREDITO_LOCAL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(93992910215933190)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(93991824629927912)
,p_button_name=>'P8_ACTUALIZAR'
,p_button_static_id=>'P8_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93992423373929796)
,p_name=>'P8_FECHA_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(93991824629927912)
,p_prompt=>'Fecha Ini'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(93992612104929796)
,p_name=>'P8_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(93991824629927912)
,p_prompt=>'Fecha Fin'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_cAttributes=>'nowrap'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(37266771677171078)
,p_name=>'Login'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Login'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(37256969623170995)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_upd_yyyymmddhh24miss=>'20160718154723'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(37267283886171094)
,p_plug_name=>'Login'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(37259680405171037)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(37267592143171105)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(37267283886171094)
,p_button_name=>'P101_LOGIN'
,p_button_static_id=>'P101_LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(37265492660171061)
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
 p_id=>wwv_flow_api.id(37267389002171105)
,p_name=>'P101_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(37267283886171094)
,p_prompt=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(37267474713171105)
,p_name=>'P101_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(37267283886171094)
,p_prompt=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(37265079730171058)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37267783519171111)
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
 p_id=>wwv_flow_api.id(37267693834171111)
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
 p_id=>wwv_flow_api.id(37267972769171111)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(37267872288171111)
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
