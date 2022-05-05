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
,p_default_application_id=>165
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 165 - Dashboard Taller
--
-- Application Export:
--   Application:     165
--   Name:            Dashboard Taller
--   Date and Time:   12:25 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      8
--     Items:                    3
--     Processes:                4
--     Regions:                 22
--     Buttons:                  1
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  3
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         2
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              15
--         Label:                7
--         List:                12
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:              10
--       LOVs:                   1
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,165)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Dashboard Taller')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'165')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6EF38AABC3863D0E3BB084A631B116FD565637E59C41F289AC1D5501F888B906'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'es-gt'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.10.25.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(131172731664970299)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Dashboard Taller'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Dashboard Taller'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105851'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(122206301933535839)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(122336620403536370)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(122326276941536217)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(122338228510536400)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(122338767846536407)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(122338228510536400)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(122339135830536410)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(122338228510536400)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/cierre_ot_mensual
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(122693082089999862)
,p_name=>'cierre_OT_mensual'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  count(*), cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as nombre/*,c.puesto, descripcion */ from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''C''  and  sistema in (6,9,43,44,7,5,2,16,4,8,1) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01'' and to_char(fecha_cierre,''yyyy'')=to_char(sysdate,''yyyy'')',
'and to_char(fecha_cierre,''MM'')=to_char(sysdate,''MM'') group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion',
''))
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B222076696577426F783D223020302036342036';
wwv_flow_api.g_varchar2_table(2) := '34223E3C646566733E3C7374796C653E2E636C732D317B66696C6C3A75726C282372616469616C2D6772616469656E74293B7D2E636C732D327B6F7061636974793A302E313B7D2E636C732D332C2E636C732D347B66696C6C3A236666663B7D2E636C73';
wwv_flow_api.g_varchar2_table(3) := '2D337B6F7061636974793A302E363B7D3C2F7374796C653E3C72616469616C4772616469656E742069643D2272616469616C2D6772616469656E74222063783D223332222063793D222E30352220723D22363422206772616469656E74556E6974733D22';
wwv_flow_api.g_varchar2_table(4) := '7573657253706163654F6E557365223E3C73746F70206F66667365743D2230222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D22302E3135222F3E3C73746F70206F66667365743D222E35222073746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(5) := '3D2223666666222073746F702D6F7061636974793D22302E31222F3E3C73746F70206F66667365743D2231222073746F702D636F6C6F723D2223666666222073746F702D6F7061636974793D2230222F3E3C2F72616469616C4772616469656E743E3C73';
wwv_flow_api.g_varchar2_table(6) := '796D626F6C2069643D22616D6269656E742D6C69676874696E67222076696577426F783D22302030203634203634223E3C7061746820636C6173733D22636C732D312220643D224D302030683634763634682D36347A222F3E3C2F73796D626F6C3E3C2F';
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223354136384144222F3E3C672069643D2269636F6E73223E3C706174682063';
wwv_flow_api.g_varchar2_table(8) := '6C6173733D22636C732D322220643D224D313920343668357631682D357A4D323620343668357631682D357A4D333320343668357631682D357A4D343020343668357631682D357A222F3E3C7061746820636C6173733D22636C732D332220643D224D31';
wwv_flow_api.g_varchar2_table(9) := '3920333868357638682D357A4D32362033326835763134682D357A4D33332033326835763134682D357A4D34302032376835763139682D357A222F3E3C6720636C6173733D22636C732D32223E3C636972636C652063783D2234322E35222063793D2232';
wwv_flow_api.g_varchar2_table(10) := '302E352220723D22312E35222F3E3C636972636C652063783D2233352E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D2232382E35222063793D2232352E352220723D22312E35222F3E3C636972636C652063783D22';
wwv_flow_api.g_varchar2_table(11) := '32312E35222063793D2233312E352220723D22312E35222F3E3C7061746820643D224D32312E3832352033312E3837396C2D2E36352D2E37353820372E31342D362E31323168372E3032356C362E3836392D342E3930372E3538322E3831342D372E3133';
wwv_flow_api.g_varchar2_table(12) := '3120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C636972636C6520636C6173733D22636C732D34222063783D2234322E35222063793D2231392E352220723D22312E35222F3E3C636972636C6520636C6173733D22';
wwv_flow_api.g_varchar2_table(13) := '636C732D34222063783D2233352E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C6173733D22636C732D34222063783D2232382E35222063793D2232342E352220723D22312E35222F3E3C636972636C6520636C617373';
wwv_flow_api.g_varchar2_table(14) := '3D22636C732D34222063783D2232312E35222063793D2233302E352220723D22312E35222F3E3C7061746820636C6173733D22636C732D342220643D224D32312E3832352033302E3837396C2D2E36352D2E37353820372E31342D362E31323168372E30';
wwv_flow_api.g_varchar2_table(15) := '32356C362E3836392D342E3930372E3538322E3831342D372E31333120352E303933682D362E3937356C2D362E383620352E3837397A222F3E3C2F673E3C7573652077696474683D22363422206865696768743D2236342220786C696E6B3A687265663D';
wwv_flow_api.g_varchar2_table(16) := '2223616D6269656E742D6C69676874696E67222069643D226C69676874696E67222F3E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(122327654848536261)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233541363841443B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(122327938862536267)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122203511141535788)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122203858178535796)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122204137779535796)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122204463081535796)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122204747979535797)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122205041259535797)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(122205333923535797)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(122329217782536268)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
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
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(122331843124536336)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(122331843124536336)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(122332234637536342)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(122329818365536286)
,p_group_name=>'Administration'
);
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
 p_id=>wwv_flow_api.id(122205812515535829)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(122206042660535832)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122206653241535863)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122206937731535900)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122207259361535900)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122207515277535902)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122207887189535902)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122208145197535902)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122208433548535902)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122208709515535902)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122209058981535903)
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122209436592535936)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122209703318535939)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122210056764535939)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122210324776535939)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122210613418535941)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122210937913535941)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122211208899535941)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122211534326535941)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122211890157535941)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122212152465535941)
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122212530950535942)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container" role="main">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122212894685535942)
,p_page_template_id=>wwv_flow_api.id(122212530950535942)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122213126991535942)
,p_page_template_id=>wwv_flow_api.id(122212530950535942)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122213319935535942)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122213615108535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122213932485535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122214282461535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122214531914535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122214850964535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122215137829535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122215444912535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122215757669535949)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122216088651535950)
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122216488605535950)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner" role="main">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer" role="contentinfo">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122216737742535950)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122217097597535950)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122217361976535950)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122217683839535950)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122217952056535952)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122218262612535952)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122218513672535952)
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122218988403535952)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body" role="main">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122219266926535952)
,p_page_template_id=>wwv_flow_api.id(122218988403535952)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122219592138535952)
,p_page_template_id=>wwv_flow_api.id(122218988403535952)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122219805168535952)
,p_page_template_id=>wwv_flow_api.id(122218988403535952)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122220408810535953)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner" role="main">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>  ',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa fa-bars" a'
||'ria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122220736205535953)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122221019280535953)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122221321654535953)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122221610155535953)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122221962229535955)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122222244197535955)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122222524508535955)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122222818378535955)
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122223252715535955)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner" role="main">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer" role="contentinfo">',
'          <div class="t-Footer-body">',
'            <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'            <div class="t-Footer-apex">',
'              <div class="t-Footer-version">#APP_VERSION#</div>  ',
'              <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'              #BUILT_WITH_LOVE_USING_APEX#',
'            </div>',
'          </div>',
'          <div class="t-Footer-top">',
'            <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'          </div>',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122223508767535958)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122223848749535958)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122224154224535960)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122224478129535960)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122224780580535960)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122225011283535960)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122225361204535960)
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(122225705652535960)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'      <div class="t-Dialog-bodyWrapperIn"><div class="t-Dialog-body" role="main">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'      </div></div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122226007976535961)
,p_page_template_id=>wwv_flow_api.id(122225705652535960)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122226379931535961)
,p_page_template_id=>wwv_flow_api.id(122225705652535960)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(122226633785535961)
,p_page_template_id=>wwv_flow_api.id(122225705652535960)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(122304624719536127)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(122304732604536131)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(122304860302536131)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122227260399535969)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122227539158535977)
,p_plug_template_id=>wwv_flow_api.id(122227260399535969)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122230993681535989)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122231195509535989)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122231407746535989)
,p_plug_template_id=>wwv_flow_api.id(122231195509535989)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122231782945535989)
,p_plug_template_id=>wwv_flow_api.id(122231195509535989)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122231958207535989)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122232201544535989)
,p_plug_template_id=>wwv_flow_api.id(122231958207535989)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122232585668535991)
,p_plug_template_id=>wwv_flow_api.id(122231958207535989)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122234114537535992)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122234469440535994)
,p_plug_template_id=>wwv_flow_api.id(122234114537535992)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122234719576535994)
,p_plug_template_id=>wwv_flow_api.id(122234114537535992)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122241386345536014)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122241669134536014)
,p_plug_template_id=>wwv_flow_api.id(122241386345536014)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122241996378536014)
,p_plug_template_id=>wwv_flow_api.id(122241386345536014)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122245911838536027)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header"><h1 class="t-ContentBlock-title">#TITLE#</h1></div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122247782260536028)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122248049118536028)
,p_plug_template_id=>wwv_flow_api.id(122247782260536028)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122249294620536033)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
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
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122249591021536033)
,p_plug_template_id=>wwv_flow_api.id(122249294620536033)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122251341105536039)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122251967139536039)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122252256779536041)
,p_plug_template_id=>wwv_flow_api.id(122251967139536039)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122252449059536041)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
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
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122252729603536041)
,p_plug_template_id=>wwv_flow_api.id(122252449059536041)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122253006884536041)
,p_plug_template_id=>wwv_flow_api.id(122252449059536041)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122259294578536045)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122259596675536047)
,p_plug_template_id=>wwv_flow_api.id(122259294578536045)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122259829101536047)
,p_plug_template_id=>wwv_flow_api.id(122259294578536045)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122261808406536049)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(122262890903536050)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(122263106625536050)
,p_plug_template_id=>wwv_flow_api.id(122262890903536050)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122283556565536088)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122287513538536100)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122292500301536105)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122294137179536106)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122296561862536109)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122297511989536111)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa''});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122297928923536111)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122298152196536112)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122298536490536112)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122300179433536114)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122301104084536116)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(122302735720536116)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122264125051536053)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122264314525536059)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122268363658536063)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122273115451536067)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122273988700536069)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122276519887536078)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122276716239536078)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(122276716239536078)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122279348266536081)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122279702700536081)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(122281782670536083)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122303961538536120)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122304019783536125)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122304178119536125)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122304259212536125)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122304306503536125)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122304486689536127)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(122304594060536127)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(122305528186536136)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(122305752931536148)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(122305601729536137)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(122306969070536173)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(122223252715535955)
,p_default_dialog_template=>wwv_flow_api.id(122218988403535952)
,p_error_template=>wwv_flow_api.id(122212530950535942)
,p_printer_friendly_template=>wwv_flow_api.id(122223252715535955)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(122212530950535942)
,p_default_button_template=>wwv_flow_api.id(122304732604536131)
,p_default_region_template=>wwv_flow_api.id(122252449059536041)
,p_default_chart_template=>wwv_flow_api.id(122252449059536041)
,p_default_form_template=>wwv_flow_api.id(122252449059536041)
,p_default_reportr_template=>wwv_flow_api.id(122252449059536041)
,p_default_tabform_template=>wwv_flow_api.id(122252449059536041)
,p_default_wizard_template=>wwv_flow_api.id(122252449059536041)
,p_default_menur_template=>wwv_flow_api.id(122261808406536049)
,p_default_listr_template=>wwv_flow_api.id(122252449059536041)
,p_default_irr_template=>wwv_flow_api.id(122251341105536039)
,p_default_report_template=>wwv_flow_api.id(122276716239536078)
,p_default_label_template=>wwv_flow_api.id(122304259212536125)
,p_default_menu_template=>wwv_flow_api.id(122305528186536136)
,p_default_calendar_template=>wwv_flow_api.id(122305601729536137)
,p_default_list_template=>wwv_flow_api.id(122292500301536105)
,p_default_nav_list_template=>wwv_flow_api.id(122300179433536114)
,p_default_top_nav_list_temp=>wwv_flow_api.id(122300179433536114)
,p_default_side_nav_list_temp=>wwv_flow_api.id(122298152196536112)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(122231958207535989)
,p_default_dialogr_template=>wwv_flow_api.id(122230993681535989)
,p_default_option_label=>wwv_flow_api.id(122304259212536125)
,p_default_required_label=>wwv_flow_api.id(122304594060536127)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(122297928923536111)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(122305961299536158)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(122306109609536161)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(122306397598536161)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(122306532809536161)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(122306737073536161)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(122825959159665461)
,p_theme_id=>42
,p_name=>'Vita (Copiar)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-OG":"#cadfdb","@g_Region-BG":"#d7e7e4"}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#122825959159665461.css'
,p_theme_roller_read_only=>false
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A20566974612028436F70696172290D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C65207761732067656E';
wwv_flow_api.g_varchar2_table(2) := '657261746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A2E742D4156504C6973742D76616C7565207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(3) := '6C6F723A20233362336233623B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233433343334333B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D76616C756520';
wwv_flow_api.g_varchar2_table(4) := '7B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A2E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233232323232323B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0D0A';
wwv_flow_api.g_varchar2_table(5) := '2020636F6C6F723A20233261326132613B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233264326432643B0D0A7D0D0A0D0A2E742D416C6572742D2D77697A6172642C0D0A2E742D416C';
wwv_flow_api.g_varchar2_table(6) := '6572742D2D686F72697A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D636F6C6F7242472E';
wwv_flow_api.g_varchar2_table(7) := '742D416C6572742D2D79656C6C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663765303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7375';
wwv_flow_api.g_varchar2_table(8) := '6363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20236635666166343B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0D0A2E742D';
wwv_flow_api.g_varchar2_table(9) := '416C6572742D2D636F6C6F7242472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663866373B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F724247';
wwv_flow_api.g_varchar2_table(10) := '2E742D416C6572742D2D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236564663666663B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(11) := '6F723A20234646463B0D0A7D0D0A0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A';
wwv_flow_api.g_varchar2_table(12) := '20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A7D0D0A2E742D416C6572742D2D7761726E696E672E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D79656C';
wwv_flow_api.g_varchar2_table(13) := '6C6F772E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235312C203230362C2037342C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572';
wwv_flow_api.g_varchar2_table(14) := '742D2D73756363657373202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A2E742D416C6572742D2D737563636573732E742D416C6572742D2D686F7269';
wwv_flow_api.g_varchar2_table(15) := '7A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835392C203137302C2034342C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572742D2D696E666F202E742D416C6572742D69';
wwv_flow_api.g_varchar2_table(16) := '636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D416C6572742D2D696E666F2E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A';
wwv_flow_api.g_varchar2_table(17) := '20206261636B67726F756E642D636F6C6F723A207267626128352C203131342C203230362C20302E3135293B0D0A7D0D0A0D0A2E742D416C6572742D2D64616E676572202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C657274';
wwv_flow_api.g_varchar2_table(18) := '2D2D726564202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D416C6572742D2D64616E6765722E742D416C6572742D2D686F72697A6F6E74616C';
wwv_flow_api.g_varchar2_table(19) := '202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D7265642E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283234342C203637';
wwv_flow_api.g_varchar2_table(20) := '2C2035342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0D';
wwv_flow_api.g_varchar2_table(21) := '0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D737563';
wwv_flow_api.g_varchar2_table(22) := '63657373207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835392C203137302C2034342C20302E39293B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73';
wwv_flow_api.g_varchar2_table(23) := '756363657373202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C65';
wwv_flow_api.g_varchar2_table(24) := '72742D2D73756363657373202E742D427574746F6E2D2D636C6F7365416C657274207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D737563636573';
wwv_flow_api.g_varchar2_table(25) := '73202E742D416C6572742D636F6E74656E74207B0D0A202070616464696E672D72696768743A20303B0D0A202070616464696E672D6C6566743A20303B0D0A7D0D0A0D0A2E742D42616467654C6973742C0D0A2E742D42616467654C6973743A6E6F7428';
wwv_flow_api.g_varchar2_table(26) := '2E752D636F6C6F7273292061202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(27) := '0D0A2020626F782D736861646F773A2030203020302031707820726762612833322C2033322C2033322C20302E312920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(28) := '742D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020347078202330353732636520696E7365743B0D0A20';
wwv_flow_api.g_varchar2_table(29) := '206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732C0D0A2E742D';
wwv_flow_api.g_varchar2_table(30) := '42616467654C6973742D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A666F637573202E742D';
wwv_flow_api.g_varchar2_table(31) := '42616467654C6973742D76616C75652C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732';
wwv_flow_api.g_varchar2_table(32) := '636520696E7365742C20302030203020327078202364376537653420696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(33) := '2D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(34) := '726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D42616467654C6973742D2D64617368202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(35) := '616C756520613A666F6375732C0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732D77697468696E202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(36) := '666666663B0D0A7D0D0A0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D777261703A6265666F7265207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(37) := '6F723A20236437653765343B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233230323032303B';
wwv_flow_api.g_varchar2_table(38) := '0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F7273202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D697465';
wwv_flow_api.g_varchar2_table(39) := '6D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236337646464393B0D0A7D0D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B';
wwv_flow_api.g_varchar2_table(40) := '0D0A2020636F6C6F723A20233535353535353B0D0A7D0D0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233564';
wwv_flow_api.g_varchar2_table(41) := '356435643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233564356435643B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(42) := '67696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C75652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E';
wwv_flow_api.g_varchar2_table(43) := '612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(44) := '0A7D0D0A2E612D4261724368617274202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C61737369';
wwv_flow_api.g_varchar2_table(45) := '63202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D4261724368617274';
wwv_flow_api.g_varchar2_table(46) := '2D2D636C6173736963202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(47) := '42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A';
wwv_flow_api.g_varchar2_table(48) := '7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(49) := '2E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A0D0A626F6479207B0D0A20206261636B67726F756E643A20236361646664623B0D0A20';
wwv_flow_api.g_varchar2_table(50) := '20636F6C6F723A20233135313531353B0D0A7D0D0A61207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20236335646364383B0D0A202062';
wwv_flow_api.g_varchar2_table(51) := '6F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231322C203232392C20';
wwv_flow_api.g_varchar2_table(52) := '3232352C20302E39293B0D0A2020636F6C6F723A20233164316431643B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20736174757261746528313830252920626C757228387078293B0D0A7D0D0A2E75692D7769646765742D63';
wwv_flow_api.g_varchar2_table(53) := '6F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D426F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(54) := '64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233164';
wwv_flow_api.g_varchar2_table(55) := '316431643B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E526567696F6E202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(56) := '0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A20236461653965363B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(57) := '6F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236434653565313B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(58) := '2D426F64792D696E666F202E617065782D7264732D636F6E7461696E65722E69732D737475636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231322C203232392C203232352C20302E3935293B0D0A20202D7765626B6974';
wwv_flow_api.g_varchar2_table(59) := '2D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236434653565313B0D0A7D0D0A2E742D426F64792D7469746C652E6A732D68';
wwv_flow_api.g_varchar2_table(60) := '69646542726561646372756D6273207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A2020626F726465722D7261646975733A';
wwv_flow_api.g_varchar2_table(61) := '20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236561663266313B0D0A2020636F6C6F723A20236361646664623B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(62) := '20302030203020317078202330353732636520696E7365742C20302031707820327078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F704275';
wwv_flow_api.g_varchar2_table(63) := '74746F6E3A666F637573207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666366623B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(64) := '723A20236461653965363B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206865696768743A20343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6F7261636C65207B0D0A20206C696E652D6865696768743A20';
wwv_flow_api.g_varchar2_table(65) := '343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6F7261636C653A6265666F7265207B0D0A20206865696768743A20343870783B0D0A7D0D0A0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D0A2E617065782D73';
wwv_flow_api.g_varchar2_table(66) := '6964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D';
wwv_flow_api.g_varchar2_table(67) := '696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E';
wwv_flow_api.g_varchar2_table(68) := '617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B';
wwv_flow_api.g_varchar2_table(69) := '0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C7920736372';
wwv_flow_api.g_varchar2_table(70) := '65656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032303070';
wwv_flow_api.g_varchar2_table(71) := '783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A7D0D0A3A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(72) := '617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72';
wwv_flow_api.g_varchar2_table(73) := '696768743A20303B0D0A7D0D0A0D0A2E617065782D746F702D6E6176202E742D426F64792D616374696F6E73207B0D0A2020746F703A20383870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F';
wwv_flow_api.g_varchar2_table(74) := '703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C6170736564202E742D486561';
wwv_flow_api.g_varchar2_table(75) := '6465722D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C61746559282D31303025293B0D0A20202020747261';
wwv_flow_api.g_varchar2_table(76) := '6E73666F726D3A207472616E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D6E6176207B0D0A202077696474683A2032303070783B0D0A7D0D0A0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474';
wwv_flow_api.g_varchar2_table(77) := '683A2032303070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D3430';
wwv_flow_api.g_varchar2_table(78) := '70782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D34307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E752D52544C202E74';
wwv_flow_api.g_varchar2_table(79) := '2D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A2074';
wwv_flow_api.g_varchar2_table(80) := '72616E736C6174652834307078293B0D0A20207472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A2036343170';
wwv_flow_api.g_varchar2_table(81) := '7829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E';
wwv_flow_api.g_varchar2_table(82) := '6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D73696465';
wwv_flow_api.g_varchar2_table(83) := '207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D';
wwv_flow_api.g_varchar2_table(84) := '6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F7428';
wwv_flow_api.g_varchar2_table(85) := '2E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B';
wwv_flow_api.g_varchar2_table(86) := '0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A20207472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(87) := '61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A20';
wwv_flow_api.g_varchar2_table(88) := '7472616E736C617465282D3135327078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A2034';
wwv_flow_api.g_varchar2_table(89) := '3830707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(90) := '6A732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D61';
wwv_flow_api.g_varchar2_table(91) := '7267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(92) := '732D6E6176457870616E646564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D7269';
wwv_flow_api.g_varchar2_table(93) := '6768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(94) := '0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E61';
wwv_flow_api.g_varchar2_table(95) := '7065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D';
wwv_flow_api.g_varchar2_table(96) := '732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(97) := '61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F';
wwv_flow_api.g_varchar2_table(98) := '726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D';
wwv_flow_api.g_varchar2_table(99) := '696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D736964';
wwv_flow_api.g_varchar2_table(100) := '652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F';
wwv_flow_api.g_varchar2_table(101) := '64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564';
wwv_flow_api.g_varchar2_table(102) := '2E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564';
wwv_flow_api.g_varchar2_table(103) := '2E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E617645';
wwv_flow_api.g_varchar2_table(104) := '7870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E617645787061';
wwv_flow_api.g_varchar2_table(105) := '6E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(106) := '70616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2031353270783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(107) := '2E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2031353270783B0D0A20207D0D0A20203A6E6F74282E752D52544C';
wwv_flow_api.g_varchar2_table(108) := '29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D0A20207D0D0A2020';
wwv_flow_api.g_varchar2_table(109) := '2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20343870783B0D0A20';
wwv_flow_api.g_varchar2_table(110) := '207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B';
wwv_flow_api.g_varchar2_table(111) := '0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065';
wwv_flow_api.g_varchar2_table(112) := '782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D73';
wwv_flow_api.g_varchar2_table(113) := '2D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(114) := '6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964';
wwv_flow_api.g_varchar2_table(115) := '652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D73';
wwv_flow_api.g_varchar2_table(116) := '6964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C';
wwv_flow_api.g_varchar2_table(117) := '29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E6170';
wwv_flow_api.g_varchar2_table(118) := '65782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(119) := '617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20';
wwv_flow_api.g_varchar2_table(120) := '202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870';
wwv_flow_api.g_varchar2_table(121) := '783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D77';
wwv_flow_api.g_varchar2_table(122) := '65626B69742D7472616E73666F726D3A207472616E736C61746533642831353270782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465283135327078293B0D0A202020207472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(123) := '6E736C61746533642831353270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E';
wwv_flow_api.g_varchar2_table(124) := '74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3135327078293B0D0A2020';
wwv_flow_api.g_varchar2_table(125) := '20207472616E73666F726D3A207472616E736C6174653364282D31353270782C20302C2030293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64';
wwv_flow_api.g_varchar2_table(126) := '792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73';
wwv_flow_api.g_varchar2_table(127) := '686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(128) := '2D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(129) := '6E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465';
wwv_flow_api.g_varchar2_table(130) := '642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A202020202D6D732D74';
wwv_flow_api.g_varchar2_table(131) := '72616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20';
wwv_flow_api.g_varchar2_table(132) := '616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A2020202074';
wwv_flow_api.g_varchar2_table(133) := '72616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(134) := '207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61';
wwv_flow_api.g_varchar2_table(135) := '696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(136) := '7B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E743B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(137) := '6F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D5061676542';
wwv_flow_api.g_varchar2_table(138) := '6F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(139) := '70616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2034343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(140) := '2E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2034343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C';
wwv_flow_api.g_varchar2_table(141) := '29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(142) := '76457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A0D0A2E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(143) := '6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343870783B0D0A';
wwv_flow_api.g_varchar2_table(144) := '7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E617643';
wwv_flow_api.g_varchar2_table(145) := '6F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20';
wwv_flow_api.g_varchar2_table(146) := '343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170';
wwv_flow_api.g_varchar2_table(147) := '736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(148) := '3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652E69732D737475636B207B0D0A20206C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D7369';
wwv_flow_api.g_varchar2_table(149) := '64652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652E69732D737475636B207B0D0A202072696768743A20303B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20';
wwv_flow_api.g_varchar2_table(150) := '343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D';
wwv_flow_api.g_varchar2_table(151) := '0A202020202D6D732D7472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A202020207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D';
wwv_flow_api.g_varchar2_table(152) := '6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465582834387078293B0D0A202020202D6D732D7472616E73666F726D3A207472616E';
wwv_flow_api.g_varchar2_table(153) := '736C617465582834387078293B0D0A202020207472616E73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C617073656420';
wwv_flow_api.g_varchar2_table(154) := '2E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D7369';
wwv_flow_api.g_varchar2_table(155) := '64652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(156) := '6C6C6170736564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(157) := '61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474';
wwv_flow_api.g_varchar2_table(158) := '683A20363430707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E20';
wwv_flow_api.g_varchar2_table(159) := '7B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D';
wwv_flow_api.g_varchar2_table(160) := '426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D5254';
wwv_flow_api.g_varchar2_table(161) := '4C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(162) := '2E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C';
wwv_flow_api.g_varchar2_table(163) := '6C6170736564202E742D426F64792D7469746C65207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(164) := '7B0D0A2020202072696768743A20343870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F6479';
wwv_flow_api.g_varchar2_table(165) := '2D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(166) := '6F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F';
wwv_flow_api.g_varchar2_table(167) := '774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D506167';
wwv_flow_api.g_varchar2_table(168) := '65426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D776964';
wwv_flow_api.g_varchar2_table(169) := '74683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A2020';
wwv_flow_api.g_varchar2_table(170) := '2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D726967';
wwv_flow_api.g_varchar2_table(171) := '6874457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D';
wwv_flow_api.g_varchar2_table(172) := '6D61696E2C0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D3230';
wwv_flow_api.g_varchar2_table(173) := '3070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A2E752D52544C';
wwv_flow_api.g_varchar2_table(174) := '202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20202D77';
wwv_flow_api.g_varchar2_table(175) := '65626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465283230307078293B0D0A20207472616E73666F726D3A207472616E736C61';
wwv_flow_api.g_varchar2_table(176) := '746533642832303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_api.g_varchar2_table(177) := '2D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B';
wwv_flow_api.g_varchar2_table(178) := '0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64';
wwv_flow_api.g_varchar2_table(179) := '792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C65667420';
wwv_flow_api.g_varchar2_table(180) := '2E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(181) := '2D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(182) := '2D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D506167';
wwv_flow_api.g_varchar2_table(183) := '65426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64';
wwv_flow_api.g_varchar2_table(184) := '792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F';
wwv_flow_api.g_varchar2_table(185) := '6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874';
wwv_flow_api.g_varchar2_table(186) := '457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52';
wwv_flow_api.g_varchar2_table(187) := '544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A';
wwv_flow_api.g_varchar2_table(188) := '20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A20202020';
wwv_flow_api.g_varchar2_table(189) := '72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D726967687445';
wwv_flow_api.g_varchar2_table(190) := '7870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(191) := '7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269';
wwv_flow_api.g_varchar2_table(192) := '676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C65667420';
wwv_flow_api.g_varchar2_table(193) := '2E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(194) := '6F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(195) := '6F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C';
wwv_flow_api.g_varchar2_table(196) := '6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E';
wwv_flow_api.g_varchar2_table(197) := '6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C79207363726565';
wwv_flow_api.g_varchar2_table(198) := '6E20616E6420286D61782D77696474683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A20202020';
wwv_flow_api.g_varchar2_table(199) := '7472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C';
wwv_flow_api.g_varchar2_table(200) := '652C0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E';
wwv_flow_api.g_varchar2_table(201) := '742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(202) := '3364282D32303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D';
wwv_flow_api.g_varchar2_table(203) := '0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E742D50616765426F64';
wwv_flow_api.g_varchar2_table(204) := '792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D5061676542';
wwv_flow_api.g_varchar2_table(205) := '6F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A202020202D6D732D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(206) := '3A207472616E736C617465283230307078293B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_api.g_varchar2_table(207) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D';
wwv_flow_api.g_varchar2_table(208) := '7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A203070782021696D706F7274616E743B0D0A2020202072696768743A2034387078';
wwv_flow_api.g_varchar2_table(209) := '2021696D706F7274616E743B0D0A20207D0D0A7D0D0A0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A203070783B0D0A7D0D0A2E742D5061';
wwv_flow_api.g_varchar2_table(210) := '6765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874436F6C6C617073';
wwv_flow_api.g_varchar2_table(211) := '6564202E742D426F64792D616374696F6E73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C61746528323030';
wwv_flow_api.g_varchar2_table(212) := '7078293B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D616374696F6E';
wwv_flow_api.g_varchar2_table(213) := '73207B0D0A20202D7765626B69742D7472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A20202D6D732D7472616E73666F726D3A207472616E736C617465282D3230307078293B0D0A20207472616E73666F';
wwv_flow_api.g_varchar2_table(214) := '726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E742D';
wwv_flow_api.g_varchar2_table(215) := '50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(216) := '742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A0D0A2E742D426F64792D636F6E74656E74496E6E6572207B0D0A20206D617267696E3A2030206175746F3B0D0A20206D';
wwv_flow_api.g_varchar2_table(217) := '61782D77696474683A20313030253B0D0A7D0D0A0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612832312C2032312C2032312C20302E3735293B0D0A7D0D0A2E742D42726561646372756D62';
wwv_flow_api.g_varchar2_table(218) := '2D6974656D2C0D0A2E742D42726561646372756D622D6974656D2061207B0D0A2020636F6C6F723A20233266326632663B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D42726561646372756D622D697465';
wwv_flow_api.g_varchar2_table(219) := '6D20613A666F637573207B0D0A2020636F6C6F723A20233035366162663B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64792D7469746C652D7368';
wwv_flow_api.g_varchar2_table(220) := '72696E6B202E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D736872696E6B202E742D';
wwv_flow_api.g_varchar2_table(221) := '42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A406D65646961206F6E6C7920';
wwv_flow_api.g_varchar2_table(222) := '73637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874';
wwv_flow_api.g_varchar2_table(223) := '207B0D0A20202020636F6C6F723A20233135313531353B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D427265616463';
wwv_flow_api.g_varchar2_table(224) := '72756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(225) := '6F723A20233164316431643B0D0A7D0D0A0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E2C0D0A2E75692D627574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861646F773A206E6F6E653B0D0A2020626F';
wwv_flow_api.g_varchar2_table(226) := '726465722D7261646975733A203270783B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C20636F6C6F7220302E327320656173653B0D';
wwv_flow_api.g_varchar2_table(227) := '0A7D0D0A2E742D427574746F6E202E742D49636F6E2C0D0A2E612D427574746F6E202E742D49636F6E2C0D0A2E75692D627574746F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E68657269743B0D0A7D0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(228) := '6F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F6375732C0D0A2E75692D627574746F6E3A666F637573';
wwv_flow_api.g_varchar2_table(229) := '207B0D0A20207A2D696E6465783A203130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6265666F7265';
wwv_flow_api.g_varchar2_table(230) := '2C0D0A2E75692D627574746F6E3A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E';
wwv_flow_api.g_varchar2_table(231) := '75692D627574746F6E2E69732D6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742021696D706F7274616E743B0D0A20206F7061636974793A20313B';
wwv_flow_api.g_varchar2_table(232) := '0D0A7D0D0A2E742D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A6163746976653A6265666F72652C';
wwv_flow_api.g_varchar2_table(233) := '0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E2E69732D';
wwv_flow_api.g_varchar2_table(234) := '6163746976653A666F6375733A6163746976653A6265666F7265207B0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572';
wwv_flow_api.g_varchar2_table(235) := '293A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(236) := '78207267626128302C20302C20302C20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E312920696E7365742021696D706F7274616E743B0D0A7D0D0A0D0A2E612D427574746F6E3A6265666F72652C0D';
wwv_flow_api.g_varchar2_table(237) := '0A2E742D427574746F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F72652C0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166746572207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(238) := '6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A202077696474683A20313030253B0D0A20206865696768743A20313030253B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(239) := '7261646975733A20696E68657269743B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A202E327320656173653B0D0A7D0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A2E';
wwv_flow_api.g_varchar2_table(240) := '75692D627574746F6E3A6265666F7265207B0D0A20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166746572207B0D0A20207A2D696E';
wwv_flow_api.g_varchar2_table(241) := '6465783A202D313B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574746F';
wwv_flow_api.g_varchar2_table(242) := '6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665';
wwv_flow_api.g_varchar2_table(243) := '723A61667465722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E75692D627574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A6166746572207B';
wwv_flow_api.g_varchar2_table(244) := '0D0A20206F7061636974793A20313B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E742D427574746F6E3A666F6375733A61637469';
wwv_flow_api.g_varchar2_table(245) := '76653A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B0D0A7D0D0A2E612D427574';
wwv_flow_api.g_varchar2_table(246) := '746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A202062';
wwv_flow_api.g_varchar2_table(247) := '6F782D736861646F773A203020302031707820317078207267626128352C203131342C203230362C20302E3235293B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E61706578';
wwv_flow_api.g_varchar2_table(248) := '2D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292C';
wwv_flow_api.g_varchar2_table(249) := '0D0A2E75692D627574746F6E2C0D0A2E612D427574746F6E207B0D0A2020636F6C6F723A20233231326632643B0D0A20206261636B67726F756E642D636F6C6F723A20236534656365613B0D0A2020626F782D736861646F773A20302030203020317078';
wwv_flow_api.g_varchar2_table(250) := '207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574';
wwv_flow_api.g_varchar2_table(251) := '202B206C6162656C3A686F7665722C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A686F7665722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A2E';
wwv_flow_api.g_varchar2_table(252) := '75692D627574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C2030';
wwv_flow_api.g_varchar2_table(253) := '2C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A666F';
wwv_flow_api.g_varchar2_table(254) := '6375732C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A666F6375732C0D0A2E75692D627574746F6E3A66';
wwv_flow_api.g_varchar2_table(255) := '6F6375732C0D0A2E612D427574746F6E3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F757020';
wwv_flow_api.g_varchar2_table(256) := '2E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2E69732D6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D6163746976652C0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(257) := '6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A2E75692D627574746F6E2E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E742D466F726D2D6669656C64436F6E7461';
wwv_flow_api.g_varchar2_table(258) := '696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A';
wwv_flow_api.g_varchar2_table(259) := '6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A2E75692D627574746F6E3A6163746976652C0D0A2E612D427574746F6E3A616374697665207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(260) := '756E642D636F6C6F723A20236336643664333B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(261) := '6F723A20236265643163653B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D72';
wwv_flow_api.g_varchar2_table(262) := '6320696E7075743A616374697665202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A666F6375733A6E';
wwv_flow_api.g_varchar2_table(263) := '6F74283A636865636B656429202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A666F6375733A6E6F7428';
wwv_flow_api.g_varchar2_table(264) := '3A636865636B656429202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C20302030203020327078202363666532646620696E7365742021696D706F7274616E743B0D0A20206F';
wwv_flow_api.g_varchar2_table(265) := '75746C696E653A206E6F6E653B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020636F6C6F723A20233231326632642021';
wwv_flow_api.g_varchar2_table(266) := '696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B65643A666F637573202B206C';
wwv_flow_api.g_varchar2_table(267) := '6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B65643A666F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C2030203020';
wwv_flow_api.g_varchar2_table(268) := '3020327078202363666532646620696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E';
wwv_flow_api.g_varchar2_table(269) := '7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A636865636B6564202B206C6162656C207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(270) := '6F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236366653264663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D686F743A6E';
wwv_flow_api.g_varchar2_table(271) := '6F74282E742D427574746F6E2D2D73696D706C65292C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D61727920';
wwv_flow_api.g_varchar2_table(272) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(273) := '427574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072';
wwv_flow_api.g_varchar2_table(274) := '696D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74283A61637469766529';
wwv_flow_api.g_varchar2_table(275) := '3A666F6375732C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D';
wwv_flow_api.g_varchar2_table(276) := '6172793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233036383065373B0D0A7D0D0A2E612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F';
wwv_flow_api.g_varchar2_table(277) := '74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F';
wwv_flow_api.g_varchar2_table(278) := '726974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E2D2D686F742E69732D6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A62';
wwv_flow_api.g_varchar2_table(279) := '6F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374697665207B0D0A2020';
wwv_flow_api.g_varchar2_table(280) := '6261636B67726F756E642D636F6C6F723A20233034363462353B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F74207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(281) := '6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F';
wwv_flow_api.g_varchar2_table(282) := '74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(283) := '74746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(284) := '73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D';
wwv_flow_api.g_varchar2_table(285) := '0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2023666263';
wwv_flow_api.g_varchar2_table(286) := '6534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(287) := '2D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E';
wwv_flow_api.g_varchar2_table(288) := '2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233432626533313B0D0A7D0D0A2E742D427574746F6E2D2D73756363';
wwv_flow_api.g_varchar2_table(289) := '6573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(290) := '74746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(291) := '6B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(292) := '723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D64616E67';
wwv_flow_api.g_varchar2_table(293) := '65723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236635356134653B0D0A7D0D';
wwv_flow_api.g_varchar2_table(294) := '0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(295) := '706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D6163';
wwv_flow_api.g_varchar2_table(296) := '74697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(297) := '686F7429207B0D0A2020636F6C6F723A20233031313232303B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A';
wwv_flow_api.g_varchar2_table(298) := '2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(299) := '6F723A20236262646666643B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7072696D6172793A';
wwv_flow_api.g_varchar2_table(300) := '6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E74';
wwv_flow_api.g_varchar2_table(301) := '2D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236132643366643B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A';
wwv_flow_api.g_varchar2_table(302) := '6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E6729207B0D0A2020';
wwv_flow_api.g_varchar2_table(303) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233430343034303B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A';
wwv_flow_api.g_varchar2_table(304) := '7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(305) := '6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E';
wwv_flow_api.g_varchar2_table(306) := '676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A666F6375732C0D0A2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(307) := '6C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E74';
wwv_flow_api.g_varchar2_table(308) := '2D427574746F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74207B0D';
wwv_flow_api.g_varchar2_table(309) := '0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E';
wwv_flow_api.g_varchar2_table(310) := '2D2D686F742C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(311) := '2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665207B0D0A2020';
wwv_flow_api.g_varchar2_table(312) := '6261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E742D49636F6E2C0D0A2E74';
wwv_flow_api.g_varchar2_table(313) := '2D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665202E742D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(314) := '20636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A2030203020';
wwv_flow_api.g_varchar2_table(315) := '3020317078202361326433666420696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(316) := '74746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233236393966613B0D0A7D';
wwv_flow_api.g_varchar2_table(317) := '0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172';
wwv_flow_api.g_varchar2_table(318) := '793A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20';
wwv_flow_api.g_varchar2_table(319) := '206261636B67726F756E642D636F6C6F723A20236132643366643B0D0A2020636F6C6F723A20233031313232303B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E';
wwv_flow_api.g_varchar2_table(320) := '2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(321) := '74746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233031313232303B0D0A7D0D0A0D0A2E742D42';
wwv_flow_api.g_varchar2_table(322) := '7574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366626365346120696E7365743B0D0A2020626163';
wwv_flow_api.g_varchar2_table(323) := '6B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D';
wwv_flow_api.g_varchar2_table(324) := '706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130343B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F';
wwv_flow_api.g_varchar2_table(325) := '6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F637573';
wwv_flow_api.g_varchar2_table(326) := '2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B';
wwv_flow_api.g_varchar2_table(327) := '0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D42';
wwv_flow_api.g_varchar2_table(328) := '7574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E';
wwv_flow_api.g_varchar2_table(329) := '696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E';
wwv_flow_api.g_varchar2_table(330) := '6765723A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366343433333620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(331) := '2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D42';
wwv_flow_api.g_varchar2_table(332) := '7574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A';
wwv_flow_api.g_varchar2_table(333) := '686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64';
wwv_flow_api.g_varchar2_table(334) := '616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(335) := '2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74';
wwv_flow_api.g_varchar2_table(336) := '282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E74';
wwv_flow_api.g_varchar2_table(337) := '2D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(338) := '61646F773A20302030203020317078202333626161326320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D73756363657373';
wwv_flow_api.g_varchar2_table(339) := '3A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(340) := '3362616132633B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D42757474';
wwv_flow_api.g_varchar2_table(341) := '6F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D61';
wwv_flow_api.g_varchar2_table(342) := '6374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74';
wwv_flow_api.g_varchar2_table(343) := '282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D4963';
wwv_flow_api.g_varchar2_table(344) := '6F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(345) := '0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A6E6F74283A686F76657229';
wwv_flow_api.g_varchar2_table(346) := '3A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A666F6375';
wwv_flow_api.g_varchar2_table(347) := '732C0D0A2E742D427574746F6E2D2D6E6F55492E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A666F6375733A686F766572207B0D0A202062';
wwv_flow_api.g_varchar2_table(348) := '6F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E7370';
wwv_flow_api.g_varchar2_table(349) := '6172656E742021696D706F7274616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A20756E';
wwv_flow_api.g_varchar2_table(350) := '6465726C696E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E742D427574746F6E2D2D6C696E6B202E742D49636F6E207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(351) := '2D2D6E6F55492E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E';
wwv_flow_api.g_varchar2_table(352) := '6F55492E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F';
wwv_flow_api.g_varchar2_table(353) := '6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A20233236393966612021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E';
wwv_flow_api.g_varchar2_table(354) := '742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E2C0D0A';
wwv_flow_api.g_varchar2_table(355) := '2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130342021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D4275';
wwv_flow_api.g_varchar2_table(356) := '74746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E676572202E742D49636F6E2C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(357) := '6F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7375';
wwv_flow_api.g_varchar2_table(358) := '63636573732C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D73756363657373202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C';
wwv_flow_api.g_varchar2_table(359) := '696E6B2E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0D0A2020636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67202E742D427574746F6E207B0D0A';
wwv_flow_api.g_varchar2_table(360) := '20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(361) := '6F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976653A666F6375733A6265666F';
wwv_flow_api.g_varchar2_table(362) := '7265207B0D0A2020626F782D736861646F773A20302030203020317078202332363939666120696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F7665722C0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(363) := '74746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D';
wwv_flow_api.g_varchar2_table(364) := '0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D427574746F6E2E742D42757474';
wwv_flow_api.g_varchar2_table(365) := '6F6E2D2D6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34';
wwv_flow_api.g_varchar2_table(366) := '293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(367) := '773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A20206D696E2D77696474683A20333270783B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565';
wwv_flow_api.g_varchar2_table(368) := '3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332363939666120696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A2020';
wwv_flow_api.g_varchar2_table(369) := '2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A20207D0D0A7D0D0A2E742D427574746F6E2E742D4275';
wwv_flow_api.g_varchar2_table(370) := '74746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236335646364383B0D0A2020626F726465723A2031707820736F6C696420236135633963323B0D0A7D0D0A2E742D427574746F6E2E742D42757474';
wwv_flow_api.g_varchar2_table(371) := '6F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236135633963323B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A6163746976652C0D0A2E';
wwv_flow_api.g_varchar2_table(372) := '742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A20233131313131313B0D0A7D0D0A2E742D427574746F6E2D2D6E6176426172202E742D427574746F6E2D626164676520';
wwv_flow_api.g_varchar2_table(373) := '7B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D0A2E742D427574746F6E2D2D68656C70427574746F6E202E612D49636F6E';
wwv_flow_api.g_varchar2_table(374) := '207B0D0A20206F7061636974793A202E353B0D0A7D0D0A0D0A2E742D4865616465722D6E6176426172202E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975';
wwv_flow_api.g_varchar2_table(375) := '733A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0D0A20206261636B67726F756E642D636F6C6F723A20233033343938333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A0D0A2E742D427574';
wwv_flow_api.g_varchar2_table(376) := '746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A61';
wwv_flow_api.g_varchar2_table(377) := '66746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A0D0A2E742D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D6461';
wwv_flow_api.g_varchar2_table(378) := '6E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(379) := '2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A0D0A2E742D427574746F6E2D2D7072696D617279202E';
wwv_flow_api.g_varchar2_table(380) := '66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236132643366643B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(381) := '0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(382) := '636F6C6F723A20236662636534613B0D0A7D0D0A0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A';
wwv_flow_api.g_varchar2_table(383) := '20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A2023323032303230';
wwv_flow_api.g_varchar2_table(384) := '3B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(385) := '526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D';
wwv_flow_api.g_varchar2_table(386) := '2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E5265';
wwv_flow_api.g_varchar2_table(387) := '67696F6E2D7469746C65207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F64792D7469746C65202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B';
wwv_flow_api.g_varchar2_table(388) := '0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A202331';
wwv_flow_api.g_varchar2_table(389) := '64316431643B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C652C0D0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567';
wwv_flow_api.g_varchar2_table(390) := '696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0D0A202062';
wwv_flow_api.g_varchar2_table(391) := '61636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B0D0A7D0D0A0D0A2E66632E75692D776964676574207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765';
wwv_flow_api.g_varchar2_table(392) := '343B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236265643864333B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020626F726465722D7261646975733A203270782032';
wwv_flow_api.g_varchar2_table(393) := '7078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E6663202E66632D6461792D6E756D626572207B0D0A2020636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(394) := '30323032303B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A202363376464';
wwv_flow_api.g_varchar2_table(395) := '64393B0D0A2020636F6C6F723A20233036303630363B0D0A2020626F726465722D636F6C6F723A20236237643363653B0D0A7D0D0A6469762E66632D6167656E64614C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765';
wwv_flow_api.g_varchar2_table(396) := '343B0D0A2020626F726465722D636F6C6F723A20236265643864333B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179486561646572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(397) := '6F723A20236137636163333B0D0A2020636F6C6F723A20233036303630363B0D0A2020626F726465722D636F6C6F723A20236431653365303B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D646179207B0D0A2020636F6C6F723A20233036';
wwv_flow_api.g_varchar2_table(398) := '303630363B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233263326332633B0D0A7D0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D73746172742D74696D652C0D';
wwv_flow_api.g_varchar2_table(399) := '0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A626F6479202E66632074642E66632D746F6461792C0D0A626F6479202E6663202E75692D77';
wwv_flow_api.g_varchar2_table(400) := '69646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236237643463653B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742E66632D746F6461792E7569';
wwv_flow_api.g_varchar2_table(401) := '2D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236337646464393B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A2023643165';
wwv_flow_api.g_varchar2_table(402) := '3365303B0D0A7D0D0A2E6663202E75692D627574746F6E3A6163746976652C0D0A2E6663202E75692D627574746F6E3A666F6375732C0D0A2E66632D766965773A6163746976652C0D0A2E66632D766965773A666F637573207B0D0A20206F75746C696E';
wwv_flow_api.g_varchar2_table(403) := '653A2031707820736F6C696420233035373263653B0D0A7D0D0A2E66632D766965772D636F6E7461696E6572203E202E66632D766965773A6163746976652C0D0A2E66632D766965772D636F6E7461696E6572203E202E66632D766965773A666F637573';
wwv_flow_api.g_varchar2_table(404) := '207B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(405) := '742D436172642D777261703A666F637573207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D436172642D69636F6E207B0D0A2020636F6C6F723A20236437653765343B0D0A7D0D0A2E742D436172642D64657363';
wwv_flow_api.g_varchar2_table(406) := '207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D436172642D696E666F2C0D0A2E742D436172642D7375627469746C65207B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A';
wwv_flow_api.g_varchar2_table(407) := '2020636F6C6F723A20233138323832353B0D0A7D0D0A2E742D436172642D636F6C6F7246696C6C2C0D0A2E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233837623761653B0D0A7D0D0A0D0A2E742D436C6173';
wwv_flow_api.g_varchar2_table(408) := '73696343616C656E6461722D6D6F6E74685469746C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(409) := '236431653365303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A2020626F726465722D636F6C6F723A20236337646464393B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A2E742D436C617373696343616C656E646172';
wwv_flow_api.g_varchar2_table(410) := '2D646179207B0D0A2020626F726465722D636F6C6F723A20236337646464393B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0D0A20';
wwv_flow_api.g_varchar2_table(411) := '206F7061636974793A202E353B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(412) := '6F756E642D636F6C6F723A20236434653565323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D64617465207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(413) := '6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D64617465207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A2E742D436C617373696343616C656E';
wwv_flow_api.g_varchar2_table(414) := '6461722D6576656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236337646464393B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(415) := '6C617373696343616C656E6461722D6576656E742061207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765';
wwv_flow_api.g_varchar2_table(416) := '656B6C79202E742D436C617373696343616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(417) := '6E642D636F6C6F723A20236431653365303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0D0A2E742D436C617373696343616C656E6461722D';
wwv_flow_api.g_varchar2_table(418) := '2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E7473207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C61737369634361';
wwv_flow_api.g_varchar2_table(419) := '6C656E6461722D6461794576656E747320612C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(420) := '20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0D0A2E742D436C61';
wwv_flow_api.g_varchar2_table(421) := '7373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0D0A20206261636B67726F756E642D636F6C6F723A20236434656266653B0D0A7D0D0A2E742D436C61737369634361';
wwv_flow_api.g_varchar2_table(422) := '6C656E6461722D6C697374207B0D0A2020626F726465722D636F6C6F723A20236337646464393B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0D0A2E742D436C617373696343616C656E6461722D6C6973744576';
wwv_flow_api.g_varchar2_table(423) := '656E74207B0D0A2020626F726465722D636F6C6F723A20236337646464393B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236431653365303B0D0A2020';
wwv_flow_api.g_varchar2_table(424) := '636F6C6F723A20233436343634363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D65';
wwv_flow_api.g_varchar2_table(425) := '6E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236565663466393B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D';
wwv_flow_api.g_varchar2_table(426) := '6D656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A20236565663466393B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D';
wwv_flow_api.g_varchar2_table(427) := '6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236363646565643B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D69';
wwv_flow_api.g_varchar2_table(428) := '74656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F726465722D72696768742D636F6C6F723A20236363646565643B0D0A7D0D0A2E742D436F6D6D656E74732D2D6261736963202E742D';
wwv_flow_api.g_varchar2_table(429) := '436F6D6D656E74732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236432653465313B0D0A7D0D0A2E742D436F6D6D656E74732D6974656D2E69732D73797374656D4D657373616765207B0D0A202062';
wwv_flow_api.g_varchar2_table(430) := '61636B67726F756E642D636F6C6F723A20236462653766323B0D0A7D0D0A2E742D436F6D6D656E74732D696E666F207B0D0A2020636F6C6F723A20233561356135613B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(431) := '6F723A20233030303030303B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0D0A2020636F6C6F723A20233536353635363B0D0A7D0D0A2E742D436F6E66';
wwv_flow_api.g_varchar2_table(432) := '696750616E656C2D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D436F6E6669675061';
wwv_flow_api.g_varchar2_table(433) := '6E656C2D69636F6E2E69732D656E61626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(434) := '756E642D636F6C6F723A20236634343333363B0D0A7D0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E742D43';
wwv_flow_api.g_varchar2_table(435) := '6F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E742D436F6E6669';
wwv_flow_api.g_varchar2_table(436) := '6750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0D0A2020';
wwv_flow_api.g_varchar2_table(437) := '636F6C6F723A20233035366162663B0D0A7D0D0A2E742D4469616C6F67207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468';
wwv_flow_api.g_varchar2_table(438) := '756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20233837623761653B0D0A7D0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(439) := '6C6F723A20233737616561333B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A0D0A2E742D466F6F746572';
wwv_flow_api.g_varchar2_table(440) := '2D746F70427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233438343834383B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A666F637573207B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(441) := '2D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0D0A2020636F6C6F723A20233139313931393B0D0A7D0D0A2E617065782D69';
wwv_flow_api.g_varchar2_table(442) := '74656D2D74657874617265612C0D0A2E617065782D6974656D2D746578742C0D0A2E617065782D6974656D2D73656C656374207B0D0A2020636F6C6F723A20233139313931393B0D0A20206261636B67726F756E642D636F6C6F723A2023636665326466';
wwv_flow_api.g_varchar2_table(443) := '3B0D0A2020626F726465722D636F6C6F723A20236166636663393B0D0A7D0D0A2E617065782D6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D746578742E617065782D70616765';
wwv_flow_api.g_varchar2_table(444) := '2D6974656D2D6572726F722C0D0A2E617065782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F72207B0D0A2020626F726465722D636F6C6F723A20236637373036363B0D0A7D0D0A2E617065782D6974656D2D74657874';
wwv_flow_api.g_varchar2_table(445) := '617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D6974656D2D746578742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E6170';
wwv_flow_api.g_varchar2_table(446) := '65782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C6964207B0D0A2020626F726465722D636F6C6F723A20236166636663393B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E74';
wwv_flow_api.g_varchar2_table(447) := '61696E65722D2D666C6F6174696E674C6162656C202E742D466F726D2D696E707574436F6E7461696E6572202E617065782D6974656D2D646973706C61792D6F6E6C79207B0D0A2020636F6C6F723A20233139313931393B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(448) := '6E642D636F6C6F723A20236466656365393B0D0A2020626F726465722D636F6C6F723A20236166636663393B0D0A2020626F726465722D7374796C653A206461736865643B0D0A7D0D0A0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E65';
wwv_flow_api.g_varchar2_table(449) := '2D6C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236466656365393B0D0A2020636F6C6F723A20726762612832352C2032352C2032352C20302E37293B0D0A2020626F726465722D7261646975733A2032707820302030203270';
wwv_flow_api.g_varchar2_table(450) := '783B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E617065782D6974656D2D66696C652D6472';
wwv_flow_api.g_varchar2_table(451) := '6F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236366653264663B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C';
wwv_flow_api.g_varchar2_table(452) := '652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E';
wwv_flow_api.g_varchar2_table(453) := '65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020636F6C6F723A20233139313931393B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D6472';
wwv_flow_api.g_varchar2_table(454) := '6F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236566663566343B0D0A2020636F6C6F723A20233139313931393B0D0A7D0D0A2E617065782D6974';
wwv_flow_api.g_varchar2_table(455) := '656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D';
wwv_flow_api.g_varchar2_table(456) := '0A2020636F6C6F723A20233139313931393B0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F';
wwv_flow_api.g_varchar2_table(457) := '6E207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D746578746172';
wwv_flow_api.g_varchar2_table(458) := '65613A666F6375732C0D0A2E617065782D6974656D2D746578743A666F6375732C0D0A2E617065782D6974656D2D73656C6563743A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236566663566342021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(459) := '3B0D0A2020626F726465722D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A686F7665722C0D0A2E617065782D6974656D2D746578743A686F7665722C0D0A2E61706578';
wwv_flow_api.g_varchar2_table(460) := '2D6974656D2D73656C6563743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236466656365393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D70';
wwv_flow_api.g_varchar2_table(461) := '6C616365686F6C646572207B0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B';
wwv_flow_api.g_varchar2_table(462) := '0D0A2020636F6C6F723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(463) := '723A20233030303030303B0D0A20206F7061636974793A202E343B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D0A2020636F6C6F723A20233139313931393B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65722073';
wwv_flow_api.g_varchar2_table(464) := '70616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D73656C6563';
wwv_flow_api.g_varchar2_table(465) := '742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E73656C6563746C6973742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0D0A2020636F6C6F723A2023313931';
wwv_flow_api.g_varchar2_table(466) := '3931393B0D0A2020626F726465722D636F6C6F723A20236166636663393B0D0A7D0D0A2E742D466F726D2D6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(467) := '742D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162656C2C0D0A2E742D466F726D2D696E7075';
wwv_flow_api.g_varchar2_table(468) := '74436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A20233264326432643B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(469) := '236634343333363B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20236163616361633B0D0A7D0D0A2E742D466F726D2D2D73656172636820696E7075742E742D466F726D2D7365617263684669656C64207B0D0A20';
wwv_flow_api.g_varchar2_table(470) := '206261636B67726F756E642D636F6C6F723A20236366653264663B0D0A2020636F6C6F723A20233133323031643B0D0A7D0D0A2E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D427574746F6E';
wwv_flow_api.g_varchar2_table(471) := '2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E612D427574746F6E2E612D427574746F6E2D2D63616C656E6461722C0D0A2E752D52544C202E612D42757474';
wwv_flow_api.g_varchar2_table(472) := '6F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65';
wwv_flow_api.g_varchar2_table(473) := '722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D696E707574';
wwv_flow_api.g_varchar2_table(474) := '436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A203020';
wwv_flow_api.g_varchar2_table(475) := '3270782032707820303B0D0A7D0D0A0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F757020696E707574207B0D0A20200D0A20200D0A7D0D0A2E636865636B626F785F67726F757020696E707574202B206C61';
wwv_flow_api.g_varchar2_table(476) := '62656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236366653264663B0D0A7D0D0A2E636865636B626F785F67726F75702069';
wwv_flow_api.g_varchar2_table(477) := '6E7075743A666F637573202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(478) := '2E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F7265';
wwv_flow_api.g_varchar2_table(479) := '207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020626F782D736861646F773A20302030203020317078202363666532646620696E7365743B0D0A';
wwv_flow_api.g_varchar2_table(480) := '7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(481) := '6465722D636F6C6F723A20233035373263653B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(482) := '6F756E642D636F6C6F723A20236366653264663B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E707574207B0D0A20200D0A20200D';
wwv_flow_api.g_varchar2_table(483) := '0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(484) := '6C6F723A20236237643463653B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67';
wwv_flow_api.g_varchar2_table(485) := '726F757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47';
wwv_flow_api.g_varchar2_table(486) := '726F7570202E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20236366653264663B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(487) := '6C6F723A20236366653264663B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E';
wwv_flow_api.g_varchar2_table(488) := '636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6166746572207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D7261';
wwv_flow_api.g_varchar2_table(489) := '64696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20236366653264663B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(490) := '642D636F6C6F723A20236366653264663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C';
wwv_flow_api.g_varchar2_table(491) := '3A6166746572207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(492) := '726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A20206261636B67726F756E642D636F6C6F723A20236366653264663B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(493) := '773A20302030203020302E3172656D202361666366633920696E7365743B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F';
wwv_flow_api.g_varchar2_table(494) := '726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E74';
wwv_flow_api.g_varchar2_table(495) := '2D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F';
wwv_flow_api.g_varchar2_table(496) := '726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B20';
wwv_flow_api.g_varchar2_table(497) := '2E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A0D0A2E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D';
wwv_flow_api.g_varchar2_table(498) := '2D69636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(499) := '3436343634363B0D0A2020626F782D736861646F773A202D302E3172656D20302030202361666366633920696E7365743B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D';
wwv_flow_api.g_varchar2_table(500) := '6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F773A20302E3172656D20302030202361666366633920696E7365743B0D0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(501) := '61646975733A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D';
wwv_flow_api.g_varchar2_table(502) := '2D69636F6E207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A0D0A2E742D466F726D2D68656C70427574746F6E3A666F637573202E612D49636F6E207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A0D0A2E742D466F';
wwv_flow_api.g_varchar2_table(503) := '726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D2D6974656D57726170706572203E202E617065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A6669727374';
wwv_flow_api.g_varchar2_table(504) := '2D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D';
wwv_flow_api.g_varchar2_table(505) := '2D6974656D57726170706572203E202E617065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A20302030203270782032';
wwv_flow_api.g_varchar2_table(506) := '70783B0D0A7D0D0A0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E61';
wwv_flow_api.g_varchar2_table(507) := '7065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164';
wwv_flow_api.g_varchar2_table(508) := '696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D';
wwv_flow_api.g_varchar2_table(509) := '0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E';
wwv_flow_api.g_varchar2_table(510) := '617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B';
wwv_flow_api.g_varchar2_table(511) := '0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C6420';
wwv_flow_api.g_varchar2_table(512) := '2E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A0D0A2E742D4865616465722D6272616E64696E67207B0D0A2020';
wwv_flow_api.g_varchar2_table(513) := '6261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D4865616465722D6C6F676F2C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E74';
wwv_flow_api.g_varchar2_table(514) := '2D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465722D6C6F676F3A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976';
wwv_flow_api.g_varchar2_table(515) := '653A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465723A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A20';
wwv_flow_api.g_varchar2_table(516) := '20636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E65';
wwv_flow_api.g_varchar2_table(517) := '3B0D0A2020626F782D736861646F773A20302030203020317078202332363939666120696E7365743B0D0A7D0D0A2E742D4865616465722D6E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20233331333733633B0D0A7D0D0A2E742D48';
wwv_flow_api.g_varchar2_table(518) := '6561646572202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D';
wwv_flow_api.g_varchar2_table(519) := '656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D486561646572202E612D4D656E752E612D4D656E752D2D746F70203E202E612D4D656E752D636F6E74656E74';
wwv_flow_api.g_varchar2_table(520) := '207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(521) := '3135293B0D0A7D0D0A2E742D4865616465722D6E61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D72';
wwv_flow_api.g_varchar2_table(522) := '61646975733A203470783B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865726F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233135';
wwv_flow_api.g_varchar2_table(523) := '313531353B0D0A7D0D0A2E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20233438343834383B0D0A7D0D0A0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A202062';
wwv_flow_api.g_varchar2_table(524) := '6F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D';
wwv_flow_api.g_varchar2_table(525) := '0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D76616C7565207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(526) := '7B0D0A2020626F726465722D746F702D636F6C6F723A20236361646664623B0D0A20206261636B67726F756E642D636F6C6F723A20236431653365303B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(527) := '6C6F723A20236437653765343B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D636F6E74726F6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952';
wwv_flow_api.g_varchar2_table(528) := '522D746F6F6C626172207B0D0A20206261636B67726F756E643A20236437653765343B0D0A2020626F726465722D636F6C6F723A20236237643363653B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A202062';
wwv_flow_api.g_varchar2_table(529) := '61636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E612D5265706F72742D70657263656E744368617274207B0D0A20206261636B67726F756E642D636F6C6F723A20236434656266653B0D0A7D0D0A2E612D4952522D62757474';
wwv_flow_api.g_varchar2_table(530) := '6F6E2D2D636F6C536561726368207B0D0A20202D7765626B69742D626F726465722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A20202D7765626B69742D626F726465722D626F74746F6D2D72696768742D72';
wwv_flow_api.g_varchar2_table(531) := '61646975733A203070782021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D746F7072696768743A20307078202021696D706F7274616E743B0D0A20202D6D6F7A2D626F726465722D7261646975732D626F74746F6D';
wwv_flow_api.g_varchar2_table(532) := '72696768743A203070782021696D706F7274616E743B0D0A2020626F726465722D746F702D72696768742D7261646975733A203070782021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203070';
wwv_flow_api.g_varchar2_table(533) := '782021696D706F7274616E743B0D0A7D0D0A2E612D4952522D69636F6E566965775461626C652C0D0A2E612D4952522D6368617274566965772C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A';
wwv_flow_api.g_varchar2_table(534) := '2E612D4952522D64657461696C56696577207B0D0A2020626F726465722D746F702D636F6C6F723A20236361646664623B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D63';
wwv_flow_api.g_varchar2_table(535) := '6F6C6F723A20236334646364373B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236431653365303B0D0A2020626F726465722D746F703A2031707820736F6C696420236237643463653B0D0A';
wwv_flow_api.g_varchar2_table(536) := '2020626F782D736861646F773A20696E7365742031707820302030203020236237643463653B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236337646464393B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(537) := '612D4952522D6865616465722E69732D6163746976652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(538) := '6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A20';
wwv_flow_api.g_varchar2_table(539) := '20636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D6865616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664623B0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A202062';
wwv_flow_api.g_varchar2_table(540) := '61636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E612D4952522D7461626C65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(541) := '2D4952522D7461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236366653264663B0D0A7D0D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(542) := '65722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D7461626C65207464207B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236337646464393B0D0A2020626F726465722D746F703A2031707820736F6C6964202363';
wwv_flow_api.g_varchar2_table(543) := '37646464393B0D0A7D0D0A2E612D4952522D6865616465724C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C64';
wwv_flow_api.g_varchar2_table(544) := '3A666F637573207B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A2020626F782D736861646F773A202D31707820302030202330353732636520696E7365742C2031707820302030202330353732636520696E7365743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(545) := '0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236334646364373B0D0A2020636F6C6F723A2023313832383235';
wwv_flow_api.g_varchar2_table(546) := '3B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73';
wwv_flow_api.g_varchar2_table(547) := '696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F6C6F723A20236364653164653B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A2023636465';
wwv_flow_api.g_varchar2_table(548) := '3164653B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236334646364373B0D0A7D0D0A2E612D495252';
wwv_flow_api.g_varchar2_table(549) := '2D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C616265';
wwv_flow_api.g_varchar2_table(550) := '6C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A2037363970';
wwv_flow_api.g_varchar2_table(551) := '7829207B0D0A20202E69732D6D6178696D697A65642E742D4952522D726567696F6E202E742D6668742D7468656164202E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236237643463';
wwv_flow_api.g_varchar2_table(552) := '653B0D0A20207D0D0A7D0D0A2E75692D7769646765742D636F6E74656E74202E612D4952522D69636F6E4C6973742D6C696E6B207B0D0A2020636F6C6F723A20233230323032303B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765';
wwv_flow_api.g_varchar2_table(553) := '343B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236364653164653B0D0A7D0D0A0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F78';
wwv_flow_api.g_varchar2_table(554) := '2D736861646F773A20696E68657269743B0D0A7D0D0A0D0A2E612D4952522D736F7274576964676574207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D';
wwv_flow_api.g_varchar2_table(555) := '6261636B64726F702D66696C7465723A20626C757228347078293B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D77696474683A20303B0D0A2020626F782D736861646F773A20302032707820347078202D32707820726762612830';
wwv_flow_api.g_varchar2_table(556) := '2C20302C20302C20302E35292C2030203870782031367078202D347078207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C626172207B0D0A20207769';
wwv_flow_api.g_varchar2_table(557) := '6474683A203870783B0D0A20206865696768743A203870783B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(558) := '61283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612832';
wwv_flow_api.g_varchar2_table(559) := '35352C203235352C203235352C20302E3235293B0D0A7D0D0A0D0A2E612D4952522D736F72745769646765742D68656C70207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A0D0A2E612D4952522D73';
wwv_flow_api.g_varchar2_table(560) := '6F72745769646765742D616374696F6E73207B0D0A202070616464696E673A203870783B0D0A2020626F726465722D7261646975733A203270783B0D0A202077696474683A206175746F3B0D0A2020626F726465722D626F74746F6D2D77696474683A20';
wwv_flow_api.g_varchar2_table(561) := '303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F7274576964676574';
wwv_flow_api.g_varchar2_table(562) := '2D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D627574746F6E';
wwv_flow_api.g_varchar2_table(563) := '2E612D4952522D736F72745769646765742D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F';
wwv_flow_api.g_varchar2_table(564) := '72745769646765742D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D62';
wwv_flow_api.g_varchar2_table(565) := '7574746F6E2E69732D6163746976652C0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20';
wwv_flow_api.g_varchar2_table(566) := '302C20302C20302E35293B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0D0A20206865696768743A20343070783B0D0A202070616464696E673A2031327078203870783B0D0A7D0D0A2E612D4952522D736F';
wwv_flow_api.g_varchar2_table(567) := '72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263';
wwv_flow_api.g_varchar2_table(568) := '684669656C645B747970653D2274657874225D207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020617070656172616E63653A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A207267';
wwv_flow_api.g_varchar2_table(569) := '6261283235352C203235352C203235352C20302E31293B0D0A20206865696768743A20343070783B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F727457';
wwv_flow_api.g_varchar2_table(570) := '69646765742D7365617263684669656C645B747970653D2274657874225D3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4952522D736F7274576964676574';
wwv_flow_api.g_varchar2_table(571) := '2D726F7773207B0D0A2020626F726465722D746F702D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77207B0D0A2020636F6C6F723A20234646463B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D';
wwv_flow_api.g_varchar2_table(572) := '0A2E612D4952522D736F72745769646765742D726F773A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D4952522D736F7274576964676574';
wwv_flow_api.g_varchar2_table(573) := '2D726F773A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E612D4947202E612D4952522D736F72745769646765743A6265666F7265207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(574) := '726762612833322C2033322C2033322C20302E3935293B0D0A7D0D0A2E6F6A2D6476742D63617465676F727931207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(575) := '20233363616638353B0D0A7D0D0A2E6F6A2D6476742D63617465676F727933207B0D0A2020636F6C6F723A20236662636534613B0D0A7D0D0A2E6F6A2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(576) := '2E6F6A2D6476742D63617465676F727935207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A2E6F6A2D6476742D63617465676F727936207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E6F6A2D6476742D63617465676F';
wwv_flow_api.g_varchar2_table(577) := '727937207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E6F6A2D6476742D63617465676F727938207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(578) := '3A20233133623663663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793130207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20236361353839643B0D0A';
wwv_flow_api.g_varchar2_table(579) := '7D0D0A2E6F6A2D6476742D63617465676F72793132207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(580) := '6F6C6F723A20236237643463653B0D0A7D0D0A2E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20236137636163343B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(581) := '642D636F6C6F723A20236337646464393B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A0D0A2E742D4C696E';
wwv_flow_api.g_varchar2_table(582) := '6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A20236137636163343B0D0A7D0D0A0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E';
wwv_flow_api.g_varchar2_table(583) := '6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664623B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(584) := '4C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236265643864333B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C69';
wwv_flow_api.g_varchar2_table(585) := '6E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233837623761653B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(586) := '0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(587) := '2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(588) := '6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69';
wwv_flow_api.g_varchar2_table(589) := '636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(590) := '234643464346433B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C207267626128302C20302C20302C203029292C206C696E6561722D6772616469656E7428726762';
wwv_flow_api.g_varchar2_table(591) := '6128302C20302C20302C2030292C207267626128302C20302C20302C20302E30313529293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F';
wwv_flow_api.g_varchar2_table(592) := '7265207B0D0A2020636F6C6F723A20233035373263653B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A207267626128';
wwv_flow_api.g_varchar2_table(593) := '302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(594) := '4C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C61';
wwv_flow_api.g_varchar2_table(595) := '62656C207B0D0A2020636F6C6F723A20233131313131313B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20233131313131313B0D0A7D0D0A2E742D4C696E';
wwv_flow_api.g_varchar2_table(596) := '6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A';
wwv_flow_api.g_varchar2_table(597) := '686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(598) := '6F723A20233130316131383B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236235643363643B0D0A7D0D0A0D0A2E742D4C6F';
wwv_flow_api.g_varchar2_table(599) := '67696E2D69636F6E56616C69646174696F6E207B0D0A20206261636B67726F756E643A20233362616132633B0D0A2020636F6C6F723A2077686974653B0D0A7D0D0A626F6479202E742D4C6F67696E2D7469746C65207B0D0A2020636F6C6F723A202332';
wwv_flow_api.g_varchar2_table(600) := '30323032303B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D4C6F67696E2D6C6F676F207B0D0A2020636F6C6F723A20233035373263653B0D0A7D';
wwv_flow_api.g_varchar2_table(601) := '0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D50616765426F64792D2D6C6F67696E2C0D0A20202E742D50616765426F64792D2D6C6F67696E202E742D426F6479207B';
wwv_flow_api.g_varchar2_table(602) := '0D0A202020206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A20207D0D0A7D0D0A0D0A2E742D4D656469614C697374207B0D0A2020626F726465722D636F6C6F723A20236231643063613B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(603) := '6F6C6F723A20236437653765343B0D0A7D0D0A2E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20236231643063613B0D0A7D0D0A2E742D4D656469614C6973742D6974656D2E69732D616374697665207B0D0A';
wwv_flow_api.g_varchar2_table(604) := '20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(605) := '72696768743A2031707820736F6C696420236231643063613B0D0A7D0D0A0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A612E742D4D656469614C6973742D6974656D5772';
wwv_flow_api.g_varchar2_table(606) := '61703A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236431653365303B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F637573207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(607) := '782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D4D656469614C6973742D62';
wwv_flow_api.g_varchar2_table(608) := '616467652C0D0A2E742D4D656469614C6973742D64657363207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233837623761653B0D';
wwv_flow_api.g_varchar2_table(609) := '0A2020636F6C6F723A20236437653765343B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202362316430636120696E7365743B0D0A7D0D0A2E742D4D65646961';
wwv_flow_api.g_varchar2_table(610) := '4C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(611) := '6F723A20236237643463653B0D0A7D0D0A0D0A2E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A20206C696E652D6865696768743A20323070783B0D0A7D0D0A2E612D4D656E754261722D6974656D203E';
wwv_flow_api.g_varchar2_table(612) := '202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E';
wwv_flow_api.g_varchar2_table(613) := '2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A20206261636B67726F756E643A20233035373263653B0D0A2020626F726465722D72696768743A203170';
wwv_flow_api.g_varchar2_table(614) := '7820736F6C696420233064386466393B0D0A2020626F726465722D6C6566743A2031707820736F6C696420233064386466393B0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D';
wwv_flow_api.g_varchar2_table(615) := '6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722E752D52544C';
wwv_flow_api.g_varchar2_table(616) := '202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E';
wwv_flow_api.g_varchar2_table(617) := '673A203870782038707820387078203470783B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C';
wwv_flow_api.g_varchar2_table(618) := '20302E35293B0D0A7D0D0A2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233064386466393B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A';
wwv_flow_api.g_varchar2_table(619) := '20206261636B67726F756E642D636F6C6F723A20233064386466393B0D0A7D0D0A0D0A2E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F726465722D7261646975733A203270783B0D';
wwv_flow_api.g_varchar2_table(620) := '0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(621) := '2D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D4D656E752D6261646765207B0D0A20206C696E652D6865696768743A20313670783B0D0A20206D6172';
wwv_flow_api.g_varchar2_table(622) := '67696E2D6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A7D0D0A0D0A2E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D4D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(623) := '752D6974656D207B0D0A2020636F6C6F723A20233130316131383B0D0A7D0D0A2E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E612D4D65';
wwv_flow_api.g_varchar2_table(624) := '6E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20233366613466613B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(625) := '6B67726F756E642D636F6C6F723A20236361646664623B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D';
wwv_flow_api.g_varchar2_table(626) := '656E75436F6C207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D';
wwv_flow_api.g_varchar2_table(627) := '616363656C207B0D0A2020636F6C6F723A20233535353535353B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D';
wwv_flow_api.g_varchar2_table(628) := '0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572';
wwv_flow_api.g_varchar2_table(629) := '202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E612D4D656E75202E61';
wwv_flow_api.g_varchar2_table(630) := '2D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(631) := '752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75';
wwv_flow_api.g_varchar2_table(632) := '202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D616363';
wwv_flow_api.g_varchar2_table(633) := '656C207B0D0A2020636F6C6F723A20726762612831362C2032362C2032342C20302E3735293B0D0A7D0D0A2E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283230322C203232332C20323139';
wwv_flow_api.g_varchar2_table(634) := '2C20302E3935293B0D0A2020626F726465722D636F6C6F723A20236161636363353B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4D656E75426172207B0D0A20';
wwv_flow_api.g_varchar2_table(635) := '206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D4865616465722D6E61762D6C6973742C0D0A2E742D486561646572202E612D4D656E75426172207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(636) := '20233035373263653B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233065313831363B0D0A20206C696E652D686569676874';
wwv_flow_api.g_varchar2_table(637) := '3A20323070783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202070616464696E673A2038';
wwv_flow_api.g_varchar2_table(638) := '707820303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A20206D617267696E2D72696768743A203870783B0D0A20206D617267696E2D6C6566743A202D3470783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(639) := '74656D207B0D0A20206261636B67726F756E643A20236337646464393B0D0A2020626F726465722D72696768743A2031707820736F6C696420236137636163343B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236137636163343B';
wwv_flow_api.g_varchar2_table(640) := '0D0A20206D617267696E2D6C6566743A202D3170783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(641) := '2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E754261722E752D52544C202E612D4D656E754261722D6974656D2E612D4D65';
wwv_flow_api.g_varchar2_table(642) := '6E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465723A206E6F6E653B0D0A20206D617267696E2D72696768743A20303B0D0A202070616464696E673A203870782038707820387078203470783B0D0A';
wwv_flow_api.g_varchar2_table(643) := '7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D64697361626C6564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20726762612831342C2032342C2032322C20302E35293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(644) := '526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236137636163343B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E64';
wwv_flow_api.g_varchar2_table(645) := '6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236137636163343B0D0A7D0D0A2E742D526567696F6E202E742D4D656E752D6261646765207B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(646) := '2D7261646975733A203270783B0D0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A2020666F6E742D7765696768743A206E6F726D616C3B0D0A2020766572746963616C2D616C69676E3A20746F703B';
wwv_flow_api.g_varchar2_table(647) := '0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D4D656E752D6C6162656C436F6E7461696E6572202E742D526567696F6E202E742D4D656E752D6261646765207B0D0A20206C';
wwv_flow_api.g_varchar2_table(648) := '696E652D6865696768743A20313670783B0D0A20206D617267696E2D6C6566743A203470783B0D0A20206D617267696E2D746F703A203870783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(649) := '2D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233138323732343B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D6853657061726174';
wwv_flow_api.g_varchar2_table(650) := '6F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D2D63757272656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20233837';
wwv_flow_api.g_varchar2_table(651) := '623761653B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(652) := '2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(653) := '20233166316631663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D';
wwv_flow_api.g_varchar2_table(654) := '0A2020636F6C6F723A20233566356635663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E6973';
wwv_flow_api.g_varchar2_table(655) := '2D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236337646464393B0D0A2020636F6C6F723A20233065313831363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D66';
wwv_flow_api.g_varchar2_table(656) := '6F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E65';
wwv_flow_api.g_varchar2_table(657) := '72202E612D4D656E752D737461747573436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D';
wwv_flow_api.g_varchar2_table(658) := '0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C2C0D0A2E742D526567696F6E202E612D4D656E75202E';
wwv_flow_api.g_varchar2_table(659) := '612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564203E20';
wwv_flow_api.g_varchar2_table(660) := '2E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20233065313831363B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(661) := '612832342C2033392C2033362C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231352C203233312C203232382C20302E3935293B';
wwv_flow_api.g_varchar2_table(662) := '0D0A2020626F726465722D636F6C6F723A20236237643363653B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A0D0A2E742D486561646572207B0D0A20200D0A20200D0A';
wwv_flow_api.g_varchar2_table(663) := '20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236361646664623B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D4865';
wwv_flow_api.g_varchar2_table(664) := '61646572202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D48656164657220';
wwv_flow_api.g_varchar2_table(665) := '2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233034363462352021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E';
wwv_flow_api.g_varchar2_table(666) := '752D2D63757272656E742C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20233034363462352021696D';
wwv_flow_api.g_varchar2_table(667) := '706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E';
wwv_flow_api.g_varchar2_table(668) := '612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236361646664622021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D';
wwv_flow_api.g_varchar2_table(669) := '0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20';
wwv_flow_api.g_varchar2_table(670) := '206261636B67726F756E642D636F6C6F723A20233034363462352021696D706F7274616E743B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D';
wwv_flow_api.g_varchar2_table(671) := '0A2020636F6C6F723A2072676261283230322C203232332C203231392C20302E38293B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D48656164657220';
wwv_flow_api.g_varchar2_table(672) := '2E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D486561646572202E612D4D656E754261722D6974656D20';
wwv_flow_api.g_varchar2_table(673) := '3E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233064386466393B0D0A2020626F726465722D636F6C6F723A20233064386466393B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(674) := '723A20236666666666663B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(675) := '3236393966613B0D0A2020626F726465722D636F6C6F723A20233236393966613B0D0A7D0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E';
wwv_flow_api.g_varchar2_table(676) := '752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664623B0D0A2020626F726465722D636F6C6F723A20236361646664623B0D0A2020636F6C6F723A20233130316131383B0D0A7D';
wwv_flow_api.g_varchar2_table(677) := '0D0A2E742D486561646572202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233761633166633B';
wwv_flow_api.g_varchar2_table(678) := '0D0A2020626F726465722D636F6C6F723A20233761633166633B0D0A2020636F6C6F723A20233032326435323B0D0A7D0D0A2E742D486561646572202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20';
wwv_flow_api.g_varchar2_table(679) := '206261636B67726F756E642D636F6C6F723A20233034363462353B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20236361646664623B0D0A7D0D0A2E742D486561646572202E61';
wwv_flow_api.g_varchar2_table(680) := '2D4D656E752D616363656C207B0D0A2020636F6C6F723A2072676261283230322C203232332C203231392C20302E3735293B0D0A7D0D0A2E742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E';
wwv_flow_api.g_varchar2_table(681) := '742D486561646572202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20233034353639632021696D706F7274616E743B0D0A7D0D0A2E742D426F6479207B0D0A';
wwv_flow_api.g_varchar2_table(682) := '20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233135313531353B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D';
wwv_flow_api.g_varchar2_table(683) := '0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D426F647920';
wwv_flow_api.g_varchar2_table(684) := '2E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236161636363352021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D';
wwv_flow_api.g_varchar2_table(685) := '2D63757272656E742C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236161636363352021696D706F7274';
wwv_flow_api.g_varchar2_table(686) := '616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D';
wwv_flow_api.g_varchar2_table(687) := '63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233135313531352021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(688) := '79202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(689) := '636F6C6F723A20236161636363352021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(690) := '2832312C2032312C2032312C20302E38293B0D0A2020626F726465722D636F6C6F723A20236661666366623B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D';
wwv_flow_api.g_varchar2_table(691) := '656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D426F6479202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A';
wwv_flow_api.g_varchar2_table(692) := '686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233761616661353B0D0A2020626F726465722D636F6C6F723A20233761616661353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F';
wwv_flow_api.g_varchar2_table(693) := '6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(694) := '3A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(695) := '206261636B67726F756E642D636F6C6F723A20233135313531353B0D0A2020626F726465722D636F6C6F723A20233135313531353B0D0A2020636F6C6F723A20236434643464343B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D';
wwv_flow_api.g_varchar2_table(696) := '2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(697) := '0A2020636F6C6F723A20236161636363353B0D0A7D0D0A2E742D426F6479202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236161636363353B0D0A';
wwv_flow_api.g_varchar2_table(698) := '7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F6479202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612832312C20';
wwv_flow_api.g_varchar2_table(699) := '32312C2032312C20302E3735293B0D0A7D0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D426F6479202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E6465';
wwv_flow_api.g_varchar2_table(700) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261643564302021696D706F7274616E743B0D0A7D0D0A2E742D426F6479202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A2023623764';
wwv_flow_api.g_varchar2_table(701) := '3463653B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236161636363353B0D0A7D0D0A2E742D426F6479202E612D4D656E754261722D6974656D2E69732D666F637573656420';
wwv_flow_api.g_varchar2_table(702) := '7B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20200D0A20200D0A20200D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6C6162656C207B0D0A202063';
wwv_flow_api.g_varchar2_table(703) := '6F6C6F723A20233230323032303B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D207B0D0A2020766572746963616C2D616C69676E3A20746F703B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(704) := '742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023623764346365';
wwv_flow_api.g_varchar2_table(705) := '2021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375727265';
wwv_flow_api.g_varchar2_table(706) := '6E742E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236237643463652021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375727265';
wwv_flow_api.g_varchar2_table(707) := '6E74202E612D4D656E754261722D6C6162656C2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(708) := '6F723A20233230323032302021696D706F7274616E743B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(709) := '2E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236237643463652021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(710) := '202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E38293B0D0A2020626F726465722D636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(711) := '66666666663B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564203E202E612D4D656E752D7375';
wwv_flow_api.g_varchar2_table(712) := '624D656E75436F6C202E612D49636F6E2C0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(713) := '723A20233837623761653B0D0A2020626F726465722D636F6C6F723A20233837623761653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375727265';
wwv_flow_api.g_varchar2_table(714) := '6E74203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75';
wwv_flow_api.g_varchar2_table(715) := '4261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A20';
wwv_flow_api.g_varchar2_table(716) := '20626F726465722D636F6C6F723A20233230323032303B0D0A2020636F6C6F723A20236466646664663B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D65';
wwv_flow_api.g_varchar2_table(717) := '6E75436F6C202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236237643463653B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(718) := '67696F6E202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A20236237643463653B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(719) := '6E752D6974656D207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E202E612D4D656E752D616363656C207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3735293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(720) := '526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D526567696F6E202E612D4D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(721) := '636F6C6F723A20236337646464392021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D4D656E75426172203E20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236237643463653B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(722) := '6F6E202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236237643463653B0D0A7D0D0A2E742D526567696F6E202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(723) := '646F773A206E6F6E653B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D77696474683A20303B0D0A20206261636B67726F756E642D636F6C6F723A2023343835313538';
wwv_flow_api.g_varchar2_table(724) := '3B0D0A7D0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E742D4865616465722D757365724D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A2020';
wwv_flow_api.g_varchar2_table(725) := '6261636B67726F756E642D636F6C6F723A20233363343434612021696D706F7274616E743B0D0A7D0D0A2E742D4865616465722D757365724D656E752E612D4D656E75202E612D4D656E752D6974656D202E612D4D656E752D6C6162656C207B0D0A2020';
wwv_flow_api.g_varchar2_table(726) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4E617654616273207B0D0A20206261636B67726F756E642D636F6C6F723A20233331333733633B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D746875';
wwv_flow_api.g_varchar2_table(727) := '6D62207B0D0A20206261636B67726F756E642D636F6C6F723A20233231323532383B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020233331333733633B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D73';
wwv_flow_api.g_varchar2_table(728) := '63726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233363343434613B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261';
wwv_flow_api.g_varchar2_table(729) := '636B67726F756E643A20233331333733633B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233533356536363B0D0A7D0D';
wwv_flow_api.g_varchar2_table(730) := '0A2E742D4E6176546162732D6974656D207B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20233363343434613B0D0A7D0D0A2E742D4E6176546162732D6974656D3A686F7665722C0D0A2E742D4E61765461';
wwv_flow_api.g_varchar2_table(731) := '62732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233161316432303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4E6176546162732D6261646765207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(732) := '726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233161316432303B0D0A7D0D0A0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D636F6E74656E74207B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(733) := '6975733A2030203020327078203270783B0D0A20206261636B67726F756E642D636F6C6F723A20233033343938333B0D0A2020626F726465722D77696474683A20303B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E';
wwv_flow_api.g_varchar2_table(734) := '752D6974656D2E69732D666F63757365642C0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A2023303436346235202169';
wwv_flow_api.g_varchar2_table(735) := '6D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E612D4D656E752D6974656D2E69732D666F6375736564203E202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E7520';
wwv_flow_api.g_varchar2_table(736) := '2E612D4D656E752D6974656D2E69732D657870616E646564203E202E612D4D656E752D6C6162656C207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D4E617669676174696F6E4261722D6D656E75202E';
wwv_flow_api.g_varchar2_table(737) := '612D4D656E752D6974656D202E612D4D656E752D6C6162656C2C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D656E75202E612D4D656E752D6974656D20612C0D0A2E742D4E617669676174696F6E4261722D6D656E752E612D4D65';
wwv_flow_api.g_varchar2_table(738) := '6E75202E612D4D656E752D6974656D202E612D4D656E752D737461747573436F6C207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D';
wwv_flow_api.g_varchar2_table(739) := '0A20206261636B67726F756E642D636F6C6F723A20233035366162663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A686F766572207464207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(740) := '756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E29207464207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(741) := '20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0D0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D726573756C74735365742D6C696E6B207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(742) := '6F723A20233035366162663B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F562D616374696F6E73207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(743) := '756E642D636F6C6F723A20236361646664623B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C';
wwv_flow_api.g_varchar2_table(744) := '4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(745) := '696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D506F7075704C4F562D6C';
wwv_flow_api.g_varchar2_table(746) := '696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233036383566313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B';
wwv_flow_api.g_varchar2_table(747) := '0D0A2020636F6C6F723A20233535353535353B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233564356435643B0D0A7D0D0A2E742D426F64792D696E666F202E';
wwv_flow_api.g_varchar2_table(748) := '742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233564356435643B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E74';
wwv_flow_api.g_varchar2_table(749) := '2D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A0D0A2E742D526567696F6E2C0D0A2E742D436F6E74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B';
wwv_flow_api.g_varchar2_table(750) := '2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D426F6479202E6669656C64646174612062207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F64792D7469746C';
wwv_flow_api.g_varchar2_table(751) := '65202E6669656C64646174612062207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E6669656C64646174612062207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(752) := '202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(753) := '6E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574';
wwv_flow_api.g_varchar2_table(754) := '746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A20';
wwv_flow_api.g_varchar2_table(755) := '20636F6C6F723A20233131313131313B0D0A7D0D0A2E742D526567696F6E2D2D737461636B6564207B0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E20';
wwv_flow_api.g_varchar2_table(756) := '2E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567';
wwv_flow_api.g_varchar2_table(757) := '696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A2023323032';
wwv_flow_api.g_varchar2_table(758) := '3032303B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(759) := '0A7D0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_api.g_varchar2_table(760) := '2D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B';
wwv_flow_api.g_varchar2_table(761) := '0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A202063';
wwv_flow_api.g_varchar2_table(762) := '6F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D52';
wwv_flow_api.g_varchar2_table(763) := '6567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D';
wwv_flow_api.g_varchar2_table(764) := '526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(765) := '3A20233265626662633B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(766) := '2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D7465';
wwv_flow_api.g_varchar2_table(767) := '7874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572207B0D0A202062';
wwv_flow_api.g_varchar2_table(768) := '61636B67726F756E642D636F6C6F723A20233363616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F';
wwv_flow_api.g_varchar2_table(769) := '55492C0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E';
wwv_flow_api.g_varchar2_table(770) := '74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F';
wwv_flow_api.g_varchar2_table(771) := '6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(772) := '72202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(773) := '742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(774) := '656E7436203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436203E20';
wwv_flow_api.g_varchar2_table(775) := '2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(776) := '20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74362E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236464646535333B0D0A7D0D0A0D';
wwv_flow_api.g_varchar2_table(777) := '0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(778) := '696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C';
wwv_flow_api.g_varchar2_table(779) := '696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74372E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(780) := '20236662636534613B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(781) := '6666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(782) := '6572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74382E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(783) := '646572207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E7439203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B';
wwv_flow_api.g_varchar2_table(784) := '0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7439203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7439203E';
wwv_flow_api.g_varchar2_table(785) := '202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74392E742D526567696F6E2D2D74657874436F6E74656E7420';
wwv_flow_api.g_varchar2_table(786) := '3E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(787) := '2D636F6C6F723A20236538356438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D';
wwv_flow_api.g_varchar2_table(788) := '526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431302E742D52';
wwv_flow_api.g_varchar2_table(789) := '6567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561';
wwv_flow_api.g_varchar2_table(790) := '646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_api.g_varchar2_table(791) := '2D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D52';
wwv_flow_api.g_varchar2_table(792) := '6567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E';
wwv_flow_api.g_varchar2_table(793) := '743132203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743132203E20';
wwv_flow_api.g_varchar2_table(794) := '2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(795) := '3A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D';
wwv_flow_api.g_varchar2_table(796) := '0A0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(797) := '526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D42757474';
wwv_flow_api.g_varchar2_table(798) := '6F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(799) := '636F6C6F723A20233561363861643B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(800) := '723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D5265';
wwv_flow_api.g_varchar2_table(801) := '67696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D';
wwv_flow_api.g_varchar2_table(802) := '526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A0D0A2E742D526567696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(803) := '723A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F';
wwv_flow_api.g_varchar2_table(804) := '6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431352E742D526567696F6E';
wwv_flow_api.g_varchar2_table(805) := '2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(806) := '2D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(807) := '7B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(808) := '73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D6865';
wwv_flow_api.g_varchar2_table(809) := '61646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D2D6E6F4247207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D6163';
wwv_flow_api.g_varchar2_table(810) := '74696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(811) := '67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(812) := '3A20234646463B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(813) := '2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976652C0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F637573207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(814) := '6B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(815) := '32707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D70726576696F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(816) := '2D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(817) := '6F6C6F723A207267626128302C20302C20302C20302E3435293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D52656769';
wwv_flow_api.g_varchar2_table(818) := '6F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B';
wwv_flow_api.g_varchar2_table(819) := '207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72';
wwv_flow_api.g_varchar2_table(820) := '742D636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420236237643463653B0D0A7D0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D526570';
wwv_flow_api.g_varchar2_table(821) := '6F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768743A2031707820736F6C696420236237643463653B0D0A7D0D0A2E742D5265706F72742D7265706F72';
wwv_flow_api.g_varchar2_table(822) := '742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236237643463653B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D526570';
wwv_flow_api.g_varchar2_table(823) := '6F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283231352C203233312C203232382C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B';
wwv_flow_api.g_varchar2_table(824) := '0D0A7D0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D52';
wwv_flow_api.g_varchar2_table(825) := '65706F72742D7265706F72742074723A6E74682D6368696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236431653365302021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(826) := '742D5265706F72742D2D737461746963526F77436F6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(827) := '72616E73706172656E743B0D0A7D0D0A0D0A2E742D5265706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A202062';
wwv_flow_api.g_varchar2_table(828) := '61636B67726F756E642D636F6C6F723A20236434653565323B0D0A7D0D0A0D0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A202062';
wwv_flow_api.g_varchar2_table(829) := '61636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D53';
wwv_flow_api.g_varchar2_table(830) := '6561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233438343834383B0D0A7D0D0A2E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233438343834383B0D0A7D0D0A2E742D526567696F6E20';
wwv_flow_api.g_varchar2_table(831) := '2E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233533353335333B0D';
wwv_flow_api.g_varchar2_table(832) := '0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(833) := '3230323032303B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D5374617475734C6973742D68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D53746174';
wwv_flow_api.g_varchar2_table(834) := '75734C6973742D7465787444657363207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E742D5374617475734C6973742D6974656D5469746C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D5374617475734C';
wwv_flow_api.g_varchar2_table(835) := '6973742D2D6461746573202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20233730373037303B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234646';
wwv_flow_api.g_varchar2_table(836) := '463B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(837) := '6975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(838) := '726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D636F6D706C657465202E742D53';
wwv_flow_api.g_varchar2_table(839) := '74617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6461';
wwv_flow_api.g_varchar2_table(840) := '6E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D5374617475734C6973742D6D61726B657220';
wwv_flow_api.g_varchar2_table(841) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E742D5374617475734C6973742D';
wwv_flow_api.g_varchar2_table(842) := '6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D7761726E696E67202E742D53';
wwv_flow_api.g_varchar2_table(843) := '74617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6E75';
wwv_flow_api.g_varchar2_table(844) := '6C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20234630463046303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D697465';
wwv_flow_api.g_varchar2_table(845) := '6D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020636F6C6F723A20234130413041303B0D0A7D0D0A0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D';
wwv_flow_api.g_varchar2_table(846) := '546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D3270782030202330353732636520696E7365743B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D73';
wwv_flow_api.g_varchar2_table(847) := '6861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236366653264663B0D0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(848) := '3270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A202332303230';
wwv_flow_api.g_varchar2_table(849) := '32303B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C';
wwv_flow_api.g_varchar2_table(850) := '696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(851) := '726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D546162732D6C696E6B207B0D0A2020626F726465722D7261646975733A203270';
wwv_flow_api.g_varchar2_table(852) := '7820302030203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D';
wwv_flow_api.g_varchar2_table(853) := '0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233164316431643B0D';
wwv_flow_api.g_varchar2_table(854) := '0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D';
wwv_flow_api.g_varchar2_table(855) := '706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D54';
wwv_flow_api.g_varchar2_table(856) := '6162732D6C696E6B207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233164316431643B0D0A7D';
wwv_flow_api.g_varchar2_table(857) := '0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A0D0A2E617065782D726473202E617065782D7264732D73656C656374656420737061';
wwv_flow_api.g_varchar2_table(858) := '6E207B0D0A2020626F782D736861646F773A2030202D3270782030202330353732636520696E7365743B0D0A7D0D0A2E617065782D72647320613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520';
wwv_flow_api.g_varchar2_table(859) := '696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F64792D7469746C65202E617065782D7264732061207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(860) := '742D526567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E617065782D72647320613A686F766572207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E617065782D726473202E';
wwv_flow_api.g_varchar2_table(861) := '617065782D7264732D73656C65637465642061207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A2E617065782D7264732D686F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D';
wwv_flow_api.g_varchar2_table(862) := '6772616469656E74286C6566742C2023643465356531203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768';
wwv_flow_api.g_varchar2_table(863) := '742C2023643465356531203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A20200D0A7D0D0A2E617065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B';
wwv_flow_api.g_varchar2_table(864) := '69742D6C696E6561722D6772616469656E74286C6566742C20236434653565312030252C2072676261283235352C203235352C203235352C2030292031252C202364346535653120353025293B0D0A20200D0A20206261636B67726F756E643A206C696E';
wwv_flow_api.g_varchar2_table(865) := '6561722D6772616469656E7428746F2072696768742C20236434653565312030252C2072676261283235352C203235352C203235352C2030292031252C202364346535653120353025293B0D0A20200D0A7D0D0A0D0A2E766572746963616C2D72647320';
wwv_flow_api.g_varchar2_table(866) := '2E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(867) := '34707820302030202330353732636520696E7365743B0D0A7D0D0A2E752D52544C202E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E752D52544C202E742D426F64792D73';
wwv_flow_api.g_varchar2_table(868) := '696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A202D34707820302030202330353732636520696E7365743B0D0A7D0D0A0D0A2E612D546167436C6F75642D6C696E';
wwv_flow_api.g_varchar2_table(869) := '6B207B0D0A2020626F726465722D636F6C6F723A20236337646464393B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E643A20236431653365303B0D0A20207472616E736974696F6E3A206261636B67726F75';
wwv_flow_api.g_varchar2_table(870) := '6E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0D0A2020636F6C6F723A20233035363762613B0D0A7D0D0A2E612D546167436C6F75642D6C69';
wwv_flow_api.g_varchar2_table(871) := '6E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F72202E32733B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A206E6F6E653B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(872) := '6F756E642D636F6C6F723A20233035373263653B0D0A2020626F726465722D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A2030203020302032707820233035373263652069';
wwv_flow_api.g_varchar2_table(873) := '6E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D546167436C6F75642D636F756E74207B0D0A2020636F6C6F723A2023343634363436';
wwv_flow_api.g_varchar2_table(874) := '3B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D54696D656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D64';
wwv_flow_api.g_varchar2_table(875) := '6174652C0D0A2E742D54696D656C696E652D64657363207B0D0A2020636F6C6F723A20233533353335333B0D0A7D0D0A2E742D54696D656C696E652D77726170207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D54696D656C696E';
wwv_flow_api.g_varchar2_table(876) := '652D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664623B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(877) := '642D636F6C6F723A20233362616132633B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A20';
wwv_flow_api.g_varchar2_table(878) := '20636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(879) := '2D54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A7D0D0A406D6564696120286D696E2D776964';
wwv_flow_api.g_varchar2_table(880) := '74683A20373639707829207B0D0A20202E742D426F64792D6E6176207B0D0A202020206261636B67726F756E642D636F6C6F723A20233331333733633B0D0A20207D0D0A7D0D0A2E742D547265654E6176207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(881) := '6C6F723A20233331333733633B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(882) := '3231323532383B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020233331333733633B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C';
wwv_flow_api.g_varchar2_table(883) := '6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233363343434613B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C';
wwv_flow_api.g_varchar2_table(884) := '6261722D747261636B207B0D0A20206261636B67726F756E643A20233331333733633B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F';
wwv_flow_api.g_varchar2_table(885) := '766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233533356536363B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D';
wwv_flow_api.g_varchar2_table(886) := '54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D';
wwv_flow_api.g_varchar2_table(887) := '0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_api.g_varchar2_table(888) := '704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E74';
wwv_flow_api.g_varchar2_table(889) := '2D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236364653164653B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(890) := '65772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D';
wwv_flow_api.g_varchar2_table(891) := '526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(892) := '2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236334646364372021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(893) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C65';
wwv_flow_api.g_varchar2_table(894) := '76656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(895) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(896) := '4C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233230323032302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(897) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233230323032302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(898) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576';
wwv_flow_api.g_varchar2_table(899) := '656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A202063';
wwv_flow_api.g_varchar2_table(900) := '6F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72';
wwv_flow_api.g_varchar2_table(901) := '652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(902) := '0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(903) := '2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(904) := '2D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70';
wwv_flow_api.g_varchar2_table(905) := '202E612D49636F6E207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(906) := '20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D526567696F6E202E612D547265';
wwv_flow_api.g_varchar2_table(907) := '65566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(908) := '6965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965';
wwv_flow_api.g_varchar2_table(909) := '772D746F67676C65207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F';
wwv_flow_api.g_varchar2_table(910) := '67676C653A686F766572207B0D0A2020636F6C6F723A20233230323032302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E';
wwv_flow_api.g_varchar2_table(911) := '202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F77';
wwv_flow_api.g_varchar2_table(912) := '2E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236364653164653B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F';
wwv_flow_api.g_varchar2_table(913) := '772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D54726565';
wwv_flow_api.g_varchar2_table(914) := '4E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(915) := '2D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E6973';
wwv_flow_api.g_varchar2_table(916) := '2D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233231323532383B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E';
wwv_flow_api.g_varchar2_table(917) := '69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772C0D0A2E742D547265654E61';
wwv_flow_api.g_varchar2_table(918) := '76202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20233161316432303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(919) := '4C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233238326433312021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(920) := '2D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C657665';
wwv_flow_api.g_varchar2_table(921) := '6C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965';
wwv_flow_api.g_varchar2_table(922) := '772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(923) := '746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54';
wwv_flow_api.g_varchar2_table(924) := '726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E';
wwv_flow_api.g_varchar2_table(925) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D';
wwv_flow_api.g_varchar2_table(926) := '746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E';
wwv_flow_api.g_varchar2_table(927) := '207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D';
wwv_flow_api.g_varchar2_table(928) := '547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D5472';
wwv_flow_api.g_varchar2_table(929) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(930) := '4C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F';
wwv_flow_api.g_varchar2_table(931) := '6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E';
wwv_flow_api.g_varchar2_table(932) := '612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(933) := '696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742C0D0A2E742D547265654E6176202E612D5472';
wwv_flow_api.g_varchar2_table(934) := '6565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(935) := '65566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(936) := '566965772D746F67676C65207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(937) := '566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61';
wwv_flow_api.g_varchar2_table(938) := '707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F';
wwv_flow_api.g_varchar2_table(939) := '6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D5472656556';
wwv_flow_api.g_varchar2_table(940) := '6965772D636F6E74656E74207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D547265';
wwv_flow_api.g_varchar2_table(941) := '65566965772D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E643A20233066313031323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(942) := '742D547265654E6176202E612D54726565566965772D6261646765207B0D0A2020626F782D736861646F773A203020302030203170782072676261283235352C203235352C203235352C20302E31293B0D0A2020666F6E742D7765696768743A20343030';
wwv_flow_api.g_varchar2_table(943) := '3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E742E69732D63757272656E74202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E742E69';
wwv_flow_api.g_varchar2_table(944) := '732D63757272656E742D2D746F70202E612D54726565566965772D6C6162656C207B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A0D0A2E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A2023323032303230';
wwv_flow_api.g_varchar2_table(945) := '3B0D0A7D0D0A2E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233339333933393B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D64617465207B0D0A2020636F6C6F723A20233131';
wwv_flow_api.g_varchar2_table(946) := '313131313B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233262326232623B0D0A7D0D0A0D0A2E742D4469616C6F672D706167652D2D77697A617264207B0D0A2020';
wwv_flow_api.g_varchar2_table(947) := '626F726465723A20236237643463653B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(948) := '723A20236237643463653B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0D0A202062';
wwv_flow_api.g_varchar2_table(949) := '61636B67726F756E642D636F6C6F723A20236431653365303B0D0A2020626F726465722D636F6C6F723A20236331646164353B0D0A7D0D0A2E742D57697A61726453746570732D777261703A6166746572207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(950) := '6C6F723A20236237643463653B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233937633162393B0D0A7D0D0A2E742D57';
wwv_flow_api.g_varchar2_table(951) := '697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132633B0D0A2020636F6C6F723A20234646463B0D0A7D';
wwv_flow_api.g_varchar2_table(952) := '0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A7D0D0A2E742D57697A61726453';
wwv_flow_api.g_varchar2_table(953) := '746570732D6C6162656C207B0D0A2020636F6C6F723A20233436343634363B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(954) := '3230323032303B0D0A7D0D0A0D0A2E75692D776964676574207B0D0A2020666F6E742D66616D696C793A202748656C766574696361204E657565272C20275365676F65205549272C2048656C7665746963612C20417269616C2C2073616E732D73657269';
wwv_flow_api.g_varchar2_table(955) := '663B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A2E75692D776964676574202E75692D776964676574207B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A0D0A626F6479202E75692D7769646765742D636F6E74656E74';
wwv_flow_api.g_varchar2_table(956) := '207B0D0A2020626F726465722D636F6C6F723A20236265643864333B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A626F6479202E75692D7769646765742D636F';
wwv_flow_api.g_varchar2_table(957) := '6E74656E742061207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A20236265643864333B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(958) := '6C6F723A20236437653765343B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A626F6479202E75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A0D0A626F6479202E75692D7374';
wwv_flow_api.g_varchar2_table(959) := '6174652D64656661756C742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B';
wwv_flow_api.g_varchar2_table(960) := '0D0A20206261636B67726F756E642D636F6C6F723A20236534656365613B0D0A2020636F6C6F723A20233231326632643B0D0A7D0D0A626F6479202E75692D73746174652D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661';
wwv_flow_api.g_varchar2_table(961) := '756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A626F6479202E75692D73746174652D61637469766520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C69';
wwv_flow_api.g_varchar2_table(962) := '6E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A626F6479202E75692D73746174652D686F7665722C0D0A626F6479202E75692D776964676574';
wwv_flow_api.g_varchar2_table(963) := '2D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A20';
wwv_flow_api.g_varchar2_table(964) := '20636F6C6F723A20233231326632643B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765';
wwv_flow_api.g_varchar2_table(965) := '742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C203020302031707820327078207267626128352C203131342C203230362C20302E32';
wwv_flow_api.g_varchar2_table(966) := '35292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233231326632643B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B';
wwv_flow_api.g_varchar2_table(967) := '65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C2030203020317078203270782072';
wwv_flow_api.g_varchar2_table(968) := '67626128352C203131342C203230362C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D73746174652D686F76657220612C0D0A626F6479202E75692D73746174652D686F76657220613A686F7665722C0D0A626F647920';
wwv_flow_api.g_varchar2_table(969) := '2E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0D0A626F6479202E75692D73746174652D666F63757320612C0D0A626F6479202E75692D73746174652D666F';
wwv_flow_api.g_varchar2_table(970) := '63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0D0A2020636F6C6F723A20233035366162663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(971) := '626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D';
wwv_flow_api.g_varchar2_table(972) := '616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236336643664333B0D0A2020636F6C6F723A20233231326632643B0D0A7D0D0A0D0A626F6479202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(973) := '7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(974) := '723A20236434656266653B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6869';
wwv_flow_api.g_varchar2_table(975) := '67686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A626F6479202E75692D73746174652D657272';
wwv_flow_api.g_varchar2_table(976) := '6F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F72207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(977) := '642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D';
wwv_flow_api.g_varchar2_table(978) := '6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F722D746578';
wwv_flow_api.g_varchar2_table(979) := '742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722D74657874207B0D0A2020';
wwv_flow_api.g_varchar2_table(980) := '636F6C6F723A20236634343333363B0D0A7D0D0A0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D737461';
wwv_flow_api.g_varchar2_table(981) := '74652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E7569';
wwv_flow_api.g_varchar2_table(982) := '2D73746174652D64656661756C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(983) := '67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73';
wwv_flow_api.g_varchar2_table(984) := '746174652D64656661756C742E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374';
wwv_flow_api.g_varchar2_table(985) := '6976652E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D737461';
wwv_flow_api.g_varchar2_table(986) := '74652D64656661756C742E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(987) := '2D636F6C6F723A20236337646464392021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069';
wwv_flow_api.g_varchar2_table(988) := '636B657220746420612E75692D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202330353732636520696E7365742C2030203020317078';
wwv_flow_api.g_varchar2_table(989) := '20327078207267626128352C203131342C203230362C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D68';
wwv_flow_api.g_varchar2_table(990) := '6967686C696768742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A202362656438';
wwv_flow_api.g_varchar2_table(991) := '64333B0D0A7D0D0A626F6479202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6865616465722C0D0A';
wwv_flow_api.g_varchar2_table(992) := '626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578742C0D0A626F64';
wwv_flow_api.g_varchar2_table(993) := '79202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65';
wwv_flow_api.g_varchar2_table(994) := '626172207B0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C20302C20302C20302E3035293B0D0A7D0D0A626F6479202E75692D6469';
wwv_flow_api.g_varchar2_table(995) := '616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233036303630363B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B';
wwv_flow_api.g_varchar2_table(996) := '0D0A20206261636B67726F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A';
wwv_flow_api.g_varchar2_table(997) := '6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A61726420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(998) := '6F756E642D636F6C6F723A20236437653765343B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(999) := '20233230323032303B0D0A7D0D0A0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E';
wwv_flow_api.g_varchar2_table(1000) := '65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F';
wwv_flow_api.g_varchar2_table(1001) := '726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479';
wwv_flow_api.g_varchar2_table(1002) := '202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F';
wwv_flow_api.g_varchar2_table(1003) := '6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A626F6479202E75692D';
wwv_flow_api.g_varchar2_table(1004) := '627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_api.g_varchar2_table(1005) := '2D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E7569';
wwv_flow_api.g_varchar2_table(1006) := '2D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D72';
wwv_flow_api.g_varchar2_table(1007) := '61646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E';
wwv_flow_api.g_varchar2_table(1008) := '75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D6275';
wwv_flow_api.g_varchar2_table(1009) := '74746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A0D0A2E752D77';
wwv_flow_api.g_varchar2_table(1010) := '61726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E672D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1011) := '20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D626F72';
wwv_flow_api.g_varchar2_table(1012) := '646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A7D0D0A0D0A2E752D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233362616132632021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1013) := '743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D737563636573732D74657874207B0D0A2020636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D6267207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1014) := '6B67726F756E642D636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1015) := '0D0A2E752D64616E676572207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64616E6765722D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1016) := '6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D62';
wwv_flow_api.g_varchar2_table(1017) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A0D0A2E752D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1018) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D696E666F2D74657874207B0D0A2020636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1019) := '2D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A0D0A2E752D686F74207B';
wwv_flow_api.g_varchar2_table(1020) := '0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020636F6C6F723A20233035373263652021696D';
wwv_flow_api.g_varchar2_table(1021) := '706F7274616E743B0D0A7D0D0A2E752D686F742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263652021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626F72646572207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(1022) := '723A20233035373263652021696D706F7274616E743B0D0A7D0D0A0D0A2E752D6E6F726D616C207B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664622021696D706F7274616E743B0D0A2020636F6C6F723A20233135313531353B';
wwv_flow_api.g_varchar2_table(1023) := '0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020636F6C6F723A20233135313531352021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A202331353135313520';
wwv_flow_api.g_varchar2_table(1024) := '21696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233135313531352021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C';
wwv_flow_api.g_varchar2_table(1025) := '6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F';
wwv_flow_api.g_varchar2_table(1026) := '702D636F6C6F723A20236265643864333B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F6479202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236161636363353B0D0A';
wwv_flow_api.g_varchar2_table(1027) := '2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664623B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A2023313531353135';
wwv_flow_api.g_varchar2_table(1028) := '3B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233535353535353B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1029) := '3A20236332646164363B0D0A2020636F6C6F723A20233135313531353B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1030) := '6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1031) := '642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A202363';
wwv_flow_api.g_varchar2_table(1032) := '34646264373B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236264643764323B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A20200D0A20';
wwv_flow_api.g_varchar2_table(1033) := '200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236237643463653B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1034) := '723A20236437653765343B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461794F665765656B207B';
wwv_flow_api.g_varchar2_table(1035) := '0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236366653264663B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1036) := '2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1037) := '0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A2020636F6C6F723A202334';
wwv_flow_api.g_varchar2_table(1038) := '34333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431653365303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E69';
wwv_flow_api.g_varchar2_table(1039) := '43616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236361646664623B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20200D0A20200D0A20200D0A7D0D0A2E742D426F64792D616374696F6E';
wwv_flow_api.g_varchar2_table(1040) := '73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236135633963323B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236335646364383B0D0A7D';
wwv_flow_api.g_varchar2_table(1041) := '0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233131313131313B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B207B0D0A';
wwv_flow_api.g_varchar2_table(1042) := '2020636F6C6F723A20233531353135313B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236264643764323B0D0A2020636F6C6F723A20233131313131313B0D';
wwv_flow_api.g_varchar2_table(1043) := '0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20233035373263653B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1044) := '3A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A202366626365';
wwv_flow_api.g_varchar2_table(1045) := '34613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266643864333B';
wwv_flow_api.g_varchar2_table(1046) := '0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236239643463663B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20200D0A';
wwv_flow_api.g_varchar2_table(1047) := '20200D0A20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236234643263633B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1048) := '756E642D636F6C6F723A20236434653565313B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943';
wwv_flow_api.g_varchar2_table(1049) := '616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233564356435643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236363653064633B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1050) := '6F723A20233164316431643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A2023303537326365';
wwv_flow_api.g_varchar2_table(1051) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1052) := '3A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023636465';
wwv_flow_api.g_varchar2_table(1053) := '3164643B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236337646464393B0D0A7D0D0A0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1054) := '6368696C642834356E202B203129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664623B0D0A202066696C6C3A20233330396664623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1055) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(1056) := '6261636B67726F756E642D636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1057) := '2834356E202B203129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233330396664623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1058) := '6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330396664623B0D0A20207374726F6B653A20233330396664623B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1059) := '6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A202066696C6C3A20233133623663663B0D0A2020636F6C6F723A2023653466';
wwv_flow_api.g_varchar2_table(1060) := '3966643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6261636B';
wwv_flow_api.g_varchar2_table(1061) := '67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1062) := '3E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233133623663663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1063) := '722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663663B0D0A20207374726F6B653A20233133623663';
wwv_flow_api.g_varchar2_table(1064) := '663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A202066696C6C3A20233265626662633B0D0A20';
wwv_flow_api.g_varchar2_table(1065) := '20636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E';
wwv_flow_api.g_varchar2_table(1066) := '752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D7478742C';
wwv_flow_api.g_varchar2_table(1067) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1068) := '2B203329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662633B0D0A20207374';
wwv_flow_api.g_varchar2_table(1069) := '726F6B653A20233265626662633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1070) := '20233363616638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1071) := '642834356E202B203429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E';
wwv_flow_api.g_varchar2_table(1072) := '752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1073) := '682D6368696C642834356E202B203429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1074) := '63616638353B0D0A20207374726F6B653A20233363616638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202338316262';
wwv_flow_api.g_varchar2_table(1075) := '35663B0D0A202066696C6C3A20233831626235663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1076) := '203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1077) := '642834356E202B203529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233831626235663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1078) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1079) := '65722D636F6C6F723A20233831626235663B0D0A20207374726F6B653A20233831626235663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1080) := '636F6C6F723A20236464646535333B0D0A202066696C6C3A20236464646535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D6267';
wwv_flow_api.g_varchar2_table(1081) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1082) := '203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023646464';
wwv_flow_api.g_varchar2_table(1083) := '6535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F7264';
wwv_flow_api.g_varchar2_table(1084) := '6572207B0D0A2020626F726465722D636F6C6F723A20236464646535333B0D0A20207374726F6B653A20236464646535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20';
wwv_flow_api.g_varchar2_table(1085) := '206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A202066696C6C3A20236662636534613B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729';
wwv_flow_api.g_varchar2_table(1086) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534613B0D0A';
wwv_flow_api.g_varchar2_table(1087) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D74657874207B0D0A20';
wwv_flow_api.g_varchar2_table(1088) := '20636F6C6F723A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E';
wwv_flow_api.g_varchar2_table(1089) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534613B0D0A20207374726F6B653A20236662636534613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E';
wwv_flow_api.g_varchar2_table(1090) := '752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133653B0D0A202066696C6C3A20236564383133653B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1091) := '696C642834356E202B203829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1092) := '3A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C';
wwv_flow_api.g_varchar2_table(1093) := '6F722D74657874207B0D0A2020636F6C6F723A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1094) := '642834356E202B203829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133653B0D0A20207374726F6B653A20236564383133653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1095) := '642834356E202B203929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235343B0D0A202066696C6C3A20236539356235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1096) := '7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1097) := '67726F756E642D636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1098) := '202B203929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1099) := '203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235343B0D0A20207374726F6B653A20236539356235343B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1100) := '203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A202066696C6C3A20236538356438383B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1101) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D6261636B67';
wwv_flow_api.g_varchar2_table(1102) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1103) := '3E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236538356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F';
wwv_flow_api.g_varchar2_table(1104) := '6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236538356438383B0D0A20207374726F6B653A20236538';
wwv_flow_api.g_varchar2_table(1105) := '356438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A202066696C6C3A2023636135383964';
wwv_flow_api.g_varchar2_table(1106) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1107) := '20313129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C';
wwv_flow_api.g_varchar2_table(1108) := '6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1109) := '696C642834356E202B20313129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023636135';
wwv_flow_api.g_varchar2_table(1110) := '3839643B0D0A20207374726F6B653A20236361353839643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539';
wwv_flow_api.g_varchar2_table(1111) := '623B0D0A202066696C6C3A20233835346539623B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1112) := '203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1113) := '6C642834356E202B20313229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233835346539623B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1114) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1115) := '20626F726465722D636F6C6F723A20233835346539623B0D0A20207374726F6B653A20233835346539623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F72207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1116) := '726F756E642D636F6C6F723A20233561363861643B0D0A202066696C6C3A20233561363861643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D63';
wwv_flow_api.g_varchar2_table(1117) := '6F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861643B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1118) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1119) := '6F6C6F723A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E';
wwv_flow_api.g_varchar2_table(1120) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861643B0D0A20207374726F6B653A20233561363861643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031342920';
wwv_flow_api.g_varchar2_table(1121) := '2E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163353B0D0A202066696C6C3A20236166626163353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1122) := '68696C642834356E202B20313429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1123) := '6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E';
wwv_flow_api.g_varchar2_table(1124) := '752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1125) := '682D6368696C642834356E202B20313429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163353B0D0A20207374726F6B653A20236166626163353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1126) := '74682D6368696C642834356E202B20313529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A202066696C6C3A20233665383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1127) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1128) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1129) := '682D6368696C642834356E202B20313529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233665383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1130) := '642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539383B0D0A20207374726F6B653A20233665383539383B';
wwv_flow_api.g_varchar2_table(1131) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A202066696C6C3A20233539623265323B0D0A2020';
wwv_flow_api.g_varchar2_table(1132) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031362920';
wwv_flow_api.g_varchar2_table(1133) := '2E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D7478';
wwv_flow_api.g_varchar2_table(1134) := '742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1135) := '356E202B20313629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233539623265323B0D';
wwv_flow_api.g_varchar2_table(1136) := '0A20207374726F6B653A20233539623265323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A20';
wwv_flow_api.g_varchar2_table(1137) := '2066696C6C3A20233432633564393B0D0A2020636F6C6F723A20233035313531373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1138) := '74682D6368696C642834356E202B20313729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1139) := '6E202B20313729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1140) := '6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1141) := '65722D636F6C6F723A20233432633564393B0D0A20207374726F6B653A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F72207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1142) := '2D636F6C6F723A20233538636363393B0D0A202066696C6C3A20233538636363393B0D0A2020636F6C6F723A20233039316331633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1143) := '62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1144) := '6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1145) := '20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C';
wwv_flow_api.g_varchar2_table(1146) := '6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363393B0D0A20207374726F6B653A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F';
wwv_flow_api.g_varchar2_table(1147) := '6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A202066696C6C3A20233633626639643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1148) := '34356E202B20313929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1149) := '233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C';
wwv_flow_api.g_varchar2_table(1150) := '6F722D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1151) := '6C642834356E202B20313929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639643B0D0A20207374726F6B653A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1152) := '696C642834356E202B20323029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A202066696C6C3A20233961633937663B0D0A2020636F6C6F723A20233230333331363B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1153) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1154) := '206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1155) := '6C642834356E202B20323029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1156) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937663B0D0A20207374726F6B653A20233961633937663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1157) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A202066696C6C3A20236534653537353B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1158) := '3A20233463346330663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F';
wwv_flow_api.g_varchar2_table(1159) := '6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(1160) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1161) := '323129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A20207374';
wwv_flow_api.g_varchar2_table(1162) := '726F6B653A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A202066696C6C';
wwv_flow_api.g_varchar2_table(1163) := '3A20236663643836653B0D0A2020636F6C6F723A20233639346630323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1164) := '696C642834356E202B20323229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032';
wwv_flow_api.g_varchar2_table(1165) := '3229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1166) := '3E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1167) := '6C6F723A20236663643836653B0D0A20207374726F6B653A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1168) := '723A20236631396136353B0D0A202066696C6C3A20236631396136353B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62672C0D0A';
wwv_flow_api.g_varchar2_table(1169) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1170) := '203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023663139';
wwv_flow_api.g_varchar2_table(1171) := '6136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D626F';
wwv_flow_api.g_varchar2_table(1172) := '72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B0D0A20207374726F6B653A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B';
wwv_flow_api.g_varchar2_table(1173) := '0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A202066696C6C3A20236564376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1174) := '20323429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202365643763';
wwv_flow_api.g_varchar2_table(1175) := '37363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D7465';
wwv_flow_api.g_varchar2_table(1176) := '7874207B0D0A2020636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1177) := '6E202B20323429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337363B0D0A20207374726F6B653A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1178) := '356E202B20323529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A202066696C6C3A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1179) := '203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1180) := '67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1181) := '6E202B20323529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1182) := '6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A20207374726F6B653A20236564376461303B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1183) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A202066696C6C3A20236435373962313B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(1184) := '666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1185) := '61636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1186) := '6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E';
wwv_flow_api.g_varchar2_table(1187) := '752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1188) := '20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A202066696C6C3A20233964';
wwv_flow_api.g_varchar2_table(1189) := '373161663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1190) := '356E202B20323729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E75';
wwv_flow_api.g_varchar2_table(1191) := '2D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1192) := '682D6368696C642834356E202B20323729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1193) := '233964373161663B0D0A20207374726F6B653A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202337';
wwv_flow_api.g_varchar2_table(1194) := '62383662643B0D0A202066696C6C3A20233762383662643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1195) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1196) := '2D6368696C642834356E202B20323829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233762383662643B0D';
wwv_flow_api.g_varchar2_table(1197) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626F7264657220';
wwv_flow_api.g_varchar2_table(1198) := '7B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A20207374726F6B653A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D0A202062';
wwv_flow_api.g_varchar2_table(1199) := '61636B67726F756E642D636F6C6F723A20236266633864313B0D0A202066696C6C3A20236266633864313B0D0A2020636F6C6F723A20233364343835343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032392920';
wwv_flow_api.g_varchar2_table(1200) := '2E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A';
wwv_flow_api.g_varchar2_table(1201) := '7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D74657874207B0D';
wwv_flow_api.g_varchar2_table(1202) := '0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032';
wwv_flow_api.g_varchar2_table(1203) := '3929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864313B0D0A20207374726F6B653A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1204) := '333029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A202066696C6C3A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1205) := '74682D6368696C642834356E202B20333029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1206) := '642D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033';
wwv_flow_api.g_varchar2_table(1207) := '3029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1208) := '203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461643B0D0A20207374726F6B653A20233862396461643B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1209) := '3E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363613B0D0A202066696C6C3A20233139386363613B0D0A2020636F6C6F723A20236666666666663B';
wwv_flow_api.g_varchar2_table(1210) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D6261636B6772';
wwv_flow_api.g_varchar2_table(1211) := '6F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1212) := '203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233139386363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C';
wwv_flow_api.g_varchar2_table(1213) := '6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233139386363613B0D0A20207374726F6B653A2023313938';
wwv_flow_api.g_varchar2_table(1214) := '6363613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562653B0D0A202066696C6C3A20233032613562653B';
wwv_flow_api.g_varchar2_table(1215) := '0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1216) := '333229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1217) := '722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1218) := '6C642834356E202B20333229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A202330326135';
wwv_flow_api.g_varchar2_table(1219) := '62653B0D0A20207374726F6B653A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023313862316165';
wwv_flow_api.g_varchar2_table(1220) := '3B0D0A202066696C6C3A20233138623161653B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1221) := '3E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1222) := '642834356E202B20333329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233138623161653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1223) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1224) := '626F726465722D636F6C6F723A20233138623161653B0D0A20207374726F6B653A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F72207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(1225) := '6F756E642D636F6C6F723A20233234613437353B0D0A202066696C6C3A20233234613437353B0D0A2020636F6C6F723A20236566666266373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F';
wwv_flow_api.g_varchar2_table(1226) := '6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1227) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1228) := '6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E75';
wwv_flow_api.g_varchar2_table(1229) := '2D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233234613437353B0D0A20207374726F6B653A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E';
wwv_flow_api.g_varchar2_table(1230) := '752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434323B0D0A202066696C6C3A20233661616434323B0D0A2020636F6C6F723A20233063313530363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1231) := '696C642834356E202B20333529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1232) := '6F723A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E75';
wwv_flow_api.g_varchar2_table(1233) := '2D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1234) := '2D6368696C642834356E202B20333529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233661616434323B0D0A20207374726F6B653A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1235) := '682D6368696C642834356E202B20333629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133393B0D0A202066696C6C3A20236339636133393B0D0A2020636F6C6F723A20233264326530343B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1236) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6261636B67726F756E6420';
wwv_flow_api.g_varchar2_table(1237) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E7468';
wwv_flow_api.g_varchar2_table(1238) := '2D6368696C642834356E202B20333629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6264';
wwv_flow_api.g_varchar2_table(1239) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236339636133393B0D0A20207374726F6B653A20236339636133393B0D';
wwv_flow_api.g_varchar2_table(1240) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133623B0D0A202066696C6C3A20236439623133623B0D0A202063';
wwv_flow_api.g_varchar2_table(1241) := '6F6C6F723A20233436333430303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E';
wwv_flow_api.g_varchar2_table(1242) := '752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D747874';
wwv_flow_api.g_varchar2_table(1243) := '2C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1244) := '6E202B20333729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133623B0D0A';
wwv_flow_api.g_varchar2_table(1245) := '20207374726F6B653A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A2020';
wwv_flow_api.g_varchar2_table(1246) := '66696C6C3A20236437366132373B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1247) := '682D6368696C642834356E202B20333829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1248) := '202B20333829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1249) := '6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1250) := '722D636F6C6F723A20236437366132373B0D0A20207374726F6B653A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(1251) := '636F6C6F723A20236432343233623B0D0A202066696C6C3A20236432343233623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1252) := '672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1253) := '7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1254) := '236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1255) := '722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432343233623B0D0A20207374726F6B653A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C';
wwv_flow_api.g_varchar2_table(1256) := '6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336663B0D0A202066696C6C3A20236431343336663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1257) := '356E202B20343029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1258) := '6431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1259) := '722D74657874207B0D0A2020636F6C6F723A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1260) := '642834356E202B20343029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431343336663B0D0A20207374726F6B653A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1261) := '6C642834356E202B20343129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438383B0D0A202066696C6C3A20236261336438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1262) := '6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(1263) := '6261636B67726F756E642D636F6C6F723A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C';
wwv_flow_api.g_varchar2_table(1264) := '642834356E202B20343129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E75';
wwv_flow_api.g_varchar2_table(1265) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236261336438383B0D0A20207374726F6B653A20236261336438383B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1266) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339333B0D0A202066696C6C3A20233737333339333B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1267) := '20236636656666393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C';
wwv_flow_api.g_varchar2_table(1268) := '6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E75';
wwv_flow_api.g_varchar2_table(1269) := '2D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034';
wwv_flow_api.g_varchar2_table(1270) := '3229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339333B0D0A2020737472';
wwv_flow_api.g_varchar2_table(1271) := '6F6B653A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561333B0D0A202066696C6C3A';
wwv_flow_api.g_varchar2_table(1272) := '20233364346561333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1273) := '6C642834356E202B20343329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203433';
wwv_flow_api.g_varchar2_table(1274) := '29202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1275) := '203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1276) := '6F723A20233364346561333B0D0A20207374726F6B653A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1277) := '3A20233863396562303B0D0A202066696C6C3A20233863396562303B0D0A2020636F6C6F723A20233238336134643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(1278) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(1279) := '3A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A202338633965';
wwv_flow_api.g_varchar2_table(1280) := '62303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D626F72';
wwv_flow_api.g_varchar2_table(1281) := '646572207B0D0A2020626F726465722D636F6C6F723A20233863396562303B0D0A20207374726F6B653A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D';
wwv_flow_api.g_varchar2_table(1282) := '0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A202066696C6C3A20233465373339313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1283) := '343529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339';
wwv_flow_api.g_varchar2_table(1284) := '313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D746578';
wwv_flow_api.g_varchar2_table(1285) := '74207B0D0A2020636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1286) := '202B20343529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233465373339313B0D0A20207374726F6B653A20233465373339313B0D0A7D0D0A0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1287) := '756E642D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A202066696C6C3A20233330396664622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1288) := '6F722D312D62672C0D0A2E752D636F6C6F722D312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A202066696C6C3A20233330396664622021696D706F727461';
wwv_flow_api.g_varchar2_table(1289) := '6E743B0D0A7D0D0A2E752D636F6C6F722D312D7478742C0D0A2E752D636F6C6F722D312D74657874207B0D0A2020636F6C6F723A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1290) := '722D312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233330396664622021696D706F7274616E743B0D0A20207374726F6B653A20233330396664622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32207B0D0A20';
wwv_flow_api.g_varchar2_table(1291) := '206261636B67726F756E642D636F6C6F723A20233133623663662021696D706F7274616E743B0D0A202066696C6C3A20233133623663662021696D706F7274616E743B0D0A2020636F6C6F723A20236534663966642021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1292) := '0D0A2E752D636F6C6F722D322D62672C0D0A2E752D636F6C6F722D322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133623663662021696D706F7274616E743B0D0A202066696C6C3A202331336236636620';
wwv_flow_api.g_varchar2_table(1293) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D7478742C0D0A2E752D636F6C6F722D322D74657874207B0D0A2020636F6C6F723A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62642C0D';
wwv_flow_api.g_varchar2_table(1294) := '0A2E752D636F6C6F722D322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133623663662021696D706F7274616E743B0D0A20207374726F6B653A20233133623663662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1295) := '722D33207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A202066696C6C3A20233265626662632021696D706F7274616E743B0D0A2020636F6C6F723A20236630666366622021696D706F72';
wwv_flow_api.g_varchar2_table(1296) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D332D62672C0D0A2E752D636F6C6F722D332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1297) := '233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D7478742C0D0A2E752D636F6C6F722D332D74657874207B0D0A2020636F6C6F723A20233265626662632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1298) := '722D332D62642C0D0A2E752D636F6C6F722D332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233265626662632021696D706F7274616E743B0D0A20207374726F6B653A20233265626662632021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1299) := '0A2E752D636F6C6F722D34207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A202066696C6C3A20233363616638352021696D706F7274616E743B0D0A2020636F6C6F723A20236630666166';
wwv_flow_api.g_varchar2_table(1300) := '362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62672C0D0A2E752D636F6C6F722D342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1301) := '202066696C6C3A20233363616638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D7478742C0D0A2E752D636F6C6F722D342D74657874207B0D0A2020636F6C6F723A20233363616638352021696D706F7274616E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1302) := '0A2E752D636F6C6F722D342D62642C0D0A2E752D636F6C6F722D342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233363616638352021696D706F7274616E743B0D0A20207374726F6B653A20233363616638352021696D706F7274';
wwv_flow_api.g_varchar2_table(1303) := '616E743B0D0A7D0D0A2E752D636F6C6F722D35207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235662021696D706F7274616E743B0D0A202066696C6C3A20233831626235662021696D706F7274616E743B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1304) := '3A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D62672C0D0A2E752D636F6C6F722D352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831626235662021696D706F';
wwv_flow_api.g_varchar2_table(1305) := '7274616E743B0D0A202066696C6C3A20233831626235662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D7478742C0D0A2E752D636F6C6F722D352D74657874207B0D0A2020636F6C6F723A20233831626235662021696D706F7274';
wwv_flow_api.g_varchar2_table(1306) := '616E743B0D0A7D0D0A2E752D636F6C6F722D352D62642C0D0A2E752D636F6C6F722D352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831626235662021696D706F7274616E743B0D0A20207374726F6B653A2023383162623566';
wwv_flow_api.g_varchar2_table(1307) := '2021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D36207B0D0A20206261636B67726F756E642D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A202066696C6C3A20236464646535332021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1308) := '0A2020636F6C6F723A20233261326130382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62672C0D0A2E752D636F6C6F722D362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202364646465';
wwv_flow_api.g_varchar2_table(1309) := '35332021696D706F7274616E743B0D0A202066696C6C3A20236464646535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A2023646464653533';
wwv_flow_api.g_varchar2_table(1310) := '2021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62642C0D0A2E752D636F6C6F722D362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236464646535332021696D706F7274616E743B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1311) := '20236464646535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D37207B0D0A20206261636B67726F756E642D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A202066696C6C3A20236662636534612021696D70';
wwv_flow_api.g_varchar2_table(1312) := '6F7274616E743B0D0A2020636F6C6F723A20233434333330322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D62672C0D0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1313) := '723A20236662636534612021696D706F7274616E743B0D0A202066696C6C3A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1314) := '20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D62642C0D0A2E752D636F6C6F722D372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236662636534612021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1315) := '207374726F6B653A20236662636534612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D38207B0D0A20206261636B67726F756E642D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A202066696C6C3A2023656438';
wwv_flow_api.g_varchar2_table(1316) := '3133652021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D62672C0D0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1317) := '756E642D636F6C6F723A20236564383133652021696D706F7274616E743B0D0A202066696C6C3A20236564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A';
wwv_flow_api.g_varchar2_table(1318) := '2020636F6C6F723A20236564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D62642C0D0A2E752D636F6C6F722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564383133652021696D706F72';
wwv_flow_api.g_varchar2_table(1319) := '74616E743B0D0A20207374726F6B653A20236564383133652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D39207B0D0A20206261636B67726F756E642D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1320) := '6C6C3A20236539356235342021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20';
wwv_flow_api.g_varchar2_table(1321) := '206261636B67726F756E642D636F6C6F723A20236539356235342021696D706F7274616E743B0D0A202066696C6C3A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D7478742C0D0A2E752D636F6C6F722D392D';
wwv_flow_api.g_varchar2_table(1322) := '74657874207B0D0A2020636F6C6F723A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62642C0D0A2E752D636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236539356235';
wwv_flow_api.g_varchar2_table(1323) := '342021696D706F7274616E743B0D0A20207374726F6B653A20236539356235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438382021696D706F727461';
wwv_flow_api.g_varchar2_table(1324) := '6E743B0D0A202066696C6C3A20236538356438382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F6C6F722D31302D6261636B';
wwv_flow_api.g_varchar2_table(1325) := '67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A202066696C6C3A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D7478742C0D';
wwv_flow_api.g_varchar2_table(1326) := '0A2E752D636F6C6F722D31302D74657874207B0D0A2020636F6C6F723A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1327) := '722D636F6C6F723A20236538356438382021696D706F7274616E743B0D0A20207374726F6B653A20236538356438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1328) := '6361353839642021696D706F7274616E743B0D0A202066696C6C3A20236361353839642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(1329) := '752D636F6C6F722D31312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236361353839642021696D706F7274616E743B0D0A202066696C6C3A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1330) := '2D636F6C6F722D31312D7478742C0D0A2E752D636F6C6F722D31312D74657874207B0D0A2020636F6C6F723A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62642C0D0A2E752D636F6C6F722D31312D626F';
wwv_flow_api.g_varchar2_table(1331) := '72646572207B0D0A2020626F726465722D636F6C6F723A20236361353839642021696D706F7274616E743B0D0A20207374726F6B653A20236361353839642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3132207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1332) := '67726F756E642D636F6C6F723A20233835346539622021696D706F7274616E743B0D0A202066696C6C3A20233835346539622021696D706F7274616E743B0D0A2020636F6C6F723A20236636663066382021696D706F7274616E743B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1333) := '636F6C6F722D31322D62672C0D0A2E752D636F6C6F722D31322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835346539622021696D706F7274616E743B0D0A202066696C6C3A20233835346539622021696D';
wwv_flow_api.g_varchar2_table(1334) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D7478742C0D0A2E752D636F6C6F722D31322D74657874207B0D0A2020636F6C6F723A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62642C0D';
wwv_flow_api.g_varchar2_table(1335) := '0A2E752D636F6C6F722D31322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835346539622021696D706F7274616E743B0D0A20207374726F6B653A20233835346539622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1336) := '6F722D3133207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A202066696C6C3A20233561363861642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D70';
wwv_flow_api.g_varchar2_table(1337) := '6F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62672C0D0A2E752D636F6C6F722D31332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1338) := '6C6C3A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D7478742C0D0A2E752D636F6C6F722D31332D74657874207B0D0A2020636F6C6F723A20233561363861642021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1339) := '752D636F6C6F722D31332D62642C0D0A2E752D636F6C6F722D31332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233561363861642021696D706F7274616E743B0D0A20207374726F6B653A20233561363861642021696D706F7274';
wwv_flow_api.g_varchar2_table(1340) := '616E743B0D0A7D0D0A2E752D636F6C6F722D3134207B0D0A20206261636B67726F756E642D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A202066696C6C3A20236166626163352021696D706F7274616E743B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1341) := '723A20233331336134342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62672C0D0A2E752D636F6C6F722D31342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023616662616335202169';
wwv_flow_api.g_varchar2_table(1342) := '6D706F7274616E743B0D0A202066696C6C3A20236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D7478742C0D0A2E752D636F6C6F722D31342D74657874207B0D0A2020636F6C6F723A2023616662616335202169';
wwv_flow_api.g_varchar2_table(1343) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62642C0D0A2E752D636F6C6F722D31342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236166626163352021696D706F7274616E743B0D0A20207374726F6B653A20';
wwv_flow_api.g_varchar2_table(1344) := '236166626163352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3135207B0D0A20206261636B67726F756E642D636F6C6F723A20233665383539382021696D706F7274616E743B0D0A202066696C6C3A20233665383539382021696D70';
wwv_flow_api.g_varchar2_table(1345) := '6F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D62672C0D0A2E752D636F6C6F722D31352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1346) := '6C6F723A20233665383539382021696D706F7274616E743B0D0A202066696C6C3A20233665383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1347) := '6C6F723A20233665383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D62642C0D0A2E752D636F6C6F722D31352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233665383539382021696D706F727461';
wwv_flow_api.g_varchar2_table(1348) := '6E743B0D0A20207374726F6B653A20233665383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3136207B0D0A20206261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1349) := '6C3A20233539623265322021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A';
wwv_flow_api.g_varchar2_table(1350) := '20206261636B67726F756E642D636F6C6F723A20233539623265322021696D706F7274616E743B0D0A202066696C6C3A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1351) := '31362D74657874207B0D0A2020636F6C6F723A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62642C0D0A2E752D636F6C6F722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1352) := '3539623265322021696D706F7274616E743B0D0A20207374726F6B653A20233539623265322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D';
wwv_flow_api.g_varchar2_table(1353) := '706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A2020636F6C6F723A20233035313531372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F722D3137';
wwv_flow_api.g_varchar2_table(1354) := '2D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D';
wwv_flow_api.g_varchar2_table(1355) := '7478742C0D0A2E752D636F6C6F722D31372D74657874207B0D0A2020636F6C6F723A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1356) := '626F726465722D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A20207374726F6B653A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1357) := '6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A2020636F6C6F723A20233039316331632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62';
wwv_flow_api.g_varchar2_table(1358) := '672C0D0A2E752D636F6C6F722D31382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1359) := '7D0D0A2E752D636F6C6F722D31382D7478742C0D0A2E752D636F6C6F722D31382D74657874207B0D0A2020636F6C6F723A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1360) := '31382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A20207374726F6B653A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3139207B0D0A20';
wwv_flow_api.g_varchar2_table(1361) := '206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1362) := '0D0A2E752D636F6C6F722D31392D62672C0D0A2E752D636F6C6F722D31392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639';
wwv_flow_api.g_varchar2_table(1363) := '642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D7478742C0D0A2E752D636F6C6F722D31392D74657874207B0D0A2020636F6C6F723A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3139';
wwv_flow_api.g_varchar2_table(1364) := '2D62642C0D0A2E752D636F6C6F722D31392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A20207374726F6B653A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1365) := '752D636F6C6F722D3230207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A2020636F6C6F723A2023323033333136';
wwv_flow_api.g_varchar2_table(1366) := '2021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62672C0D0A2E752D636F6C6F722D32302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1367) := '0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D7478742C0D0A2E752D636F6C6F722D32302D74657874207B0D0A2020636F6C6F723A20233961633937662021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1368) := '0A7D0D0A2E752D636F6C6F722D32302D62642C0D0A2E752D636F6C6F722D32302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A20207374726F6B653A2023396163393766202169';
wwv_flow_api.g_varchar2_table(1369) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3231207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1370) := '20636F6C6F723A20233463346330662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62672C0D0A2E752D636F6C6F722D32312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202365346535';
wwv_flow_api.g_varchar2_table(1371) := '37352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D7478742C0D0A2E752D636F6C6F722D32312D74657874207B0D0A2020636F6C6F723A202365346535';
wwv_flow_api.g_varchar2_table(1372) := '37352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62642C0D0A2E752D636F6C6F722D32312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A2020737472';
wwv_flow_api.g_varchar2_table(1373) := '6F6B653A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3232207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A2023666364383665';
wwv_flow_api.g_varchar2_table(1374) := '2021696D706F7274616E743B0D0A2020636F6C6F723A20233639346630322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1375) := '6E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D';
wwv_flow_api.g_varchar2_table(1376) := '0A2020636F6C6F723A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D62642C0D0A2E752D636F6C6F722D32322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836652021696D';
wwv_flow_api.g_varchar2_table(1377) := '706F7274616E743B0D0A20207374726F6B653A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3233207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1378) := '202066696C6C3A20236631396136352021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E';
wwv_flow_api.g_varchar2_table(1379) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1380) := '6F6C6F722D32332D74657874207B0D0A2020636F6C6F723A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62642C0D0A2E752D636F6C6F722D32332D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1381) := '6F723A20236631396136352021696D706F7274616E743B0D0A20207374726F6B653A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337';
wwv_flow_api.g_varchar2_table(1382) := '362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1383) := '6F722D32342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1384) := '722D32342D7478742C0D0A2E752D636F6C6F722D32342D74657874207B0D0A2020636F6C6F723A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F7264657220';
wwv_flow_api.g_varchar2_table(1385) := '7B0D0A2020626F726465722D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A20207374726F6B653A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1386) := '642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1387) := '2D32352D62672C0D0A2E752D636F6C6F722D32352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F727461';
wwv_flow_api.g_varchar2_table(1388) := '6E743B0D0A7D0D0A2E752D636F6C6F722D32352D7478742C0D0A2E752D636F6C6F722D32352D74657874207B0D0A2020636F6C6F723A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1389) := '6F6C6F722D32352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A20207374726F6B653A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236';
wwv_flow_api.g_varchar2_table(1390) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1391) := '743B0D0A7D0D0A2E752D636F6C6F722D32362D62672C0D0A2E752D636F6C6F722D32362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1392) := '6435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D7478742C0D0A2E752D636F6C6F722D32362D74657874207B0D0A2020636F6C6F723A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1393) := '6F722D32362D62642C0D0A2E752D636F6C6F722D32362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A20207374726F6B653A20236435373962312021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1394) := '0A7D0D0A2E752D636F6C6F722D3237207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(1395) := '66666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62672C0D0A2E752D636F6C6F722D32372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274';
wwv_flow_api.g_varchar2_table(1396) := '616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D7478742C0D0A2E752D636F6C6F722D32372D74657874207B0D0A2020636F6C6F723A20233964373161662021696D706F7274';
wwv_flow_api.g_varchar2_table(1397) := '616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62642C0D0A2E752D636F6C6F722D32372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A20207374726F6B653A202339643731';
wwv_flow_api.g_varchar2_table(1398) := '61662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3238207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1399) := '743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D62672C0D0A2E752D636F6C6F722D32382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1400) := '233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D74657874207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1401) := '233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D62642C0D0A2E752D636F6C6F722D32382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1402) := '20207374726F6B653A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3239207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A202362';
wwv_flow_api.g_varchar2_table(1403) := '66633864312021696D706F7274616E743B0D0A2020636F6C6F723A20233364343835342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F756E64207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1404) := '6B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D7465';
wwv_flow_api.g_varchar2_table(1405) := '7874207B0D0A2020636F6C6F723A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D62642C0D0A2E752D636F6C6F722D32392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864';
wwv_flow_api.g_varchar2_table(1406) := '312021696D706F7274616E743B0D0A20207374726F6B653A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F727461';
wwv_flow_api.g_varchar2_table(1407) := '6E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B';
wwv_flow_api.g_varchar2_table(1408) := '67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D';
wwv_flow_api.g_varchar2_table(1409) := '0A2E752D636F6C6F722D33302D74657874207B0D0A2020636F6C6F723A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D626F72646572207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1410) := '722D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A20207374726F6B653A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1411) := '3139386363612021696D706F7274616E743B0D0A202066696C6C3A20233139386363612021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E';
wwv_flow_api.g_varchar2_table(1412) := '752D636F6C6F722D33312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233139386363612021696D706F7274616E743B0D0A202066696C6C3A20233139386363612021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1413) := '2D636F6C6F722D33312D7478742C0D0A2E752D636F6C6F722D33312D74657874207B0D0A2020636F6C6F723A20233139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F';
wwv_flow_api.g_varchar2_table(1414) := '72646572207B0D0A2020626F726465722D636F6C6F723A20233139386363612021696D706F7274616E743B0D0A20207374726F6B653A20233139386363612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1415) := '67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A20233032613562652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1416) := '636F6C6F722D33322D62672C0D0A2E752D636F6C6F722D33322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A20233032613562652021696D';
wwv_flow_api.g_varchar2_table(1417) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D7478742C0D0A2E752D636F6C6F722D33322D74657874207B0D0A2020636F6C6F723A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D';
wwv_flow_api.g_varchar2_table(1418) := '0A2E752D636F6C6F722D33322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A20207374726F6B653A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1419) := '6F722D3333207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A202066696C6C3A20233138623161652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D70';
wwv_flow_api.g_varchar2_table(1420) := '6F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62672C0D0A2E752D636F6C6F722D33332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1421) := '6C6C3A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D7478742C0D0A2E752D636F6C6F722D33332D74657874207B0D0A2020636F6C6F723A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1422) := '752D636F6C6F722D33332D62642C0D0A2E752D636F6C6F722D33332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A20207374726F6B653A20233138623161652021696D706F7274';
wwv_flow_api.g_varchar2_table(1423) := '616E743B0D0A7D0D0A2E752D636F6C6F722D3334207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1424) := '723A20236566666266372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62672C0D0A2E752D636F6C6F722D33342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023323461343735202169';
wwv_flow_api.g_varchar2_table(1425) := '6D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D7478742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F6C6F723A2023323461343735202169';
wwv_flow_api.g_varchar2_table(1426) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62642C0D0A2E752D636F6C6F722D33342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A20207374726F6B653A20';
wwv_flow_api.g_varchar2_table(1427) := '233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3335207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20233661616434322021696D70';
wwv_flow_api.g_varchar2_table(1428) := '6F7274616E743B0D0A2020636F6C6F723A20233063313530362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D62672C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1429) := '6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D74657874207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1430) := '6C6F723A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D62642C0D0A2E752D636F6C6F722D33352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233661616434322021696D706F727461';
wwv_flow_api.g_varchar2_table(1431) := '6E743B0D0A20207374726F6B653A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3336207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1432) := '6C3A20236339636133392021696D706F7274616E743B0D0A2020636F6C6F723A20233264326530342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E64207B0D0A';
wwv_flow_api.g_varchar2_table(1433) := '20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066696C6C3A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1434) := '33362D74657874207B0D0A2020636F6C6F723A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1435) := '6339636133392021696D706F7274616E743B0D0A20207374726F6B653A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021696D';
wwv_flow_api.g_varchar2_table(1436) := '706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F7274616E743B0D0A2020636F6C6F723A20233436333430302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62672C0D0A2E752D636F6C6F722D3337';
wwv_flow_api.g_varchar2_table(1437) := '2D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D';
wwv_flow_api.g_varchar2_table(1438) := '7478742C0D0A2E752D636F6C6F722D33372D74657874207B0D0A2020636F6C6F723A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1439) := '626F726465722D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A20207374726F6B653A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1440) := '6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62';
wwv_flow_api.g_varchar2_table(1441) := '672C0D0A2E752D636F6C6F722D33382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1442) := '7D0D0A2E752D636F6C6F722D33382D7478742C0D0A2E752D636F6C6F722D33382D74657874207B0D0A2020636F6C6F723A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1443) := '33382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A20207374726F6B653A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20';
wwv_flow_api.g_varchar2_table(1444) := '206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A202066696C6C3A20236432343233622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D';
wwv_flow_api.g_varchar2_table(1445) := '0D0A2E752D636F6C6F722D33392D62672C0D0A2E752D636F6C6F722D33392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A202066696C6C3A20236432343233';
wwv_flow_api.g_varchar2_table(1446) := '622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D7478742C0D0A2E752D636F6C6F722D33392D74657874207B0D0A2020636F6C6F723A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3339';
wwv_flow_api.g_varchar2_table(1447) := '2D62642C0D0A2E752D636F6C6F722D33392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A20207374726F6B653A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1448) := '752D636F6C6F722D3430207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1449) := '2021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62672C0D0A2E752D636F6C6F722D34302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336662021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1450) := '0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D7478742C0D0A2E752D636F6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431343336662021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1451) := '0A7D0D0A2E752D636F6C6F722D34302D62642C0D0A2E752D636F6C6F722D34302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A20207374726F6B653A2023643134333666202169';
wwv_flow_api.g_varchar2_table(1452) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3431207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D0A20';
wwv_flow_api.g_varchar2_table(1453) := '20636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62672C0D0A2E752D636F6C6F722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202362613364';
wwv_flow_api.g_varchar2_table(1454) := '38382021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F723A202362613364';
wwv_flow_api.g_varchar2_table(1455) := '38382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62642C0D0A2E752D636F6C6F722D34312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A2020737472';
wwv_flow_api.g_varchar2_table(1456) := '6F6B653A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3432207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A2023373733333933';
wwv_flow_api.g_varchar2_table(1457) := '2021696D706F7274616E743B0D0A2020636F6C6F723A20236636656666392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D62672C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1458) := '6E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D';
wwv_flow_api.g_varchar2_table(1459) := '0A2020636F6C6F723A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D62642C0D0A2E752D636F6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339332021696D';
wwv_flow_api.g_varchar2_table(1460) := '706F7274616E743B0D0A20207374726F6B653A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3433207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1461) := '202066696C6C3A20233364346561332021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E';
wwv_flow_api.g_varchar2_table(1462) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A202066696C6C3A20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D7478742C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1463) := '6F6C6F722D34332D74657874207B0D0A2020636F6C6F723A20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1464) := '6F723A20233364346561332021696D706F7274616E743B0D0A20207374726F6B653A20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562';
wwv_flow_api.g_varchar2_table(1465) := '302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A2020636F6C6F723A20233238336134642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62672C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1466) := '6F722D34342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1467) := '722D34342D7478742C0D0A2E752D636F6C6F722D34342D74657874207B0D0A2020636F6C6F723A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F7264657220';
wwv_flow_api.g_varchar2_table(1468) := '7B0D0A2020626F726465722D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A20207374726F6B653A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3435207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1469) := '642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1470) := '2D34352D62672C0D0A2E752D636F6C6F722D34352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339312021696D706F727461';
wwv_flow_api.g_varchar2_table(1471) := '6E743B0D0A7D0D0A2E752D636F6C6F722D34352D7478742C0D0A2E752D636F6C6F722D34352D74657874207B0D0A2020636F6C6F723A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62642C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1472) := '6F6C6F722D34352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A20207374726F6B653A20233465373339312021696D706F7274616E743B0D0A7D0D0A0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1473) := '7472616E73706172656E74207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1474) := '636F6C6F722D7472616E73706172656E742D6267207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(1475) := '752D636F6C6F722D7472616E73706172656E742D74657874207B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D62642C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1476) := '7472616E73706172656E742D626F72646572207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(122826333891665607)
,p_theme_id=>42
,p_file_name=>'122825959159665461.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
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
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122228002105535986)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122228420379535986)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122229065786535988)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122229466853535988)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122232849907535991)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122233222404535991)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122235025040535994)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122235859279535995)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122237099320535995)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122238229164535997)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122238618489535997)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122240613180536013)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122244066978536019)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122246497071536027)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122247227577536027)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122248359009536028)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122250218436536033)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122260195661536047)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122260584227536047)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122261313741536047)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122263416264536052)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122264665481536059)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122265002939536059)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122267070177536061)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122268845997536063)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122270673762536064)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122271496812536066)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122273413787536067)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122275266944536077)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122277046278536080)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122277674184536080)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122278010047536080)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122280031664536081)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122283847741536094)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122285099541536094)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122286295663536095)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122288020726536100)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122290007606536102)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122290688173536103)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122293668366536106)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122295488964536108)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122301436198536116)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122302050954536116)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122303006250536117)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122305003654536131)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122307100823536178)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122307519014536178)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122309140192536180)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122309520636536180)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122311145302536181)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122311542897536183)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122313152741536183)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122313519949536184)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122315177900536187)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122315554106536187)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122315996234536187)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122316343218536192)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122316737877536192)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122317111579536192)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122317501655536192)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122318979417536195)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122320305243536208)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122321356506536208)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122321752047536209)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122322168711536209)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122322578791536209)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122323198710536209)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122323797700536211)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122324148895536212)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122324528180536212)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122324948677536212)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(122325755047536214)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122209313005535933)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(122206653241535863)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122212417738535941)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(122209436592535936)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122216394910535950)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(122213319935535942)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122218842832535952)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(122216488605535950)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122220125109535953)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(122218988403535952)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122220376994535953)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(122218988403535952)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122223153530535955)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(122220408810535953)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122225657123535960)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(122223252715535955)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122226958728535961)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(122225705652535960)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122227129172535961)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(122225705652535960)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122227879119535981)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122228244695535986)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(122228002105535986)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122228692410535988)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(122228420379535986)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122228880862535988)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(122228420379535986)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122229202118535988)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(122229065786535988)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122229691862535988)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(122229466853535988)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122229870914535988)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(122228002105535986)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122230062136535988)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(122229065786535988)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122230259272535988)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(122228002105535986)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122230422608535988)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(122229065786535988)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122230686042535989)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(122228002105535986)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122230887462535989)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122227260399535969)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(122229466853535988)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122233058819535991)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(122231958207535989)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122233414813535991)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(122231958207535989)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(122233222404535991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122233682630535991)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(122231958207535989)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122233897972535991)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(122231958207535989)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(122233222404535991)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122234013393535992)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122231958207535989)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122235207473535994)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(122235025040535994)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122235499126535995)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(122235025040535994)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122235622005535995)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(122235025040535994)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122236069127535995)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122236255740535995)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122236462838535995)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122236695382535995)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(122235025040535994)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122236872369535995)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122237285901535997)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122237442453535997)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122237659443535997)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122237850884535997)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122238052458535997)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122238424638535997)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(122238229164535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122238867361535997)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(122238618489535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122239014084535999)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(122238229164535997)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122239297375536011)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122239411020536011)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122239652169536011)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122239851453536013)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(122238618489535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122240028617536013)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122240217346536013)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122240487075536013)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122240841458536014)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(122240613180536013)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122241065137536014)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(122240613180536013)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122241281031536014)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122234114537535992)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122242209508536017)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122242471384536017)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122242613437536017)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122242879397536017)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122243045090536019)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122243213368536019)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122243482562536019)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122243632635536019)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122243836886536019)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122244200776536019)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(122244066978536019)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122244411819536019)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(122244066978536019)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122244630382536019)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(122238618489535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122244806570536019)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122245075959536019)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122245257193536020)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122245453587536020)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122245611969536020)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(122238618489535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122245838123536020)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122241386345536014)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122246269049536027)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122245911838536027)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122246630686536027)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122245911838536027)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(122246497071536027)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122246875042536027)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122245911838536027)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(122246497071536027)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122247044366536027)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122245911838536027)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(122246497071536027)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122247431167536027)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122245911838536027)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(122247227577536027)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122247647099536028)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122245911838536027)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(122247227577536027)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122248506894536028)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122247782260536028)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(122248359009536028)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122248779725536028)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122247782260536028)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122248916363536028)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122247782260536028)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122249130525536028)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122247782260536028)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122249877635536033)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122250090754536033)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122250438590536033)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(122250218436536033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122250663956536039)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(122250218436536033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122250882638536039)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122251088709536039)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122251234416536039)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122249294620536033)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(122250218436536033)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122251657014536039)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122251341105536039)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122251800995536039)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122251341105536039)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122253318095536041)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122253522405536041)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122253786422536041)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122253993415536041)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(122235859279535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122254124688536042)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122254380866536042)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122254500412536042)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122254763464536042)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122254947736536042)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122255121351536042)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122255362226536042)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122255515744536042)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122255782427536042)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122255993697536042)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122256166935536042)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122256351194536044)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122256515589536044)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122256728382536044)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122256961535536044)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(122237099320535995)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122257176558536044)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(122238229164535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122257359747536044)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(122238618489535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122257535242536044)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(122238229164535997)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122257798001536044)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122257951217536045)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122258102207536045)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122258382925536045)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(122238618489535997)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122258563873536045)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122258705561536045)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122258999875536045)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122259111624536045)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(122252449059536041)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(122232849907535991)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122260393319536047)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122259294578536045)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(122260195661536047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122260769138536047)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122259294578536045)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(122260584227536047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122260999224536047)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122259294578536045)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122261110484536047)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122259294578536045)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(122260584227536047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122261543460536049)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122259294578536045)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(122261313741536047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122261782621536049)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122259294578536045)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(122261313741536047)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122262141842536050)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(122261808406536049)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(122246497071536027)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122262324489536050)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(122261808406536049)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122262578706536050)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(122261808406536049)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(122246497071536027)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122262767758536050)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122261808406536049)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122263694079536052)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(122262890903536050)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(122263416264536052)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122263816379536052)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122262890903536050)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(122263416264536052)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122264054947536052)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(122262890903536050)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122264864864536059)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(122264665481536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122265259836536059)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122265467203536061)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(122264665481536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122265688133536061)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122265836167536061)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(122264665481536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122266050276536061)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122266270923536061)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122266498254536061)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(122264665481536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122266681811536061)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(122264665481536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122266861435536061)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122267266920536061)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122267466133536063)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122267644831536063)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122267854679536063)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122268098098536063)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122268277355536063)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122264314525536059)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122268693856536063)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122269048476536063)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(122268845997536063)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122269222426536064)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122269461394536064)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(122268845997536063)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122269682454536064)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122269881686536064)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(122268845997536063)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122270073767536064)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122270222525536064)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122270433249536064)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122270886665536064)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(122270673762536064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122271052132536064)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(122270673762536064)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122271236380536066)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122271627392536066)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(122271496812536066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122271859226536066)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(122271496812536066)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122272061412536066)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122272243150536066)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122272446312536066)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122272675739536066)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(122268845997536063)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122272805935536067)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122273056227536067)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122268363658536063)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122273678756536069)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122273115451536067)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(122273413787536067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122273890257536069)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122273115451536067)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(122273413787536067)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122274203669536070)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122274442414536070)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122274623018536070)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122274884840536070)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122275021464536075)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122275471058536077)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(122275266944536077)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122275603253536077)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122275809036536078)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122276011202536078)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122276266856536078)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122276490308536078)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(122273988700536069)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122277287191536080)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(122277046278536080)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122277493370536080)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(122277046278536080)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122277867737536080)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(122277674184536080)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122278231149536080)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(122278010047536080)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122278449397536080)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(122278010047536080)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122278643113536080)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(122278010047536080)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122278812145536080)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(122277674184536080)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122279075772536081)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122279284754536081)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122276716239536078)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(122278010047536080)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122279646903536081)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(122279348266536081)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(122267070177536061)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122280200780536081)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122280448624536081)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122280646842536081)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122280881835536083)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122281010195536083)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122281203624536083)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122281423232536083)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122281683409536083)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122279702700536081)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122282055364536083)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122282227706536083)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122282461395536083)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122282608790536084)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122282804787536084)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(122265002939536059)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122283006018536084)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122283241334536084)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122283437726536084)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(122281782670536083)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(122280031664536081)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122284005242536094)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122284277395536094)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122284488100536094)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122284609030536094)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122284828012536094)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122285208172536094)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122285403609536094)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122285604677536094)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122285885551536094)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122286055635536095)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122286425125536097)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(122286295663536095)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122286622477536097)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(122286295663536095)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122286898684536097)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(122286295663536095)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122287050304536098)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122287201902536100)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(122286295663536095)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122287456250536100)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(122283556565536088)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(122286295663536095)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122287860832536100)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122288276545536100)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(122288020726536100)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122288434968536100)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122288622796536100)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(122288020726536100)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122288858223536102)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122289093956536102)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(122288020726536100)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122289207296536102)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122289438715536102)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122289607023536102)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122289842534536102)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122290291510536102)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(122290007606536102)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122290436084536102)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122290844362536103)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(122290688173536103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122291085538536103)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(122290688173536103)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122291299316536103)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122291449908536103)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122291658790536103)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122291838616536103)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(122288020726536100)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122292023004536103)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(122290007606536102)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122292287474536103)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122292420686536105)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122287513538536100)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122292832958536106)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122292500301536105)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122293003519536106)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122292500301536105)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122293299624536106)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122292500301536105)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122293429682536106)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122292500301536105)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122293821955536106)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122292500301536105)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(122293668366536106)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122294043329536106)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122292500301536105)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(122293668366536106)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122294485968536108)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122294693200536108)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122294867997536108)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122295068015536108)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122295285203536108)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122295621616536108)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(122295488964536108)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122295822290536109)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122296069089536109)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122296248022536109)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122296446237536109)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(122294137179536106)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122296802633536111)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122296561862536109)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122297031055536111)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122296561862536109)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122297264242536111)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122296561862536109)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122297457975536111)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122296561862536109)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122297885647536111)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122297511989536111)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122298485068536112)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122298152196536112)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122298848074536114)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(122290688173536103)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122299021448536114)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(122283847741536094)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122299260397536114)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(122290688173536103)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122299462524536114)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(122295488964536108)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122299636560536114)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122299848147536114)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(122285099541536094)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122300014345536114)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(122298536490536112)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(122295488964536108)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122300406326536114)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(122300179433536114)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122300631609536114)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(122300179433536114)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122300828104536116)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(122300179433536114)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122301055769536116)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(122300179433536114)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122301696146536116)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(122301104084536116)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(122301436198536116)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122301814660536116)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(122301104084536116)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(122301436198536116)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122302263986536116)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122301104084536116)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(122302050954536116)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122302414722536116)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122301104084536116)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(122302050954536116)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122302678463536116)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122301104084536116)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(122302050954536116)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122303226911536117)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122302735720536116)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(122303006250536117)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122303402354536117)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(122302735720536116)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(122303006250536117)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122303697451536117)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(122302735720536116)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(122303006250536117)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122303891318536117)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(122302735720536116)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122305246829536133)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(122304860302536131)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(122305003654536131)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122305494758536133)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(122304860302536131)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(122305003654536131)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122307350984536178)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(122307100823536178)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122307707214536178)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(122307519014536178)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122307965787536178)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(122307100823536178)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122308146646536178)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(122307519014536178)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122308318699536180)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(122307100823536178)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122308573577536180)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(122307519014536178)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122308753159536180)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(122307100823536178)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122308915511536180)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(122307519014536178)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122309315361536180)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(122309140192536180)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122309789036536180)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(122309520636536180)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122309955393536180)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(122309140192536180)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122310195495536180)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(122309520636536180)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122310387187536180)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(122309140192536180)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122310589663536181)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(122309520636536180)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122310751304536181)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(122309140192536180)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122310902817536181)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(122309520636536180)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122311359251536181)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(122311145302536181)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122311768083536183)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(122311542897536183)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122311916335536183)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(122311145302536181)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122312164816536183)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(122311542897536183)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122312397483536183)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(122311145302536181)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122312539640536183)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(122311542897536183)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122312763327536183)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(122311145302536181)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122312963759536183)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(122311542897536183)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122313384794536183)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(122313152741536183)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122313702217536184)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(122313519949536184)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122313900294536186)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(122313152741536183)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122314106123536186)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(122313519949536184)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122314325155536186)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(122313152741536183)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122314582118536186)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(122313519949536184)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122314760071536186)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(122313152741536183)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122314934526536186)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(122313519949536184)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122315361416536187)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(122315177900536187)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122315766536536187)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(122315554106536187)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122316157925536190)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(122315996234536187)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122316576912536192)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(122316343218536192)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122316971610536192)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(122316737877536192)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122317397701536192)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(122317111579536192)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122317748422536194)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(122317501655536192)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122317968538536194)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(122317501655536192)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122318113952536194)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(122315554106536187)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122318330131536194)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(122315996234536187)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122318502811536195)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(122316343218536192)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122318706489536195)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(122316737877536192)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122319166413536195)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(122318979417536195)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122319361776536195)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(122318979417536195)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122319535539536195)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(122318979417536195)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122319731388536195)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(122315177900536187)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122319924390536195)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(122317501655536192)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122320195357536208)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(122317111579536192)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122320534038536208)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(122320305243536208)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122320738050536208)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(122315177900536187)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122320982604536208)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(122317111579536192)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122321155120536208)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(122315177900536187)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122321594442536208)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(122321356506536208)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122321964145536209)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(122321752047536209)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122322333166536209)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(122322168711536209)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122322740773536209)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(122322578791536209)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122322916692536209)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(122322578791536209)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122323348345536209)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(122323198710536209)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122323521432536209)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(122321752047536209)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122323927690536212)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(122323797700536211)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122324327874536212)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(122324148895536212)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122324766895536212)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(122324528180536212)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122325155033536214)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(122324948677536212)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122325334269536214)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122325519894536214)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(122323797700536211)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(122325900252536214)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(122325755047536214)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
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
 p_id=>wwv_flow_api.id(122329675425536283)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(122205696525535825)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/copy_of_no_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(131172731664970299)
