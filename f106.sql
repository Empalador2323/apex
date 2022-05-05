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
,p_default_application_id=>106
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 106 - TICKET
--
-- Application Export:
--   Application:     106
--   Name:            TICKET
--   Date and Time:   12:09 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                     10
--     Items:                   31
--     Validations:              3
--     Processes:               10
--     Regions:                 12
--     Buttons:                  8
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,106)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'TICKET')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'106')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'8F7932FAB343DC0B323C8031F084E29685F101DE07C7133F6D5CC412A8F69CE6'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2022.02.22.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(12657230659261567)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:TICKET'
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
,p_substitution_value_01=>'TICKET'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220323163329'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12522824269201279)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12653230974201454)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12679528932600765)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'TICKET'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-credit-card'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12715030695922748)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'RP'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(12642836344201389)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12654864670201464)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12655370102201464)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(12654864670201464)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(12655704638201464)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(12654864670201464)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13066582481229343)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Inicio'
,p_list_item_link_target=>'f?p=112:1:&SESSION.::&DEBUG.'||wwv_flow.LF||
''
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/card
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(13068194898252257)
,p_name=>'CARD'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13068708291252259)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'TICKET'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-credit-card'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(13069131672252260)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'RP'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-text-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
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
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223324542464243222F3E3C672069643D2269636F6E73223E3C706174682063';
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
 p_id=>wwv_flow_api.id(12644294167201415)
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
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233245424642433B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(12644504198201417)
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
 p_id=>wwv_flow_api.id(12519953057201271)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12520294637201273)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12520556293201273)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12520882135201273)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12521146792201273)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12521478860201273)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12521789026201275)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(12792363914312970)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'PLUGIN_ORACOOLAPEX.TIMEDROPPER'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'h:mm a'
,p_attribute_04=>'N'
,p_attribute_05=>'fadeIn'
,p_attribute_06=>'vita'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(12645892898201418)
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
 p_id=>wwv_flow_api.id(12648406534201440)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(12648406534201440)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(12648890541201442)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(12646497020201421)
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
 p_id=>wwv_flow_api.id(12522338519201278)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(12522502148201278)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(12523100015201290)
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
 p_id=>wwv_flow_api.id(12523498845201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12523705536201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12524037955201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12524312483201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12524651469201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12524921019201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12525234085201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12525505226201298)
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
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
 p_id=>wwv_flow_api.id(12525935455201304)
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
 p_id=>wwv_flow_api.id(12526255640201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12526539174201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12526829163201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12527146747201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12527417364201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12527723195201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12528049350201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12528323576201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12528622941201304)
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
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
 p_id=>wwv_flow_api.id(12529020822201304)
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
 p_id=>wwv_flow_api.id(12529366290201304)
,p_page_template_id=>wwv_flow_api.id(12529020822201304)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12529657158201306)
,p_page_template_id=>wwv_flow_api.id(12529020822201304)
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
 p_id=>wwv_flow_api.id(12529896959201306)
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
 p_id=>wwv_flow_api.id(12530181037201306)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12530443540201306)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12530758148201306)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12531062748201306)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12531393083201307)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12531625799201307)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12531930961201307)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12532294151201307)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12532520818201307)
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
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
 p_id=>wwv_flow_api.id(12532998131201307)
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
 p_id=>wwv_flow_api.id(12533201704201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12533543326201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12533818974201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12534120323201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12534414597201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12534790115201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12535023114201307)
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
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
 p_id=>wwv_flow_api.id(12535464304201307)
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
 p_id=>wwv_flow_api.id(12535782449201307)
,p_page_template_id=>wwv_flow_api.id(12535464304201307)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12536098962201307)
,p_page_template_id=>wwv_flow_api.id(12535464304201307)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12536386327201309)
,p_page_template_id=>wwv_flow_api.id(12535464304201307)
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
 p_id=>wwv_flow_api.id(12536986631201309)
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
 p_id=>wwv_flow_api.id(12537257466201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12537564028201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12537813940201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12538199268201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12538448760201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12538722581201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12539000588201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12539341642201309)
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
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
 p_id=>wwv_flow_api.id(12539705249201309)
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
 p_id=>wwv_flow_api.id(12540055567201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12540317041201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12540641546201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12540932127201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12541237556201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12541597427201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12541843370201310)
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
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
 p_id=>wwv_flow_api.id(12542245829201310)
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
 p_id=>wwv_flow_api.id(12542592749201310)
,p_page_template_id=>wwv_flow_api.id(12542245829201310)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12542886126201310)
,p_page_template_id=>wwv_flow_api.id(12542245829201310)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(12543142914201310)
,p_page_template_id=>wwv_flow_api.id(12542245829201310)
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
 p_id=>wwv_flow_api.id(12621131087201365)
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
 p_id=>wwv_flow_api.id(12621206114201367)
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
 p_id=>wwv_flow_api.id(12621340127201367)
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
 p_id=>wwv_flow_api.id(12543748415201312)
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
 p_id=>wwv_flow_api.id(12544036654201315)
,p_plug_template_id=>wwv_flow_api.id(12543748415201312)
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
 p_id=>wwv_flow_api.id(12547405742201318)
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
 p_id=>wwv_flow_api.id(12547669477201318)
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
 p_id=>wwv_flow_api.id(12547987609201318)
,p_plug_template_id=>wwv_flow_api.id(12547669477201318)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12548282909201320)
,p_plug_template_id=>wwv_flow_api.id(12547669477201318)
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
 p_id=>wwv_flow_api.id(12548482067201320)
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
 p_id=>wwv_flow_api.id(12548795831201320)
,p_plug_template_id=>wwv_flow_api.id(12548482067201320)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12549041902201320)
,p_plug_template_id=>wwv_flow_api.id(12548482067201320)
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
 p_id=>wwv_flow_api.id(12550666442201320)
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
 p_id=>wwv_flow_api.id(12550989745201321)
,p_plug_template_id=>wwv_flow_api.id(12550666442201320)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12551299464201321)
,p_plug_template_id=>wwv_flow_api.id(12550666442201320)
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
 p_id=>wwv_flow_api.id(12557848533201325)
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
 p_id=>wwv_flow_api.id(12558129721201325)
,p_plug_template_id=>wwv_flow_api.id(12557848533201325)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12558458721201325)
,p_plug_template_id=>wwv_flow_api.id(12557848533201325)
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
 p_id=>wwv_flow_api.id(12562481775201326)
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
 p_id=>wwv_flow_api.id(12564211764201328)
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
 p_id=>wwv_flow_api.id(12564560723201328)
,p_plug_template_id=>wwv_flow_api.id(12564211764201328)
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
 p_id=>wwv_flow_api.id(12565755480201328)
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
 p_id=>wwv_flow_api.id(12566004641201328)
,p_plug_template_id=>wwv_flow_api.id(12565755480201328)
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
 p_id=>wwv_flow_api.id(12567820121201328)
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
 p_id=>wwv_flow_api.id(12568426359201329)
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
 p_id=>wwv_flow_api.id(12568730156201329)
,p_plug_template_id=>wwv_flow_api.id(12568426359201329)
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
 p_id=>wwv_flow_api.id(12568946948201329)
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
 p_id=>wwv_flow_api.id(12569221842201329)
,p_plug_template_id=>wwv_flow_api.id(12568946948201329)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12569514819201329)
,p_plug_template_id=>wwv_flow_api.id(12568946948201329)
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
 p_id=>wwv_flow_api.id(12575796542201332)
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
 p_id=>wwv_flow_api.id(12576009833201332)
,p_plug_template_id=>wwv_flow_api.id(12575796542201332)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(12576306898201332)
,p_plug_template_id=>wwv_flow_api.id(12575796542201332)
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
 p_id=>wwv_flow_api.id(12578357641201334)
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
 p_id=>wwv_flow_api.id(12579350748201334)
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
 p_id=>wwv_flow_api.id(12579603572201334)
,p_plug_template_id=>wwv_flow_api.id(12579350748201334)
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
 p_id=>wwv_flow_api.id(12600044106201348)
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
 p_id=>wwv_flow_api.id(12604026946201351)
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
 p_id=>wwv_flow_api.id(12609070181201353)
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
 p_id=>wwv_flow_api.id(12610685551201354)
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
 p_id=>wwv_flow_api.id(12613071488201354)
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
 p_id=>wwv_flow_api.id(12614095565201356)
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
 p_id=>wwv_flow_api.id(12614406109201356)
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
 p_id=>wwv_flow_api.id(12614637437201357)
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
 p_id=>wwv_flow_api.id(12615096164201359)
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
 p_id=>wwv_flow_api.id(12616607590201359)
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
 p_id=>wwv_flow_api.id(12617660044201360)
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
 p_id=>wwv_flow_api.id(12619207659201360)
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
 p_id=>wwv_flow_api.id(12580670392201335)
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
 p_id=>wwv_flow_api.id(12580807977201337)
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
 p_id=>wwv_flow_api.id(12584819571201340)
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
 p_id=>wwv_flow_api.id(12589667128201342)
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
 p_id=>wwv_flow_api.id(12590435745201342)
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
 p_id=>wwv_flow_api.id(12593022211201343)
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
 p_id=>wwv_flow_api.id(12593290890201343)
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
 p_id=>wwv_flow_api.id(12593290890201343)
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
 p_id=>wwv_flow_api.id(12595821625201345)
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
 p_id=>wwv_flow_api.id(12596227468201346)
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
 p_id=>wwv_flow_api.id(12598245873201346)
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
 p_id=>wwv_flow_api.id(12620450182201362)
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
 p_id=>wwv_flow_api.id(12620533380201364)
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
 p_id=>wwv_flow_api.id(12620663113201364)
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
 p_id=>wwv_flow_api.id(12620705671201364)
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
 p_id=>wwv_flow_api.id(12620866309201364)
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
 p_id=>wwv_flow_api.id(12620963324201364)
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
 p_id=>wwv_flow_api.id(12621057710201365)
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
 p_id=>wwv_flow_api.id(12622056690201368)
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
 p_id=>wwv_flow_api.id(12622296334201373)
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
 p_id=>wwv_flow_api.id(12622100285201370)
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
 p_id=>wwv_flow_api.id(12623403731201379)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(12539705249201309)
,p_default_dialog_template=>wwv_flow_api.id(12535464304201307)
,p_error_template=>wwv_flow_api.id(12529020822201304)
,p_printer_friendly_template=>wwv_flow_api.id(12539705249201309)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(12529020822201304)
,p_default_button_template=>wwv_flow_api.id(12621206114201367)
,p_default_region_template=>wwv_flow_api.id(12568946948201329)
,p_default_chart_template=>wwv_flow_api.id(12568946948201329)
,p_default_form_template=>wwv_flow_api.id(12568946948201329)
,p_default_reportr_template=>wwv_flow_api.id(12568946948201329)
,p_default_tabform_template=>wwv_flow_api.id(12568946948201329)
,p_default_wizard_template=>wwv_flow_api.id(12568946948201329)
,p_default_menur_template=>wwv_flow_api.id(12578357641201334)
,p_default_listr_template=>wwv_flow_api.id(12568946948201329)
,p_default_irr_template=>wwv_flow_api.id(12567820121201328)
,p_default_report_template=>wwv_flow_api.id(12593290890201343)
,p_default_label_template=>wwv_flow_api.id(12620705671201364)
,p_default_menu_template=>wwv_flow_api.id(12622056690201368)
,p_default_calendar_template=>wwv_flow_api.id(12622100285201370)
,p_default_list_template=>wwv_flow_api.id(12609070181201353)
,p_default_nav_list_template=>wwv_flow_api.id(12616607590201359)
,p_default_top_nav_list_temp=>wwv_flow_api.id(12616607590201359)
,p_default_side_nav_list_temp=>wwv_flow_api.id(12614637437201357)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(12548482067201320)
,p_default_dialogr_template=>wwv_flow_api.id(12547405742201318)
,p_default_option_label=>wwv_flow_api.id(12620705671201364)
,p_default_required_label=>wwv_flow_api.id(12621057710201365)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(12614406109201356)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.2/')
,p_files_version=>62
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
 p_id=>wwv_flow_api.id(12622484094201376)
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
 p_id=>wwv_flow_api.id(12622619413201376)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(12622807641201376)
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
 p_id=>wwv_flow_api.id(12623013912201376)
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
 p_id=>wwv_flow_api.id(12623220447201376)
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
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12544521192201317)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12544932168201318)
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
 p_id=>wwv_flow_api.id(12545507345201318)
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
 p_id=>wwv_flow_api.id(12545970643201318)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12549370749201320)
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
 p_id=>wwv_flow_api.id(12549726940201320)
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
 p_id=>wwv_flow_api.id(12551570866201321)
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
 p_id=>wwv_flow_api.id(12552363430201321)
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
 p_id=>wwv_flow_api.id(12553555538201321)
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
 p_id=>wwv_flow_api.id(12554731971201323)
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
 p_id=>wwv_flow_api.id(12555162696201323)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12557115469201325)
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
 p_id=>wwv_flow_api.id(12560580417201326)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12562983171201326)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12563745683201326)
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
 p_id=>wwv_flow_api.id(12564825732201328)
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
 p_id=>wwv_flow_api.id(12566748480201328)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12576641831201332)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12577044834201332)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12577814432201334)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12579972238201334)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12581179117201339)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12581564233201339)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12583559824201339)
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
 p_id=>wwv_flow_api.id(12585372288201340)
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
 p_id=>wwv_flow_api.id(12587197861201340)
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
 p_id=>wwv_flow_api.id(12587993877201340)
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
 p_id=>wwv_flow_api.id(12589981790201342)
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
 p_id=>wwv_flow_api.id(12591725356201343)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12593562301201345)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12594137495201345)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12594599712201345)
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
 p_id=>wwv_flow_api.id(12596545608201346)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12600331606201350)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12601537716201351)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12602712652201351)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12604503700201351)
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
 p_id=>wwv_flow_api.id(12606524616201353)
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
 p_id=>wwv_flow_api.id(12607131136201353)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12610113051201354)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12611990648201354)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12617911169201360)
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
 p_id=>wwv_flow_api.id(12618566570201360)
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
 p_id=>wwv_flow_api.id(12619560486201360)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12621564345201367)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12623639769201381)
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
 p_id=>wwv_flow_api.id(12624002712201381)
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
 p_id=>wwv_flow_api.id(12625656519201381)
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
 p_id=>wwv_flow_api.id(12626032728201381)
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
 p_id=>wwv_flow_api.id(12627684600201382)
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
 p_id=>wwv_flow_api.id(12628096198201382)
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
 p_id=>wwv_flow_api.id(12629619165201384)
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
 p_id=>wwv_flow_api.id(12630073560201384)
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
 p_id=>wwv_flow_api.id(12631656274201384)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12632024246201384)
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
 p_id=>wwv_flow_api.id(12632412655201384)
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
 p_id=>wwv_flow_api.id(12632842939201384)
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
 p_id=>wwv_flow_api.id(12633237437201384)
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
 p_id=>wwv_flow_api.id(12633680691201384)
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
 p_id=>wwv_flow_api.id(12634043160201384)
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
 p_id=>wwv_flow_api.id(12635473218201385)
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
 p_id=>wwv_flow_api.id(12636844183201385)
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
 p_id=>wwv_flow_api.id(12637821926201385)
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
 p_id=>wwv_flow_api.id(12638207317201385)
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
 p_id=>wwv_flow_api.id(12638685275201385)
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
 p_id=>wwv_flow_api.id(12639016913201385)
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
 p_id=>wwv_flow_api.id(12639655464201385)
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
 p_id=>wwv_flow_api.id(12640284877201385)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(12640605761201385)
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
 p_id=>wwv_flow_api.id(12641051530201387)
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
 p_id=>wwv_flow_api.id(12641474758201387)
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
 p_id=>wwv_flow_api.id(12642283097201387)
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
 p_id=>wwv_flow_api.id(12525835525201303)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12523100015201290)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12528908104201304)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12525935455201304)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12532849518201307)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12529896959201306)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12535330916201307)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12532998131201307)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12536614478201309)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12535464304201307)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12536841984201309)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(12535464304201307)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12539639261201309)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12536986631201309)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12542163936201310)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(12539705249201309)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12543460014201310)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(12542245829201310)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12543647568201310)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(12542245829201310)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12544326595201315)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12544747941201317)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(12544521192201317)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12545159182201318)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(12544932168201318)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12545376476201318)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(12544932168201318)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12545726626201318)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(12545507345201318)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12546151422201318)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(12545970643201318)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12546368245201318)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(12544521192201317)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12546538852201318)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(12545507345201318)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12546721187201318)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(12544521192201317)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12546946502201318)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(12545507345201318)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12547169610201318)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(12544521192201317)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12547368423201318)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12543748415201312)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(12545970643201318)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12549522116201320)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12548482067201320)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12549974817201320)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(12548482067201320)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(12549726940201320)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12550162399201320)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(12548482067201320)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12550318885201320)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(12548482067201320)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(12549726940201320)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12550548109201320)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12548482067201320)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12551767126201321)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(12551570866201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12551932792201321)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(12551570866201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12552105335201321)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(12551570866201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12552565368201321)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12552766649201321)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12552998405201321)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12553149833201321)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(12551570866201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12553399032201321)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12553796575201323)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12553989844201323)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12554180463201323)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12554355857201323)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12554598217201323)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12554902355201323)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(12554731971201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12555370332201323)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12555162696201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12555578765201323)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12554731971201323)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12555736322201323)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12555963508201323)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12556118480201323)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12556383810201323)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12555162696201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12556596378201323)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12556714681201323)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12556987808201323)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12557325827201325)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(12557115469201325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12557581458201325)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(12557115469201325)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12557795982201325)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12550666442201320)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12558722439201325)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12558922159201325)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12559195652201325)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12559347592201326)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12559551670201326)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12559772093201326)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12559925542201326)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12560195681201326)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12560300984201326)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12560708255201326)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(12560580417201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12560954927201326)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(12560580417201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12561150226201326)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12555162696201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12561352321201326)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12561572466201326)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12561785827201326)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12561927061201326)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12562174201201326)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12555162696201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12562354287201326)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12557848533201325)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12562726364201326)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12562481775201326)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12563179598201326)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12562481775201326)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(12562983171201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12563384884201326)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12562481775201326)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(12562983171201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12563567533201326)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12562481775201326)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(12562983171201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12563978894201326)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12562481775201326)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(12563745683201326)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12564175526201326)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12562481775201326)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(12563745683201326)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12565009538201328)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12564211764201328)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(12564825732201328)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12565212956201328)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12564211764201328)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12565403971201328)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12564211764201328)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12565660295201328)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12564211764201328)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12566368443201328)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12566585105201328)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12566904344201328)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(12566748480201328)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12567146932201328)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(12566748480201328)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12567339646201328)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12567526976201328)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12567749092201328)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12565755480201328)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(12566748480201328)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12568186872201329)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12567820121201328)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12568398984201329)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12567820121201328)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12569828988201329)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12570060663201331)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12570265978201331)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12570477222201331)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(12552363430201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12570627632201331)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12570801941201331)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12571011403201331)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12571267024201331)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12571421369201331)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12571604002201331)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12571884664201331)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12572017679201331)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12572271756201331)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12572472805201332)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12572641713201332)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12572820462201332)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12573090530201332)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12573262557201332)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12573484071201332)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(12553555538201321)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12573627640201332)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(12554731971201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12573842912201332)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(12555162696201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12574088098201332)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(12554731971201323)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12574298988201332)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12574427008201332)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12574630984201332)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12574824093201332)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(12555162696201323)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12575089225201332)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12575219231201332)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12575456173201332)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12575658948201332)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(12568946948201329)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(12549370749201320)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12576887906201332)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12575796542201332)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(12576641831201332)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12577276297201332)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12575796542201332)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(12577044834201332)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12577406218201332)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12575796542201332)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12577618935201332)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12575796542201332)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(12577044834201332)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12578062386201334)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12575796542201332)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(12577814432201334)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12578261348201334)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12575796542201332)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(12577814432201334)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12578627252201334)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12578357641201334)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(12562983171201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12578876686201334)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12578357641201334)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12579071563201334)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(12578357641201334)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(12562983171201326)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12579239132201334)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12578357641201334)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12580175428201334)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(12579350748201334)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(12579972238201334)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12580329846201334)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12579350748201334)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(12579972238201334)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12580569232201334)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(12579350748201334)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12581356336201339)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(12581179117201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12581793553201339)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12581932629201339)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(12581179117201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12582166894201339)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12582334954201339)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(12581179117201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12582511948201339)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12582798096201339)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12582987289201339)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(12581179117201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12583152815201339)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(12581179117201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12583301377201339)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12583718885201339)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12583918000201339)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12584158104201339)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12584395628201339)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12584558925201339)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12584747274201339)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12580807977201337)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12585108207201340)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12585584367201340)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(12585372288201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12585776318201340)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12585989275201340)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(12585372288201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12586130831201340)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12586352802201340)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(12585372288201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12586570903201340)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12586745851201340)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12586995129201340)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12587320464201340)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(12587197861201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12587598304201340)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(12587197861201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12587765944201340)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12588126462201342)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(12587993877201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12588342831201342)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(12587993877201340)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12588528898201342)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12588704108201342)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12588985731201342)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12589134556201342)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(12585372288201340)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12589371379201342)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12589533469201342)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12584819571201340)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12590174779201342)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12589667128201342)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(12589981790201342)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12590324215201342)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12589667128201342)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(12589981790201342)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12590724221201343)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12590993565201343)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12591187577201343)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12591384944201343)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12591561502201343)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12591912254201343)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(12591725356201343)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12592159472201343)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12592319132201343)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12592539154201343)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12592789597201343)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12592976774201343)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(12590435745201342)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12593718147201345)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(12593562301201345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12593994034201345)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(12593562301201345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12594317206201345)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(12594137495201345)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12594795537201345)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(12594599712201345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12594907241201345)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(12594599712201345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12595111952201345)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(12594599712201345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12595302114201345)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(12594137495201345)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12595579081201345)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12595712559201345)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12593290890201343)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(12594599712201345)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12596198236201346)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(12595821625201345)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(12583559824201339)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12596748292201346)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12596968830201346)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12597165567201346)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12597302324201346)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12597524064201346)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12597777695201346)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12597937354201346)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12598185296201346)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12596227468201346)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12598509253201346)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12598786547201346)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12598964925201346)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12599123569201346)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12599321480201346)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(12581564233201339)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12599545939201346)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12599728446201346)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12599971366201346)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(12598245873201346)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(12596545608201346)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12600568775201350)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12600708554201351)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12600981433201351)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12601161674201351)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12601344955201351)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12601725529201351)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12601969331201351)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12602134504201351)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12602368955201351)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12602501601201351)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12602962492201351)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(12602712652201351)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12603103854201351)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(12602712652201351)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12603392739201351)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(12602712652201351)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12603579536201351)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12603712286201351)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(12602712652201351)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12603987086201351)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12600044106201348)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(12602712652201351)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12604378600201351)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12604786909201351)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(12604503700201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12604983221201351)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12605165639201353)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(12604503700201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12605334570201353)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12605530326201353)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(12604503700201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12605773168201353)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12605964182201353)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12606156751201353)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12606390833201353)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12606750360201353)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(12606524616201353)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12606922349201353)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12607371712201353)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(12607131136201353)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12607543609201353)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(12607131136201353)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12607780123201353)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12607914329201353)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12608198474201353)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12608397078201353)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(12604503700201351)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12608595710201353)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(12606524616201353)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12608741490201353)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12608901065201353)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12609377037201354)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12609070181201353)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12609579306201354)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12609070181201353)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12609741036201354)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12609070181201353)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12609929081201354)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12609070181201353)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12610386683201354)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12609070181201353)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(12610113051201354)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12610564708201354)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12609070181201353)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(12610113051201354)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12610927349201354)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12611161854201354)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12611364814201354)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12611587150201354)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12611780492201354)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12612174566201354)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(12611990648201354)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12612328139201354)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12612529196201354)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12612720431201354)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12612951373201354)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12610685551201354)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12613363603201356)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12613071488201354)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12613514077201356)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12613071488201354)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12613793424201356)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12613071488201354)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12613943535201356)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12613071488201354)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12614300599201356)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12614095565201356)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12614974821201359)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12614637437201357)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12615334031201359)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(12607131136201353)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12615541619201359)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(12600331606201350)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12615736116201359)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(12607131136201353)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12615975805201359)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(12611990648201354)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12616128685201359)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12616372801201359)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(12601537716201351)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12616559143201359)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(12615096164201359)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(12611990648201354)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12616986256201360)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12616607590201359)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12617148698201360)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12616607590201359)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12617378390201360)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12616607590201359)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12617557938201360)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(12616607590201359)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618179302201360)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(12617660044201360)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(12617911169201360)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618352797201360)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(12617660044201360)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(12617911169201360)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618787514201360)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12617660044201360)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(12618566570201360)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12618930059201360)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12617660044201360)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(12618566570201360)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619179756201360)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12617660044201360)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(12618566570201360)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619775847201360)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619207659201360)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(12619560486201360)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12619929279201360)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(12619207659201360)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(12619560486201360)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12620120942201360)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(12619207659201360)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(12619560486201360)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12620348988201360)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(12619207659201360)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12621744483201367)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(12621340127201367)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(12621564345201367)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12621971344201367)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(12621340127201367)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(12621564345201367)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12623837032201381)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(12623639769201381)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12624232383201381)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(12624002712201381)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12624415279201381)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(12623639769201381)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12624637071201381)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(12624002712201381)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12624800734201381)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(12623639769201381)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12625070456201381)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(12624002712201381)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12625220500201381)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(12623639769201381)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12625434306201381)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(12624002712201381)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12625873607201381)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(12625656519201381)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12626254630201381)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(12626032728201381)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12626414979201382)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(12625656519201381)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12626623861201382)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(12626032728201381)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12626803115201382)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(12625656519201381)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12627095377201382)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(12626032728201381)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12627225510201382)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(12625656519201381)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12627464090201382)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(12626032728201381)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12627898677201382)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(12627684600201382)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12628261417201382)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(12628096198201382)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12628499227201382)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(12627684600201382)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12628618277201382)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(12628096198201382)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12628806913201382)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(12627684600201382)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12629043013201382)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(12628096198201382)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12629237028201382)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(12627684600201382)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12629491358201382)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(12628096198201382)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12629884422201384)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(12629619165201384)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12630233304201384)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(12630073560201384)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12630402679201384)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(12629619165201384)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12630673882201384)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(12630073560201384)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12630863051201384)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(12629619165201384)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12631040986201384)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(12630073560201384)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12631201421201384)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(12629619165201384)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12631424841201384)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(12630073560201384)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12631890415201384)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(12631656274201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12632204906201384)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(12632024246201384)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12632674924201384)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(12632412655201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12633073917201384)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(12632842939201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12633487075201384)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(12633237437201384)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12633875053201384)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(12633680691201384)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12634277688201384)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(12634043160201384)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12634426621201384)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(12634043160201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12634682198201384)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(12632024246201384)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12634820948201384)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(12632412655201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12635088106201384)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(12632842939201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12635206247201385)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(12633237437201384)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12635663884201385)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(12635473218201385)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12635867139201385)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(12635473218201385)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12636077885201385)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(12635473218201385)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12636212474201385)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(12631656274201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12636444355201385)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(12634043160201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12636635287201385)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(12633680691201384)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12637033873201385)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(12636844183201385)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12637271778201385)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(12631656274201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12637440587201385)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(12633680691201384)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12637660716201385)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(12631656274201384)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12638013175201385)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(12637821926201385)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12638427740201385)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(12638207317201385)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12638853274201385)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(12638685275201385)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12639211399201385)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(12639016913201385)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12639426058201385)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(12639016913201385)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12639812046201385)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(12639655464201385)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12640050451201385)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(12638207317201385)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12640437983201385)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(12640284877201385)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12640879646201387)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(12640605761201385)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12641223123201387)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(12641051530201387)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12641603869201387)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(12641474758201387)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12641825015201387)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12642093141201387)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(12640284877201385)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(12642402788201387)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(12642283097201387)
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
 p_id=>wwv_flow_api.id(12646227754201420)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(12522031074201276)