,p_name=>'Copy of No Authentication'
,p_scheme_type=>'NATIVE_DAD'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/region_type/com_oracle_apex_badge_list
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(197580629497188055)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.BADGE_LIST'
,p_display_name=>'Badge List'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.BADGE_LIST'),'#IMAGE_PREFIX#plugins/com.oracle.apex.badgelist/2.0/')
,p_javascript_file_urls=>'#PLUGIN_FILES#com_oracle_apex_badgelist.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result is',
'begin',
'    apex_javascript.add_onload_code (',
'        p_code => ''com_oracle_apex_badgelist(''||',
'            apex_javascript.add_value(p_region.static_id)||',
'            ''{''||',
'                -- why is this attribute needed if is not used?',
'                apex_javascript.add_attribute(',
'                    ''pageItems'', ',
'                    apex_plugin_util.page_item_names_to_jquery(p_region.ajax_items_to_submit)',
'                )||',
'                apex_javascript.add_attribute(',
'                    ''ajaxIdentifier'', ',
'                    apex_plugin.get_ajax_identifier, ',
'                    false, ',
'                    false',
'                )||',
'            ''}''||',
'        '');''',
'    );',
'--    CSS for Big Value List',
'--    apex_css.add_file (',
'--        p_name      => ''com_oracle_apex_badge_list'',',
'--        p_directory => p_plugin.file_prefix );',
'    -- Start the list',
'',
'',
'    -- It''s time to emit the selected rows',
'',
'',
'    return null;',
'',
'end render;',
'',
'function ajax (',
'    p_region in apex_plugin.t_region,',
'    p_plugin in apex_plugin.t_plugin',
') return apex_plugin.t_region_ajax_result ',
'is',
'    -- It''s better to have named variables instead of using the generic ones,',
'    -- makes the code more readable. We are using the same defaults for the',
'    -- required attributes as in the plug-in attribute configuration, because',
'    -- they can still be null. Keep them in sync!',
'    c_top_label_column    constant varchar2(255) := p_region.attribute_09;',
'    c_value_column        constant varchar2(255) := p_region.attribute_02;',
'    c_bottom_label_column constant varchar2(255) := p_region.attribute_01;',
'    c_percent_column      constant varchar2(255) := p_region.attribute_03;',
'    c_link_target         constant varchar2(255) := p_region.attribute_04;',
'    ',
'    c_layout            constant varchar2(1)   := p_region.attribute_05;',
'    c_chart_size        constant varchar2(3)   := p_region.attribute_06;',
'    c_chart_type        constant varchar2(3)   := p_region.attribute_07;',
'    c_colored           constant varchar2(1)   := p_region.attribute_08;',
'',
'    l_bottom_label_column_no pls_integer;',
'    l_top_label_column_no    pls_integer;',
'    l_value_column_no        pls_integer;',
'    l_percent_column_no      pls_integer;',
'    l_column_value_list      apex_plugin_util.t_column_value_list2;',
'    ',
'    l_top_label      varchar2(4000);',
'    l_value             varchar2(4000);',
'    l_bottom_label      varchar2(4000);',
'    l_percent           number;',
'    l_url               varchar2(4000);',
'    l_class             varchar2(255);',
'',
'begin',
'    apex_json.initialize_output (',
'        p_http_cache => false );',
'        -- Read the data based on the region source query',
'    l_column_value_list := apex_plugin_util.get_data2 (',
'                               p_sql_statement  => p_region.source,',
'                               p_min_columns    => 2,',
'                               p_max_columns    => null,',
'                               p_component_name => p_region.name );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_top_label_column_no := apex_plugin_util.get_column_no (',
'      p_attribute_label   => ''Top Label'',',
'      p_column_alias      => c_top_label_column,',
'      p_column_value_list => l_column_value_list,',
'      p_is_required       => false,',
'      p_data_type         => apex_plugin_util.c_data_type_varchar2',
'    );',
'',
'    l_value_column_no   := apex_plugin_util.get_column_no (',
'                               p_attribute_label   => ''Value'',',
'                               p_column_alias      => c_value_column,',
'                               p_column_value_list => l_column_value_list,',
'                               p_is_required       => true,',
'                               p_data_type         => apex_plugin_util.c_data_type_varchar2 );',
'',
'    -- Get the actual column# for faster access and also verify that the data type',
'    -- of the column matches with what we are looking for',
'    l_bottom_label_column_no := apex_plugin_util.get_column_no (',
'      p_attribute_label   => ''Bottom Label'',',
'      p_column_alias      => c_bottom_label_column,',
'      p_column_value_list => l_column_value_list,',
'      p_is_required       => false,',
'      p_data_type         => apex_plugin_util.c_data_type_varchar2',
'    );',
'                                      ',
'    l_percent_column_no := apex_plugin_util.get_column_no (',
'                             p_attribute_label   => ''Percent'',',
'                             p_column_alias      => c_percent_column,',
'                             p_column_value_list => l_column_value_list,',
'                             p_is_required       => false,',
'                             p_data_type         => apex_plugin_util.c_data_type_number );',
'    ',
'    -- begin output as json',
'    owa_util.mime_header(''application/json'', false);',
'    htp.p(''cache-control: no-cache'');',
'    htp.p(''pragma: no-cache'');',
'    owa_util.http_header_close;',
' --   l_message_when_no_data_found := apex_escape.html_whitelist(',
'  --      apex_plugin_util.replace_substitutions (',
'   --             p_value  => c_message_when_no_data_found,',
'   --             p_escape => false',
'    --        )',
'    --    );',
'    apex_json.open_object();',
'    apex_json.write(''layout'', c_layout); ',
'    apex_json.write(''chart_size'', c_chart_size); ',
'    apex_json.write(''chart_type'', c_chart_type); ',
'    apex_json.write(''colored'', c_colored); ',
'    apex_json.open_array(''data'');',
'    for l_row_num in 1 .. l_column_value_list(1).value_list.count loop',
'        begin',
'            apex_json.open_object(); ',
'            -- Set the column values of our current row so that apex_plugin_util.replace_substitutions',
'            -- can do substitutions for columns contained in the region source query.',
'            apex_plugin_util.set_component_values (',
'                p_column_value_list => l_column_value_list,',
'                p_row_num           => l_row_num );',
'',
'            if l_top_label_column_no is not null',
'            then',
'              -- get the top label',
'              l_top_label := ',
'                 apex_plugin_util.get_value_as_varchar2 (',
'                     p_data_type => l_column_value_list(l_top_label_column_no).data_type,',
'                     p_value     => l_column_value_list(l_top_label_column_no).value_list(l_row_num) );',
'',
'              apex_json.write(''topLabel'', l_top_label); ',
'            end if;',
'            ',
'            -- get the value',
'            l_value := apex_plugin_util.get_value_as_varchar2 (',
'                               p_data_type => l_column_value_list(l_value_column_no).data_type,',
'                               p_value     => l_column_value_list(l_value_column_no).value_list(l_row_num) );',
'',
'            apex_json.write(''value'', l_value); ',
'',
'            if l_bottom_label_column_no is not null',
'            then',
'              -- get the bottom label',
'              l_bottom_label := ',
'                 apex_plugin_util.get_value_as_varchar2 (',
'                     p_data_type => l_column_value_list(l_bottom_label_column_no).data_type,',
'                     p_value     => l_column_value_list(l_bottom_label_column_no).value_list(l_row_num) );',
'',
'              apex_json.write(''bottomLabel'', l_bottom_label); ',
'            end if;',
'',
'            -- get percent',
'            if l_percent_column_no is not null then',
'                l_percent := l_column_value_list(l_percent_column_no).value_list(l_row_num).number_value;',
'                apex_json.    write(''percent'', l_percent); ',
'            end if;',
'',
'            -- get the link target if it does exist',
'            if c_link_target is not null then',
'                l_url := apex_util.prepare_url (',
'                             apex_plugin_util.replace_substitutions (',
'                                 p_value  => c_link_target,',
'                                 p_escape => false ));',
'                apex_json.    write(''url'', l_url);                ',
'            end if;',
'            ',
'            apex_json.close_object();        ',
'',
'',
'            apex_plugin_util.clear_component_values;',
'        exception when others then',
'            apex_plugin_util.clear_component_values;',
'            raise;',
'        end;',
'    end loop;',
'    apex_json.close_all();',
'    ',
'    return null;',
'exception when others then',
'    htp.p(''error: ''||apex_escape.html(sqlerrm));',
'    return null;',
'end ajax;',
'',
'',
''))
,p_api_version=>1
,p_render_function=>'render'
,p_ajax_function=>'ajax'
,p_standard_attributes=>'SOURCE_SQL:AJAX_ITEMS_TO_SUBMIT:ESCAPE_OUTPUT'
,p_substitute_attributes=>false
,p_reference_id=>61668743843857559
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Badge lists are useful for displaying a region with a small number of counts for important statistics. For example, in Bug Tracker, this plug-in is used to show the total bugs, open bugs, open high priority bugs, and open critical severity bugs.</'
||'p>',
'<p>This plug-in is suitable for adding to the Home page to show important summary information.</p>'))
,p_version_identifier=>'5.0.2'
,p_about_url=>'http://apex.oracle.com/plugins'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197580782051188076)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>25
,p_prompt=>'Bottom Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the labels for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197581251638188083)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Value'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>true
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_help_text=>'Select the column from the region SQL Query that holds the values for the badges.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197581481595188083)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Percent'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(197589137104188095)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'PERCENT'
,p_help_text=>'Select the column from the region SQL Query that holds the percentage values for the badges. Percentages will be displayed together with the value within the badge.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197581871976188084)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Link Target'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Example 1: URL to navigate to page 10 and set P10_EMPNO to the EMPNO value of the clicked entry.',
'<pre>f?p=&amp;APP_ID.:10:&amp;APP_SESSION.::&amp;DEBUG.:RP,10:P10_EMPNO:&amp;EMPNO.</pre>',
'</p>',
'<p>Example 2: Display the EMPNO value of the clicked entry in a JavaScript alert',
'<pre>javascript:alert(''current empno: &amp;EMPNO.'');</pre>',
'</p>'))
,p_help_text=>'<p>Enter a target page to be called when the user clicks a badge entry.</p>'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197582321373188084)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Layout'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Select the layout to determine how the badge list is displayed.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197582713421188086)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>5
,p_display_value=>'Fit to Page'
,p_return_value=>'0'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sizes the badges to stretch across the page. The width of each badge will be determined by the number of badges and the display width.</p>',
'<p>Note: Badges will not wrap when displayed on smaller devices.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197583183454188086)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>7
,p_display_value=>'Float to Left'
,p_return_value=>'F'
,p_help_text=>'<p>Sizes the badges based on the width of the label for each badge. All badges will be displayed to the left of the region.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197583756878188087)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>10
,p_display_value=>'1 column'
,p_return_value=>'1'
,p_help_text=>'Displays only one badge per row. Therefore, if there are three badges they are displayed on three rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197584226799188087)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>20
,p_display_value=>'2 columns'
,p_return_value=>'2'
,p_help_text=>'Displays only two badges per row. Therefore, if there are three badges they are displayed on two rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197584705726188087)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>30
,p_display_value=>'3 columns'
,p_return_value=>'3'
,p_help_text=>'<p>Displays a maximum of three badges per row. Therefore, if there are four badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197585192736188087)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>40
,p_display_value=>'4 columns'
,p_return_value=>'4'
,p_help_text=>'<p>Displays a maximum of four badges per row. Therefore, if there are six badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197585723384188087)
,p_plugin_attribute_id=>wwv_flow_api.id(197582321373188084)
,p_display_sequence=>50
,p_display_value=>'5 columns'
,p_return_value=>'5'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Displays a maximum of fix badges per row. Therefore, if there are seven badges they are displayed on two rows.</p>',
'<p>Note: on smaller displays where the badges cannot be displayed appropriately, the responsive region will revert to less column and additional rows. For example, seven badges may be displayed as three columns on three rows, instead of five columns '
||'on two rows.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197586204873188092)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Badge Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(197589137104188095)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'BOX'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the size of badge to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197586613345188092)
,p_plugin_attribute_id=>wwv_flow_api.id(197586204873188092)
,p_display_sequence=>0
,p_display_value=>'Small'
,p_return_value=>'S'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197587151193188092)
,p_plugin_attribute_id=>wwv_flow_api.id(197586204873188092)
,p_display_sequence=>10
,p_display_value=>'Medium'
,p_return_value=>'M'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197587562600188094)
,p_plugin_attribute_id=>wwv_flow_api.id(197586204873188092)
,p_display_sequence=>20
,p_display_value=>'Large'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197588102252188094)
,p_plugin_attribute_id=>wwv_flow_api.id(197586204873188092)
,p_display_sequence=>30
,p_display_value=>'Extra Large'
,p_return_value=>'B'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197588640000188095)
,p_plugin_attribute_id=>wwv_flow_api.id(197586204873188092)
,p_display_sequence=>40
,p_display_value=>'Extra Extra Large'
,p_return_value=>'XXL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197589137104188095)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>1
,p_prompt=>'Badge Style'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'BOX'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the shape of the badges to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197589488674188095)
,p_plugin_attribute_id=>wwv_flow_api.id(197589137104188095)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'BOX'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197589965934188095)
,p_plugin_attribute_id=>wwv_flow_api.id(197589137104188095)
,p_display_sequence=>15
,p_display_value=>'Default with Percent'
,p_return_value=>'PERCENT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197590471007188095)
,p_plugin_attribute_id=>wwv_flow_api.id(197589137104188095)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'DOT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197591018558188097)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Color'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'N'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select if the badges should be displayed in different colors, or without colors.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197591455004188097)
,p_plugin_attribute_id=>wwv_flow_api.id(197591018558188097)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(197591933821188097)
,p_plugin_attribute_id=>wwv_flow_api.id(197591018558188097)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(197592378196188097)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>10
,p_prompt=>'Top Label'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_std_attribute(
 p_id=>wwv_flow_api.id(197593670199188111)
,p_plugin_id=>wwv_flow_api.id(197580629497188055)
,p_name=>'SOURCE_SQL'
,p_sql_min_column_count=>2
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre>',
'select ''Open''               as label,',
'       to_char(320,''9G990'') as value,',
'       13                   as percent',
'  from dual',
' union all',
'select ''Closed''             as label,',
'       to_char(87,''9G990'')  as value,',
'       70                   as percent',
'  from dual',
'</pre>'))
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(122326502990536220)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(122206301933535839)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(122298152196536112)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(122326276941536217)
,p_nav_bar_list_template_id=>wwv_flow_api.id(122297928923536111)
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
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211025150840'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Dashboard Taller'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'var timeout = semetTiout(function(){location.reload()},300000);'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Card-icon .t-Icon {',
'     width: 200px;',
'     display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    border-radius: 50px;',
'   overflow: hidden;',
'}',
'',
'.t-Card-initials {',
'    display: block;',
'    overflow: hidden;',
'    overflow-x: hidden;',
'    overflow-y: hidden;',
'    text-overflow: clip;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105413'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122337688349536381)
,p_name=>'Dashboard Taller'
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--accent1:t-Region--noUI:t-Region--hiddenOverflow:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--animColorFill:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*)"CARD_INITIALS", ''BAHIA 1'' "CARD_TITLE"  ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,apex_util.prepare_url( ''f?p=''||:APP_ID||'':2:''||:APP_SESSION||''::NO:::'') as "CARD_LINK"',
'from  tordenserv  where estado=''A''  and  sistema in (9) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  ',
'union all ',
'Select count(*)"CARD_INITIALS",''BAHIA 2'' "CARD_TITLE" ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,apex_util.prepare_url( ''f?p=''||:APP_ID||'':3:''||:APP_SESSION||''::NO:::'') as "CARD_LINK"',
'from  tordenserv  where estado=''A''  and  cod_falla in (43,44) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  ',
'union all ',
'Select count(*)"CARD_INITIALS", ''BAHIA 3'' "CARD_TITLE" ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" , apex_util.prepare_url( ''f?p=''||:APP_ID||'':4:''||:APP_SESSION||''::NO:::'') as "CARD_LINK"',
'from  tordenserv  where estado=''A''  and  sistema in (7,5,2,16) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''   ',
'union all ',
'Select count(*)"CARD_INITIALS", ''BAHIA 4'' "CARD_TITLE",'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" , apex_util.prepare_url( ''f?p=''||:APP_ID||'':5:''||:APP_SESSION||''::NO:::'') as "CARD_LINK"',
'from  tordenserv  where estado=''A''  and  sistema in (4,8,1) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  ',
'union all ',
'Select count(*)"CARD_INITIALS", ''BAHIA 5''  "CARD_TITLE" ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" , apex_util.prepare_url( ''f?p=''||:APP_ID||'':6:''||:APP_SESSION||''::NO:::'') as "CARD_LINK"',
'from  tordenserv  where estado=''A''  and  sistema in (6) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  ',
'',
'',
'',
' '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647559196173531)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>1
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647622949173532)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647758092173533)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647867876173534)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122774737025141828)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Card Link'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122648683342173542)
,p_plug_name=>'ORDENES ASIGANADAS'
,p_region_name=>'asignadas'
,p_region_template_options=>'#DEFAULT#:t-Region--carouselSlide:t-Region--accent4:t-Region--stacked:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(122234114537535992)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122648713319173543)
,p_name=>'BAHIA 1'
,p_parent_plug_id=>wwv_flow_api.id(122648683342173542)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_sub_css_classes=>'icono'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--5cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Dias: '' || TO_CHAR(DIFERENCIA_DIAS, ''00'') || '' HORAS:  '' || TO_CHAR(DIFERENCIA_HORAS, ''00'') || '' MINUTOS:  '' || TO_CHAR(MINUTES, ''00'') ',
'AS "CARD_TITLE",  unidad  as "CARD_INITIALS",',
'cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido   AS  "CARD_TEXT",',
'nmorden as "CARD_SUBTEXT",  ',
'case when  porcentaje > 80  and porcentaje <90 then  ''u-color-7''  when porcentaje > 90  and porcentaje <99 then  ''u-color-8''  when  porcentaje > 99 then  ''u-color-9'' else ''u-color-4'' end as "CARD_COLOR"',
'FROM (',
'    SELECT cdasignado,sysdate,',
'        fecha_asignado, unidad,nmorden,',
'        TRUNC((sysdate- fecha_asignado )) DIFERENCIA_DIAS,',
'        TRUNC(MOD((sysdate-fecha_asignado) * 24, 24)) DIFERENCIA_HORAS,',
'        trunc(mod((sysdate-fecha_asignado) * 24 * 60, 60)) minutes,',
'        (trunc((sysdate-fecha_asignado) * 24 * 60)/trunc((tiempo_asignado-fecha_asignado) * 24 * 60)) *100 porcentaje',
'                   FROM tordenserv where estado=''A'' and fecha_asignado is not null and cdasignado is not null and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''',
'                   and  sistema in (9)',
'    ) a inner join empleado b on a.cdasignado=b.empleado ',
'    ',
'    '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122772396877141804)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(123035773404583903)
,p_query_column_id=>2
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122772043187141801)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>1
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122772414494141805)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122911973891251407)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122772556559141806)
,p_name=>'BAHIA 2'
,p_parent_plug_id=>wwv_flow_api.id(122648683342173542)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--5cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Dias: '' || TO_CHAR(DIFERENCIA_DIAS, ''00'') || '' HORAS:  '' || TO_CHAR(DIFERENCIA_HORAS, ''00'') || '' MINUTOS:  '' || TO_CHAR(MINUTES, ''00'')  ',
'AS "CARD_TITLE",  unidad  as "CARD_INITIALS",',
'cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido   AS  "CARD_TEXT",',
'nmorden as "CARD_SUBTEXT"',
',case when  porcentaje > 80  and porcentaje <90 then  ''u-color-7''  when porcentaje > 90  and porcentaje <99 then  ''u-color-8''  when  porcentaje > 99 then  ''u-color-9'' else ''u-color-5'' end as "CARD_COLOR"',
'FROM (',
'    SELECT cdasignado,sysdate,',
'        fecha_asignado,unidad,nmorden,',
'        TRUNC((sysdate- fecha_asignado )) DIFERENCIA_DIAS,',
'        TRUNC(MOD((sysdate-fecha_asignado) * 24, 24)) DIFERENCIA_HORAS,',
'        trunc(mod((sysdate-fecha_asignado) * 24 * 60, 60)) minutes',
'    ,(trunc((sysdate-fecha_asignado) * 24 * 60)/trunc((tiempo_asignado-fecha_asignado) * 24 * 60)) *100 porcentaje',
'                   FROM tordenserv where estado=''A'' and fecha_asignado is not null and cdasignado is not null and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''',
'                   and  cod_falla in (43,44)',
'    ) a inner join empleado b on a.cdasignado=b.empleado',
'    '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122772618302141807)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912432966251412)
,p_query_column_id=>2
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122772881715141809)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122772751976141808)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912027380251408)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122772978419141810)
,p_name=>'BAHIA 3'
,p_parent_plug_id=>wwv_flow_api.id(122648683342173542)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--5cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Dias: '' || TO_CHAR(DIFERENCIA_DIAS, ''00'') || '' HORAS:  '' || TO_CHAR(DIFERENCIA_HORAS, ''00'') || '' MINUTOS:  '' || TO_CHAR(MINUTES, ''00'') ',
'AS "CARD_TITLE",  unidad  as "CARD_INITIALS",',
'cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido   AS  "CARD_TEXT",',
'nmorden as "CARD_SUBTEXT",case when  porcentaje > 80  and porcentaje <90 then  ''u-color-7''  when porcentaje > 90  and porcentaje <99 then  ''u-color-8''  when  porcentaje > 99 then  ''u-color-9'' else ''u-color-5'' end as "CARD_COLOR"',
'FROM (',
'    SELECT cdasignado,sysdate,',
'        fecha_asignado,unidad,nmorden,',
'        TRUNC((sysdate- fecha_asignado )) DIFERENCIA_DIAS,',
'        TRUNC(MOD((sysdate-fecha_asignado) * 24, 24)) DIFERENCIA_HORAS,',
'        trunc(mod((sysdate-fecha_asignado) * 24 * 60, 60)) minutes',
'    ,(trunc((sysdate-fecha_asignado) * 24 * 60)/trunc((tiempo_asignado-fecha_asignado) * 24 * 60)) *100 porcentaje',
'                   FROM tordenserv where estado=''A'' and fecha_asignado is not null and cdasignado is not null and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''',
'                   and  sistema in (7,5,2,16)',
'    ) a inner join empleado b on a.cdasignado=b.empleado',
'    ',
'    '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773030678141811)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912515847251413)
,p_query_column_id=>2
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773274942141813)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773118868141812)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912197769251409)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122773358938141814)
,p_name=>'BAHIA 4'
,p_parent_plug_id=>wwv_flow_api.id(122648683342173542)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--5cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Dias: '' || TO_CHAR(DIFERENCIA_DIAS, ''00'') || '' HORAS:  '' || TO_CHAR(DIFERENCIA_HORAS, ''00'') || '' MINUTOS:  '' || TO_CHAR(MINUTES, ''00'')  ',
'AS "CARD_TITLE",  unidad  as "CARD_INITIALS",',
'cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido   AS  "CARD_TEXT",',
'nmorden as "CARD_SUBTEXT",case when  porcentaje > 80  and porcentaje <90 then  ''u-color-7''  when porcentaje > 90  and porcentaje <99 then  ''u-color-8''  when  porcentaje > 99 then  ''u-color-9'' else ''u-color-5'' end as "CARD_COLOR"',
'FROM (',
'    SELECT cdasignado,sysdate,',
'        fecha_asignado,unidad,nmorden,',
'        TRUNC((sysdate- fecha_asignado )) DIFERENCIA_DIAS,',
'        TRUNC(MOD((sysdate-fecha_asignado) * 24, 24)) DIFERENCIA_HORAS,',
'        trunc(mod((sysdate-fecha_asignado) * 24 * 60, 60)) minutes',
'    ,(trunc((sysdate-fecha_asignado) * 24 * 60)/trunc((tiempo_asignado-fecha_asignado) * 24 * 60)) *100 porcentaje',
'                   FROM tordenserv where estado=''A'' and fecha_asignado is not null and cdasignado is not null and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''',
'                      and  sistema in (4,8,1)',
'    ) a inner join empleado b on a.cdasignado=b.empleado',
'    ',
'    '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773498708141815)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912613118251414)
,p_query_column_id=>2
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773681359141817)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773584779141816)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912223517251410)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122773741633141818)
,p_name=>'BAHIA 5'
,p_parent_plug_id=>wwv_flow_api.id(122648683342173542)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--5cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Dias: '' || TO_CHAR(DIFERENCIA_DIAS, ''00'') || '' HORAS:  '' || TO_CHAR(DIFERENCIA_HORAS, ''00'') || '' MINUTOS:  '' || TO_CHAR(MINUTES, ''00'')  ',
'AS "CARD_TITLE",  unidad  as "CARD_INITIALS",',
'cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido   AS  "CARD_TEXT",',
'nmorden as "CARD_SUBTEXT",case when  porcentaje > 80  and porcentaje <90 then  ''u-color-7''  when porcentaje > 90  and porcentaje <99 then  ''u-color-8''  when  porcentaje > 99 then  ''u-color-9'' else ''u-color-5'' end as "CARD_COLOR"',
'FROM (',
'    SELECT cdasignado,sysdate,',
'        fecha_asignado,unidad,nmorden,',
'        TRUNC((sysdate- fecha_asignado )) DIFERENCIA_DIAS,',
'        TRUNC(MOD((sysdate-fecha_asignado) * 24, 24)) DIFERENCIA_HORAS,',
'        trunc(mod((sysdate-fecha_asignado) * 24 * 60, 60)) minutes',
'    ,(trunc((sysdate-fecha_asignado) * 24 * 60)/trunc((tiempo_asignado-fecha_asignado) * 24 * 60)) *100 porcentaje',
'                   FROM tordenserv where estado=''A'' and fecha_asignado is not null and cdasignado is not null and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''',
'                     and sistema in (6)',
'    ) a inner join empleado b on a.cdasignado=b.empleado',
'    ',
'    '))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773895447141819)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912771903251415)
,p_query_column_id=>2
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>5
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122774019903141821)
,p_query_column_id=>3
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122773920312141820)
,p_query_column_id=>4
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912326514251411)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>4
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122774868616141829)
,p_plug_name=>'CERRADAS'
,p_region_template_options=>'#DEFAULT#:js-cycle15s:t-Region--accent4:t-Region--hiddenOverflow'
,p_plug_template=>wwv_flow_api.id(122234114537535992)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122693280734999994)
,p_name=>'OT CERRADAS DURANTE EL MES'
,p_parent_plug_id=>wwv_flow_api.id(122774868616141829)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--5cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*) "CARD_INITIALS" ,  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as "CARD_TITLE"/*,c.puesto, descripcion */ ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT"  ,''u-color-3''  "CARD_COLOR"',
'from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''C''  and  sistema in (6,9,43,44,7,5,2,16,4,8,1) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01'' and to_char(fecha_cierre,''yyyy'')=to_char(sysdate,''yyyy'')',
'and to_char(fecha_cierre,''MM'')=to_char(sysdate,''MM'') group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion order by 1 desc',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647080721173526)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>2
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647127283173527)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>3
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122646778801173523)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>1
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122647252781173528)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>4
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912899762251416)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122775091236141831)
,p_name=>'OT CERRADAS BAHIA 1'
,p_parent_plug_id=>wwv_flow_api.id(122774868616141829)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*) "CARD_INITIALS" ,  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as "CARD_TITLE"/*,c.puesto, descripcion */ ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,''u-color-3''  "CARD_COLOR"from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''C''  and  sistema in (9) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''and',
' trunc(fecha_cierre) =trunc(sysdate) ',
' group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion order by 1 desc',
'',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775473611141835)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775168323141832)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775263237141833)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775375035141834)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122912966868251417)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122775541821141836)
,p_name=>'OT CERRADAS BAHIA 3'
,p_parent_plug_id=>wwv_flow_api.id(122774868616141829)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*) "CARD_INITIALS" ,  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as "CARD_TITLE"/*,c.puesto, descripcion */ ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,''u-color-3''  "CARD_COLOR"',
'from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''C''  and     sistema in (7,5,2,16) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''and',
' trunc(fecha_cierre) =trunc(sysdate) ',
' group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion order by 1 desc',
'',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
end;
/
begin
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775966400141840)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775692031141837)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775734442141838)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122775822463141839)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122913117313251419)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122776084744141841)
,p_name=>'OT CERRADAS BAHIA 4'
,p_parent_plug_id=>wwv_flow_api.id(122774868616141829)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*) "CARD_INITIALS" ,  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as "CARD_TITLE"/*,c.puesto, descripcion */ ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,''u-color-3''  "CARD_COLOR"',
'from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''C''  and      sistema in (4,8,1) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''and',
' trunc(fecha_cierre) =trunc(sysdate) ',
' group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion order by 1 desc',
'',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776432267141845)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776130567141842)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776274605141843)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776384912141844)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122913271431251420)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122776595342141846)
,p_name=>'OT CERRADAS BAHIA 5'
,p_parent_plug_id=>wwv_flow_api.id(122774868616141829)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:i-h480:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*) "CARD_INITIALS" ,  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as "CARD_TITLE"/*,c.puesto, descripcion */ ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,''u-color-3''  "CARD_COLOR"',
'from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''C''  and      sistema in (6) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''and',
' trunc(fecha_cierre) =trunc(sysdate) ',
' group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion order by 1 desc',
'',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776978959141850)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776613426141847)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776744094141848)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122776800852141849)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122913369401251421)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122911365428251401)
,p_name=>'OT CERRADAS BAHIA 2'
,p_parent_plug_id=>wwv_flow_api.id(122774868616141829)
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayInitials:t-Cards--4cols:t-Cards--animRaiseCard'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select count(*) "CARD_INITIALS" ,  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido as "CARD_TITLE"/*,c.puesto, descripcion */ ,'' '' as"CARD_SUBTEXT",',
''' '' as"CARD_TEXT" ,''u-color-3''  "CARD_COLOR"',
'from  tordenserv  a inner join empleado b on a.cdasignado=b.empleado ',
'inner join puesto c on b.puesto=c.puesto',
'where estado=''A'' and fecha_asignado is not null and cdasignado is not null and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''',
'                   and  cod_falla in (43,44) and',
' trunc(fecha_cierre) =trunc(sysdate) ',
' group by  cdasignado||'' '' || Nombre_Pila || '' ''|| primer_Apellido||'' ''||  segundo_apellido , c.puesto, descripcion order by 1 desc',
'',
''))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122268363658536063)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122911742223251405)
,p_query_column_id=>1
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'Card Initials'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122911445907251402)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'Card Title'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122911577286251403)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>2
,p_column_heading=>'Card Subtext'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122911666280251404)
,p_query_column_id=>4
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card Text'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122913099552251418)
,p_query_column_id=>5
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>5
,p_column_heading=>'Card Color'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123035856273583904)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(122252449059536041)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'BAHIA 1'
,p_page_mode=>'MODAL'
,p_step_title=>'OT'
,p_step_sub_title=>'OT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105710'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(122859187195498983)
,p_name=>'Report 1'
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'Select unidad, nmorden, dsrepara from  tordenserv  where estado=''A''  and  sistema in (9) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122276716239536078)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122859544384499014)
,p_query_column_id=>1
,p_column_alias=>'UNIDAD'
,p_column_display_sequence=>1
,p_column_heading=>'Unidad'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5497991212929718)
,p_query_column_id=>2
,p_column_alias=>'NMORDEN'
,p_column_display_sequence=>3
,p_column_heading=>'Nmorden'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122859932454499015)
,p_query_column_id=>3
,p_column_alias=>'DSREPARA'
,p_column_display_sequence=>2
,p_column_heading=>'Dsrepara'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'BAHIA 2'
,p_page_mode=>'MODAL'
,p_step_title=>'BAHIA 2'
,p_step_sub_title=>'BAHIA 2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105750'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(245733223856118213)
,p_name=>'BAHIA 2'
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'Select unidad, dsrepara, nmorden from  tordenserv  where estado=''A''  and  cod_falla in (43,44) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01'' '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122276716239536078)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122874771049619263)
,p_query_column_id=>1
,p_column_alias=>'UNIDAD'
,p_column_display_sequence=>1
,p_column_heading=>'Unidad'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122875083284619266)
,p_query_column_id=>2
,p_column_alias=>'DSREPARA'
,p_column_display_sequence=>2
,p_column_heading=>'Dsrepara'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5498011327929719)
,p_query_column_id=>3
,p_column_alias=>'NMORDEN'
,p_column_display_sequence=>3
,p_column_heading=>'Nmorden'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'BAHIA 3'
,p_page_mode=>'MODAL'
,p_step_title=>'BAHIA 3'
,p_step_sub_title=>'BAHIA 3'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105838'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(245736546131131863)
,p_name=>'BAHIA 3'
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'Select unidad, dsrepara,nmorden from  tordenserv  where estado=''A''  and  sistema in (7,5,2,16) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122276716239536078)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122878091114632888)
,p_query_column_id=>1
,p_column_alias=>'UNIDAD'
,p_column_display_sequence=>1
,p_column_heading=>'Unidad'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122878479516632889)
,p_query_column_id=>2
,p_column_alias=>'DSREPARA'
,p_column_display_sequence=>2
,p_column_heading=>'REPARACION'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5498262686929721)
,p_query_column_id=>3
,p_column_alias=>'NMORDEN'
,p_column_display_sequence=>3
,p_column_heading=>'Nmorden'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'BAHIA 4'
,p_page_mode=>'MODAL'
,p_step_title=>'BAHIA 4'
,p_step_sub_title=>'BAHIA 4'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105851'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(368615847735769630)
,p_name=>'BAHIA 4'
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'Select unidad, dsrepara,nmorden from  tordenserv  where estado=''A''  and  sistema in (4,8,1) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122276716239536078)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122880040970637772)
,p_query_column_id=>1
,p_column_alias=>'UNIDAD'
,p_column_display_sequence=>1
,p_column_heading=>'Unidad'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122880479012637772)
,p_query_column_id=>2
,p_column_alias=>'DSREPARA'
,p_column_display_sequence=>2
,p_column_heading=>'Dsrepara'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5498366619929722)
,p_query_column_id=>3
,p_column_alias=>'NMORDEN'
,p_column_display_sequence=>3
,p_column_heading=>'Nmorden'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'BAHIA 5'
,p_page_mode=>'MODAL'
,p_step_title=>'BAHIA 5'
,p_step_sub_title=>'BAHIA 5'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220225105820'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(491497217721410861)
,p_name=>'BAHIA 5'
,p_template=>wwv_flow_api.id(122252449059536041)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'Select unidad, dsrepara,nmorden from  tordenserv  where estado=''A''  and  sistema in (6) and taller not in (13,14,15,16,17,18,20) and cddelegacion=''01''  '
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(122276716239536078)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122882059316641235)
,p_query_column_id=>1
,p_column_alias=>'UNIDAD'
,p_column_display_sequence=>1
,p_column_heading=>'Unidad'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(122882411298641237)
,p_query_column_id=>2
,p_column_alias=>'DSREPARA'
,p_column_display_sequence=>2
,p_column_heading=>'Dsrepara'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5498127938929720)
,p_query_column_id=>3
,p_column_alias=>'NMORDEN'
,p_column_display_sequence=>3
,p_column_heading=>'Nmorden'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(122326502990536220)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Dashboard Taller - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(122212530950535942)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211025150841'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122330794726536318)
,p_plug_name=>'Dashboard Taller'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(122251967139536039)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122335411230536365)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(122330794726536318)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(122230993681535989)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(122333569324536361)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(122330794726536318)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(122304732604536131)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122331191938536331)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(122330794726536318)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(122303961538536120)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122331524295536334)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(122330794726536318)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(122303961538536120)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(122332641445536353)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(122330794726536318)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(122331843124536336)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(122303961538536120)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122334304623536364)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122333950375536362)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122335144343536364)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(122334775588536364)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
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