,p_name=>'Application Express Authentication'
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
 p_id=>wwv_flow_api.id(12657230659261567)
,p_name=>'Copy of custom'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'custom'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/plugins/item_type/oracoolapex_timedropper
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(69777536282821115098)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'ORACOOLAPEX.TIMEDROPPER'
,p_display_name=>'Time Dropper'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','ORACOOLAPEX.TIMEDROPPER'),'')
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#server/lib/timedropper/timedropper#MIN#.js',
'#PLUGIN_FILES#server/js/apextimedropper#MIN#.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#server/lib/timedropper/timedropper#MIN#.css',
'#PLUGIN_FILES#server/css/apextimedropper#MIN#.css',
''))
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'procedure render_timedropper (',
'  p_item   in            apex_plugin.t_item,',
'  p_plugin in            apex_plugin.t_plugin,',
'  p_param  in            apex_plugin.t_item_render_param,',
'  p_result in out nocopy apex_plugin.t_item_render_result )',
'is',
'  l_logging              boolean;',
'  l_autoswitch           boolean;',
'  l_meridians            boolean;',
'  l_format               varchar2(7);',
'  l_mousewheel           boolean;',
'  l_init_animation       varchar2(8);',
'  l_set_current_time     boolean;',
'  l_primary_color        varchar2(7);',
'  l_text_color           varchar2(7);',
'  l_background_color     varchar2(7);',
'  l_border_color         varchar2(7);',
'  l_theme                varchar2(10);',
'  l_html                 varchar2(4000);',
'  --',
'  --Convert Yes/No To True/False BOOLEAN Type',
'  --',
'  function yn_to_tf ( p_yn  in varchar2 )',
'  return boolean',
'  is',
'  begin',
'    case when lower(p_yn) = ''y'' then return true;',
'    else return false;',
'    end case;',
'  end yn_to_tf;',
'begin',
'  --',
'  --Component-Level Custom Attributes',
'  --',
'  l_set_current_time  := yn_to_tf(p_item.attribute_01);',
'  --',
'  --Application-Level Custom Attributes',
'  --',
'  l_autoswitch        := yn_to_tf(p_plugin.attribute_01);',
'  l_meridians         := yn_to_tf(p_plugin.attribute_02);',
'  l_format            := sys.htf.escape_sc(p_plugin.attribute_03);',
'  l_mousewheel        := yn_to_tf(p_plugin.attribute_04);',
'  l_init_animation    := sys.htf.escape_sc(p_plugin.attribute_05);',
'  l_theme             := p_plugin.attribute_06;',
'  --',
'  --Add Theme CSS Files',
'  --',
'  case l_theme',
'    when ''vita_dark'' then',
'      l_primary_color     := ''#e6e6e6'';',
'      l_text_color        := ''#4d4d4d'';',
'      l_background_color  := ''#ffffff'';',
'      l_border_color      := ''#262629'';',
'    when ''vita_red'' then',
'      l_primary_color     := ''#da1b1b'';',
'      l_text_color        := ''#4d4d4d'';',
'      l_background_color  := ''#ffffff'';',
'      l_border_color      := ''#c31818'';',
'    when ''vita_slate'' then',
'      l_primary_color     := ''#505f6d'';',
'      l_text_color        := ''#4d4d4d'';',
'      l_background_color  := ''#ffffff'';',
'      l_border_color      := ''#45525e'';',
'    else',
'      l_primary_color     := ''#0572ce'';',
'      l_text_color        := ''#4d4d4d'';',
'      l_background_color  := ''#ffffff'';',
'      l_border_color      := ''#0465b5'';',
'  end case;',
'  --',
'  --Debug Mode',
'  --',
'  if apex_application.g_debug then',
'    apex_plugin_util.debug_page_item (',
'      p_plugin              => p_plugin,',
'      p_page_item           => p_item,',
'      p_value               => p_param.value,',
'      p_is_readonly         => p_param.is_readonly,',
'      p_is_printer_friendly => p_param.is_printer_friendly );',
'  end if;',
'  --',
'  --Printer Friendly Display',
'  --',
'  if p_param.is_printer_friendly then',
'    apex_plugin_util.print_display_only (',
'      p_item_name           => p_item.name,',
'      p_display_value       => p_param.value,',
'      p_show_line_breaks    => false,',
'      p_escape              => true,',
'      p_attributes          => p_item.element_attributes );',
'',
'    p_result.is_navigable := false;',
'  --',
'  --Read Only Display',
'  --',
'  elsif p_param.is_readonly then',
'    apex_plugin_util.print_hidden_if_readonly (',
'      p_item_name           => p_item.name,',
'      p_value               => p_param.value,',
'      p_is_readonly         => p_param.is_readonly,',
'      p_is_printer_friendly => p_param.is_printer_friendly );',
'',
'    p_result.is_navigable := false;',
'  else',
'    l_html := ''<input type="text" id="'' || p_item.name || ''" name="'' || p_item.name || ''" />'';',
'',
'    sys.htp.p(l_html);',
'',
'    --',
'    --Logging',
'    --',
'    if apex_application.g_debug then',
'      l_logging := true;',
'    else',
'      l_logging := false;',
'    end if;',
'',
'    apex_javascript.add_onload_code (',
'      p_code => ''apexTimeDropper.initTimeDropper('' ||',
'                   apex_javascript.add_value (',
'                       p_value     => p_item.name,',
'                       p_add_comma => true )      || ''{'' ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''autoswitch'',',
'                       p_value     => l_autoswitch,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''meridians'',',
'                       p_value     => l_meridians,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''format'',',
'                       p_value     => l_format,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''mousewheel'',',
'                       p_value     => l_mousewheel,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''initAnimation'',',
'                       p_value     => l_init_animation,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''setCurrentTime'',',
'                       p_value     => l_set_current_time,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''primaryColor'',',
'                       p_value     => l_primary_color,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''textColor'',',
'                       p_value     => l_text_color,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''backgroundColor'',',
'                       p_value     => l_background_color,',
'                       p_add_comma => true )       ||',
'                   apex_javascript.add_attribute (',
'                       p_name      => ''borderColor'',',
'                       p_value     => l_border_color,',
'                       p_add_comma => false )      || ''},'' ||',
'                   apex_javascript.add_value (',
'                       p_value     => l_logging,',
'                       p_add_comma => false ) || '');'' );',
'',
'    p_result.is_navigable := true;',
'  end if;',
'exception',
'  when others then',
'    raise;',
'end render_timedropper;'))
,p_api_version=>2
,p_render_function=>'render_timedropper'
,p_standard_attributes=>'VISIBLE:FORM_ELEMENT:SESSION_STATE:READONLY:SOURCE:ELEMENT:WIDTH:ELEMENT_OPTION:ICON'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0.1'
,p_about_url=>'https://github.com/OraCoolAPEX/apex-plugin-timedropper'
,p_files_version=>18
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69980898401754334595)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Auto Switch'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Automatically change hour-minute or minute-hour on mouseup/touchend.</p>',
'<p>Default: false</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69981012728997328722)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Meridians'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Set time in 12-hour clock in which the 24 hours of the day are divided into two periods.</p>',
'<p>Default: false</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69982280228119360256)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Format'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'h:mm a'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A time format string that timeDropper expects existing values to be in and will write times out it.</p>',
'<p>Default: h:mm a</p>',
'<p>',
'  Value   Description                       Result <br />',
'  H       24-hour format non-padded number  0-24   <br />',
'  h       12-hour format non-padded number  1-12   <br />',
'  HH      24-hour format padded number      00-24  <br />',
'  hh      12-hour format padded number      01-12  <br />',
'  m       Non-padded numeric minutes        1-59   <br />',
'  mm      padded numeric minutes            01-59  <br />',
'  a       lower case meridian               am-pm  <br />',
'  A       upper case meridian               AM-PM',
'</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69982354333079366067)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Mouse Wheel'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Enables time change using mousewheel.</p>',
'<p>Default: false</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69983439668224375462)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Init Animation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'fadeIn'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Animation Style to use when init timedropper. There are three available animation values: fadeIn, dropDown.</p>',
'<p>Default: fadeIn</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69983475014838362587)
,p_plugin_attribute_id=>wwv_flow_api.id(69983439668224375462)
,p_display_sequence=>10
,p_display_value=>'Fade In'
,p_return_value=>'fadeIn'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69983477056231363416)
,p_plugin_attribute_id=>wwv_flow_api.id(69983439668224375462)
,p_display_sequence=>20
,p_display_value=>'Drop Down'
,p_return_value=>'dropDown'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69984316798163400989)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Theme'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'vita'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'<p>Set the name of style that you have assigned on the stylesheet generated by the theme generator.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69984374761331402065)
,p_plugin_attribute_id=>wwv_flow_api.id(69984316798163400989)
,p_display_sequence=>10
,p_display_value=>'Vita'
,p_return_value=>'vita'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69984406435588389082)
,p_plugin_attribute_id=>wwv_flow_api.id(69984316798163400989)
,p_display_sequence=>20
,p_display_value=>'Vita-Dark'
,p_return_value=>'vita_dark'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69984407064312390065)
,p_plugin_attribute_id=>wwv_flow_api.id(69984316798163400989)
,p_display_sequence=>30
,p_display_value=>'Vita-Red'
,p_return_value=>'vita_red'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69984412564894390947)
,p_plugin_attribute_id=>wwv_flow_api.id(69984316798163400989)
,p_display_sequence=>40
,p_display_value=>'Vita-Slate'
,p_return_value=>'vita_slate'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69983813066844383798)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Set Current Time'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Automatically set current time by default. If set "false", the input "value" attribute is considered as main time value.</p>',
'<p>Default: true</p>'))
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(38843957743299353652)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_name=>'apex-timedropper-change'
,p_display_name=>'APEX Time Dropper - Change'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20466978205356472048656967687420497373756520696E204945203131202A2F0D0A2E74642D73656C656374207B0D0A20206865696768743A20333670783B0D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844941762021153980)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/css/apextimedropper.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E74642D73656C6563747B6865696768743A333670787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844942011908153982)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/css/apextimedropper.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20415045582054696D6544726F707065722046756E6374696F6E730D0A2F2F20417574686F723A20457269636B204469617A0D0A2F2F2056657273696F6E3A20312E302E310D0A0D0A2F2F476C6F62616C204E616D6573706163650D0A7661722061';
wwv_flow_api.g_varchar2_table(2) := '70657854696D6544726F70706572203D207B0D0A2020696E697454696D6544726F707065723A2066756E6374696F6E28704974656D49642C20704F7074696F6E732C20704C6F6767696E6729207B0D0A2020202076617220764F7074696F6E73203D2070';
wwv_flow_api.g_varchar2_table(3) := '4F7074696F6E733B0D0A2020202076617220764C6F6767696E67203D20704C6F6767696E673B0D0A2020202076617220764175746F737769746368203D20764F7074696F6E732E6175746F7377697463683B0D0A2020202076617220764D657269646961';
wwv_flow_api.g_varchar2_table(4) := '6E73203D20764F7074696F6E732E6D6572696469616E733B0D0A202020207661722076466F726D6174203D20764F7074696F6E732E666F726D61743B0D0A2020202076617220764D6F757365776865656C203D20764F7074696F6E732E6D6F7573657768';
wwv_flow_api.g_varchar2_table(5) := '65656C3B0D0A202020207661722076496E6974416E696D6174696F6E203D20764F7074696F6E732E696E6974416E696D6174696F6E3B0D0A20202020766172207653657443757272656E7454696D65203D20764F7074696F6E732E73657443757272656E';
wwv_flow_api.g_varchar2_table(6) := '7454696D653B0D0A2020202076617220765072696D617279436F6C6F72203D20764F7074696F6E732E7072696D617279436F6C6F723B0D0A20202020766172207654657874436F6C6F72203D20764F7074696F6E732E74657874436F6C6F723B0D0A2020';
wwv_flow_api.g_varchar2_table(7) := '202076617220764261636B67726F756E64436F6C6F72203D20764F7074696F6E732E6261636B67726F756E64436F6C6F723B0D0A202020207661722076426F72646572436F6C6F72203D20764F7074696F6E732E626F72646572436F6C6F723B0D0A0D0A';
wwv_flow_api.g_varchar2_table(8) := '2020202069662028764C6F6767696E6729207B0D0A202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E6175746F7377697463683A2027202B20764175746F737769746368293B0D0A';
wwv_flow_api.g_varchar2_table(9) := '202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E6D6572696469616E733A2027202B20764D6572696469616E73293B0D0A202020202020636F6E736F6C652E6C6F6728704974656D';
wwv_flow_api.g_varchar2_table(10) := '4964202B2027202D206170657854696D6544726F707065722E666F726D61743A2027202B2076466F726D6174293B0D0A202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E6D6F7573';
wwv_flow_api.g_varchar2_table(11) := '65776865656C3A2027202B20764D6F757365776865656C293B0D0A202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E696E6974416E696D6174696F6E3A2027202B2076496E697441';
wwv_flow_api.g_varchar2_table(12) := '6E696D6174696F6E293B0D0A202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E73657443757272656E7454696D653A2027202B207653657443757272656E7454696D65293B0D0A20';
wwv_flow_api.g_varchar2_table(13) := '2020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E7072696D617279436F6C6F723A2027202B20765072696D617279436F6C6F72293B0D0A202020202020636F6E736F6C652E6C6F6728';
wwv_flow_api.g_varchar2_table(14) := '704974656D4964202B2027202D206170657854696D6544726F707065722E74657874436F6C6F723A2027202B207654657874436F6C6F72293B0D0A202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544';
wwv_flow_api.g_varchar2_table(15) := '726F707065722E6261636B67726F756E64436F6C6F723A2027202B20764261636B67726F756E64436F6C6F72293B0D0A202020202020636F6E736F6C652E6C6F6728704974656D4964202B2027202D206170657854696D6544726F707065722E626F7264';
wwv_flow_api.g_varchar2_table(16) := '6572436F6C6F723A2027202B2076426F72646572436F6C6F72293B0D0A202020207D0D0A0D0A202020202428272327202B20704974656D4964292E74696D6544726F70706572287B0D0A202020202020226175746F73776974636822203A20764175746F';
wwv_flow_api.g_varchar2_table(17) := '7377697463682C0D0A202020202020226D6572696469616E7322203A20764D6572696469616E732C0D0A20202020202022666F726D617422203A2076466F726D61742C0D0A202020202020226D6F757365776865656C22203A20764D6F75736577686565';
wwv_flow_api.g_varchar2_table(18) := '6C2C0D0A20202020202022696E69745F616E696D6174696F6E22203A2076496E6974416E696D6174696F6E2C0D0A2020202020202273657443757272656E7454696D6522203A207653657443757272656E7454696D652C0D0A202020202020227072696D';
wwv_flow_api.g_varchar2_table(19) := '617279436F6C6F7222203A20765072696D617279436F6C6F722C0D0A2020202020202274657874436F6C6F7222203A207654657874436F6C6F722C0D0A202020202020226261636B67726F756E64436F6C6F7222203A20764261636B67726F756E64436F';
wwv_flow_api.g_varchar2_table(20) := '6C6F722C0D0A20202020202022626F72646572436F6C6F7222203A2076426F72646572436F6C6F720D0A202020207D293B0D0A0D0A20202020766172207654696D6544726F707065724964203D20202428272327202B20704974656D4964293B0D0A2020';
wwv_flow_api.g_varchar2_table(21) := '2020766172207654696D6544726F70706572496E646578203D2024287654696D6544726F707065724964292E696E64657828272E74642D696E70757427293B0D0A0D0A202020202428272374642D636C6F636B2D27202B207654696D6544726F70706572';
wwv_flow_api.g_varchar2_table(22) := '496E646578202B2027202E74642D6F7665726C617927292E6F6E2827746F756368656E64206D6F7573657570272C2066756E6374696F6E2829207B0D0A20202020202024287654696D6544726F707065724964292E747269676765722827617065782D74';
wwv_flow_api.g_varchar2_table(23) := '696D6564726F707065722D6368616E676527293B0D0A202020207D293B0D0A0D0A202020200D0A20207D0D0A7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844942412061153984)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/js/apextimedropper.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '766172206170657854696D6544726F707065723D7B696E697454696D6544726F707065723A66756E6374696F6E286F2C652C72297B76617220693D652C703D722C6E3D692E6175746F7377697463682C743D692E6D6572696469616E732C6C3D692E666F';
wwv_flow_api.g_varchar2_table(2) := '726D61742C613D692E6D6F757365776865656C2C6D3D692E696E6974416E696D6174696F6E2C733D692E73657443757272656E7454696D652C633D692E7072696D617279436F6C6F722C753D692E74657874436F6C6F722C673D692E6261636B67726F75';
wwv_flow_api.g_varchar2_table(3) := '6E64436F6C6F722C783D692E626F72646572436F6C6F723B70262628636F6E736F6C652E6C6F67286F2B22202D206170657854696D6544726F707065722E6175746F7377697463683A20222B6E292C636F6E736F6C652E6C6F67286F2B22202D20617065';
wwv_flow_api.g_varchar2_table(4) := '7854696D6544726F707065722E6D6572696469616E733A20222B74292C636F6E736F6C652E6C6F67286F2B22202D206170657854696D6544726F707065722E666F726D61743A20222B6C292C636F6E736F6C652E6C6F67286F2B22202D20617065785469';
wwv_flow_api.g_varchar2_table(5) := '6D6544726F707065722E6D6F757365776865656C3A20222B61292C636F6E736F6C652E6C6F67286F2B22202D206170657854696D6544726F707065722E696E6974416E696D6174696F6E3A20222B6D292C636F6E736F6C652E6C6F67286F2B22202D2061';
wwv_flow_api.g_varchar2_table(6) := '70657854696D6544726F707065722E73657443757272656E7454696D653A20222B73292C636F6E736F6C652E6C6F67286F2B22202D206170657854696D6544726F707065722E7072696D617279436F6C6F723A20222B63292C636F6E736F6C652E6C6F67';
wwv_flow_api.g_varchar2_table(7) := '286F2B22202D206170657854696D6544726F707065722E74657874436F6C6F723A20222B75292C636F6E736F6C652E6C6F67286F2B22202D206170657854696D6544726F707065722E6261636B67726F756E64436F6C6F723A20222B67292C636F6E736F';
wwv_flow_api.g_varchar2_table(8) := '6C652E6C6F67286F2B22202D206170657854696D6544726F707065722E626F72646572436F6C6F723A20222B7829292C24282223222B6F292E74696D6544726F70706572287B6175746F7377697463683A6E2C6D6572696469616E733A742C666F726D61';
wwv_flow_api.g_varchar2_table(9) := '743A6C2C6D6F757365776865656C3A612C696E69745F616E696D6174696F6E3A6D2C73657443757272656E7454696D653A732C7072696D617279436F6C6F723A632C74657874436F6C6F723A752C6261636B67726F756E64436F6C6F723A672C626F7264';
wwv_flow_api.g_varchar2_table(10) := '6572436F6C6F723A787D293B76617220643D24282223222B6F292C433D242864292E696E64657828222E74642D696E70757422293B2428222374642D636C6F636B2D222B432B22202E74642D6F7665726C617922292E6F6E2822746F756368656E64206D';
wwv_flow_api.g_varchar2_table(11) := '6F7573657570222C66756E6374696F6E28297B242864292E747269676765722822617065782D74696D6564726F707065722D6368616E676522297D297D7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844942797365153985)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/js/apextimedropper.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E74642D777261702C0A2E74642D77726170202A207B0A202020206D617267696E3A20303B0A2020202070616464696E673A20303B0A202020206C6973742D7374796C653A206E6F6E653B0A202020202D7765626B69742D626F782D73697A696E673A20';
wwv_flow_api.g_varchar2_table(2) := '696E697469616C2021696D706F7274616E743B0A202020202D6D6F7A2D626F782D73697A696E673A20696E697469616C2021696D706F7274616E743B0A20202020626F782D73697A696E673A20696E697469616C2021696D706F7274616E743B0A202020';
wwv_flow_api.g_varchar2_table(3) := '202D7765626B69742D7461702D686967686C696768742D636F6C6F723A207267626128302C20302C20302C2030293B0A7D0A2E74642D7772617020737667207B0A2020202077696474683A20313030253B0A7D0A2E74642D696E707574207B0A20202020';
wwv_flow_api.g_varchar2_table(4) := '637572736F723A20706F696E7465723B0A7D0A2E74642D77726170207B0A20202020646973706C61793A206E6F6E653B0A20202020666F6E742D66616D696C793A2073616E732D73657269663B0A20202020706F736974696F6E3A206162736F6C757465';
wwv_flow_api.g_varchar2_table(5) := '3B0A202020202D7765626B69742D757365722D73656C6563743A206E6F6E653B0A202020202D6D6F7A2D757365722D73656C6563743A206E6F6E653B0A202020202D6D732D757365722D73656C6563743A206E6F6E653B0A202020202D6F2D757365722D';
wwv_flow_api.g_varchar2_table(6) := '73656C6563743A206E6F6E653B0A20202020757365722D73656C6563743A206E6F6E653B0A202020206F75746C696E653A206E6F6E653B0A2020202077696474683A20313030253B0A202020206865696768743A20313030253B0A20202020746F703A20';
wwv_flow_api.g_varchar2_table(7) := '303B0A202020206C6566743A20303B0A202020207A2D696E6465783A20393939393B0A20202020636F6C6F723A20233464346434643B0A7D0A2E74642D6F7665726C6179207B0A20202020706F736974696F6E3A2066697865643B0A20202020746F703A';
wwv_flow_api.g_varchar2_table(8) := '20303B0A202020206C6566743A20303B0A2020202077696474683A20313030253B0A202020206865696768743A20313030253B0A7D0A2E74642D636C6F636B207B0A2020202077696474683A2031353670783B0A202020206865696768743A2031353670';
wwv_flow_api.g_varchar2_table(9) := '783B0A20202020626F726465722D7261646975733A2031353670783B0A20202020626F782D736861646F773A2030203020302031707820233139373743432C20302030203020387078207267626128302C20302C20302C20302E3035293B0A2020202070';
wwv_flow_api.g_varchar2_table(10) := '6F736974696F6E3A2072656C61746976653B0A202020206261636B67726F756E643A20234646463B0A202020206D617267696E3A2030206175746F3B0A20202020746578742D616C69676E3A2063656E7465723B0A202020206C696E652D686569676874';
wwv_flow_api.g_varchar2_table(11) := '3A2031353670783B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020206261636B67726F756E642D706F736974696F6E3A2063656E7465723B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A';
wwv_flow_api.g_varchar2_table(12) := '202020206261636B67726F756E642D73697A653A20636F7665723B0A7D0A2E74642D636C6F636B3A6265666F7265207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020636F6E74656E743A2022223B0A20202020746F703A202D';
wwv_flow_api.g_varchar2_table(13) := '313070783B0A202020206D617267696E2D6C6566743A202D313070783B0A202020206C6566743A203530253B0A2020202077696474683A20323070783B0A202020206865696768743A20323070783B0A202020207472616E73666F726D3A20726F746174';
wwv_flow_api.g_varchar2_table(14) := '65283435646567293B0A202020206261636B67726F756E643A20234646463B0A20202020626F726465722D6C6566743A2031707820736F6C696420233139373743433B0A20202020626F726465722D746F703A2031707820736F6C696420233139373743';
wwv_flow_api.g_varchar2_table(15) := '433B0A20202020626F726465722D746F702D6C6566742D7261646975733A203470783B0A7D0A2E74642D696E6974202E74642D646567207B0A202020202D7765626B69742D616E696D6174696F6E3A20736C6964652031732063756269632D62657A6965';
wwv_flow_api.g_varchar2_table(16) := '72282E372C20302C202E3137352C20312920312E327320696E66696E6974653B0A7D0A2E74642D737667207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20303B0A20202020626F74746F6D3A20303B0A20202020';
wwv_flow_api.g_varchar2_table(17) := '6C6566743A20303B0A2020202072696768743A20303B0A7D0A2E74642D7376672D32207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20313870783B0A202020206C6566743A20313870783B0A20202020626F7474';
wwv_flow_api.g_varchar2_table(18) := '6F6D3A20313870783B0A2020202072696768743A20313870783B0A7D0A2E74642D777261702E74642D73686F77207B0A20202020646973706C61793A20626C6F636B3B0A7D0A2E74642D646567207B0A202020206261636B67726F756E642D706F736974';
wwv_flow_api.g_varchar2_table(19) := '696F6E3A2063656E7465723B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E642D73697A653A203830253B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020';
wwv_flow_api.g_varchar2_table(20) := '207A2D696E6465783A20313B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20303B0A202020206C6566743A20303B0A2020202072696768743A20303B0A20202020626F74746F6D3A20303B0A7D0A2E74642D6D6564';
wwv_flow_api.g_varchar2_table(21) := '697269616E207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20303B0A202020206C6566743A20303B0A2020202072696768743A20303B0A20202020626F74746F6D3A20303B0A7D0A2E74642D6D6564697269616E';
wwv_flow_api.g_varchar2_table(22) := '207370616E207B0A2020202077696474683A20343070783B0A202020206865696768743A20343070783B0A20202020626F726465722D7261646975733A20343070783B0A202020206C696E652D6865696768743A20343070783B0A20202020746578742D';
wwv_flow_api.g_varchar2_table(23) := '616C69676E3A2063656E7465723B0A202020206D617267696E3A20303B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020207A2D696E6465783A20323B0A202020206C6566743A203530253B0A202020206D617267696E2D6C656674';
wwv_flow_api.g_varchar2_table(24) := '3A202D323070783B0A20202020666F6E742D73697A653A202E38656D3B0A202020206F7061636974793A20303B0A20202020666F6E742D7765696768743A20626F6C643B0A7D0A2E74642D6D6564697269616E202E74642D69636F6E2D616D207B0A2020';
wwv_flow_api.g_varchar2_table(25) := '2020746F703A20343070783B0A7D0A2E74642D6D6564697269616E202E74642D69636F6E2D706D207B0A20202020626F74746F6D3A20343070783B0A7D0A2E74642D6D6564697269616E202E74642D69636F6E2D616D2E74642D6F6E207B0A2020202074';
wwv_flow_api.g_varchar2_table(26) := '6F703A20323670783B0A202020206F7061636974793A20313B0A7D0A2E74642D6D6564697269616E202E74642D69636F6E2D706D2E74642D6F6E207B0A20202020626F74746F6D3A20323670783B0A202020206F7061636974793A20313B0A7D0A2E7464';
wwv_flow_api.g_varchar2_table(27) := '2D73656C656374207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A203470783B0A202020206C6566743A20333270783B0A2020202072696768743A20333270783B0A20202020626F74746F6D3A20323270783B0A7D';
wwv_flow_api.g_varchar2_table(28) := '0A2E74642D73656C65637420737667207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20303B0A202020206C6566743A20303B0A2020202072696768743A20303B0A7D0A2E74642D73656C6563743A616674657220';
wwv_flow_api.g_varchar2_table(29) := '7B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020206261636B67726F756E643A20234646463B0A2020202077696474683A20333670783B0A202020206865696768743A20333670783B0A20202020626F782D736861646F773A2030';
wwv_flow_api.g_varchar2_table(30) := '203020302031707820233139373743433B0A20202020626F726465722D7261646975733A20363070783B0A20202020746F703A202D313670783B0A202020206C6566743A203530253B0A202020206D617267696E2D6C6566743A202D313870783B0A2020';
wwv_flow_api.g_varchar2_table(31) := '2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20303B0A20202020636F6E74656E743A2022223B0A202020207472616E73666F726D3A20726F74617465282D3435646567293B0A20202020637572736F723A20706F696E7465723B';
wwv_flow_api.g_varchar2_table(32) := '0A7D0A2E74642D636C6F636B202E74642D74696D65207B0A20202020666F6E742D7765696768743A20626F6C643B0A20202020706F736974696F6E3A2072656C61746976653B0A7D0A2E74642D636C6F636B202E74642D74696D65207370616E207B0A20';
wwv_flow_api.g_varchar2_table(33) := '20202077696474683A20343270783B0A202020206865696768743A20343270783B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A20202020766572746963616C2D616C69676E3A206D6964646C653B0A202020206C696E652D6865';
wwv_flow_api.g_varchar2_table(34) := '696768743A20343270783B0A20202020746578742D616C69676E3A2063656E7465723B0A202020206D617267696E3A203670783B0A20202020706F736974696F6E3A2072656C61746976653B0A202020207A2D696E6465783A20323B0A20202020637572';
wwv_flow_api.g_varchar2_table(35) := '736F723A20706F696E7465723B0A20202020666F6E742D73697A653A2032656D3B0A20202020626F726465722D7261646975733A203670783B0A7D0A2E74642D636C6F636B202E74642D74696D65207370616E2E6F6E207B0A20202020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(36) := '233139373743433B0A7D0A2E74642D6E207B0A202020202D7765626B69742D7472616E736974696F6E3A20616C6C20302E34732063756269632D62657A696572282E372C20302C202E3137352C2031292030733B0A202020202D6D6F7A2D7472616E7369';
wwv_flow_api.g_varchar2_table(37) := '74696F6E3A20616C6C20302E34732063756269632D62657A696572282E372C20302C202E3137352C2031292030733B0A202020202D6D732D7472616E736974696F6E3A20616C6C20302E34732063756269632D62657A696572282E372C20302C202E3137';
wwv_flow_api.g_varchar2_table(38) := '352C2031292030733B0A202020207472616E736974696F6E3A20616C6C20302E34732063756269632D62657A696572282E372C20302C202E3137352C2031292030733B0A7D0A2E74642D6E32207B0A202020202D7765626B69742D7472616E736974696F';
wwv_flow_api.g_varchar2_table(39) := '6E3A20616C6C20302E3273206C696E6561722030733B0A202020202D6D6F7A2D7472616E736974696F6E3A20616C6C20302E3273206C696E6561722030733B0A202020202D6D732D7472616E736974696F6E3A20616C6C20302E3273206C696E65617220';
wwv_flow_api.g_varchar2_table(40) := '30733B0A202020207472616E736974696F6E3A20616C6C20302E3273206C696E6561722030733B0A7D0A2F2A0A0A402D7765626B69742D6B65796672616D65732074642D727562626572207B0A20203025207B0A202020202D7765626B69742D7472616E';
wwv_flow_api.g_varchar2_table(41) := '73666F726D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A20207D0A0A2020333025207B0A202020202D7765626B69742D7472616E73666F726D';
wwv_flow_api.g_varchar2_table(42) := '3A207363616C65336428312E32352C20302E37352C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E32352C20302E37352C2031293B0A20207D0A0A2020343025207B0A202020202D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(43) := '616E73666F726D3A207363616C65336428302E37352C20312E32352C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428302E37352C20312E32352C2031293B0A20207D0A0A2020353025207B0A202020202D7765';
wwv_flow_api.g_varchar2_table(44) := '626B69742D7472616E73666F726D3A207363616C65336428312E31352C20302E38352C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E31352C20302E38352C2031293B0A20207D0A0A2020363525207B0A';
wwv_flow_api.g_varchar2_table(45) := '202020202D7765626B69742D7472616E73666F726D3A207363616C653364282E39352C20312E30352C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C653364282E39352C20312E30352C2031293B0A20207D0A0A202037';
wwv_flow_api.g_varchar2_table(46) := '3525207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E30352C202E39352C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312E30352C202E39352C2031293B0A20207D';
wwv_flow_api.g_varchar2_table(47) := '0A0A202031303025207B0A202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A2020202020202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A20207D0A7D0A0A';
wwv_flow_api.g_varchar2_table(48) := '0A0A2E74642D727562626572207B0A092D7765626B69742D616E696D6174696F6E2D6E616D653A2074642D7275626265723B0A09616E696D6174696F6E2D6E616D653A2074642D7275626265723B0A092D7765626B69742D616E696D6174696F6E2D6475';
wwv_flow_api.g_varchar2_table(49) := '726174696F6E3A202E38733B0A09616E696D6174696F6E2D6475726174696F6E3A202E38733B0A092D7765626B69742D616E696D6174696F6E2D66696C6C2D6D6F64653A20626F74683B0A09616E696D6174696F6E2D66696C6C2D6D6F64653A20626F74';
wwv_flow_api.g_varchar2_table(50) := '683B0A7D0A0A2A2F0A0A402D7765626B69742D6B65796672616D65732074642D616C657274207B0A202020203025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020202020';
wwv_flow_api.g_varchar2_table(51) := '20207472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020207D0A202020203130252C0A20202020323025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C653364282E392C202E392C202E';
wwv_flow_api.g_varchar2_table(52) := '392920726F74617465336428302C20302C20312C202D33646567293B0A20202020202020207472616E73666F726D3A207363616C653364282E392C202E392C202E392920726F74617465336428302C20302C20312C202D33646567293B0A202020207D0A';
wwv_flow_api.g_varchar2_table(53) := '202020203330252C0A202020203530252C0A202020203730252C0A20202020393025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E312C20312E312C20312E312920726F74617465336428302C2030';
wwv_flow_api.g_varchar2_table(54) := '2C20312C2033646567293B0A20202020202020207472616E73666F726D3A207363616C65336428312E312C20312E312C20312E312920726F74617465336428302C20302C20312C2033646567293B0A202020207D0A202020203430252C0A202020203630';
wwv_flow_api.g_varchar2_table(55) := '252C0A20202020383025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E312C20312E312C20312E312920726F74617465336428302C20302C20312C202D33646567293B0A2020202020202020747261';
wwv_flow_api.g_varchar2_table(56) := '6E73666F726D3A207363616C65336428312E312C20312E312C20312E312920726F74617465336428302C20302C20312C202D33646567293B0A202020207D0A2020202031303025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(57) := '207363616C65336428312C20312C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020207D0A7D0A406B65796672616D65732074642D616C657274207B0A202020203025207B0A2020202020';
wwv_flow_api.g_varchar2_table(58) := '2020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020207D0A202020203130252C0A2020202032302520';
wwv_flow_api.g_varchar2_table(59) := '7B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C653364282E392C202E392C202E392920726F74617465336428302C20302C20312C202D33646567293B0A20202020202020207472616E73666F726D3A207363616C6533';
wwv_flow_api.g_varchar2_table(60) := '64282E392C202E392C202E392920726F74617465336428302C20302C20312C202D33646567293B0A202020207D0A202020203330252C0A202020203530252C0A202020203730252C0A20202020393025207B0A20202020202020202D7765626B69742D74';
wwv_flow_api.g_varchar2_table(61) := '72616E73666F726D3A207363616C65336428312E312C20312E312C20312E312920726F74617465336428302C20302C20312C2033646567293B0A20202020202020207472616E73666F726D3A207363616C65336428312E312C20312E312C20312E312920';
wwv_flow_api.g_varchar2_table(62) := '726F74617465336428302C20302C20312C2033646567293B0A202020207D0A202020203430252C0A202020203630252C0A20202020383025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E312C2031';
wwv_flow_api.g_varchar2_table(63) := '2E312C20312E312920726F74617465336428302C20302C20312C202D33646567293B0A20202020202020207472616E73666F726D3A207363616C65336428312E312C20312E312C20312E312920726F74617465336428302C20302C20312C202D33646567';
wwv_flow_api.g_varchar2_table(64) := '293B0A202020207D0A2020202031303025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312C20312C203129';
wwv_flow_api.g_varchar2_table(65) := '3B0A202020207D0A7D0A2E74642D616C657274207B0A202020202D7765626B69742D616E696D6174696F6E2D6E616D653A2074642D616C6572743B0A20202020616E696D6174696F6E2D6E616D653A2074642D616C6572743B0A202020202D7765626B69';
wwv_flow_api.g_varchar2_table(66) := '742D616E696D6174696F6E2D6475726174696F6E3A202E38733B0A20202020616E696D6174696F6E2D6475726174696F6E3A202E38733B0A202020202D7765626B69742D616E696D6174696F6E2D66696C6C2D6D6F64653A20626F74683B0A2020202061';
wwv_flow_api.g_varchar2_table(67) := '6E696D6174696F6E2D66696C6C2D6D6F64653A20626F74683B0A7D0A0A2F2A2065666665637473202A2F0A0A402D7765626B69742D6B65796672616D65732074642D626F756E6365207B0A202020203025207B0A20202020202020202D7765626B69742D';
wwv_flow_api.g_varchar2_table(68) := '7472616E73666F726D3A207363616C65336428312C20312C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020207D0A20202020323025207B0A20202020202020202D7765626B69742D7472';
wwv_flow_api.g_varchar2_table(69) := '616E73666F726D3A207363616C65336428312E32352C20302E37352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312E32352C20302E37352C2031293B0A202020207D0A20202020333025207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(70) := '2D7765626B69742D7472616E73666F726D3A207363616C65336428302E37352C20312E32352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428302E37352C20312E32352C2031293B0A202020207D0A2020202036302520';
wwv_flow_api.g_varchar2_table(71) := '7B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E31352C20302E38352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312E31352C20302E38352C2031293B0A20202020';
wwv_flow_api.g_varchar2_table(72) := '7D0A20202020373025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C653364282E39352C20312E30352C2031293B0A20202020202020207472616E73666F726D3A207363616C653364282E39352C20312E30352C20';
wwv_flow_api.g_varchar2_table(73) := '31293B0A202020207D0A20202020383025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E30352C202E39352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312E30';
wwv_flow_api.g_varchar2_table(74) := '352C202E39352C2031293B0A202020207D0A2020202031303025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A20202020202020207472616E73666F726D3A207363616C653364';
wwv_flow_api.g_varchar2_table(75) := '28312C20312C2031293B0A202020207D0A7D0A406B65796672616D65732074642D626F756E6365207B0A202020203025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A20202020';
wwv_flow_api.g_varchar2_table(76) := '202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020207D0A20202020323025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312E32352C20302E37352C2031293B0A';
wwv_flow_api.g_varchar2_table(77) := '20202020202020207472616E73666F726D3A207363616C65336428312E32352C20302E37352C2031293B0A202020207D0A20202020333025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C65336428302E37352C20';
wwv_flow_api.g_varchar2_table(78) := '312E32352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428302E37352C20312E32352C2031293B0A202020207D0A20202020363025207B0A20202020202020202D7765626B69742D7472616E73666F726D3A207363616C';
wwv_flow_api.g_varchar2_table(79) := '65336428312E31352C20302E38352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312E31352C20302E38352C2031293B0A202020207D0A20202020373025207B0A20202020202020202D7765626B69742D7472616E73';
wwv_flow_api.g_varchar2_table(80) := '666F726D3A207363616C653364282E39352C20312E30352C2031293B0A20202020202020207472616E73666F726D3A207363616C653364282E39352C20312E30352C2031293B0A202020207D0A20202020383025207B0A20202020202020202D7765626B';
wwv_flow_api.g_varchar2_table(81) := '69742D7472616E73666F726D3A207363616C65336428312E30352C202E39352C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312E30352C202E39352C2031293B0A202020207D0A2020202031303025207B0A20202020';
wwv_flow_api.g_varchar2_table(82) := '202020202D7765626B69742D7472616E73666F726D3A207363616C65336428312C20312C2031293B0A20202020202020207472616E73666F726D3A207363616C65336428312C20312C2031293B0A202020207D0A7D0A2E74642D626F756E6365207B0A20';
wwv_flow_api.g_varchar2_table(83) := '2020202D7765626B69742D616E696D6174696F6E2D6E616D653A2074642D626F756E63653B0A20202020616E696D6174696F6E2D6E616D653A2074642D626F756E63653B0A202020202D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A';
wwv_flow_api.g_varchar2_table(84) := '2031733B0A20202020616E696D6174696F6E2D6475726174696F6E3A2031733B0A7D0A402D7765626B69742D6B65796672616D65732074642D66616465696E207B0A202020203025207B0A20202020202020206F7061636974793A20303B0A202020207D';
wwv_flow_api.g_varchar2_table(85) := '0A2020202031303025207B0A20202020202020206F7061636974793A20313B0A202020207D0A7D0A406B65796672616D65732074642D66616465696E207B0A202020203025207B0A20202020202020206F7061636974793A20303B0A202020207D0A2020';
wwv_flow_api.g_varchar2_table(86) := '202031303025207B0A20202020202020206F7061636974793A20313B0A202020207D0A7D0A2E74642D66616465696E207B0A202020202D7765626B69742D616E696D6174696F6E2D6E616D653A2074642D66616465696E3B0A20202020616E696D617469';
wwv_flow_api.g_varchar2_table(87) := '6F6E2D6E616D653A2074642D66616465696E3B0A202020202D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A202E33733B0A20202020616E696D6174696F6E2D6475726174696F6E3A202E33733B0A7D0A402D7765626B69742D6B6579';
wwv_flow_api.g_varchar2_table(88) := '6672616D65732074642D666164656F7574207B0A202020203025207B0A20202020202020206F7061636974793A20313B0A202020207D0A2020202031303025207B0A20202020202020206F7061636974793A20303B0A202020207D0A7D0A406B65796672';
wwv_flow_api.g_varchar2_table(89) := '616D65732074642D666164656F7574207B0A202020203025207B0A20202020202020206F7061636974793A20313B0A202020207D0A2020202031303025207B0A20202020202020206F7061636974793A20303B0A202020207D0A7D0A2E74642D66616465';
wwv_flow_api.g_varchar2_table(90) := '6F7574207B0A202020202D7765626B69742D616E696D6174696F6E3A2074642D666164656F7574202E337320666F7277617264733B0A20202020616E696D6174696F6E3A2074642D666164656F7574202E337320666F7277617264733B0A7D0A402D7765';
wwv_flow_api.g_varchar2_table(91) := '626B69742D6B65796672616D65732074642D64726F70646F776E207B0A202020203025207B0A20202020202020206F7061636974793A20303B0A20202020202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C20';
wwv_flow_api.g_varchar2_table(92) := '2D31303070782C2030293B0A20202020202020207472616E73666F726D3A207472616E736C617465336428302C202D31303070782C2030293B0A202020207D0A2020202031303025207B0A20202020202020206F7061636974793A20313B0A2020202020';
wwv_flow_api.g_varchar2_table(93) := '2020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A20202020202020207472616E73666F726D3A206E6F6E653B0A202020207D0A7D0A406B65796672616D65732074642D64726F70646F776E207B0A202020203025207B0A2020202020';
wwv_flow_api.g_varchar2_table(94) := '2020206F7061636974793A20303B0A20202020202020202D7765626B69742D7472616E73666F726D3A207472616E736C617465336428302C202D31303070782C2030293B0A20202020202020207472616E73666F726D3A207472616E736C617465336428';
wwv_flow_api.g_varchar2_table(95) := '302C202D31303070782C2030293B0A202020207D0A2020202031303025207B0A20202020202020206F7061636974793A20313B0A20202020202020202D7765626B69742D7472616E73666F726D3A206E6F6E653B0A20202020202020207472616E73666F';
wwv_flow_api.g_varchar2_table(96) := '726D3A206E6F6E653B0A202020207D0A7D0A2E74642D64726F70646F776E207B0A202020202D7765626B69742D616E696D6174696F6E2D6E616D653A2074642D64726F70646F776E3B0A20202020616E696D6174696F6E2D6E616D653A2074642D64726F';
wwv_flow_api.g_varchar2_table(97) := '70646F776E3B0A202020202D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A202E35733B0A20202020616E696D6174696F6E2D6475726174696F6E3A202E35733B0A7D0A0A2E74642D62756C6C6574706F696E742C0A2E74642D62756C';
wwv_flow_api.g_varchar2_table(98) := '6C6574706F696E74206469762C0A2E74642D6C616E63657474652C0A2E74642D6C616E636574746520646976207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20303B0A202020206C6566743A20303B0A20202020';
wwv_flow_api.g_varchar2_table(99) := '626F74746F6D3A20303B0A2020202072696768743A20303B0A7D0A0A2E74642D62756C6C6574706F696E74206469763A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020636F6E74656E743A2022223B0A202020';
wwv_flow_api.g_varchar2_table(100) := '20746F703A20313470783B0A202020206C6566743A203530253B0A202020206D617267696E2D6C6566743A202D3270783B0A2020202077696474683A203470783B0A202020206865696768743A203470783B0A20202020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(101) := '3A20313070783B0A7D0A0A2E74642D6C616E6365747465207B0A20202020626F726465723A2032707820736F6C696420234446463346413B0A20202020626F726465722D7261646975733A20313030253B0A202020206D617267696E3A203670783B0A7D';
wwv_flow_api.g_varchar2_table(102) := '0A2E74642D6C616E6365747465206469763A6166746572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20323070783B0A202020206C6566743A203530253B0A202020206D617267696E2D6C6566743A202D3170';
wwv_flow_api.g_varchar2_table(103) := '783B0A2020202077696474683A203270783B0A20202020626F74746F6D3A203530253B0A20202020626F726465722D7261646975733A20313070783B0A202020206261636B67726F756E643A20234446463346413B0A20202020636F6E74656E743A2022';
wwv_flow_api.g_varchar2_table(104) := '223B0A7D0A2E74642D6C616E6365747465206469763A6C6173742D6368696C643A6166746572207B0A20202020746F703A20333670783B0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844943204933153988)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/lib/timedropper/timedropper.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E282429207B0A20202020242E666E2E74696D6544726F70706572203D2066756E6374696F6E286F7074696F6E732C2063616C6C6261636B466E6B29207B0A202020202020202072657475726E20242874686973292E656163682866';
wwv_flow_api.g_varchar2_table(2) := '756E6374696F6E2829207B0A0A2020202020202020202020207661720A202020202020202020202020202020205F74645F696E707574203D20242874686973292C0A202020202020202020202020202020205F74645F696E7075745F6F6E203D2066616C';
wwv_flow_api.g_varchar2_table(3) := '73652C0A202020202020202020202020202020205F74645F6D6F62696C65203D2066616C73652C0A202020202020202020202020202020205F74645F6E756D203D2066756E6374696F6E286E29207B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(4) := '72657475726E206E203C203130203F20273027202B206E203A206E0A202020202020202020202020202020207D2C0A202020202020202020202020202020205F74645F6964203D202428272E74642D636C6F636B27292E6C656E6774682C0A2020202020';
wwv_flow_api.g_varchar2_table(5) := '20202020202020202020205F74645F616C6572742C0A202020202020202020202020202020205F74645F6576656E74203D206E756C6C2C0A202020202020202020202020202020205F74645F6F7074696F6E73203D20242E657874656E64287B0A0A2020';
wwv_flow_api.g_varchar2_table(6) := '202020202020202020202020202020202020666F726D61743A2027683A6D6D2061272C0A20202020202020202020202020202020202020206175746F7377697463683A2066616C73652C0A20202020202020202020202020202020202020206D65726964';
wwv_flow_api.g_varchar2_table(7) := '69616E733A2066616C73652C0A20202020202020202020202020202020202020206D6F757365776865656C3A2066616C73652C0A202020202020202020202020202020202020202073657443757272656E7454696D653A20747275652C0A202020202020';
wwv_flow_api.g_varchar2_table(8) := '2020202020202020202020202020696E69745F616E696D6174696F6E3A202266616465696E222C0A20202020202020202020202020202020202020207072696D617279436F6C6F723A202223313937374343222C0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(9) := '2020202020626F72646572436F6C6F723A202223313937374343222C0A20202020202020202020202020202020202020206261636B67726F756E64436F6C6F723A202223464646222C0A202020202020202020202020202020202020202074657874436F';
wwv_flow_api.g_varchar2_table(10) := '6C6F723A202723353535270A0A202020202020202020202020202020207D2C206F7074696F6E73293B0A0A202020202020202020202020766172205F74645F636F6C6F72203D2066756E6374696F6E28636F6C2C20616D7429207B0A0A20202020202020';
wwv_flow_api.g_varchar2_table(11) := '20202020202020202076617220757365506F756E64203D2066616C73653B0A0A2020202020202020202020202020202069662028636F6C5B305D203D3D2022232229207B0A2020202020202020202020202020202020202020636F6C203D20636F6C2E73';
wwv_flow_api.g_varchar2_table(12) := '6C6963652831293B0A2020202020202020202020202020202020202020757365506F756E64203D20747275653B0A202020202020202020202020202020207D0A0A20202020202020202020202020202020766172206E756D203D207061727365496E7428';
wwv_flow_api.g_varchar2_table(13) := '636F6C2C203136293B0A0A202020202020202020202020202020207661722072203D20286E756D203E3E20313629202B20616D743B0A0A202020202020202020202020202020206966202872203E20323535292072203D203235353B0A20202020202020';
wwv_flow_api.g_varchar2_table(14) := '202020202020202020656C7365206966202872203C2030292072203D20303B0A0A202020202020202020202020202020207661722062203D2028286E756D203E3E20382920262030783030464629202B20616D743B0A0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(15) := '2020206966202862203E20323535292062203D203235353B0A20202020202020202020202020202020656C7365206966202862203C2030292062203D20303B0A0A202020202020202020202020202020207661722067203D20286E756D20262030783030';
wwv_flow_api.g_varchar2_table(16) := '3030464629202B20616D743B0A0A202020202020202020202020202020206966202867203E20323535292067203D203235353B0A20202020202020202020202020202020656C7365206966202867203C2030292067203D20303B0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(17) := '202020202020202072657475726E2028757365506F756E64203F20222322203A20222229202B202867207C202862203C3C203829207C202872203C3C20313629292E746F537472696E67283136293B0A0A2020202020202020202020207D3B0A0A202020';
wwv_flow_api.g_varchar2_table(18) := '2020202020202020205F74645F696E7075742E70726F70287B0A2020202020202020202020202020202027726561646F6E6C79273A20747275650A2020202020202020202020207D292E616464436C617373282774642D696E70757427293B0A0A202020';
wwv_flow_api.g_varchar2_table(19) := '202020202020202020242827626F647927292E617070656E6428273C64697620636C6173733D2274642D777261702074642D6E32222069643D2274642D636C6F636B2D27202B205F74645F6964202B2027223E3C64697620636C6173733D2274642D6F76';
wwv_flow_api.g_varchar2_table(20) := '65726C6179223E3C2F6469763E3C64697620636C6173733D2274642D636C6F636B2074642D696E6974223E3C64697620636C6173733D2274642D6465672074642D6E223E3C64697620636C6173733D2274642D73656C656374223E3C7376672076657273';
wwv_flow_api.g_varchar2_table(21) := '696F6E3D22312E312220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D2230';
wwv_flow_api.g_varchar2_table(22) := '7078222076696577426F783D22302030203130302033352E342220656E61626C652D6261636B67726F756E643D226E657720302030203130302033352E342220786D6C3A73706163653D227072657365727665223E3C673E3C706174682066696C6C3D22';
wwv_flow_api.g_varchar2_table(23) := '6E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D2231302220643D224D39';
wwv_flow_api.g_varchar2_table(24) := '382E312C33334338352E342C32312E352C36382E352C31342E352C35302C31342E355331342E362C32312E352C312E392C3333222F3E3C6C696E652066696C6C3D226E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C69';
wwv_flow_api.g_varchar2_table(25) := '6E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D22312E39222079313D223333222078323D22312E39222079323D2232382E36222F3E3C6C';
wwv_flow_api.g_varchar2_table(26) := '696E652066696C6C3D226E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D';
wwv_flow_api.g_varchar2_table(27) := '223130222078313D22312E39222079313D223333222078323D22362E33222079323D223333222F3E3C6C696E652066696C6C3D226E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E642220';
wwv_flow_api.g_varchar2_table(28) := '7374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D2239382E31222079313D223333222078323D2239332E37222079323D223333222F3E3C6C696E652066696C6C3D226E6F6E65';
wwv_flow_api.g_varchar2_table(29) := '22207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D2239382E3122';
wwv_flow_api.g_varchar2_table(30) := '2079313D223333222078323D2239382E31222079323D2232382E36222F3E3C2F673E3C2F7376673E3C2F6469763E3C2F6469763E3C64697620636C6173733D2274642D6D6564697269616E223E3C7370616E20636C6173733D2274642D69636F6E2D616D';
wwv_flow_api.g_varchar2_table(31) := '2074642D6E223E414D3C2F7370616E3E3C7370616E20636C6173733D2274642D69636F6E2D706D2074642D6E223E504D3C2F7370616E3E3C2F6469763E3C64697620636C6173733D2274642D6C616E6365747465223E3C6469763E3C2F6469763E3C6469';
wwv_flow_api.g_varchar2_table(32) := '763E3C2F6469763E3C2F6469763E3C64697620636C6173733D2274642D74696D65223E3C7370616E20636C6173733D226F6E223E3C2F7370616E3E3A3C7370616E3E3C2F7370616E3E3C2F6469763E3C2F6469763E3C2F6469763E27293B0A0A20202020';
wwv_flow_api.g_varchar2_table(33) := '20202020202020202428276865616427292E617070656E6428273C7374796C653E2374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D636C6F636B207B636F6C6F723A27202B205F74645F6F7074696F6E732E74657874436F6C6F72';
wwv_flow_api.g_varchar2_table(34) := '202B20273B6261636B67726F756E643A2027202B205F74645F6F7074696F6E732E6261636B67726F756E64436F6C6F72202B20273B20626F782D736861646F773A203020302030203170782027202B205F74645F6F7074696F6E732E626F72646572436F';
wwv_flow_api.g_varchar2_table(35) := '6C6F72202B20272C302030203020387078207267626128302C20302C20302C20302E3035293B207D202374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D636C6F636B202E74642D74696D65207370616E2E6F6E207B20636F6C6F72';
wwv_flow_api.g_varchar2_table(36) := '3A27202B205F74645F6F7074696F6E732E7072696D617279436F6C6F72202B20277D202374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D636C6F636B3A6265666F7265207B20626F726465722D636F6C6F723A2027202B205F7464';
wwv_flow_api.g_varchar2_table(37) := '5F6F7074696F6E732E626F72646572436F6C6F72202B20277D202374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D73656C6563743A6166746572207B20626F782D736861646F773A203020302030203170782027202B205F74645F';
wwv_flow_api.g_varchar2_table(38) := '6F7074696F6E732E626F72646572436F6C6F72202B2027207D202374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D636C6F636B3A6265666F72652C2374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D73656C';
wwv_flow_api.g_varchar2_table(39) := '6563743A6166746572207B6261636B67726F756E643A2027202B205F74645F6F7074696F6E732E6261636B67726F756E64436F6C6F72202B20273B7D202374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D6C616E6365747465207B';
wwv_flow_api.g_varchar2_table(40) := '626F726465723A2032707820736F6C69642027202B205F74645F6F7074696F6E732E7072696D617279436F6C6F72202B20273B206F7061636974793A302E317D2374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D6C616E63657474';
wwv_flow_api.g_varchar2_table(41) := '65206469763A6166746572207B206261636B67726F756E643A2027202B205F74645F6F7074696F6E732E7072696D617279436F6C6F72202B20273B7D202374642D636C6F636B2D27202B205F74645F6964202B2027202E74642D62756C6C6574706F696E';
wwv_flow_api.g_varchar2_table(42) := '74206469763A6166746572207B206261636B67726F756E643A27202B205F74645F6F7074696F6E732E7072696D617279436F6C6F72202B20273B206F7061636974793A302E317D3C2F7374796C653E27293B0A0A0A0A2020202020202020202020207661';
wwv_flow_api.g_varchar2_table(43) := '720A202020202020202020202020202020205F74645F636F6E7461696E6572203D202428272374642D636C6F636B2D27202B205F74645F6964292C0A202020202020202020202020202020205F74645F6F7665726C6179203D205F74645F636F6E746169';
wwv_flow_api.g_varchar2_table(44) := '6E65722E66696E6428272E74642D6F7665726C617927292C0A202020202020202020202020202020205F74645F63203D205F74645F636F6E7461696E65722E66696E6428272E74642D636C6F636B27293B0A0A0A2020202020202020202020205F74645F';
wwv_flow_api.g_varchar2_table(45) := '632E66696E64282773766727292E6174747228277374796C65272C20227374726F6B653A22202B205F74645F6F7074696F6E732E626F72646572436F6C6F72293B0A0A0A2020202020202020202020207661720A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(46) := '5F74645F696E69745F646567203D202D312C0A202020202020202020202020202020205F74645F6576656E745F646567203D20302C0A202020202020202020202020202020205F74645F776865656C5F646567203D20302C0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(47) := '20202020205F74645F682C0A202020202020202020202020202020205F74645F6D2C0A202020202020202020202020202020205F74645F646566696E655F646567203D2066756E6374696F6E2829207B0A0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(48) := '20207661720A2020202020202020202020202020202020202020202020206F203D205F74645F632E66696E6428272E74642D74696D65207370616E2E6F6E27292C0A20202020202020202020202020202020202020202020202076203D20706172736549';
wwv_flow_api.g_varchar2_table(49) := '6E74286F2E617474722827646174612D69642729293B0A0A2020202020202020202020202020202020202020696620286F2E696E6465782829203D3D20302920646567203D204D6174682E726F756E64282876202A20333630202F20323329293B0A2020';
wwv_flow_api.g_varchar2_table(50) := '202020202020202020202020202020202020656C736520646567203D204D6174682E726F756E64282876202A20333630202F20353929293B0A0A20202020202020202020202020202020202020205F74645F696E69745F646567203D202D313B0A202020';
wwv_flow_api.g_varchar2_table(51) := '20202020202020202020202020202020205F74645F6576656E745F646567203D206465673B0A20202020202020202020202020202020202020205F74645F776865656C5F646567203D206465673B0A0A202020202020202020202020202020207D2C0A20';
wwv_flow_api.g_varchar2_table(52) := '2020202020202020202020202020205F74645F726F746174696F6E203D2066756E6374696F6E2864656729207B0A0A20202020202020202020202020202020202020207661722074203D205F74645F632E66696E6428272E74642D74696D65207370616E';
wwv_flow_api.g_varchar2_table(53) := '2E6F6E27293B0A0A20202020202020202020202020202020202020207661722076616C7565203D20742E617474722827646174612D696427293B0A0A2020202020202020202020202020202020202020696620282176616C7565292076616C7565203D20';
wwv_flow_api.g_varchar2_table(54) := '303B0A0A20202020202020202020202020202020202020207661722068203D204D6174682E726F756E642828646567202A203233202F2033363029293B0A2020202020202020202020202020202020202020766172206D203D204D6174682E726F756E64';
wwv_flow_api.g_varchar2_table(55) := '2828646567202A203539202F2033363029293B0A0A202020202020202020202020202020202020202069662028742E696E6465782829203D3D203029207B0A0A202020202020202020202020202020202020202020202020742E61747472282764617461';
wwv_flow_api.g_varchar2_table(56) := '2D6964272C205F74645F6E756D286829293B0A0A202020202020202020202020202020202020202020202020696620285F74645F6F7074696F6E732E6D6572696469616E7329207B0A0A2020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(57) := '20206966202868203E3D2031322026262068203C20323429207B0A20202020202020202020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D69636F6E2D706D27292E616464436C617373282774642D6F6E';
wwv_flow_api.g_varchar2_table(58) := '27293B0A20202020202020202020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D69636F6E2D616D27292E72656D6F7665436C617373282774642D6F6E27293B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(59) := '2020202020202020202020207D20656C7365207B0A0A20202020202020202020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D69636F6E2D616D27292E616464436C617373282774642D6F6E27293B0A20';
wwv_flow_api.g_varchar2_table(60) := '202020202020202020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D69636F6E2D706D27292E72656D6F7665436C617373282774642D6F6E27293B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(61) := '202020202020207D0A0A202020202020202020202020202020202020202020202020202020206966202868203E203132292068203D2068202D2031323B0A202020202020202020202020202020202020202020202020202020206966202868203D3D2030';
wwv_flow_api.g_varchar2_table(62) := '292068203D2031323B0A0A2020202020202020202020202020202020202020202020207D0A0A202020202020202020202020202020202020202020202020742E74657874285F74645F6E756D286829293B0A0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(63) := '2020207D20656C7365207B0A202020202020202020202020202020202020202020202020742E617474722827646174612D6964272C205F74645F6E756D286D29292E74657874285F74645F6E756D286D29293B0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(64) := '202020207D0A0A20202020202020202020202020202020202020205F74645F776865656C5F646567203D206465673B0A20202020202020202020202020202020202020205F74645F632E66696E6428272E74642D64656727292E63737328277472616E73';
wwv_flow_api.g_varchar2_table(65) := '666F726D272C2027726F746174652827202B202864656729202B20276465672927293B0A0A202020202020202020202020202020202020202069662028742E696E6465782829203D3D203029207B0A202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(66) := '2020207661722063203D204D6174682E726F756E64282868202A20333630202F20313229293B0A2020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D6C616E6365747465206469763A6C61737427292E63';
wwv_flow_api.g_varchar2_table(67) := '737328277472616E73666F726D272C2027726F746174652827202B20286329202B20276465672927293B0A20202020202020202020202020202020202020207D20656C7365207B0A2020202020202020202020202020202020202020202020205F74645F';
wwv_flow_api.g_varchar2_table(68) := '632E66696E6428272E74642D6C616E6365747465206469763A666972737427292E63737328277472616E73666F726D272C2027726F746174652827202B202864656729202B20276465672927293B0A20202020202020202020202020202020202020207D';
wwv_flow_api.g_varchar2_table(69) := '0A0A20202020202020202020202020202020202020207661720A2020202020202020202020202020202020202020202020205F74645F68203D205F74645F632E66696E6428272E74642D74696D65207370616E3A666972737427292E6174747228276461';
wwv_flow_api.g_varchar2_table(70) := '74612D696427292C0A2020202020202020202020202020202020202020202020205F74645F6D203D205F74645F632E66696E6428272E74642D74696D65207370616E3A6C61737427292E617474722827646174612D696427293B0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(71) := '202020202020202020202020696620284D6174682E726F756E64285F74645F6829203E3D203132202626204D6174682E726F756E64285F74645F6829203C20323429207B0A2020202020202020202020202020202020202020202020207661720A202020';
wwv_flow_api.g_varchar2_table(72) := '2020202020202020202020202020202020202020202020202068203D204D6174682E726F756E64285F74645F6829202D2031322C0A2020202020202020202020202020202020202020202020202020202061203D2027706D272C0A202020202020202020';
wwv_flow_api.g_varchar2_table(73) := '2020202020202020202020202020202020202041203D2027504D273B0A20202020202020202020202020202020202020207D20656C7365207B0A2020202020202020202020202020202020202020202020207661720A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(74) := '202020202020202020202020202068203D204D6174682E726F756E64285F74645F68292C0A2020202020202020202020202020202020202020202020202020202061203D2027616D272C0A20202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(75) := '20202041203D2027414D273B0A20202020202020202020202020202020202020207D0A0A20202020202020202020202020202020202020206966202868203D3D2030292068203D2031323B0A0A2020202020202020202020202020202020202020766172';
wwv_flow_api.g_varchar2_table(76) := '0A202020202020202020202020202020202020202020202020737472203D0A2020202020202020202020202020202020202020202020205F74645F6F7074696F6E732E666F726D61740A2020202020202020202020202020202020202020202020202E72';
wwv_flow_api.g_varchar2_table(77) := '65706C616365282F5C622848295C622F672C204D6174682E726F756E64285F74645F6829290A2020202020202020202020202020202020202020202020202E7265706C616365282F5C622868295C622F672C204D6174682E726F756E64286829290A2020';
wwv_flow_api.g_varchar2_table(78) := '202020202020202020202020202020202020202020202E7265706C616365282F5C62286D295C622F672C204D6174682E726F756E64285F74645F6D29290A2020202020202020202020202020202020202020202020202E7265706C616365282F5C622848';
wwv_flow_api.g_varchar2_table(79) := '48295C622F672C205F74645F6E756D284D6174682E726F756E64285F74645F682929290A2020202020202020202020202020202020202020202020202E7265706C616365282F5C62286868295C622F672C205F74645F6E756D284D6174682E726F756E64';
wwv_flow_api.g_varchar2_table(80) := '28682929290A2020202020202020202020202020202020202020202020202E7265706C616365282F5C62286D6D295C622F672C205F74645F6E756D284D6174682E726F756E64285F74645F6D2929290A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(81) := '202020202E7265706C616365282F5C622861295C622F672C2061290A2020202020202020202020202020202020202020202020202E7265706C616365282F5C622841295C622F672C2041293B0A0A20202020202020202020202020202020202020205F74';
wwv_flow_api.g_varchar2_table(82) := '645F696E7075742E76616C28737472293B0A0A0A202020202020202020202020202020207D3B0A0A0A202020202020202020202020696620282F416E64726F69647C7765624F537C6950686F6E657C695061647C69506F647C426C61636B42657272797C';
wwv_flow_api.g_varchar2_table(83) := '49454D6F62696C657C4F70657261204D696E692F692E74657374286E6176696761746F722E757365724167656E742929207B0A202020202020202020202020202020205F74645F6D6F62696C65203D20747275653B0A2020202020202020202020207D0A';
wwv_flow_api.g_varchar2_table(84) := '0A2020202020202020202020205F74645F632E66696E6428272E74642D74696D65207370616E27292E6F6E2827636C69636B272C2066756E6374696F6E286529207B0A0A20202020202020202020202020202020766172206F203D20242874686973293B';
wwv_flow_api.g_varchar2_table(85) := '0A0A202020202020202020202020202020205F74645F632E66696E6428272E74642D74696D65207370616E27292E72656D6F7665436C61737328276F6E27293B0A202020202020202020202020202020206F2E616464436C61737328276F6E27293B0A0A';
wwv_flow_api.g_varchar2_table(86) := '202020202020202020202020202020207661722076203D207061727365496E74286F2E617474722827646174612D69642729293B0A0A20202020202020202020202020202020696620286F2E696E6465782829203D3D20302920646567203D204D617468';
wwv_flow_api.g_varchar2_table(87) := '2E726F756E64282876202A20333630202F20323329293B0A20202020202020202020202020202020656C736520646567203D204D6174682E726F756E64282876202A20333630202F20353929293B0A0A202020202020202020202020202020205F74645F';
wwv_flow_api.g_varchar2_table(88) := '696E69745F646567203D202D313B0A202020202020202020202020202020205F74645F6576656E745F646567203D206465673B0A202020202020202020202020202020205F74645F776865656C5F646567203D206465673B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(89) := '20202020205F74645F726F746174696F6E28646567293B0A0A2020202020202020202020207D293B0A0A2020202020202020202020205F74645F632E66696E6428272E74642D64656727292E6F6E2827746F7563687374617274206D6F757365646F776E';
wwv_flow_api.g_varchar2_table(90) := '272C2066756E6374696F6E286529207B0A0A202020202020202020202020202020205F74645F646566696E655F64656728293B0A0A20202020202020202020202020202020652E70726576656E7444656661756C7428293B0A0A20202020202020202020';
wwv_flow_api.g_varchar2_table(91) := '202020202020636C656172496E74657276616C285F74645F616C657274293B0A0A202020202020202020202020202020205F74645F632E66696E6428272E74642D64656727292E72656D6F7665436C617373282774642D6E27293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(92) := '20202020202020205F74645F632E66696E6428272E74642D73656C65637427292E72656D6F7665436C617373282774642D72756262657227293B0A0A202020202020202020202020202020205F74645F696E7075745F6F6E203D20747275653B0A0A2020';
wwv_flow_api.g_varchar2_table(93) := '2020202020202020202020202020766172206F6666736574203D205F74645F632E6F666673657428293B0A202020202020202020202020202020207661722063656E746572203D207B0A2020202020202020202020202020202020202020793A206F6666';
wwv_flow_api.g_varchar2_table(94) := '7365742E746F70202B205F74645F632E6865696768742829202F20322C0A2020202020202020202020202020202020202020783A206F66667365742E6C656674202B205F74645F632E77696474682829202F20320A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(95) := '207D3B0A0A2020202020202020202020202020202076617220612C20622C206465672C20746D702C2072616432646567203D20313830202F204D6174682E50493B0A0A202020202020202020202020202020205F74645F632E72656D6F7665436C617373';
wwv_flow_api.g_varchar2_table(96) := '282774642D72756262657227293B0A0A20202020202020202020202020202020242877696E646F77292E6F6E2827746F7563686D6F7665206D6F7573656D6F7665272C2066756E6374696F6E286529207B0A0A2020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(97) := '202020696620285F74645F696E7075745F6F6E203D3D207472756529207B0A0A202020202020202020202020202020202020202020202020696620285F74645F6D6F62696C6529206D6F7665203D20652E6F726967696E616C4576656E742E746F756368';
wwv_flow_api.g_varchar2_table(98) := '65735B305D3B0A202020202020202020202020202020202020202020202020656C7365206D6F7665203D20653B0A0A20202020202020202020202020202020202020202020202061203D2063656E7465722E79202D206D6F76652E70616765593B0A2020';
wwv_flow_api.g_varchar2_table(99) := '2020202020202020202020202020202020202020202062203D2063656E7465722E78202D206D6F76652E70616765583B0A202020202020202020202020202020202020202020202020646567203D204D6174682E6174616E3228612C206229202A207261';
wwv_flow_api.g_varchar2_table(100) := '64326465673B0A0A20202020202020202020202020202020202020202020202069662028646567203C2030290A20202020202020202020202020202020202020202020202020202020646567203D20333630202B206465673B0A0A202020202020202020';
wwv_flow_api.g_varchar2_table(101) := '202020202020202020202020202020696620285F74645F696E69745F646567203D3D202D31290A202020202020202020202020202020202020202020202020202020205F74645F696E69745F646567203D206465673B0A0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(102) := '202020202020202020202020746D70203D204D6174682E666C6F6F722828646567202D205F74645F696E69745F64656729202B205F74645F6576656E745F646567293B0A0A20202020202020202020202020202020202020202020202069662028746D70';
wwv_flow_api.g_varchar2_table(103) := '203C20302920746D70203D20333630202B20746D703B0A202020202020202020202020202020202020202020202020656C73652069662028746D70203E203336302920746D70203D20746D702025203336303B0A0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(104) := '2020202020202020205F74645F726F746174696F6E28746D70293B0A0A20202020202020202020202020202020202020207D0A0A202020202020202020202020202020207D293B0A0A2020202020202020202020207D293B0A0A20202020202020202020';
wwv_flow_api.g_varchar2_table(105) := '2020696620285F74645F6F7074696F6E732E6D6F757365776865656C29207B0A0A202020202020202020202020202020205F74645F632E6F6E28276D6F757365776865656C272C2066756E6374696F6E286529207B0A0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(106) := '20202020202020652E70726576656E7444656661756C7428293B0A0A20202020202020202020202020202020202020205F74645F632E66696E6428272E74642D64656727292E72656D6F7665436C617373282774642D6E27293B0A0A2020202020202020';
wwv_flow_api.g_varchar2_table(107) := '20202020202020202020202069662028652E6F726967696E616C4576656E742E776865656C44656C7461203E203029207B0A202020202020202020202020202020202020202020202020696620285F74645F776865656C5F646567203C3D203336302920';
wwv_flow_api.g_varchar2_table(108) := '7B0A2020202020202020202020202020202020202020202020202020202069662028652E6F726967696E616C4576656E742E776865656C44656C7461203C3D2031323029205F74645F776865656C5F6465672B2B0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(109) := '2020202020202020202020202020202020656C73652069662028652E6F726967696E616C4576656E742E776865656C44656C7461203E2031323029205F74645F776865656C5F646567203D205F74645F776865656C5F646567202B2032303B0A20202020';
wwv_flow_api.g_varchar2_table(110) := '202020202020202020202020202020202020202020202020696620285F74645F776865656C5F646567203E2033363029205F74645F776865656C5F646567203D20303B0A2020202020202020202020202020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(111) := '20202020202020202020202020207D20656C7365207B0A202020202020202020202020202020202020202020202020696620285F74645F776865656C5F646567203E3D203029207B0A202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(112) := '2069662028652E6F726967696E616C4576656E742E776865656C44656C7461203E3D202D31323029205F74645F776865656C5F6465672D2D0A2020202020202020202020202020202020202020202020202020202020202020656C73652069662028652E';
wwv_flow_api.g_varchar2_table(113) := '6F726967696E616C4576656E742E776865656C44656C7461203C202D31323029205F74645F776865656C5F646567203D205F74645F776865656C5F646567202D2032303B0A20202020202020202020202020202020202020202020202020202020696620';
wwv_flow_api.g_varchar2_table(114) := '285F74645F776865656C5F646567203C203029205F74645F776865656C5F646567203D203336303B0A2020202020202020202020202020202020202020202020207D0A20202020202020202020202020202020202020207D0A0A20202020202020202020';
wwv_flow_api.g_varchar2_table(115) := '202020202020202020205F74645F696E69745F646567203D202D313B0A20202020202020202020202020202020202020205F74645F6576656E745F646567203D205F74645F776865656C5F6465673B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(116) := '5F74645F726F746174696F6E285F74645F776865656C5F646567293B0A0A202020202020202020202020202020207D293B0A0A2020202020202020202020207D0A0A2020202020202020202020202428646F63756D656E74292E6F6E2827746F75636865';
wwv_flow_api.g_varchar2_table(117) := '6E64206D6F7573657570272C2066756E6374696F6E2829207B0A0A20202020202020202020202020202020696620285F74645F696E7075745F6F6E29207B0A0A20202020202020202020202020202020202020205F74645F696E7075745F6F6E203D2066';
wwv_flow_api.g_varchar2_table(118) := '616C73653B0A0A2020202020202020202020202020202020202020696620285F74645F6F7074696F6E732E6175746F73776974636829207B0A2020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D74696D';
wwv_flow_api.g_varchar2_table(119) := '65207370616E27292E746F67676C65436C61737328276F6E27293B0A2020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D74696D65207370616E2E6F6E27292E636C69636B28293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(120) := '2020202020202020202020207D0A0A20202020202020202020202020202020202020205F74645F632E66696E6428272E74642D64656727292E616464436C617373282774642D6E27293B0A20202020202020202020202020202020202020205F74645F63';
wwv_flow_api.g_varchar2_table(121) := '2E66696E6428272E74642D73656C65637427292E616464436C617373282774642D72756262657227293B0A0A202020202020202020202020202020207D0A0A2020202020202020202020207D293B0A0A202020202020202020202020766172205F74645F';
wwv_flow_api.g_varchar2_table(122) := '696E6974203D2066756E6374696F6E2876616C756529207B0A0A202020202020202020202020202020207661720A202020202020202020202020202020202020202064203D206E6577204461746528292C0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(123) := '20205F74645F7370616E5F68203D205F74645F632E66696E6428272E74642D74696D65207370616E3A666972737427292C0A20202020202020202020202020202020202020205F74645F7370616E5F6D203D205F74645F632E66696E6428272E74642D74';
wwv_flow_api.g_varchar2_table(124) := '696D65207370616E3A6C61737427292C0A2020202020202020202020202020202020202020682C0A20202020202020202020202020202020202020206D3B0A0A20202020202020202020202020202020696620285F74645F696E7075742E76616C28292E';
wwv_flow_api.g_varchar2_table(125) := '6C656E67746820262620215F74645F6F7074696F6E732E73657443757272656E7454696D6529207B0A0A202020202020202020202020202020202020202076617220726567203D202F5C642B2F672C0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(126) := '20202020616D3B0A2020202020202020202020202020202020202020766172207374203D205F74645F696E7075742E76616C28292E73706C697428273A27293B0A0A202020202020202020202020202020202020202069662028737429207B0A0A202020';
wwv_flow_api.g_varchar2_table(127) := '20202020202020202020202020202020202020202068203D2073745B305D2E6D6174636828726567293B0A2020202020202020202020202020202020202020202020206D203D2073745B315D2E6D6174636828726567293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(128) := '20202020202020202020202020696620285F74645F696E7075742E76616C28292E696E6465784F662822616D222920213D202D31207C7C205F74645F696E7075742E76616C28292E696E6465784F662822414D222920213D202D31207C7C205F74645F69';
wwv_flow_api.g_varchar2_table(129) := '6E7075742E76616C28292E696E6465784F662822706D222920213D202D31207C7C205F74645F696E7075742E76616C28292E696E6465784F662822504D222920213D202D3129207B0A202020202020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(130) := '20696620285F74645F696E7075742E76616C28292E696E6465784F662822616D222920213D202D31207C7C205F74645F696E7075742E76616C28292E696E6465784F662822414D222920213D202D312920616D203D20747275653B0A2020202020202020';
wwv_flow_api.g_varchar2_table(131) := '2020202020202020202020202020202020202020656C736520616D203D2066616C73653B0A0A202020202020202020202020202020202020202020202020202020206966202821616D29207B0A2020202020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(132) := '2020202020202020206966202868203C20313329207B0A20202020202020202020202020202020202020202020202020202020202020202020202068203D207061727365496E74286829202B2031323B0A20202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(133) := '20202020202020202020202020202020206966202868203D3D203234292068203D20303B0A20202020202020202020202020202020202020202020202020202020202020207D0A202020202020202020202020202020202020202020202020202020207D';
wwv_flow_api.g_varchar2_table(134) := '20656C7365206966202868203D3D203132292068203D20303B0A2020202020202020202020202020202020202020202020207D20656C7365206966202868203D3D203234292068203D20303B0A20202020202020202020202020202020202020207D2065';
wwv_flow_api.g_varchar2_table(135) := '6C7365207B0A0A20202020202020202020202020202020202020202020202069662028217061727365496E74285F74645F7370616E5F682E74657874282929292068203D205F74645F6E756D28642E676574486F7572732829293B0A2020202020202020';
wwv_flow_api.g_varchar2_table(136) := '20202020202020202020202020202020656C73652068203D205F74645F6E756D285F74645F7370616E5F682E746578742829293B0A20202020202020202020202020202020202020202020202069662028217061727365496E74285F74645F7370616E5F';
wwv_flow_api.g_varchar2_table(137) := '6D2E7465787428292929206D203D205F74645F6E756D28642E6765744D696E757465732829293B0A202020202020202020202020202020202020202020202020656C7365206D203D205F74645F6E756D285F74645F7370616E5F6D2E746578742829293B';
wwv_flow_api.g_varchar2_table(138) := '0A0A20202020202020202020202020202020202020207D0A0A202020202020202020202020202020207D20656C7365207B0A0A202020202020202020202020202020202020202069662028217061727365496E74285F74645F7370616E5F682E74657874';
wwv_flow_api.g_varchar2_table(139) := '282929292068203D205F74645F6E756D28642E676574486F7572732829293B0A2020202020202020202020202020202020202020656C73652068203D205F74645F6E756D285F74645F7370616E5F682E746578742829293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(140) := '20202020202020202069662028217061727365496E74285F74645F7370616E5F6D2E7465787428292929206D203D205F74645F6E756D28642E6765744D696E757465732829293B0A2020202020202020202020202020202020202020656C7365206D203D';
wwv_flow_api.g_varchar2_table(141) := '205F74645F6E756D285F74645F7370616E5F6D2E746578742829293B0A0A202020202020202020202020202020207D0A0A202020202020202020202020202020205F74645F7370616E5F682E617474722827646174612D6964272C2068292E7465787428';
wwv_flow_api.g_varchar2_table(142) := '68293B0A202020202020202020202020202020205F74645F7370616E5F6D2E617474722827646174612D6964272C206D292E74657874286D293B0A0A202020202020202020202020202020205F74645F6576656E745F646567203D204D6174682E726F75';
wwv_flow_api.g_varchar2_table(143) := '6E64282868202A20333630202F20323329293B0A0A202020202020202020202020202020205F74645F632E66696E6428272E74642D6C616E6365747465206469763A666972737427292E63737328277472616E73666F726D272C2027726F746174652827';
wwv_flow_api.g_varchar2_table(144) := '202B204D6174682E726F756E6428286D202A20333630202F2035392929202B20276465672927293B0A0A202020202020202020202020202020205F74645F726F746174696F6E285F74645F6576656E745F646567293B0A20202020202020202020202020';
wwv_flow_api.g_varchar2_table(145) := '2020205F74645F776865656C5F646567203D205F74645F6576656E745F6465673B0A202020202020202020202020202020205F74645F696E69745F646567203D202D313B0A0A0A2020202020202020202020207D0A0A2020202020202020202020205F74';
wwv_flow_api.g_varchar2_table(146) := '645F696E697428293B0A0A2020202020202020202020205F74645F696E7075742E666F6375732866756E6374696F6E286529207B0A20202020202020202020202020202020652E70726576656E7444656661756C7428293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(147) := '20202020205F74645F696E7075742E626C757228293B0A2020202020202020202020207D293B0A0A2020202020202020202020205F74645F696E7075742E636C69636B2866756E6374696F6E286529207B0A0A2020202020202020202020202020202063';
wwv_flow_api.g_varchar2_table(148) := '6C656172496E74657276616C285F74645F6576656E74293B0A0A202020202020202020202020202020205F74645F636F6E7461696E65722E72656D6F7665436C617373282774642D666164656F757427293B0A202020202020202020202020202020205F';
wwv_flow_api.g_varchar2_table(149) := '74645F636F6E7461696E65722E616464436C617373282774642D73686F7727292E616464436C617373282774642D27202B205F74645F6F7074696F6E732E696E69745F616E696D6174696F6E293B0A202020202020202020202020202020205F74645F63';
wwv_flow_api.g_varchar2_table(150) := '2E637373287B0A202020202020202020202020202020202020202027746F70273A20285F74645F696E7075742E6F666673657428292E746F70202B20285F74645F696E7075742E6F757465724865696768742829202D203829292C0A2020202020202020';
wwv_flow_api.g_varchar2_table(151) := '202020202020202020202020276C656674273A20285F74645F696E7075742E6F666673657428292E6C656674202B20285F74645F696E7075742E6F7574657257696474682829202F20322929202D20285F74645F632E6F7574657257696474682829202F';
wwv_flow_api.g_varchar2_table(152) := '2032290A202020202020202020202020202020207D293B0A0A20202020202020202020202020202020696620285F74645F632E686173436C617373282774642D696E6974272929207B0A0A20202020202020202020202020202020202020205F74645F61';
wwv_flow_api.g_varchar2_table(153) := '6C657274203D20736574496E74657276616C2866756E6374696F6E2829207B0A2020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D73656C65637427292E616464436C617373282774642D616C65727427';
wwv_flow_api.g_varchar2_table(154) := '293B0A20202020202020202020202020202020202020202020202073657454696D656F75742866756E6374696F6E2829207B0A202020202020202020202020202020202020202020202020202020205F74645F632E66696E6428272E74642D73656C6563';
wwv_flow_api.g_varchar2_table(155) := '7427292E72656D6F7665436C617373282774642D616C65727427293B0A2020202020202020202020202020202020202020202020207D2C2031303030293B0A20202020202020202020202020202020202020207D2C2032303030293B0A0A202020202020';
wwv_flow_api.g_varchar2_table(156) := '20202020202020202020202020205F74645F632E72656D6F7665436C617373282774642D696E697427293B0A0A202020202020202020202020202020207D0A0A2020202020202020202020207D293B0A2020202020202020202020205F74645F6F766572';
wwv_flow_api.g_varchar2_table(157) := '6C61792E636C69636B2866756E6374696F6E2829207B0A0A202020202020202020202020202020205F74645F636F6E7461696E65722E616464436C617373282774642D666164656F757427292E72656D6F7665436C617373282774642D27202B205F7464';
wwv_flow_api.g_varchar2_table(158) := '5F6F7074696F6E732E696E69745F616E696D6174696F6E293B0A202020202020202020202020202020205F74645F6576656E74203D2073657454696D656F75742866756E6374696F6E2829207B0A20202020202020202020202020202020202020205F74';
wwv_flow_api.g_varchar2_table(159) := '645F636F6E7461696E65722E72656D6F7665436C617373282774642D73686F7727290A202020202020202020202020202020207D2C20333030293B0A0A2020202020202020202020207D293B0A202020202020202020202020242877696E646F77292E6F';
wwv_flow_api.g_varchar2_table(160) := '6E2827726573697A65272C2066756E6374696F6E2829207B0A0A202020202020202020202020202020205F74645F646566696E655F64656728293B0A202020202020202020202020202020205F74645F632E637373287B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(161) := '202020202020202027746F70273A20285F74645F696E7075742E6F666673657428292E746F70202B20285F74645F696E7075742E6F757465724865696768742829202D203829292C0A2020202020202020202020202020202020202020276C656674273A';
wwv_flow_api.g_varchar2_table(162) := '20285F74645F696E7075742E6F666673657428292E6C656674202B20285F74645F696E7075742E6F7574657257696474682829202F20322929202D20285F74645F632E6F7574657257696474682829202F2032290A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(163) := '207D293B0A2020202020202020202020207D293B0A0A20202020202020207D293B0A202020207D3B0A7D286A517565727929293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844943643666153991)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/lib/timedropper/timedropper.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E74642D6F7665726C61792C2E74642D777261707B746F703A303B6C6566743A303B77696474683A313030253B6865696768743A313030257D2E74642D636C6F636B3A6265666F72652C2E74642D73656C6563743A61667465727B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(2) := '227D2E74642D777261702C2E74642D77726170202A7B6D617267696E3A303B70616464696E673A303B6C6973742D7374796C653A6E6F6E653B2D7765626B69742D626F782D73697A696E673A696E697469616C21696D706F7274616E743B2D6D6F7A2D62';
wwv_flow_api.g_varchar2_table(3) := '6F782D73697A696E673A696E697469616C21696D706F7274616E743B626F782D73697A696E673A696E697469616C21696D706F7274616E743B2D7765626B69742D7461702D686967686C696768742D636F6C6F723A7472616E73706172656E747D2E7464';
wwv_flow_api.g_varchar2_table(4) := '2D77726170207376677B77696474683A313030257D2E74642D696E7075747B637572736F723A706F696E7465727D2E74642D777261707B646973706C61793A6E6F6E653B666F6E742D66616D696C793A73616E732D73657269663B706F736974696F6E3A';
wwv_flow_api.g_varchar2_table(5) := '6162736F6C7574653B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B2D6F2D757365722D73656C6563743A6E6F6E653B757365';
wwv_flow_api.g_varchar2_table(6) := '722D73656C6563743A6E6F6E653B6F75746C696E653A303B7A2D696E6465783A393939393B636F6C6F723A233464346434647D2E74642D6F7665726C61797B706F736974696F6E3A66697865647D2E74642D636C6F636B2C2E74642D636C6F636B3A6265';
wwv_flow_api.g_varchar2_table(7) := '666F72652C2E74642D7376672C2E74642D7376672D327B706F736974696F6E3A6162736F6C7574657D2E74642D636C6F636B7B77696474683A31353670783B6865696768743A31353670783B626F726465722D7261646975733A31353670783B626F782D';
wwv_flow_api.g_varchar2_table(8) := '736861646F773A30203020302031707820233139373743432C302030203020387078207267626128302C302C302C2E3035293B6261636B67726F756E643A63656E746572206E6F2D72657065617420234646463B6D617267696E3A30206175746F3B7465';
wwv_flow_api.g_varchar2_table(9) := '78742D616C69676E3A63656E7465723B6C696E652D6865696768743A31353670783B6261636B67726F756E642D73697A653A636F7665727D2E74642D636C6F636B3A6265666F72657B746F703A2D313070783B6D617267696E2D6C6566743A2D31307078';
wwv_flow_api.g_varchar2_table(10) := '3B6C6566743A3530253B77696474683A323070783B6865696768743A323070783B7472616E73666F726D3A726F74617465283435646567293B6261636B67726F756E643A234646463B626F726465722D6C6566743A31707820736F6C6964202331393737';
wwv_flow_api.g_varchar2_table(11) := '43433B626F726465722D746F703A31707820736F6C696420233139373743433B626F726465722D746F702D6C6566742D7261646975733A3470787D2E74642D696E6974202E74642D6465677B2D7765626B69742D616E696D6174696F6E3A736C69646520';
wwv_flow_api.g_varchar2_table(12) := '31732063756269632D62657A696572282E372C302C2E3137352C312920312E327320696E66696E6974657D2E74642D7376677B746F703A303B626F74746F6D3A303B6C6566743A303B72696768743A307D2E74642D7376672D327B746F703A313870783B';
wwv_flow_api.g_varchar2_table(13) := '6C6566743A313870783B626F74746F6D3A313870783B72696768743A313870787D2E74642D6465672C2E74642D6D6564697269616E7B746F703A303B6C6566743A303B72696768743A303B626F74746F6D3A303B706F736974696F6E3A6162736F6C7574';
wwv_flow_api.g_varchar2_table(14) := '657D2E74642D777261702E74642D73686F777B646973706C61793A626C6F636B7D2E74642D6465677B6261636B67726F756E642D706F736974696F6E3A63656E7465723B6261636B67726F756E642D7265706561743A6E6F2D7265706561743B6261636B';
wwv_flow_api.g_varchar2_table(15) := '67726F756E642D73697A653A3830253B7A2D696E6465783A317D2E74642D6D6564697269616E207370616E7B77696474683A343070783B6865696768743A343070783B626F726465722D7261646975733A343070783B6C696E652D6865696768743A3430';
wwv_flow_api.g_varchar2_table(16) := '70783B746578742D616C69676E3A63656E7465723B6D617267696E3A3020302030202D323070783B706F736974696F6E3A6162736F6C7574653B7A2D696E6465783A323B6C6566743A3530253B666F6E742D73697A653A2E38656D3B6F7061636974793A';
wwv_flow_api.g_varchar2_table(17) := '303B666F6E742D7765696768743A3730307D2E74642D6D6564697269616E202E74642D69636F6E2D616D7B746F703A343070787D2E74642D6D6564697269616E202E74642D69636F6E2D706D7B626F74746F6D3A343070787D2E74642D6D656469726961';
wwv_flow_api.g_varchar2_table(18) := '6E202E74642D69636F6E2D616D2E74642D6F6E7B746F703A323670783B6F7061636974793A317D2E74642D6D6564697269616E202E74642D69636F6E2D706D2E74642D6F6E7B626F74746F6D3A323670783B6F7061636974793A317D2E74642D73656C65';
wwv_flow_api.g_varchar2_table(19) := '63747B706F736974696F6E3A6162736F6C7574653B746F703A3470783B6C6566743A333270783B72696768743A333270783B626F74746F6D3A323270787D2E74642D73656C656374207376677B706F736974696F6E3A6162736F6C7574653B746F703A30';
wwv_flow_api.g_varchar2_table(20) := '3B6C6566743A303B72696768743A307D2E74642D73656C6563743A61667465727B706F736974696F6E3A6162736F6C7574653B6261636B67726F756E643A234646463B77696474683A333670783B6865696768743A333670783B626F782D736861646F77';
wwv_flow_api.g_varchar2_table(21) := '3A30203020302031707820233139373743433B626F726465722D7261646975733A363070782036307078203630707820303B746F703A2D313670783B6C6566743A3530253B6D617267696E2D6C6566743A2D313870783B7472616E73666F726D3A726F74';
wwv_flow_api.g_varchar2_table(22) := '617465282D3435646567293B637572736F723A706F696E7465727D2E74642D636C6F636B202E74642D74696D657B666F6E742D7765696768743A3730303B706F736974696F6E3A72656C61746976657D2E74642D636C6F636B202E74642D74696D652073';
wwv_flow_api.g_varchar2_table(23) := '70616E7B77696474683A343270783B6865696768743A343270783B646973706C61793A696E6C696E652D626C6F636B3B766572746963616C2D616C69676E3A6D6964646C653B6C696E652D6865696768743A343270783B746578742D616C69676E3A6365';
wwv_flow_api.g_varchar2_table(24) := '6E7465723B6D617267696E3A3670783B706F736974696F6E3A72656C61746976653B7A2D696E6465783A323B637572736F723A706F696E7465723B666F6E742D73697A653A32656D3B626F726465722D7261646975733A3670787D2E74642D636C6F636B';
wwv_flow_api.g_varchar2_table(25) := '202E74642D74696D65207370616E2E6F6E7B636F6C6F723A233139373743437D2E74642D6E7B2D7765626B69742D7472616E736974696F6E3A616C6C202E34732063756269632D62657A696572282E372C302C2E3137352C31292030733B2D6D6F7A2D74';
wwv_flow_api.g_varchar2_table(26) := '72616E736974696F6E3A616C6C202E34732063756269632D62657A696572282E372C302C2E3137352C31292030733B2D6D732D7472616E736974696F6E3A616C6C202E34732063756269632D62657A696572282E372C302C2E3137352C31292030733B74';
wwv_flow_api.g_varchar2_table(27) := '72616E736974696F6E3A616C6C202E34732063756269632D62657A696572282E372C302C2E3137352C31292030737D2E74642D6E327B2D7765626B69742D7472616E736974696F6E3A616C6C202E3273206C696E6561722030733B2D6D6F7A2D7472616E';
wwv_flow_api.g_varchar2_table(28) := '736974696F6E3A616C6C202E3273206C696E6561722030733B2D6D732D7472616E736974696F6E3A616C6C202E3273206C696E6561722030733B7472616E736974696F6E3A616C6C202E3273206C696E6561722030737D402D7765626B69742D6B657966';
wwv_flow_api.g_varchar2_table(29) := '72616D65732074642D616C6572747B30252C313030257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D3130252C3230257B2D7765626B69742D747261';
wwv_flow_api.g_varchar2_table(30) := '6E73666F726D3A7363616C653364282E392C2E392C2E392920726F74617465336428302C302C312C2D33646567293B7472616E73666F726D3A7363616C653364282E392C2E392C2E392920726F74617465336428302C302C312C2D33646567297D333025';
wwv_flow_api.g_varchar2_table(31) := '2C3530252C3730252C3930257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E312C312E312C312E312920726F74617465336428302C302C312C33646567293B7472616E73666F726D3A7363616C65336428312E312C312E312C31';
wwv_flow_api.g_varchar2_table(32) := '2E312920726F74617465336428302C302C312C33646567297D3430252C3630252C3830257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E312C312E312C312E312920726F74617465336428302C302C312C2D33646567293B7472';
wwv_flow_api.g_varchar2_table(33) := '616E73666F726D3A7363616C65336428312E312C312E312C312E312920726F74617465336428302C302C312C2D33646567297D7D406B65796672616D65732074642D616C6572747B30252C313030257B2D7765626B69742D7472616E73666F726D3A7363';
wwv_flow_api.g_varchar2_table(34) := '616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D3130252C3230257B2D7765626B69742D7472616E73666F726D3A7363616C653364282E392C2E392C2E392920726F74617465336428302C302C312C2D3364';
wwv_flow_api.g_varchar2_table(35) := '6567293B7472616E73666F726D3A7363616C653364282E392C2E392C2E392920726F74617465336428302C302C312C2D33646567297D3330252C3530252C3730252C3930257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E312C';
wwv_flow_api.g_varchar2_table(36) := '312E312C312E312920726F74617465336428302C302C312C33646567293B7472616E73666F726D3A7363616C65336428312E312C312E312C312E312920726F74617465336428302C302C312C33646567297D3430252C3630252C3830257B2D7765626B69';
wwv_flow_api.g_varchar2_table(37) := '742D7472616E73666F726D3A7363616C65336428312E312C312E312C312E312920726F74617465336428302C302C312C2D33646567293B7472616E73666F726D3A7363616C65336428312E312C312E312C312E312920726F74617465336428302C302C31';
wwv_flow_api.g_varchar2_table(38) := '2C2D33646567297D7D2E74642D616C6572747B2D7765626B69742D616E696D6174696F6E2D6E616D653A74642D616C6572743B616E696D6174696F6E2D6E616D653A74642D616C6572743B2D7765626B69742D616E696D6174696F6E2D6475726174696F';
wwv_flow_api.g_varchar2_table(39) := '6E3A2E38733B616E696D6174696F6E2D6475726174696F6E3A2E38733B2D7765626B69742D616E696D6174696F6E2D66696C6C2D6D6F64653A626F74683B616E696D6174696F6E2D66696C6C2D6D6F64653A626F74687D402D7765626B69742D6B657966';
wwv_flow_api.g_varchar2_table(40) := '72616D65732074642D626F756E63657B30252C313030257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D3230257B2D7765626B69742D7472616E7366';
wwv_flow_api.g_varchar2_table(41) := '6F726D3A7363616C65336428312E32352C2E37352C31293B7472616E73666F726D3A7363616C65336428312E32352C2E37352C31297D3330257B2D7765626B69742D7472616E73666F726D3A7363616C653364282E37352C312E32352C31293B7472616E';
wwv_flow_api.g_varchar2_table(42) := '73666F726D3A7363616C653364282E37352C312E32352C31297D3630257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E31352C2E38352C31293B7472616E73666F726D3A7363616C65336428312E31352C2E38352C31297D3730';
wwv_flow_api.g_varchar2_table(43) := '257B2D7765626B69742D7472616E73666F726D3A7363616C653364282E39352C312E30352C31293B7472616E73666F726D3A7363616C653364282E39352C312E30352C31297D3830257B2D7765626B69742D7472616E73666F726D3A7363616C65336428';
wwv_flow_api.g_varchar2_table(44) := '312E30352C2E39352C31293B7472616E73666F726D3A7363616C65336428312E30352C2E39352C31297D7D406B65796672616D65732074642D626F756E63657B30252C313030257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312C';
wwv_flow_api.g_varchar2_table(45) := '312C31293B7472616E73666F726D3A7363616C65336428312C312C31297D3230257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E32352C2E37352C31293B7472616E73666F726D3A7363616C65336428312E32352C2E37352C31';
wwv_flow_api.g_varchar2_table(46) := '297D3330257B2D7765626B69742D7472616E73666F726D3A7363616C653364282E37352C312E32352C31293B7472616E73666F726D3A7363616C653364282E37352C312E32352C31297D3630257B2D7765626B69742D7472616E73666F726D3A7363616C';
wwv_flow_api.g_varchar2_table(47) := '65336428312E31352C2E38352C31293B7472616E73666F726D3A7363616C65336428312E31352C2E38352C31297D3730257B2D7765626B69742D7472616E73666F726D3A7363616C653364282E39352C312E30352C31293B7472616E73666F726D3A7363';
wwv_flow_api.g_varchar2_table(48) := '616C653364282E39352C312E30352C31297D3830257B2D7765626B69742D7472616E73666F726D3A7363616C65336428312E30352C2E39352C31293B7472616E73666F726D3A7363616C65336428312E30352C2E39352C31297D7D2E74642D626F756E63';
wwv_flow_api.g_varchar2_table(49) := '657B2D7765626B69742D616E696D6174696F6E2D6E616D653A74642D626F756E63653B616E696D6174696F6E2D6E616D653A74642D626F756E63653B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A31733B616E696D6174696F6E2D';
wwv_flow_api.g_varchar2_table(50) := '6475726174696F6E3A31737D402D7765626B69742D6B65796672616D65732074642D66616465696E7B30257B6F7061636974793A307D313030257B6F7061636974793A317D7D406B65796672616D65732074642D66616465696E7B30257B6F7061636974';
wwv_flow_api.g_varchar2_table(51) := '793A307D313030257B6F7061636974793A317D7D2E74642D66616465696E7B2D7765626B69742D616E696D6174696F6E2D6E616D653A74642D66616465696E3B616E696D6174696F6E2D6E616D653A74642D66616465696E3B2D7765626B69742D616E69';
wwv_flow_api.g_varchar2_table(52) := '6D6174696F6E2D6475726174696F6E3A2E33733B616E696D6174696F6E2D6475726174696F6E3A2E33737D402D7765626B69742D6B65796672616D65732074642D666164656F75747B30257B6F7061636974793A317D313030257B6F7061636974793A30';
wwv_flow_api.g_varchar2_table(53) := '7D7D406B65796672616D65732074642D666164656F75747B30257B6F7061636974793A317D313030257B6F7061636974793A307D7D2E74642D666164656F75747B2D7765626B69742D616E696D6174696F6E3A74642D666164656F7574202E337320666F';
wwv_flow_api.g_varchar2_table(54) := '7277617264733B616E696D6174696F6E3A74642D666164656F7574202E337320666F7277617264737D402D7765626B69742D6B65796672616D65732074642D64726F70646F776E7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F';
wwv_flow_api.g_varchar2_table(55) := '726D3A7472616E736C617465336428302C2D31303070782C30293B7472616E73666F726D3A7472616E736C617465336428302C2D31303070782C30297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A6E6F6E653B74';
wwv_flow_api.g_varchar2_table(56) := '72616E73666F726D3A6E6F6E657D7D406B65796672616D65732074642D64726F70646F776E7B30257B6F7061636974793A303B2D7765626B69742D7472616E73666F726D3A7472616E736C617465336428302C2D31303070782C30293B7472616E73666F';
wwv_flow_api.g_varchar2_table(57) := '726D3A7472616E736C617465336428302C2D31303070782C30297D313030257B6F7061636974793A313B2D7765626B69742D7472616E73666F726D3A6E6F6E653B7472616E73666F726D3A6E6F6E657D7D2E74642D64726F70646F776E7B2D7765626B69';
wwv_flow_api.g_varchar2_table(58) := '742D616E696D6174696F6E2D6E616D653A74642D64726F70646F776E3B616E696D6174696F6E2D6E616D653A74642D64726F70646F776E3B2D7765626B69742D616E696D6174696F6E2D6475726174696F6E3A2E35733B616E696D6174696F6E2D647572';
wwv_flow_api.g_varchar2_table(59) := '6174696F6E3A2E35737D2E74642D62756C6C6574706F696E742C2E74642D62756C6C6574706F696E74206469762C2E74642D6C616E63657474652C2E74642D6C616E6365747465206469767B706F736974696F6E3A6162736F6C7574653B746F703A303B';
wwv_flow_api.g_varchar2_table(60) := '6C6566743A303B626F74746F6D3A303B72696768743A307D2E74642D62756C6C6574706F696E74206469763A61667465722C2E74642D6C616E6365747465206469763A61667465727B706F736974696F6E3A6162736F6C7574653B6C6566743A3530253B';
wwv_flow_api.g_varchar2_table(61) := '636F6E74656E743A22227D2E74642D62756C6C6574706F696E74206469763A61667465727B746F703A313470783B6D617267696E2D6C6566743A2D3270783B77696474683A3470783B6865696768743A3470783B626F726465722D7261646975733A3130';
wwv_flow_api.g_varchar2_table(62) := '70787D2E74642D6C616E63657474657B626F726465723A32707820736F6C696420234446463346413B626F726465722D7261646975733A313030253B6D617267696E3A3670787D2E74642D6C616E6365747465206469763A61667465727B746F703A3230';
wwv_flow_api.g_varchar2_table(63) := '70783B6D617267696E2D6C6566743A2D3170783B77696474683A3270783B626F74746F6D3A3530253B626F726465722D7261646975733A313070783B6261636B67726F756E643A234446463346417D2E74642D6C616E6365747465206469763A6C617374';
wwv_flow_api.g_varchar2_table(64) := '2D6368696C643A61667465727B746F703A333670787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844944058305153994)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/lib/timedropper/timedropper.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E2874297B742E666E2E74696D6544726F707065723D66756E6374696F6E28652C64297B72657475726E20742874686973292E656163682866756E6374696F6E28297B76617220642C6E3D742874686973292C6F3D21312C613D2131';
wwv_flow_api.g_varchar2_table(2) := '2C693D66756E6374696F6E2874297B72657475726E2031303E743F2230222B743A747D2C723D7428222E74642D636C6F636B22292E6C656E6774682C733D6E756C6C2C6C3D742E657874656E64287B666F726D61743A22683A6D6D2061222C6175746F73';
wwv_flow_api.g_varchar2_table(3) := '77697463683A21312C6D6572696469616E733A21312C6D6F757365776865656C3A21312C73657443757272656E7454696D653A21302C696E69745F616E696D6174696F6E3A2266616465696E222C7072696D617279436F6C6F723A222331393737434322';
wwv_flow_api.g_varchar2_table(4) := '2C626F72646572436F6C6F723A2223313937374343222C6261636B67726F756E64436F6C6F723A2223464646222C74657874436F6C6F723A2223353535227D2C65293B6E2E70726F70287B726561646F6E6C793A21307D292E616464436C617373282274';
wwv_flow_api.g_varchar2_table(5) := '642D696E70757422292C742822626F647922292E617070656E6428273C64697620636C6173733D2274642D777261702074642D6E32222069643D2274642D636C6F636B2D272B722B27223E3C64697620636C6173733D2274642D6F7665726C6179223E3C';
wwv_flow_api.g_varchar2_table(6) := '2F6469763E3C64697620636C6173733D2274642D636C6F636B2074642D696E6974223E3C64697620636C6173733D2274642D6465672074642D6E223E3C64697620636C6173733D2274642D73656C656374223E3C7376672076657273696F6E3D22312E31';
wwv_flow_api.g_varchar2_table(7) := '2220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D22307078222076696577';
wwv_flow_api.g_varchar2_table(8) := '426F783D22302030203130302033352E342220656E61626C652D6261636B67726F756E643D226E657720302030203130302033352E342220786D6C3A73706163653D227072657365727665223E3C673E3C706174682066696C6C3D226E6F6E6522207374';
wwv_flow_api.g_varchar2_table(9) := '726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D2231302220643D224D39382E312C33334338';
wwv_flow_api.g_varchar2_table(10) := '352E342C32312E352C36382E352C31342E352C35302C31342E355331342E362C32312E352C312E392C3333222F3E3C6C696E652066696C6C3D226E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D2272';
wwv_flow_api.g_varchar2_table(11) := '6F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D22312E39222079313D223333222078323D22312E39222079323D2232382E36222F3E3C6C696E652066696C6C';
wwv_flow_api.g_varchar2_table(12) := '3D226E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D';
wwv_flow_api.g_varchar2_table(13) := '22312E39222079313D223333222078323D22362E33222079323D223333222F3E3C6C696E652066696C6C3D226E6F6E6522207374726F6B652D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C';
wwv_flow_api.g_varchar2_table(14) := '696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D2239382E31222079313D223333222078323D2239332E37222079323D223333222F3E3C6C696E652066696C6C3D226E6F6E6522207374726F6B65';
wwv_flow_api.g_varchar2_table(15) := '2D77696474683D22312E3222207374726F6B652D6C696E656361703D22726F756E6422207374726F6B652D6C696E656A6F696E3D22726F756E6422207374726F6B652D6D697465726C696D69743D223130222078313D2239382E31222079313D22333322';
wwv_flow_api.g_varchar2_table(16) := '2078323D2239382E31222079323D2232382E36222F3E3C2F673E3C2F7376673E3C2F6469763E3C2F6469763E3C64697620636C6173733D2274642D6D6564697269616E223E3C7370616E20636C6173733D2274642D69636F6E2D616D2074642D6E223E41';
wwv_flow_api.g_varchar2_table(17) := '4D3C2F7370616E3E3C7370616E20636C6173733D2274642D69636F6E2D706D2074642D6E223E504D3C2F7370616E3E3C2F6469763E3C64697620636C6173733D2274642D6C616E6365747465223E3C6469763E3C2F6469763E3C6469763E3C2F6469763E';
wwv_flow_api.g_varchar2_table(18) := '3C2F6469763E3C64697620636C6173733D2274642D74696D65223E3C7370616E20636C6173733D226F6E223E3C2F7370616E3E3A3C7370616E3E3C2F7370616E3E3C2F6469763E3C2F6469763E3C2F6469763E27292C7428226865616422292E61707065';
wwv_flow_api.g_varchar2_table(19) := '6E6428223C7374796C653E2374642D636C6F636B2D222B722B22202E74642D636C6F636B207B636F6C6F723A222B6C2E74657874436F6C6F722B223B6261636B67726F756E643A20222B6C2E6261636B67726F756E64436F6C6F722B223B20626F782D73';
wwv_flow_api.g_varchar2_table(20) := '6861646F773A2030203020302031707820222B6C2E626F72646572436F6C6F722B222C302030203020387078207267626128302C20302C20302C20302E3035293B207D202374642D636C6F636B2D222B722B22202E74642D636C6F636B202E74642D7469';
wwv_flow_api.g_varchar2_table(21) := '6D65207370616E2E6F6E207B20636F6C6F723A222B6C2E7072696D617279436F6C6F722B227D202374642D636C6F636B2D222B722B22202E74642D636C6F636B3A6265666F7265207B20626F726465722D636F6C6F723A20222B6C2E626F72646572436F';
wwv_flow_api.g_varchar2_table(22) := '6C6F722B227D202374642D636C6F636B2D222B722B22202E74642D73656C6563743A6166746572207B20626F782D736861646F773A2030203020302031707820222B6C2E626F72646572436F6C6F722B22207D202374642D636C6F636B2D222B722B2220';
wwv_flow_api.g_varchar2_table(23) := '2E74642D636C6F636B3A6265666F72652C2374642D636C6F636B2D222B722B22202E74642D73656C6563743A6166746572207B6261636B67726F756E643A20222B6C2E6261636B67726F756E64436F6C6F722B223B7D202374642D636C6F636B2D222B72';
wwv_flow_api.g_varchar2_table(24) := '2B22202E74642D6C616E6365747465207B626F726465723A2032707820736F6C696420222B6C2E7072696D617279436F6C6F722B223B206F7061636974793A302E317D2374642D636C6F636B2D222B722B22202E74642D6C616E6365747465206469763A';
wwv_flow_api.g_varchar2_table(25) := '6166746572207B206261636B67726F756E643A20222B6C2E7072696D617279436F6C6F722B223B7D202374642D636C6F636B2D222B722B22202E74642D62756C6C6574706F696E74206469763A6166746572207B206261636B67726F756E643A222B6C2E';
wwv_flow_api.g_varchar2_table(26) := '7072696D617279436F6C6F722B223B206F7061636974793A302E317D3C2F7374796C653E22293B76617220633D7428222374642D636C6F636B2D222B72292C663D632E66696E6428222E74642D6F7665726C617922292C753D632E66696E6428222E7464';
wwv_flow_api.g_varchar2_table(27) := '2D636C6F636B22293B752E66696E64282273766722292E6174747228227374796C65222C227374726F6B653A222B6C2E626F72646572436F6C6F72293B76617220763D2D312C6D3D302C703D302C683D66756E6374696F6E28297B76617220743D752E66';
wwv_flow_api.g_varchar2_table(28) := '696E6428222E74642D74696D65207370616E2E6F6E22292C653D7061727365496E7428742E617474722822646174612D69642229293B303D3D742E696E64657828293F6465673D4D6174682E726F756E64283336302A652F3233293A6465673D4D617468';
wwv_flow_api.g_varchar2_table(29) := '2E726F756E64283336302A652F3539292C763D2D312C6D3D6465672C703D6465677D2C673D66756E6374696F6E2874297B76617220653D752E66696E6428222E74642D74696D65207370616E2E6F6E22292C643D652E617474722822646174612D696422';
wwv_flow_api.g_varchar2_table(30) := '293B647C7C28643D30293B766172206F3D4D6174682E726F756E642832332A742F333630292C613D4D6174682E726F756E642835392A742F333630293B696628303D3D652E696E64657828293F28652E617474722822646174612D6964222C69286F2929';
wwv_flow_api.g_varchar2_table(31) := '2C6C2E6D6572696469616E732626286F3E3D3132262632343E6F3F28752E66696E6428222E74642D69636F6E2D706D22292E616464436C617373282274642D6F6E22292C752E66696E6428222E74642D69636F6E2D616D22292E72656D6F7665436C6173';
wwv_flow_api.g_varchar2_table(32) := '73282274642D6F6E2229293A28752E66696E6428222E74642D69636F6E2D616D22292E616464436C617373282274642D6F6E22292C752E66696E6428222E74642D69636F6E2D706D22292E72656D6F7665436C617373282274642D6F6E2229292C6F3E31';
wwv_flow_api.g_varchar2_table(33) := '322626286F2D3D3132292C303D3D6F2626286F3D313229292C652E746578742869286F2929293A652E617474722822646174612D6964222C69286129292E746578742869286129292C703D742C752E66696E6428222E74642D64656722292E6373732822';
wwv_flow_api.g_varchar2_table(34) := '7472616E73666F726D222C22726F7461746528222B742B226465672922292C303D3D652E696E6465782829297B76617220723D4D6174682E726F756E64283336302A6F2F3132293B752E66696E6428222E74642D6C616E6365747465206469763A6C6173';
wwv_flow_api.g_varchar2_table(35) := '7422292E63737328227472616E73666F726D222C22726F7461746528222B722B226465672922297D656C736520752E66696E6428222E74642D6C616E6365747465206469763A666972737422292E63737328227472616E73666F726D222C22726F746174';
wwv_flow_api.g_varchar2_table(36) := '6528222B742B226465672922293B76617220733D752E66696E6428222E74642D74696D65207370616E3A666972737422292E617474722822646174612D696422292C633D752E66696E6428222E74642D74696D65207370616E3A6C61737422292E617474';
wwv_flow_api.g_varchar2_table(37) := '722822646174612D696422293B6966284D6174682E726F756E642873293E3D313226264D6174682E726F756E642873293C323429766172206F3D4D6174682E726F756E642873292D31322C663D22706D222C763D22504D223B656C736520766172206F3D';
wwv_flow_api.g_varchar2_table(38) := '4D6174682E726F756E642873292C663D22616D222C763D22414D223B303D3D6F2626286F3D3132293B766172206D3D6C2E666F726D61742E7265706C616365282F5C622848295C622F672C4D6174682E726F756E64287329292E7265706C616365282F5C';
wwv_flow_api.g_varchar2_table(39) := '622868295C622F672C4D6174682E726F756E64286F29292E7265706C616365282F5C62286D295C622F672C4D6174682E726F756E64286329292E7265706C616365282F5C62284848295C622F672C69284D6174682E726F756E6428732929292E7265706C';
wwv_flow_api.g_varchar2_table(40) := '616365282F5C62286868295C622F672C69284D6174682E726F756E64286F2929292E7265706C616365282F5C62286D6D295C622F672C69284D6174682E726F756E6428632929292E7265706C616365282F5C622861295C622F672C66292E7265706C6163';
wwv_flow_api.g_varchar2_table(41) := '65282F5C622841295C622F672C76293B6E2E76616C286D297D3B2F416E64726F69647C7765624F537C6950686F6E657C695061647C69506F647C426C61636B42657272797C49454D6F62696C657C4F70657261204D696E692F692E74657374286E617669';
wwv_flow_api.g_varchar2_table(42) := '6761746F722E757365724167656E7429262628613D2130292C752E66696E6428222E74642D74696D65207370616E22292E6F6E2822636C69636B222C66756E6374696F6E2865297B76617220643D742874686973293B752E66696E6428222E74642D7469';
wwv_flow_api.g_varchar2_table(43) := '6D65207370616E22292E72656D6F7665436C61737328226F6E22292C642E616464436C61737328226F6E22293B766172206E3D7061727365496E7428642E617474722822646174612D69642229293B303D3D642E696E64657828293F6465673D4D617468';
wwv_flow_api.g_varchar2_table(44) := '2E726F756E64283336302A6E2F3233293A6465673D4D6174682E726F756E64283336302A6E2F3539292C763D2D312C6D3D6465672C703D6465672C6728646567297D292C752E66696E6428222E74642D64656722292E6F6E2822746F7563687374617274';
wwv_flow_api.g_varchar2_table(45) := '206D6F757365646F776E222C66756E6374696F6E2865297B6828292C652E70726576656E7444656661756C7428292C636C656172496E74657276616C2864292C752E66696E6428222E74642D64656722292E72656D6F7665436C617373282274642D6E22';
wwv_flow_api.g_varchar2_table(46) := '292C752E66696E6428222E74642D73656C65637422292E72656D6F7665436C617373282274642D72756262657222292C6F3D21303B766172206E2C692C722C732C6C3D752E6F666673657428292C633D7B793A6C2E746F702B752E68656967687428292F';
wwv_flow_api.g_varchar2_table(47) := '322C783A6C2E6C6566742B752E776964746828292F327D2C663D3138302F4D6174682E50493B752E72656D6F7665436C617373282274642D72756262657222292C742877696E646F77292E6F6E2822746F7563686D6F7665206D6F7573656D6F7665222C';
wwv_flow_api.g_varchar2_table(48) := '66756E6374696F6E2874297B313D3D6F262628613F6D6F76653D742E6F726967696E616C4576656E742E746F75636865735B305D3A6D6F76653D742C6E3D632E792D6D6F76652E70616765592C693D632E782D6D6F76652E70616765582C723D4D617468';
wwv_flow_api.g_varchar2_table(49) := '2E6174616E32286E2C69292A662C303E72262628723D3336302B72292C2D313D3D76262628763D72292C733D4D6174682E666C6F6F7228722D762B6D292C303E733F733D3336302B733A733E33363026262873253D333630292C67287329297D297D292C';
wwv_flow_api.g_varchar2_table(50) := '6C2E6D6F757365776865656C2626752E6F6E28226D6F757365776865656C222C66756E6374696F6E2874297B742E70726576656E7444656661756C7428292C752E66696E6428222E74642D64656722292E72656D6F7665436C617373282274642D6E2229';
wwv_flow_api.g_varchar2_table(51) := '2C742E6F726967696E616C4576656E742E776865656C44656C74613E303F3336303E3D70262628742E6F726967696E616C4576656E742E776865656C44656C74613C3D3132303F702B2B3A742E6F726967696E616C4576656E742E776865656C44656C74';
wwv_flow_api.g_varchar2_table(52) := '613E313230262628702B3D3230292C703E333630262628703D3029293A703E3D30262628742E6F726967696E616C4576656E742E776865656C44656C74613E3D2D3132303F702D2D3A742E6F726967696E616C4576656E742E776865656C44656C74613C';
wwv_flow_api.g_varchar2_table(53) := '2D313230262628702D3D3230292C303E70262628703D33363029292C763D2D312C6D3D702C672870297D292C7428646F63756D656E74292E6F6E2822746F756368656E64206D6F7573657570222C66756E6374696F6E28297B6F2626286F3D21312C6C2E';
wwv_flow_api.g_varchar2_table(54) := '6175746F737769746368262628752E66696E6428222E74642D74696D65207370616E22292E746F67676C65436C61737328226F6E22292C752E66696E6428222E74642D74696D65207370616E2E6F6E22292E636C69636B2829292C752E66696E6428222E';
wwv_flow_api.g_varchar2_table(55) := '74642D64656722292E616464436C617373282274642D6E22292C752E66696E6428222E74642D73656C65637422292E616464436C617373282274642D7275626265722229297D293B766172206B3D66756E6374696F6E2874297B76617220652C642C6F3D';
wwv_flow_api.g_varchar2_table(56) := '6E657720446174652C613D752E66696E6428222E74642D74696D65207370616E3A666972737422292C723D752E66696E6428222E74642D74696D65207370616E3A6C61737422293B6966286E2E76616C28292E6C656E6774682626216C2E736574437572';
wwv_flow_api.g_varchar2_table(57) := '72656E7454696D65297B76617220732C633D2F5C642B2F672C663D6E2E76616C28292E73706C697428223A22293B663F28653D665B305D2E6D617463682863292C643D665B315D2E6D617463682863292C2D31213D6E2E76616C28292E696E6465784F66';
wwv_flow_api.g_varchar2_table(58) := '2822616D22297C7C2D31213D6E2E76616C28292E696E6465784F662822414D22297C7C2D31213D6E2E76616C28292E696E6465784F662822706D22297C7C2D31213D6E2E76616C28292E696E6465784F662822504D22293F28733D2D31213D6E2E76616C';
wwv_flow_api.g_varchar2_table(59) := '28292E696E6465784F662822616D22297C7C2D31213D6E2E76616C28292E696E6465784F662822414D22293F21303A21312C733F31323D3D65262628653D30293A31333E65262628653D7061727365496E742865292B31322C32343D3D65262628653D30';
wwv_flow_api.g_varchar2_table(60) := '2929293A32343D3D65262628653D3029293A28653D69287061727365496E7428612E746578742829293F612E7465787428293A6F2E676574486F7572732829292C643D69287061727365496E7428722E746578742829293F722E7465787428293A6F2E67';
wwv_flow_api.g_varchar2_table(61) := '65744D696E75746573282929297D656C736520653D69287061727365496E7428612E746578742829293F612E7465787428293A6F2E676574486F7572732829292C643D69287061727365496E7428722E746578742829293F722E7465787428293A6F2E67';
wwv_flow_api.g_varchar2_table(62) := '65744D696E757465732829293B612E617474722822646174612D6964222C65292E746578742865292C722E617474722822646174612D6964222C64292E746578742864292C6D3D4D6174682E726F756E64283336302A652F3233292C752E66696E642822';
wwv_flow_api.g_varchar2_table(63) := '2E74642D6C616E6365747465206469763A666972737422292E63737328227472616E73666F726D222C22726F7461746528222B4D6174682E726F756E64283336302A642F3539292B226465672922292C67286D292C703D6D2C763D2D317D3B6B28292C6E';
wwv_flow_api.g_varchar2_table(64) := '2E666F6375732866756E6374696F6E2874297B742E70726576656E7444656661756C7428292C6E2E626C757228297D292C6E2E636C69636B2866756E6374696F6E2874297B636C656172496E74657276616C2873292C632E72656D6F7665436C61737328';
wwv_flow_api.g_varchar2_table(65) := '2274642D666164656F757422292C632E616464436C617373282274642D73686F7722292E616464436C617373282274642D222B6C2E696E69745F616E696D6174696F6E292C752E637373287B746F703A6E2E6F666673657428292E746F702B286E2E6F75';
wwv_flow_api.g_varchar2_table(66) := '74657248656967687428292D38292C6C6566743A6E2E6F666673657428292E6C6566742B6E2E6F75746572576964746828292F322D752E6F75746572576964746828292F327D292C752E686173436C617373282274642D696E69742229262628643D7365';
wwv_flow_api.g_varchar2_table(67) := '74496E74657276616C2866756E6374696F6E28297B752E66696E6428222E74642D73656C65637422292E616464436C617373282274642D616C65727422292C73657454696D656F75742866756E6374696F6E28297B752E66696E6428222E74642D73656C';
wwv_flow_api.g_varchar2_table(68) := '65637422292E72656D6F7665436C617373282274642D616C65727422297D2C316533297D2C326533292C752E72656D6F7665436C617373282274642D696E69742229297D292C662E636C69636B2866756E6374696F6E28297B632E616464436C61737328';
wwv_flow_api.g_varchar2_table(69) := '2274642D666164656F757422292E72656D6F7665436C617373282274642D222B6C2E696E69745F616E696D6174696F6E292C733D73657454696D656F75742866756E6374696F6E28297B632E72656D6F7665436C617373282274642D73686F7722297D2C';
wwv_flow_api.g_varchar2_table(70) := '333030297D292C742877696E646F77292E6F6E2822726573697A65222C66756E6374696F6E28297B6828292C752E637373287B746F703A6E2E6F666673657428292E746F702B286E2E6F7574657248656967687428292D38292C6C6566743A6E2E6F6666';
wwv_flow_api.g_varchar2_table(71) := '73657428292E6C6566742B6E2E6F75746572576964746828292F322D752E6F75746572576964746828292F327D297D297D297D7D286A5175657279293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(38844944394927153997)
,p_plugin_id=>wwv_flow_api.id(69777536282821115098)
,p_file_name=>'server/lib/timedropper/timedropper.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(12643124569201389)
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
,p_navigation_list_id=>wwv_flow_api.id(12522824269201279)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(12614637437201357)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(12642836344201389)
,p_nav_bar_list_template_id=>wwv_flow_api.id(12614406109201356)
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
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220222093944'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'TICKET'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220223104854'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12654225372201456)
,p_plug_name=>'TICKET'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12564211764201328)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12729279200116737)
,p_plug_name=>'MENU'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--cols:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_api.id(12568946948201329)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(13068194898252257)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(12604026946201351)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'CREAR TICKET'
,p_step_title=>'CREAR TICKET'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220222104241'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9243844762939514)
,p_plug_name=>'TICKET'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12568946948201329)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9244869151939524)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(9243844762939514)
,p_button_name=>'CREAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_image_alt=>'Crear'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9243914411939515)
,p_name=>'P2_SOLICITANTE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Solicitante'
,p_source=>'SOLICITANTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT EMPLEADOS,TO_NUMBER(EMPLEADO) FROM VISTA_EMPLEADOS'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244043502939516)
,p_name=>'P2_ASUNTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Asunto'
,p_source=>'ASUNTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244181258939517)
,p_name=>'P2_DEPARTAMENTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Departamento'
,p_source=>'DEPARTAMENTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT DESCRIPCION,DEPARTAMENTO FROM DEPARTAMENTO'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244255896939518)
,p_name=>'P2_PRIORIDAD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prioridad'
,p_source=>'PRIORIDAD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:CRITICA;1,ALTA;2,NORMAL;3,BAJA;4'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244370275939519)
,p_name=>'P2_ASIGNADO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Asignado'
,p_source=>'ASIGNADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:JUAN CARLOS ESTRADA;939,FERNANDO LOPEZ;1750,VICTOR PAREDES;1462'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244587816939521)
,p_name=>'P2_ESPECIFIQUE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Especifique'
,p_source=>'DETALLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244688789939522)
,p_name=>'P2_SISTEMA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sistema'
,p_source=>'SISTEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:APEX;APEX,SOFTLAND;SOFT,LPSYS;LPSYS,GPS;GPS,CAMARAS;CAM,ASISTENCIA;ASIS,MANTENIMIENTO;MANTE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9244768445939523)
,p_name=>'P2_ADJUNTO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Adjunto'
,p_source=>'ADJUNTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(12620663113201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'CREATE_DATE'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9245057996939526)
,p_name=>'P2_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9243844762939514)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9245164936939527)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'New'
,p_attribute_02=>'TICKET'
,p_attribute_03=>'P2_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9244869151939524)
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'TICKET'
,p_step_title=>'TICKET'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220224092041'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12679902184600765)
,p_plug_name=>'TICKET'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12568946948201329)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12680363370600767)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_api.id(12679902184600765)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'CREAR'
,p_button_position=>'BODY'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12680470937600767)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12679902184600765)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12680607524600767)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12679902184600765)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12680522476600767)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12679902184600765)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12682275293600768)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12682695192600770)
,p_name=>'P3_ROWID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12683019372600776)
,p_name=>'P3_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12683425173600776)
,p_name=>'P3_SOLICITANTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Solicitante'
,p_source=>'SOLICITANTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT EMPLEADOS,TO_NUMBER(EMPLEADO) FROM VISTA_EMPLEADOS'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12683848283600776)
,p_name=>'P3_ASUNTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Asunto'
,p_source=>'ASUNTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12684245505600776)
,p_name=>'P3_DEPARTAMENTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Departamento'
,p_source=>'DEPARTAMENTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPCION,DEPARTAMENTO FROM DEPARTAMENTO',
''))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12684614510600776)
,p_name=>'P3_PRIORIDAD'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prioridad'
,p_source=>'PRIORIDAD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1 CRITICA;1,2 ALTA;2,3 NORMAL;3,4 BAJA;4'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12685488894600776)
,p_name=>'P3_DETALLE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ESPECIFIQUE'
,p_source=>'DETALLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12685821154600778)
,p_name=>'P3_SISTEMA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Sistema'
,p_source=>'SISTEMA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1 APEX;APEX,2 SOTLAND;SOFT,3 LPSYS;LPSYS,4 ASISTENCIA;ASIS,5 MANTENIMIENTO;MAN,6 GPS;GPS,7 CAMARAS;CAM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12686204252600778)
,p_name=>'P3_ESTADO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P'
,p_source=>'ESTADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12686687207600778)
,p_name=>'P3_FECHACREA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SYSDATE()'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'FECHACREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12687062039600778)
,p_name=>'P3_USUARIOCREA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_item_default=>':APP_USER'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'USUARIOCREA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12687451305600778)
,p_name=>'P3_IMAGEN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imagen'
,p_source=>'IMAGEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(12620663113201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_02=>'MIMETYPE'
,p_attribute_03=>'FILENAME'
,p_attribute_05=>'FECHACREA'
,p_attribute_06=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12729461280116739)
,p_name=>'P3_PADRE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12679902184600765)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Padre'
,p_source=>'PADRE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT ASUNTO,ID FROM TICKET WHERE PADRE=0'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12691831643600779)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TICKET'
,p_attribute_02=>'TICKET'
,p_attribute_03=>'P3_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12692295418600779)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TICKET'
,p_attribute_02=>'TICKET'
,p_attribute_03=>'P3_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12692698095600779)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12680522476600767)
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'RP'
,p_step_title=>'RP'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220308120500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9245680213939532)
,p_plug_name=>'REPORT'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12568946948201329)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9245722082939533)
,p_plug_name=>'.'
,p_parent_plug_id=>wwv_flow_api.id(9245680213939532)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12567820121201328)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
' ''ASIGNAR'',',
'A.ID,A.SOLICITANTE,B.NOMBRE_PILA||'' ''||B.PRIMER_APELLIDO||'' ''||B.SEGUNDO_APELLIDO as NOMBRE_SOLICITANTE,A.ASUNTO,',
'C.DESCRIPCION AS DEPARTAMENTO,',
'CASE A.PRIORIDAD WHEN 1 THEN ''CRITICO''',
'WHEN 2 THEN ''ALTO''',
'WHEN 3 THEN ''NORMAL''',
'WHEN 4 THEN ''BAJO''',
'ELSE ''BAJO'' END AS PRIORIDAD,',
'A.ASIGNADO,',
'A.DETALLE,A.SISTEMA,',
'CASE A.ESTADO WHEN ''P'' THEN ''PENDIENTE''',
'WHEN ''A'' THEN ''ASIGNADO''',
'WHEN ''T'' THEN ''TERMINADO''',
'ELSE ''SIN_ESTADO'' END AS ESTADO,',
'ESTADO AS ESTA,',
'A.FECHACREA,''IMAGEN'',',
'A.FECHATERMINA,A.FECHAINICIA,',
'(A.FECHATERMINA-A.FECHAINICIA)*24 as tiempo_trascurrido,',
'(A.FECHAreal-A.FECHAInicia)*24 as tiempo_real,',
'PADRE,d.NOMBRE_PILA||'' ''||d.PRIMER_APELLIDO||'' ''||d.SEGUNDO_APELLIDO as Nombre_Asignado',
' FROM transporte.TICKET A',
'INNER JOIN transporte.VISTA_EMPLEADOS B ON A.SOLICITANTE=TO_NUMBER(B.EMPLEADO)',
'full join transporte.vista_empleados d on a.asignado=to_number(d.empleado)',
'INNER JOIN DEPARTAMENTO C ON A.DEPARTAMENTO=C.DEPARTAMENTO'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
 p_id=>wwv_flow_api.id(9245832299939534)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP:P8_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'LP'
,p_internal_uid=>9245832299939534
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9245949543939535)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246053706939536)
,p_db_column_name=>'SOLICITANTE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Solicitante'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246199222939537)
,p_db_column_name=>'NOMBRE_SOLICITANTE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nombre Solicitante'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246274531939538)
,p_db_column_name=>'ASUNTO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Asunto'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246323201939539)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246415337939540)
,p_db_column_name=>'PRIORIDAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Prioridad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246567541939541)
,p_db_column_name=>'ASIGNADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Asignado'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246656666939542)
,p_db_column_name=>'DETALLE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246743649939543)
,p_db_column_name=>'SISTEMA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Sistema'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246801950939544)
,p_db_column_name=>'ESTADO'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9246929338939545)
,p_db_column_name=>'FECHACREA'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fechacrea'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/MM/YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9247029421939546)
,p_db_column_name=>'''IMAGEN'''
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'IMAGEN'
,p_column_link=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:RP:P5_ID:#ID#'
,p_column_linktext=>'#''IMAGEN''#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9247122969939547)
,p_db_column_name=>'FECHAINICIA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Fechainicia'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/Mm/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(9247265080939548)
,p_db_column_name=>'FECHATERMINA'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Fechatermina'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD/Mm/YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12726657886116711)
,p_db_column_name=>'''ASIGNAR'''
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'ASIGNAR'
,p_column_link=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP:P7_ID,P7_ASIGNADO,P7_FECHAINICIA,P7_FECHATERMINA:#ID#,#ASIGNADO#,#FECHAINICIA#,#FECHATERMINA#'
,p_column_linktext=>'#''ASIGNAR''#'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12727961979116724)
,p_db_column_name=>'TIEMPO_TRASCURRIDO'
,p_display_order=>160
,p_column_identifier=>'R'
,p_column_label=>'Tiempo Trascurrido'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12728923425116734)
,p_db_column_name=>'ESTA'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Esta'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12729056056116735)
,p_db_column_name=>'TIEMPO_REAL'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Tiempo Real'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00MI'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12729329520116738)
,p_db_column_name=>'PADRE'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Padre'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14883547834426203)
,p_db_column_name=>'NOMBRE_ASIGNADO'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Nombre Asignado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12722439209086871)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'127225'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPARTAMENTO:''ASIGNAR'':ID:SOLICITANTE:NOMBRE_SOLICITANTE:ASUNTO:PRIORIDAD:ASIGNADO:DETALLE:FECHACREA:''IMAGEN'':FECHAINICIA:FECHATERMINA:TIEMPO_TRASCURRIDO:TIEMPO_REAL:ESTADO:SISTEMA::PADRE:NOMBRE_ASIGNADO'
,p_break_on=>'DEPARTAMENTO:0:0:0:0:0'
,p_break_enabled_on=>'DEPARTAMENTO:0:0:0:0:0'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(13441026685330970)
,p_report_id=>wwv_flow_api.id(12722439209086871)
,p_name=>'ASIGNADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'ASIGNADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''ASIGNADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99FF99'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(13441429333330970)
,p_report_id=>wwv_flow_api.id(12722439209086871)
,p_name=>'PENDIENTE'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'PENDIENTE'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''PENDIENTE''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFDD44'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(13441856557330970)
,p_report_id=>wwv_flow_api.id(12722439209086871)
,p_name=>'TERMINADO'
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'='
,p_expr=>'TERMINADO'
,p_condition_sql=>' (case when ("ESTADO" = #APXWS_EXPR#) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# = ''TERMINADO''  '
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#99CCFF'
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(13440611965330970)
,p_report_id=>wwv_flow_api.id(12722439209086871)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ESTADO'
,p_operator=>'!='
,p_expr=>'TERMINADO'
,p_condition_sql=>'"ESTADO" != #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# != ''TERMINADO''  '
,p_enabled=>'Y'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'IMAGEN'
,p_page_mode=>'MODAL'
,p_step_title=>'IMAGEN'
,p_step_sub_title=>'IMAGEN'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220222130027'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12723564469097340)
,p_plug_name=>'IMAGEN'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12567820121201328)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT "ROWID",decode(nvl(dbms_lob.getlength(IMAGEN),0),0,null,',
'               ''<img src="''||APEX_UTIL.GET_BLOB_FILE_SRC(''P3_IMAGEN'',ROWID)||''" height="500" width="500" />''',
'                  )  imagen FROM TICKET WHERE ID=:P5_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12723680977097340)
,p_name=>'IMAGEN'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>12723680977097340
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12726483835116709)
,p_db_column_name=>'IMAGEN'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>'Imagen'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12726505960116710)
,p_db_column_name=>'ROWID'
,p_display_order=>20
,p_column_identifier=>'I'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12725025216114118)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'127251'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IMAGEN:ROWID'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(9247303719939549)
,p_name=>'P5_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12723564469097340)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'SEGUIMIENTO'
,p_page_mode=>'MODAL'
,p_step_title=>'SEGUIMIENTO'
,p_step_sub_title=>'SEGUIMIENTO'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220222123712'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12733344043155898)
,p_plug_name=>'SEGUIMIENTO'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12567820121201328)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'TICKET'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12733444078155898)
,p_name=>'SEGUIMIENTO'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>12733444078155898
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12733844085155901)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12734235926155901)
,p_db_column_name=>'SOLICITANTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Solicitante'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12734634971155901)
,p_db_column_name=>'ASUNTO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Asunto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12735002977155901)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12735478313155901)
,p_db_column_name=>'PRIORIDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Prioridad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12735860543155901)
,p_db_column_name=>'ASIGNADO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Asignado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12736217723155901)
,p_db_column_name=>'DETALLE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Detalle'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12736661419155901)
,p_db_column_name=>'SISTEMA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Sistema'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12737032815155903)
,p_db_column_name=>'ESTADO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12737430035155903)
,p_db_column_name=>'FECHACREA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Fechacrea'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12737896584155903)
,p_db_column_name=>'USUARIOCREA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Usuariocrea'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12738209661155903)
,p_db_column_name=>'FECHAINICIA'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Fechainicia'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12738660395155903)
,p_db_column_name=>'FECHATERMINA'
,p_display_order=>14
,p_column_identifier=>'M'
,p_column_label=>'Fechatermina'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12739071536155904)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>15
,p_column_identifier=>'N'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12739401012155904)
,p_db_column_name=>'FILENAME'
,p_display_order=>16
,p_column_identifier=>'O'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12747509325266203)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'127476'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:SOLICITANTE:ASUNTO:DEPARTAMENTO:PRIORIDAD:ASIGNADO:DETALLE:SISTEMA:ESTADO:FECHACREA:USUARIOCREA:FECHAINICIA:FECHATERMINA:MIMETYPE:FILENAME'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'ASIGNAR'
,p_page_mode=>'MODAL'
,p_step_title=>'ASIGNAR'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'475'
,p_dialog_width=>'1200'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220224160013'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12726701342116712)
,p_plug_name=>'.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12568946948201329)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12727240273116717)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(12726701342116712)
,p_button_name=>'ASIGNAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_image_alt=>'Asignar'
,p_button_position=>'BODY'
,p_grid_new_row=>'Y'
,p_grid_column_span=>6
,p_grid_column=>4
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12727661785116721)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12726822797116713)
,p_name=>'P7_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12726701342116712)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12726935331116714)
,p_name=>'P7_ASIGNADO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12726701342116712)
,p_prompt=>'Asignado'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:JUAN CARLOS ESTRADA;939,FERNANDO LOPEZ;1750,VICTOR PAREDES;1462'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12727376499116718)
,p_name=>'P7_FECHAINICIA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12726701342116712)
,p_prompt=>'Inicia'
,p_format_mask=>'DD/Mm/YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12727497856116719)
,p_name=>'P7_FECHATERMINA'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12726701342116712)
,p_prompt=>'Fin'
,p_format_mask=>'DD/Mm/YYYY HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(12620705671201364)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13394991701943408)
,p_validation_name=>'fechainicia'
,p_validation_sequence=>10
,p_validation=>'P7_FECHAINICIA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'FALTA FECHA INICIA !!!!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13395088332943409)
,p_validation_name=>'FECHAFINAL'
,p_validation_sequence=>20
,p_validation=>'P7_FECHATERMINA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'FALTA FECHA FINAL !!!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13395182310943410)
,p_validation_name=>'ASIGNADO'
,p_validation_sequence=>30
,p_validation=>'P7_ASIGNADO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'ASIGNESE NO :V'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12727523737116720)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update ticket set asignado=:p7_asignado,fechainicia=to_date(:p7_fechainicia,''DD/Mm/YYYY HH24:MI:SS''),',
'fechatermina=to_date(:p7_fechatermina,''DD/Mm/YYYY HH24:MI:SS''),estado=''A'' where id=:p7_id;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'TERMINAR'
,p_page_mode=>'MODAL'
,p_step_title=>'TERMINAR'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'480'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220224091933'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12728333559116728)
,p_plug_name=>'.'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(12568946948201329)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12728641011116731)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12728333559116728)
,p_button_name=>'TERMINAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_image_alt=>'Terminar'
,p_button_position=>'BELOW_BOX'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12728855047116733)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12728456205116729)
,p_name=>'P8_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12728333559116728)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12728739212116732)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>'UPDATE TICKET SET ESTADO=''T'',fechareal=sysdate WHERE ID=:P8_ID;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(12643124569201389)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'TICKET - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(12529020822201304)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220222093945'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12647319600201434)
,p_plug_name=>'TICKET'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(12568426359201329)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12652002341201448)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(12647319600201434)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(12547405742201318)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12650181074201445)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12647319600201434)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(12621206114201367)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12647761777201439)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12647319600201434)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12620450182201362)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12648190890201440)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12647319600201434)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12620450182201362)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12649219017201442)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12647319600201434)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(12648406534201440)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(12620450182201362)
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
 p_id=>wwv_flow_api.id(12650907576201448)
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
 p_id=>wwv_flow_api.id(12650535854201446)
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
 p_id=>wwv_flow_api.id(12651740679201448)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12651336897201448)
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
