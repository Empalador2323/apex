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
,p_default_application_id=>162
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 162 - Encuesta
--
-- Application Export:
--   Application:     162
--   Name:            Encuesta
--   Date and Time:   12:24 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                      4
--     Items:                   16
--     Processes:                5
--     Regions:                  6
--     Buttons:                  3
--   Shared Components:
--     Logic:
--     Navigation:
--       Lists:                  2
--       Breadcrumbs:            1
--         Entries:              1
--     Security:
--       Authentication:         3
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
--       Plug-ins:               5
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,162)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Encuesta')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'162')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'55CBE071CE8ABD08F45F7E0188BFBA8683982BFC29FB788A9F40902AF256545F'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.10.15.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(123542968984204614)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Encuesta'
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
,p_substitution_value_01=>'Encuesta'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220323163800'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(120767767984050698)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(120897850663051533)
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
 p_id=>wwv_flow_api.id(120887767586051175)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(120899424564051562)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(120899965374051562)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(120899424564051562)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(120900321560051564)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(120899424564051562)
,p_list_item_current_type=>'TARGET_PAGE'
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
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223333039464442222F3E3C672069643D2269636F6E73223E3C706174682063';
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
 p_id=>wwv_flow_api.id(120889040479051278)
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
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233330394644423B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(120889395345051289)
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
 p_id=>wwv_flow_api.id(120764853344050654)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(120765163383050660)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(120765446776050660)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(120765787002050660)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(120766084273050660)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(120766357261050660)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(120766648994050660)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(121203519220949013)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'PLUGIN_NL.DETORA.APEX.TOUCH_TIME_INPUT_V2'
,p_attribute_01=>'hh24:mi'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(121305686378352259)
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
 p_id=>wwv_flow_api.id(120890662130051291)
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
 p_id=>wwv_flow_api.id(120893201854051391)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(120893201854051391)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(120893636424051398)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(120891279709051314)
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
 p_id=>wwv_flow_api.id(120767258833050685)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(120767457604050689)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(120768079511050724)
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
 p_id=>wwv_flow_api.id(120768329554050762)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120768618442050762)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120768968372050763)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120769290363050763)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120769512064050763)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120769838923050763)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120770195409050763)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120770415643050763)
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
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
 p_id=>wwv_flow_api.id(120770890415050792)
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
 p_id=>wwv_flow_api.id(120771124346050792)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120771447433050792)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120771705401050792)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120772023558050792)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120772363120050793)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120772653788050793)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120772964573050793)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120773247872050795)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120773511914050795)
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
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
 p_id=>wwv_flow_api.id(120773995715050795)
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
 p_id=>wwv_flow_api.id(120774213933050795)
,p_page_template_id=>wwv_flow_api.id(120773995715050795)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120774579131050795)
,p_page_template_id=>wwv_flow_api.id(120773995715050795)
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
 p_id=>wwv_flow_api.id(120774751319050795)
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
 p_id=>wwv_flow_api.id(120775000924050798)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120775377458050798)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120775608652050798)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120775959499050798)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120776260459050798)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120776571318050813)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120776845347050815)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120777122871050815)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120777457452050815)
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
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
 p_id=>wwv_flow_api.id(120777810697050816)
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
 p_id=>wwv_flow_api.id(120778193201050820)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120778434030050821)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120778740157050821)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120779016712050821)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120779367756050821)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120779668828050821)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120779931458050821)
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
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
 p_id=>wwv_flow_api.id(120780349044050821)
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
 p_id=>wwv_flow_api.id(120780621963050823)
,p_page_template_id=>wwv_flow_api.id(120780349044050821)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120780983583050823)
,p_page_template_id=>wwv_flow_api.id(120780349044050821)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120781242068050823)
,p_page_template_id=>wwv_flow_api.id(120780349044050821)
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
 p_id=>wwv_flow_api.id(120781803644050824)
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
 p_id=>wwv_flow_api.id(120782113050050824)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120782412422050824)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120782766483050824)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120783038039050824)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120783302541050824)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120783657847050826)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120783946393050826)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120784243249050826)
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
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
 p_id=>wwv_flow_api.id(120784682540050827)
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
 p_id=>wwv_flow_api.id(120784929077050829)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120785229574050831)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120785583661050831)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120785883945050831)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120786195279050832)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120786487026050832)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120786775393050832)
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
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
 p_id=>wwv_flow_api.id(120787139269050832)
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
 p_id=>wwv_flow_api.id(120787463918050834)
,p_page_template_id=>wwv_flow_api.id(120787139269050832)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120787736717050834)
,p_page_template_id=>wwv_flow_api.id(120787139269050832)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(120788068453050834)
,p_page_template_id=>wwv_flow_api.id(120787139269050832)
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
 p_id=>wwv_flow_api.id(120866014611050971)
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
 p_id=>wwv_flow_api.id(120866146022050985)
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
 p_id=>wwv_flow_api.id(120866209083050985)
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
 p_id=>wwv_flow_api.id(120788684447050837)
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
 p_id=>wwv_flow_api.id(120788946688050849)
,p_plug_template_id=>wwv_flow_api.id(120788684447050837)
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
 p_id=>wwv_flow_api.id(120792394025050863)
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
 p_id=>wwv_flow_api.id(120792538534050865)
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
 p_id=>wwv_flow_api.id(120792809979050865)
,p_plug_template_id=>wwv_flow_api.id(120792538534050865)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(120793113494050865)
,p_plug_template_id=>wwv_flow_api.id(120792538534050865)
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
 p_id=>wwv_flow_api.id(120793343197050865)
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
 p_id=>wwv_flow_api.id(120793644449050865)
,p_plug_template_id=>wwv_flow_api.id(120793343197050865)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(120793959391050865)
,p_plug_template_id=>wwv_flow_api.id(120793343197050865)
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
 p_id=>wwv_flow_api.id(120795548342050866)
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
 p_id=>wwv_flow_api.id(120795883922050868)
,p_plug_template_id=>wwv_flow_api.id(120795548342050866)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(120796137637050868)
,p_plug_template_id=>wwv_flow_api.id(120795548342050866)
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
 p_id=>wwv_flow_api.id(120802779695050873)
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
 p_id=>wwv_flow_api.id(120803001502050874)
,p_plug_template_id=>wwv_flow_api.id(120802779695050873)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(120803358580050874)
,p_plug_template_id=>wwv_flow_api.id(120802779695050873)
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
 p_id=>wwv_flow_api.id(120807392499050880)
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
 p_id=>wwv_flow_api.id(120809153997050882)
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
 p_id=>wwv_flow_api.id(120809492582050882)
,p_plug_template_id=>wwv_flow_api.id(120809153997050882)
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
 p_id=>wwv_flow_api.id(120810665638050884)
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
 p_id=>wwv_flow_api.id(120810969531050884)
,p_plug_template_id=>wwv_flow_api.id(120810665638050884)
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
 p_id=>wwv_flow_api.id(120812732321050885)
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
 p_id=>wwv_flow_api.id(120813346879050885)
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
 p_id=>wwv_flow_api.id(120813689278050887)
,p_plug_template_id=>wwv_flow_api.id(120813346879050885)
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
 p_id=>wwv_flow_api.id(120813832866050887)
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
 p_id=>wwv_flow_api.id(120814170017050893)
,p_plug_template_id=>wwv_flow_api.id(120813832866050887)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(120814405567050893)
,p_plug_template_id=>wwv_flow_api.id(120813832866050887)
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
 p_id=>wwv_flow_api.id(120820657175050899)
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
 p_id=>wwv_flow_api.id(120820975534050899)
,p_plug_template_id=>wwv_flow_api.id(120820657175050899)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(120821273624050899)
,p_plug_template_id=>wwv_flow_api.id(120820657175050899)
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
 p_id=>wwv_flow_api.id(120823224731050901)
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
 p_id=>wwv_flow_api.id(120824282133050902)
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
 p_id=>wwv_flow_api.id(120824573994050902)
,p_plug_template_id=>wwv_flow_api.id(120824282133050902)
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
 p_id=>wwv_flow_api.id(120844934594050930)
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
 p_id=>wwv_flow_api.id(120848911348050944)
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
 p_id=>wwv_flow_api.id(120853912301050948)
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
 p_id=>wwv_flow_api.id(120855566104050952)
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
 p_id=>wwv_flow_api.id(120857985554050954)
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
 p_id=>wwv_flow_api.id(120858988260050955)
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
 p_id=>wwv_flow_api.id(120859321849050957)
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
 p_id=>wwv_flow_api.id(120859587497050957)
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
 p_id=>wwv_flow_api.id(120859904032050957)
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
 p_id=>wwv_flow_api.id(120861500341050958)
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
 p_id=>wwv_flow_api.id(120862529463050960)
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
 p_id=>wwv_flow_api.id(120864113501050960)
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
 p_id=>wwv_flow_api.id(120825521458050904)
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
 p_id=>wwv_flow_api.id(120825707676050910)
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
 p_id=>wwv_flow_api.id(120829709695050915)
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
 p_id=>wwv_flow_api.id(120834533113050918)
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
 p_id=>wwv_flow_api.id(120835399465050918)
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
 p_id=>wwv_flow_api.id(120837941448050921)
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
 p_id=>wwv_flow_api.id(120838168093050921)
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
 p_id=>wwv_flow_api.id(120838168093050921)
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
 p_id=>wwv_flow_api.id(120840748359050924)
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
 p_id=>wwv_flow_api.id(120841170648050924)
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
 p_id=>wwv_flow_api.id(120843170488050926)
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
 p_id=>wwv_flow_api.id(120865331184050963)
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
 p_id=>wwv_flow_api.id(120865492246050968)
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
 p_id=>wwv_flow_api.id(120865545939050968)
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
 p_id=>wwv_flow_api.id(120865664659050968)
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
 p_id=>wwv_flow_api.id(120865712524050969)
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
 p_id=>wwv_flow_api.id(120865833413050969)
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
 p_id=>wwv_flow_api.id(120865961385050969)
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
 p_id=>wwv_flow_api.id(120866932051050988)
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
 p_id=>wwv_flow_api.id(120867118128051040)
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
 p_id=>wwv_flow_api.id(120867053377050997)
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
 p_id=>wwv_flow_api.id(120868309818051083)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(120784682540050827)
,p_default_dialog_template=>wwv_flow_api.id(120780349044050821)
,p_error_template=>wwv_flow_api.id(120773995715050795)
,p_printer_friendly_template=>wwv_flow_api.id(120784682540050827)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(120773995715050795)
,p_default_button_template=>wwv_flow_api.id(120866146022050985)
,p_default_region_template=>wwv_flow_api.id(120813832866050887)
,p_default_chart_template=>wwv_flow_api.id(120813832866050887)
,p_default_form_template=>wwv_flow_api.id(120813832866050887)
,p_default_reportr_template=>wwv_flow_api.id(120813832866050887)
,p_default_tabform_template=>wwv_flow_api.id(120813832866050887)
,p_default_wizard_template=>wwv_flow_api.id(120813832866050887)
,p_default_menur_template=>wwv_flow_api.id(120823224731050901)
,p_default_listr_template=>wwv_flow_api.id(120813832866050887)
,p_default_irr_template=>wwv_flow_api.id(120812732321050885)
,p_default_report_template=>wwv_flow_api.id(120838168093050921)
,p_default_label_template=>wwv_flow_api.id(120865664659050968)
,p_default_menu_template=>wwv_flow_api.id(120866932051050988)
,p_default_calendar_template=>wwv_flow_api.id(120867053377050997)
,p_default_list_template=>wwv_flow_api.id(120853912301050948)
,p_default_nav_list_template=>wwv_flow_api.id(120861500341050958)
,p_default_top_nav_list_temp=>wwv_flow_api.id(120861500341050958)
,p_default_side_nav_list_temp=>wwv_flow_api.id(120859587497050957)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(120793343197050865)
,p_default_dialogr_template=>wwv_flow_api.id(120792394025050863)
,p_default_option_label=>wwv_flow_api.id(120865664659050968)
,p_default_required_label=>wwv_flow_api.id(120865961385050969)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(120859321849050957)
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
 p_id=>wwv_flow_api.id(120867361113051071)
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
 p_id=>wwv_flow_api.id(120867561024051072)
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
 p_id=>wwv_flow_api.id(120867788212051072)
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
 p_id=>wwv_flow_api.id(120867913290051072)
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
 p_id=>wwv_flow_api.id(120868110893051072)
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
 p_id=>wwv_flow_api.id(120789497972050860)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120789877442050862)
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
 p_id=>wwv_flow_api.id(120790493163050862)
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
 p_id=>wwv_flow_api.id(120790892228050863)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120794207222050866)
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
 p_id=>wwv_flow_api.id(120794645558050866)
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
 p_id=>wwv_flow_api.id(120796467658050868)
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
 p_id=>wwv_flow_api.id(120797234268050870)
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
 p_id=>wwv_flow_api.id(120798409770050870)
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
 p_id=>wwv_flow_api.id(120799650742050871)
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
 p_id=>wwv_flow_api.id(120800006543050871)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120802013486050873)
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
 p_id=>wwv_flow_api.id(120805494332050876)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120807867866050882)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120808696568050882)
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
 p_id=>wwv_flow_api.id(120809715239050884)
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
 p_id=>wwv_flow_api.id(120811656965050885)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120821566883050899)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120821976131050899)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120822788790050901)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120824853442050902)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120826030937050910)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120826455864050912)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120828460326050913)
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
 p_id=>wwv_flow_api.id(120830297129050915)
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
 p_id=>wwv_flow_api.id(120832010066050916)
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
 p_id=>wwv_flow_api.id(120832865483050916)
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
 p_id=>wwv_flow_api.id(120834877683050918)
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
 p_id=>wwv_flow_api.id(120836652546050919)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120838415076050923)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120839073384050923)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120839422095050923)
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
 p_id=>wwv_flow_api.id(120841441104050924)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120845235441050940)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120846477820050941)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120847646877050943)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120849499834050944)
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
 p_id=>wwv_flow_api.id(120851477711050946)
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
 p_id=>wwv_flow_api.id(120852085553050946)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120855011046050949)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120856853041050954)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120862893742050960)
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
 p_id=>wwv_flow_api.id(120863497757050960)
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
 p_id=>wwv_flow_api.id(120864462781050962)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120866494770050987)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120868585538051149)
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
 p_id=>wwv_flow_api.id(120868919528051152)
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
 p_id=>wwv_flow_api.id(120870507070051155)
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
 p_id=>wwv_flow_api.id(120870920924051155)
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
 p_id=>wwv_flow_api.id(120872572354051157)
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
 p_id=>wwv_flow_api.id(120872967329051157)
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
 p_id=>wwv_flow_api.id(120874580347051158)
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
 p_id=>wwv_flow_api.id(120874963221051160)
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
 p_id=>wwv_flow_api.id(120876507458051161)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120876961615051161)
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
 p_id=>wwv_flow_api.id(120877379709051161)
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
 p_id=>wwv_flow_api.id(120877781364051161)
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
 p_id=>wwv_flow_api.id(120878173200051161)
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
 p_id=>wwv_flow_api.id(120878552946051161)
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
 p_id=>wwv_flow_api.id(120878981380051163)
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
 p_id=>wwv_flow_api.id(120880332841051163)
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
 p_id=>wwv_flow_api.id(120881715039051164)
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
 p_id=>wwv_flow_api.id(120882746582051164)
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
 p_id=>wwv_flow_api.id(120883107071051166)
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
 p_id=>wwv_flow_api.id(120883514609051166)
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
 p_id=>wwv_flow_api.id(120883991386051166)
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
 p_id=>wwv_flow_api.id(120884558558051166)
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
 p_id=>wwv_flow_api.id(120885129710051166)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(120885514851051167)
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
 p_id=>wwv_flow_api.id(120885928262051167)
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
 p_id=>wwv_flow_api.id(120886365684051167)
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
 p_id=>wwv_flow_api.id(120887174341051169)
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
 p_id=>wwv_flow_api.id(120770754503050787)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(120768079511050724)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120773870949050795)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(120770890415050792)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120777766866050816)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(120774751319050795)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120780265593050821)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(120777810697050816)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120781596319050823)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(120780349044050821)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120781792493050824)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(120780349044050821)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120784599941050827)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(120781803644050824)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120787094820050832)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(120784682540050827)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120788369405050834)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(120787139269050832)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120788536471050834)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(120787139269050832)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120789201586050854)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120789644474050862)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(120789497972050860)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120790034416050862)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(120789877442050862)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120790224082050862)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(120789877442050862)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120790640347050863)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(120790493163050862)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120791002534050863)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(120790892228050863)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120791216879050863)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(120789497972050860)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120791438571050863)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(120790493163050862)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120791685213050863)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(120789497972050860)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120791898213050863)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(120790493163050862)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120792034737050863)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(120789497972050860)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120792246384050863)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120788684447050837)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(120790892228050863)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120794451429050866)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(120793343197050865)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120794865656050866)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(120793343197050865)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(120794645558050866)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120795090790050866)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(120793343197050865)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120795226828050866)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(120793343197050865)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(120794645558050866)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120795400028050866)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120793343197050865)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120796607797050868)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(120796467658050868)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120796880346050868)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(120796467658050868)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120797050023050868)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(120796467658050868)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120797402960050870)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120797686749050870)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120797834904050870)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120798071505050870)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(120796467658050868)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120798262266050870)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120798636454050870)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120798850626050870)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120799023974050870)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120799271711050870)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120799415942050871)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120799881173050871)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(120799650742050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120800299845050871)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(120800006543050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120800468687050871)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(120799650742050871)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120800668433050871)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120800841198050873)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120801071072050873)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120801232978050873)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(120800006543050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120801446353050873)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120801671887050873)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120801870178050873)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120802282905050873)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(120802013486050873)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120802432006050873)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(120802013486050873)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120802611490050873)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120795548342050866)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120803698183050874)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120803881018050874)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120804021045050874)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120804281522050874)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120804483344050874)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120804649610050874)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120804814584050876)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120805034771050876)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120805290113050876)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120805665865050876)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(120805494332050876)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120805807742050876)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(120805494332050876)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120806031284050880)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(120800006543050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120806209885050880)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120806451087050880)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120806638205050880)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120806809396050880)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120807007729050880)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(120800006543050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120807255848050880)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120802779695050873)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120807658265050882)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120807392499050880)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120808057247050882)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120807392499050880)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(120807867866050882)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120808263148050882)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120807392499050880)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(120807867866050882)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120808447372050882)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120807392499050880)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(120807867866050882)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120808802918050882)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120807392499050880)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(120808696568050882)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120809012558050882)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120807392499050880)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(120808696568050882)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120809950549050884)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120809153997050882)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(120809715239050884)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120810117905050884)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120809153997050882)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120810387564050884)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120809153997050882)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120810522817050884)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120809153997050882)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120811292970050884)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120811475662050884)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120811815228050885)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(120811656965050885)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120812033696050885)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(120811656965050885)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120812261531050885)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120812487399050885)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120812676828050885)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120810665638050884)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(120811656965050885)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120813023904050885)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120812732321050885)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120813244898050885)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120812732321050885)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120814703917050893)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120814963925050893)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120815177648050893)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120815343558050893)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(120797234268050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120815595835050894)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120815731046050894)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120815972188050894)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120816103232050894)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120816361734050894)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120816597805050894)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120816777888050894)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120816963932050894)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120817176881050896)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120817317447050896)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120817519975050896)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120817717359050896)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120817970040050896)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120818190598050898)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120818360377050898)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(120798409770050870)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120818531311050898)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(120799650742050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120818784043050898)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(120800006543050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120818942407050898)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(120799650742050871)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120819103482050898)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120819392910050898)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120819534958050898)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120819770589050898)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(120800006543050871)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120819971570050898)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120820128984050898)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120820319468050899)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120820548273050899)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(120813832866050887)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(120794207222050866)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120821796023050899)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120820657175050899)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(120821566883050899)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120822191779050901)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120820657175050899)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(120821976131050899)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120822341238050901)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120820657175050899)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120822501527050901)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120820657175050899)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(120821976131050899)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120822997337050901)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120820657175050899)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(120822788790050901)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120823198860050901)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120820657175050899)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(120822788790050901)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120823511962050901)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(120823224731050901)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(120807867866050882)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120823710029050901)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(120823224731050901)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120823901157050901)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(120823224731050901)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(120807867866050882)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120824154721050902)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120823224731050901)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120825009470050902)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(120824282133050902)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(120824853442050902)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120825261678050902)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120824282133050902)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(120824853442050902)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120825421446050902)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(120824282133050902)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120826296049050910)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(120826030937050910)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120826621545050912)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120826856363050912)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(120826030937050910)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120827097557050912)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120827241366050912)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(120826030937050910)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120827472750050913)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120827699476050913)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120827885760050913)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(120826030937050910)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120828080922050913)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(120826030937050910)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120828246491050913)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120828697627050913)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120828853861050913)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120829037385050913)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120829291976050913)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120829431337050913)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120829608893050915)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120825707676050910)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120830070478050915)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120830450760050915)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(120830297129050915)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120830617518050915)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120830827509050915)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(120830297129050915)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120831065590050915)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120831214802050915)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(120830297129050915)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120831498620050916)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120831662224050916)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120831881587050916)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120832260589050916)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(120832010066050916)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120832452365050916)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(120832010066050916)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120832653581050916)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120833091131050916)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(120832865483050916)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120833210253050916)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(120832865483050916)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120833451728050916)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120833606772050916)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120833822636050918)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120834058354050918)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(120830297129050915)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120834282849050918)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120834497269050918)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120829709695050915)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120835078393050918)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120834533113050918)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(120834877683050918)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120835210373050918)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120834533113050918)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(120834877683050918)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120835622998050919)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120835868489050919)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120836063875050919)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120836298668050919)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120836479429050919)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120836895022050921)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(120836652546050919)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120837066905050921)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120837234769050921)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120837485201050921)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120837697499050921)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120837801897050921)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(120835399465050918)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120838650450050923)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(120838415076050923)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120838868177050923)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(120838415076050923)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120839277536050923)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(120839073384050923)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120839665040050923)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(120839422095050923)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120839815781050923)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(120839422095050923)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120840077606050923)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(120839422095050923)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120840269575050923)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(120839073384050923)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120840403325050924)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120840651862050924)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120838168093050921)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(120839422095050923)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120841007551050924)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(120840748359050924)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(120828460326050913)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120841642622050924)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120841864605050924)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120842096175050926)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120842256721050926)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120842415104050926)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120842626312050926)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120842866985050926)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120843085937050926)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120841170648050924)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120843406872050926)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120843606659050926)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120843811182050927)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120844091444050927)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120844252914050927)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(120826455864050912)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120844429543050927)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120844629714050927)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120844856549050927)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(120843170488050926)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(120841441104050924)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120845488574050940)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120845675869050941)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120845867705050941)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120846046429050941)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120846212673050941)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120846682208050941)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120846819664050941)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120847059571050941)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120847274291050943)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120847439905050943)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120847892155050943)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(120847646877050943)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120848026622050943)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(120847646877050943)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120848228220050943)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(120847646877050943)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120848455254050943)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120848617834050943)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(120847646877050943)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120848871147050943)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(120844934594050930)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(120847646877050943)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120849240000050944)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120849661521050944)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(120849499834050944)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120849842138050944)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120850035524050944)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(120849499834050944)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120850253570050944)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120850407235050944)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(120849499834050944)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120850614289050944)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120850887909050946)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120851089231050946)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120851244668050946)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120851689322050946)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(120851477711050946)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120851872689050946)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120852229531050946)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(120852085553050946)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120852415418050946)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(120852085553050946)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120852624647050946)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120852844809050948)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120853052417050948)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120853288771050948)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(120849499834050944)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120853462501050948)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(120851477711050946)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120853668963050948)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120853817864050948)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120848911348050944)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120854281377050948)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120853912301050948)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120854446543050948)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120853912301050948)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120854633541050948)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120853912301050948)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120854897239050949)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120853912301050948)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120855259113050949)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120853912301050948)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(120855011046050949)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120855454087050952)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120853912301050948)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(120855011046050949)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120855869405050954)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120856032000050954)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120856262843050954)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120856433389050954)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120856651329050954)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120857042003050954)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(120856853041050954)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120857236905050954)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120857445969050954)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120857601281050954)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120857885928050954)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(120855566104050952)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120858218572050955)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120857985554050954)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120858430719050955)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120857985554050954)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120858654166050955)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120857985554050954)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120858821254050955)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120857985554050954)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120859273315050957)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120858988260050955)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120859843283050957)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120859587497050957)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120860263101050958)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(120852085553050946)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120860469042050958)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(120845235441050940)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120860604290050958)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(120852085553050946)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120860850346050958)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(120856853041050954)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120861030914050958)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120861287084050958)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(120846477820050941)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120861417353050958)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(120859904032050957)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(120856853041050954)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120861809326050958)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(120861500341050958)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120862023560050960)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(120861500341050958)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120862265047050960)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(120861500341050958)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120862478668050960)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(120861500341050958)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120863017643050960)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(120862529463050960)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(120862893742050960)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120863208825050960)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(120862529463050960)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(120862893742050960)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120863631000050960)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120862529463050960)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(120863497757050960)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120863819759050960)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120862529463050960)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(120863497757050960)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120864034448050960)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120862529463050960)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(120863497757050960)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120864659259050962)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120864113501050960)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(120864462781050962)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120864819047050962)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(120864113501050960)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(120864462781050962)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120865065133050962)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(120864113501050960)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(120864462781050962)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120865234053050962)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(120864113501050960)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120866646178050987)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(120866209083050985)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(120866494770050987)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120866848956050987)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(120866209083050985)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(120866494770050987)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120868767231051150)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(120868585538051149)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120869196934051152)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(120868919528051152)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120869394797051152)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(120868585538051149)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120869515407051152)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(120868919528051152)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120869707811051152)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(120868585538051149)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120869972027051152)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(120868919528051152)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120870105880051152)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(120868585538051149)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120870305736051153)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(120868919528051152)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120870792130051155)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(120870507070051155)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120871186207051155)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(120870920924051155)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120871388006051155)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(120870507070051155)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120871556237051155)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(120870920924051155)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120871712855051155)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(120870507070051155)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120871926336051155)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(120870920924051155)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120872131891051155)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(120870507070051155)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120872318015051155)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(120870920924051155)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120872703555051157)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(120872572354051157)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120873141244051157)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(120872967329051157)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120873376914051157)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(120872572354051157)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120873513466051158)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(120872967329051157)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120873782267051158)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(120872572354051157)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120873941988051158)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(120872967329051157)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120874125036051158)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(120872572354051157)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120874383086051158)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(120872967329051157)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120874721283051158)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(120874580347051158)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120875134503051160)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(120874963221051160)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120875320818051160)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(120874580347051158)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120875518675051160)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(120874963221051160)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120875799115051160)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(120874580347051158)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120875925387051160)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(120874963221051160)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120876103966051160)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(120874580347051158)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120876327515051161)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(120874963221051160)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120876711948051161)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(120876507458051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120877158105051161)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(120876961615051161)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120877597850051161)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(120877379709051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120877987296051161)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(120877781364051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120878345829051161)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(120878173200051161)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120878726653051163)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(120878552946051161)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120879131688051163)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(120878981380051163)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120879300164051163)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(120878981380051163)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120879583674051163)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(120876961615051161)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120879729740051163)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(120877379709051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120879960841051163)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(120877781364051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120880160844051163)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(120878173200051161)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120880570360051163)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(120880332841051163)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120880771874051163)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(120880332841051163)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120880995358051164)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(120880332841051163)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120881149183051164)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(120876507458051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120881392114051164)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(120878981380051163)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120881542700051164)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(120878552946051161)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120881966180051164)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(120881715039051164)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120882110270051164)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(120876507458051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120882323743051164)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(120878552946051161)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120882568150051164)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(120876507458051161)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120882901955051164)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(120882746582051164)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120883387782051166)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(120883107071051166)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120883763642051166)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(120883514609051166)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120884161682051166)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(120883991386051166)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120884309780051166)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(120883991386051166)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120884728817051166)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(120884558558051166)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120884970149051166)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(120883107071051166)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120885309917051167)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(120885129710051166)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120885789162051167)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(120885514851051167)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120886134308051167)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(120885928262051167)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120886525012051167)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(120886365684051167)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120886709378051167)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120886993679051167)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(120885129710051166)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(120887379915051169)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(120887174341051169)
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
 p_id=>wwv_flow_api.id(120891051803051305)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(120766989616050679)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/copy_of_application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(123542759991204583)
,p_name=>'Copy of Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/copy_of_copy_of_custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(123542968984204614)
,p_name=>'Copy of Copy of CUSTOM'
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
prompt --application/shared_components/plugins/dynamic_action/nl_detora_apex_touch_time_input_v2
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(158417528875673949)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.DETORA.APEX.TOUCH_TIME_INPUT_V2'
,p_display_name=>'Touch Time Input V2'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','NL.DETORA.APEX.TOUCH_TIME_INPUT_V2'),'')
,p_css_file_urls=>'#PLUGIN_FILES#apextic.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Touch Time Input',
' * Version: 1.0 (11-01-2016)',
' * Author:  Dick Dral',
' *-------------------------------------',
'*/',
'function render_touch_time_input',
'                ( p_dynamic_action in apex_plugin.t_dynamic_action',
'                , p_plugin           in  apex_plugin.t_plugin',
'                ) return apex_plugin.t_dynamic_action_render_result is',
'  --',
'  -- plugin attributes',
'  l_result       apex_plugin.t_dynamic_action_render_result;',
'  l_window_base  number        := p_dynamic_action.attribute_01;',
'  l_time_format  varchar2(100) := p_plugin.attribute_01;',
'  l_debug        number        := 0;',
'  -- js/css file vars',
'  l_apextic_js   varchar2(50);',
'  --',
'begin',
'  -- attribute defaults',
'  l_window_base := nvl(l_window_base,',
'                          7);',
'  l_time_format := nvl(l_time_format,',
'                          ''hh24:mi'');',
'  --',
'  if apex_application.g_debug then',
'    apex_plugin_util.debug_dynamic_action(p_plugin         => p_plugin,',
'                                          p_dynamic_action => p_dynamic_action);',
'    l_debug := 1;                                      ',
'    -- set js/css filenames (normal version)',
'    l_apextic_js  := ''apextic'';',
'    --',
'  else',
'    -- minified version',
'    l_apextic_js  := ''apextic.min'';',
'    --',
'  end if;',
'  --',
'  apex_javascript.add_library(p_name           => l_apextic_js,',
'                              p_directory      => p_plugin.file_prefix ,',
'                              p_version        => NULL,',
'                              p_skip_extension => FALSE);',
'',
'  --',
'  l_result.javascript_function := ''apextic.doIt'';',
'  l_result.attribute_01        := l_window_base;',
'  l_result.attribute_02        := l_time_format;',
'  l_result.attribute_10        := l_debug;',
'  --',
'  return l_result;',
'  --',
'end render_touch_time_input;'))
,p_api_version=>1
,p_render_function=>'render_touch_time_input'
,p_standard_attributes=>'ITEM:BUTTON:JQUERY_SELECTOR:JAVASCRIPT_EXPRESSION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.speech2form.com/ords/f?p=OPFG?TIC_PLUGIN'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This plug-in provides a touch way of entering time values. ',
'The plug-in supports the floating labels in APEX 18.1.',
'Implement by adding the class ''has-time-picker'' to the time items and calling the plug-in at Page Load.'))
,p_files_version=>13
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(158500217102843999)
,p_plugin_id=>wwv_flow_api.id(158417528875673949)
,p_attribute_scope=>'APPLICATION'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Time format'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'hh24:mi'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158501361287844962)
,p_plugin_attribute_id=>wwv_flow_api.id(158500217102843999)
,p_display_sequence=>10
,p_display_value=>'hh24:mi'
,p_return_value=>'hh24:mi'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158501842807845770)
,p_plugin_attribute_id=>wwv_flow_api.id(158500217102843999)
,p_display_sequence=>20
,p_display_value=>'hh24.mi'
,p_return_value=>'hh24.mi'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158502167323847628)
,p_plugin_attribute_id=>wwv_flow_api.id(158500217102843999)
,p_display_sequence=>30
,p_display_value=>'hh:mi am'
,p_return_value=>'hh:mi am'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158502618810848546)
,p_plugin_attribute_id=>wwv_flow_api.id(158500217102843999)
,p_display_sequence=>40
,p_display_value=>'hh.mi am'
,p_return_value=>'hh.mi am'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(158417790188680039)
,p_plugin_id=>wwv_flow_api.id(158417528875673949)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Base of Time Window'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'7'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This number sets the base of the time window used to interprete the chosen time. A value of 7 sets the window to 7:00 to 19:00. ',
'All times will be interpreted as being within this time frame, so hour: 2 and minutes: 15 will be interpreted as 14:15 or 2:15 PM.'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158418081598681180)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>10
,p_display_value=>'0'
,p_return_value=>'0'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158418490901682054)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>20
,p_display_value=>'1'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158418907737682863)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>30
,p_display_value=>'2'
,p_return_value=>'2'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158419326770684043)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>40
,p_display_value=>'3'
,p_return_value=>'3'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158419712211684661)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>50
,p_display_value=>'4'
,p_return_value=>'4'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158420136081685384)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>60
,p_display_value=>'5'
,p_return_value=>'5'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158420455150686115)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>70
,p_display_value=>'6'
,p_return_value=>'6'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158420881456686705)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>80
,p_display_value=>'7'
,p_return_value=>'7'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158421297245687139)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>90
,p_display_value=>'8'
,p_return_value=>'8'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158421721688687496)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>100
,p_display_value=>'9'
,p_return_value=>'9'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158422066646688273)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>110
,p_display_value=>'10'
,p_return_value=>'10'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158422498404688698)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>120
,p_display_value=>'11'
,p_return_value=>'11'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(158422944064689050)
,p_plugin_attribute_id=>wwv_flow_api.id(158417790188680039)
,p_display_sequence=>130
,p_display_value=>'12'
,p_return_value=>'12'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0A202A2050726F647563743A204150455820546F7563682054696D6520496E';
wwv_flow_api.g_varchar2_table(2) := '70757420436F6E74726F6C0A202A20436F7079726967687420323031353A204469636B204472616C2C204465746F72612C20546865204E65746865726C616E64730A202A0A202A204D6F64696669636174696F6E733A0A202A202031352D30322D323031';
wwv_flow_api.g_varchar2_table(3) := '3520436C6F636B20616C7761797320737461727473207769746820696E76697369626C652068616E64730A202A20202020202020202020202020436C6F636B206E756D626572732063616E206265207573656420746F2063686F736520616C736F206F6E';
wwv_flow_api.g_varchar2_table(4) := '20746F756368206465766963650A202A202031312D30312D32303137204D61646520726561647920666F72204170657820706C75672D696E0A202A202020202020202020202020202D206E616D657370616365206275696C7420696E0A202A2020202020';
wwv_flow_api.g_varchar2_table(5) := '20202020202020202D20617267756D656E74732074696D6520616E64206D6F6465206172652072656D6F7665642E204F6E6C792077696E646F775F626173652072656D61696E730A202A202031332D30312D32303137202D20617267756D656E74207469';
wwv_flow_api.g_varchar2_table(6) := '6D655F666F726D61742061646465640A202A202031342D30372D32303139202D206164617074656420666F7220706C75672D696E2056320A202A202031352D30372D32303139202D20627567666978657320202020202020202020200A202A2020202020';
wwv_flow_api.g_varchar2_table(7) := '202020202020202020202D206F76657277726974696E67206578697374696E672076616C7565730A202A2020202020202020202020202020202D2062756720696E20414D2F504D2063616C63756C6174696F6E2066697865640A202A2020202020202020';
wwv_flow_api.g_varchar2_table(8) := '202020202020202D2073697A696E6720616E6420706F736974696F6E696E67206F6E2070686F6E652066697865640A202A2020202020202020202020202020202D20666C6F6174696E67206C6162656C73207265616374696E670A202A200A202A2F0A0A';
wwv_flow_api.g_varchar2_table(9) := '2F2F20676C6F62616C206E616D6573706163650A7661722061706578746963203D207B0A0A2078203A206E756C6C2C0A2079203A206E756C6C2C0A20686F757248616E64203A206E756C6C2C0A206D696E75746548616E64203A206E756C6C2C0A206163';
wwv_flow_api.g_varchar2_table(10) := '7469766548616E64203A206E756C6C2C0A2068616E644C656E677468203A207B20686F757248616E64203A20223630222C206D696E75746548616E64203A2022383522207D2C0A20636C6F636B4974656D203A206E756C6C2C0A20746963496420203A20';
wwv_flow_api.g_varchar2_table(11) := '27746963436F6E74726F6C272C0A20746963426F78203A20646F63756D656E742E676574456C656D656E74427949642827746963426F7827292C0A20737461727478203A20302C0A20737461727479203A20302C0A2064697374203A20302C0A20686F75';
wwv_flow_api.g_varchar2_table(12) := '72546578744C656674203A20302C0A2077696E646F775F626173653A20372C0A2074696D655F666F726D61743A2027686832343A6D69272C0A206C6F6767696E673A20302C0A0A202F2F20636C6F636B2073746174650A2061637469766548616E644E61';
wwv_flow_api.g_varchar2_table(13) := '6D65203A2027686F7572272C0A2063757272656E74486F7572202020203A206E756C6C2C0A2063757272656E744D696E75746573203A206E756C6C2C0A2073656E7369746976697479202020203A2032302C0A206D6F646520202020202020202020203A';
wwv_flow_api.g_varchar2_table(14) := '202762617365272C0A20746F7563685374617274496E436C6F636B203A2066616C73652C0A200A0A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(15) := '2A2A2A2A2A2A2A2A2A0A202A205574696C6974792066756E6374696F6E730A202A2F0A0A64656275673A2066756E6374696F6E20287465787429200A7B0A20206966202820746869732E6C6F6767696E67203D3D20312029207B20636F6E736F6C652E6C';
wwv_flow_api.g_varchar2_table(16) := '6F672874657874293B207D0A7D2C0A0A2F2F20707265666978206F6E6520636861726163746572206E756D6265722077697468207A65726F0A6C706164203A2066756E6374696F6E20286E756D62657229200A7B2076617220737472696E67203D202222';
wwv_flow_api.g_varchar2_table(17) := '3B0A202069662028206E756D62657220213D206E756C6C2029200A20207B20737472696E67203D206E756D6265722E746F537472696E6728293B0A202020206966202820737472696E672E6C656E677468203D3D203129207B737472696E67203D202730';
wwv_flow_api.g_varchar2_table(18) := '272B737472696E673B207D0A20207D0A202072657475726E28737472696E67293B0A7D2C0A0A2F2F2064657465726D696E6520616E676C652066726F6D20766563746F720A676574416E676C6546726F6D566563746F72203A2066756E6374696F6E2028';
wwv_flow_api.g_varchar2_table(19) := '2070782C20707920290A7B2076617220616E676C65203D20303B0A20207661722072616432646567203D203138302F4D6174682E50493B0A0A202069662028207078203D3D203020290A20207B2069662028207079203E20302029207B20616E676C6520';
wwv_flow_api.g_varchar2_table(20) := '3D203138303B207D0A20202020656C7365202020202020202020207B20616E676C65203D20303B2020207D200A20207D20656C73650A20207B20616E676C65203D204D6174682E6174616E2870792F4D6174682E61627328707829292A72616432646567';
wwv_flow_api.g_varchar2_table(21) := '3B0A2020202069662028207078203E20302029200A202020207B20616E676C65203D203930202B20616E676C653B207D0A20202020656C73650A202020207B20616E676C65203D20323730202D20616E676C653B207D0A20207D0A202072657475726E28';
wwv_flow_api.g_varchar2_table(22) := '616E676C65293B0A7D2C0A0A7365744D6F6465203A2066756E6374696F6E20287468654D6F646529200A7B200A20202F2A2064656661756C7420626F746820627574746F6E732061726520626C61636B202A2F0A20206C657420627574746F6E414D636F';
wwv_flow_api.g_varchar2_table(23) := '6C6F72203D2027626C61636B273B0A20206C657420627574746F6E504D636F6C6F72203D2027626C61636B273B0A20200A20202F2A2064657465726D696E652074686520636F6C6F72206F662074686520627574746F6E73202A2F0A2020746869732E6D';
wwv_flow_api.g_varchar2_table(24) := '6F6465203D207468654D6F64653B0A20206966202820746869732E6D6F6465203D3D2027414D2720290A20207B200A20202020746869732E77696E646F775F62617365203D20303B0A2020202024282723627574746F6E414D207465787427292E617474';
wwv_flow_api.g_varchar2_table(25) := '72282766696C6C272C276C696768746772617927293B0A20207D0A2020656C73652020206966202820746869732E6D6F6465203D3D2027414D2720290A20207B200A20202020746869732E77696E646F775F62617365203D2031323B0A20202020242827';
wwv_flow_api.g_varchar2_table(26) := '23627574746F6E504D207465787427292E61747472282766696C6C272C276C696768746772617927293B0A20207D0A0A20202F2A206170706C7920636F6C6F7220746F20627574746F6E73202A2F0A202024282723627574746F6E414D20746578742729';
wwv_flow_api.g_varchar2_table(27) := '2E61747472282766696C6C272C627574746F6E414D636F6C6F72293B0A202024282723627574746F6E504D207465787427292E61747472282766696C6C272C627574746F6E504D636F6C6F72293B0A20200A7D2C0A0A2F2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(28) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0A202A20535647207072696D6974697665730A202A2F0A535647203A2066756E6374696F6E2028746167290A7B';
wwv_flow_api.g_varchar2_table(29) := '2072657475726E20646F63756D656E742E637265617465456C656D656E744E532827687474703A2F2F7777772E77332E6F72672F323030302F737667272C20746167293B0A7D2C0A0A0A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(30) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0A202A20636C6F636B206D616E6970756C6174696F6E0A202A2F0A73657443757272656E7454696D6546726F6D537472696E67203A2066756E';
wwv_flow_api.g_varchar2_table(31) := '6374696F6E202874696D6529200A7B2076617220656C656D73203D2074696D652E73706C697428273A27293B0A20206966202820656C656D732E6C656E677468203E3D20312029200A20207B20746869732E63757272656E74486F7572202020203D2070';
wwv_flow_api.g_varchar2_table(32) := '61727365496E7428656C656D735B305D293B0A202020206966202820746869732E63757272656E74486F7572203E3D2031322029200A202020207B20746869732E7365744D6F64652827504D27293B207D0A20202020656C73650A202020207B20746869';
wwv_flow_api.g_varchar2_table(33) := '732E7365744D6F64652827414D27293B207D0A20207D0A20206966202820656C656D732E6C656E677468203E3D20322029207B20746869732E63757272656E744D696E75746573203D207061727365496E7428656C656D735B315D293B7D0A7D2C0A0A2F';
wwv_flow_api.g_varchar2_table(34) := '2F2064657465726D696E6520776869636820736563746F7220697320706F696E74656420746F0A67657454696D653A2066756E6374696F6E2028646972782C2064697279290A7B20766172206974656D2C20766563746F723B0A200A2020696620284D61';
wwv_flow_api.g_varchar2_table(35) := '74682E616273286469727929203E204D6174682E616273286469727829290A20207B20766563746F72203D20646972782F646972793B0A20202020696620282064697279203E2030290A2020202020206974656D203D2031313B2020202020202F2F2073';
wwv_flow_api.g_varchar2_table(36) := '6563746F722031312D31200A20202020656C73650A2020202020206974656D203D20353B2020202020202F2F20736563746F7220352D37200A20207D0A2020656C73650A20207B20766563746F72203D202D646972792F646972783B0A20202020696620';
wwv_flow_api.g_varchar2_table(37) := '282064697278203E2030290A2020202020206974656D203D20323B2020202020202F2F20736563746F7220322D34200A20202020656C73650A2020202020206974656D203D20383B2020202020202F2F20736563746F7220382D3130200A20207D0A2020';
wwv_flow_api.g_varchar2_table(38) := '6966202820766563746F72203E20202D302E3236202920206974656D202B3D20313B0A20206966202820766563746F72203E2020302E323620202920206974656D202B3D20313B202020200A202069662028206974656D2020203E3D2031322020202029';
wwv_flow_api.g_varchar2_table(39) := '20206974656D202D3D2031323B202020202020200A20200A202072657475726E286974656D293B0A7D2C0A0A0A2F2F206765742068616E642074686174206973206163746976650A67657441637469766548616E64203A2066756E6374696F6E2028290A';
wwv_flow_api.g_varchar2_table(40) := '7B20696620282021746869732E61637469766548616E644E616D652029207B20746869732E61637469766548616E644E616D65203D2027686F7572273B202020746869732E61637469766548616E64203D20686F757248616E643B207D0A202072657475';
wwv_flow_api.g_varchar2_table(41) := '726E28746869732E61637469766548616E644E616D65293B0A7D2C0A0A2F2F20736574206163746976652068616E6420746F20747970652028686F7572206F72206D696E75746529200A2F2F206F7220746F67676C65206163746976652068616E642028';
wwv_flow_api.g_varchar2_table(42) := '74797065203D20746F67676C65290A73657441637469766548616E64203A2066756E6374696F6E202874797065290A7B20766172206D696E75746548616E64436F6C6F72203D2027626C61636B273B0A202076617220686F757248616E64436F6C6F7220';
wwv_flow_api.g_varchar2_table(43) := '20203D2027626C61636B273B0A20200A2020696620282074797065203D3D2027746F67676C6527207C7C2074797065203D3D2027686F757227207C7C2074797065203D3D20276D696E7574652720290A20207B200A20202020696620282074797065203D';
wwv_flow_api.g_varchar2_table(44) := '3D2027746F67676C65272029200A202020207B206966202820746869732E67657441637469766548616E642829203D3D2027686F7572272029207B2074797065203D20276D696E757465273B207D0A202020202020656C73652020202020202020202020';
wwv_flow_api.g_varchar2_table(45) := '2020202020202020202020202020202020207B2074797065203D2027686F7572273B2020207D0A202020207D0A0A20202020696620282074797065203D3D20276D696E757465272029200A202020207B206D696E75746548616E64436F6C6F72203D2027';
wwv_flow_api.g_varchar2_table(46) := '726564273B2020746869732E61637469766548616E64203D20746869732E6D696E75746548616E643B2020746869732E61637469766548616E644E616D65203D20276D696E757465273B20207D202020200A20202020656C736520696620282074797065';
wwv_flow_api.g_varchar2_table(47) := '203D3D2027686F75722720290A202020207B20686F757248616E64436F6C6F72203D2027726564273B20202020746869732E61637469766548616E64203D20746869732E686F757248616E643B20202020746869732E61637469766548616E644E616D65';
wwv_flow_api.g_varchar2_table(48) := '203D2027686F7572273B202020207D202020200A20200A202020202F2F2073657420636F6C6F7220746F20696E646963617465206163746976652068616E640A202020202428686F757248616E64295B305D2E736574417474726962757465282766696C';
wwv_flow_api.g_varchar2_table(49) := '6C2720202C686F757248616E64436F6C6F722020293B2020200A2020202024286D696E75746548616E64295B305D2E736574417474726962757465282766696C6C272C6D696E75746548616E64436F6C6F72293B200A0A202020202F2F20616C736F2073';
wwv_flow_api.g_varchar2_table(50) := '657420636F6C6F72206F66206469676974616C2074696D6520646973706C61790A20202020646F63756D656E742E676574456C656D656E744279496428276469676974616C54696D65486F75727327292E736574417474726962757465282766696C6C27';
wwv_flow_api.g_varchar2_table(51) := '2C686F757248616E64436F6C6F72293B0A20202020646F63756D656E742E676574456C656D656E744279496428276469676974616C54696D654D696E7574657327292E736574417474726962757465282766696C6C272C6D696E75746548616E64436F6C';
wwv_flow_api.g_varchar2_table(52) := '6F72293B0A20207D0A7D2C0A0A77697468696E436C6F636B203A2066756E6374696F6E202870782C7079290A7B207661722072657476616C203D2066616C73653B0A20206478203D207078202D20785B305D3B0A20206479203D207079202D20795B305D';
wwv_flow_api.g_varchar2_table(53) := '3B0A202069662028204D6174682E737172742864782A6478202B2064792A647929203C3D20746869732E68616E644C656E6774685B746869732E6D696E75746548616E645D20290A20207B2072657476616C203D20747275653B207D0A20207265747572';
wwv_flow_api.g_varchar2_table(54) := '6E2072657476616C3B0A7D2C0A0A2F2A2046756E6374696F6E202020203A2073657448616E640A202A20417574686F722020202020203A204469636B204472616C202020202020202044617465203A20312D31312D323031330A202A2044657363726970';
wwv_flow_api.g_varchar2_table(55) := '74696F6E203A2073657473207468652068616E64206F662074686520636C6F636B206163636F7264696E672074686520676976656E20646972656374696F6E2E200A202A2020202020202020202020202020205468652063757272656E74206D6F646520';
wwv_flow_api.g_varchar2_table(56) := '64657465726D696E65732077686963682068616E64206973207365742028686F7572206F72206D696E757465292E0A202A2020202020202020202020202020205768656E207468652068616E6420697320746F6F206C6F6E672C2069742077696C6C2062';
wwv_flow_api.g_varchar2_table(57) := '652073686F7274656E656420746F20746865206D6178696D756D206C656E6774680A202A20506172616D657465727320203A2070782020202020202020202020207820636F6D706F6E656E74206F662074686520646972656374696F6E200A202A202020';
wwv_flow_api.g_varchar2_table(58) := '20202020202020202020202070792020202020202020202020207920636F6D706F6E656E74206F662074686520646972656374696F6E0A202A2F0A73657448616E64203A2066756E6374696F6E202870782C7079290A7B200A2020766172206469737420';
wwv_flow_api.g_varchar2_table(59) := '20202020203D204D6174682E737172742870782A7078202B2070792A7079293B0A202076617220616E676C6520202020203D20746869732E676574416E676C6546726F6D566563746F722870782C7079293B0A20202F2F20636F727265637420666F7220';
wwv_flow_api.g_varchar2_table(60) := '646F776E7761726420706F696E74696E672068616E640A2020616E676C65203D20616E676C65202B203138303B0A2020766172206D61784C656E677468203D20746869732E68616E644C656E6774685B746869732E61637469766548616E644E616D652B';
wwv_flow_api.g_varchar2_table(61) := '2748616E64275D3B0A0A2020696620282064697374203E206D61784C656E67746829200A20207B2064697374203D206D61784C656E6774683B0A20207D0A20200A202076617220726F746174696F6E203D20616E676C652E746F537472696E672829202B';
wwv_flow_api.g_varchar2_table(62) := '202720272B785B305D2B2720272B795B305D3B0A20207661722068616E644E616D65203D20746869732E61637469766548616E644E616D652B2748616E64273B200A202024282723272B68616E644E616D65295B305D2E73657441747472696275746528';
wwv_flow_api.g_varchar2_table(63) := '27686569676874272C64697374293B0A202024282723272B68616E644E616D65295B305D2E73657441747472696275746528277472616E73666F726D272C27726F7461746528272B726F746174696F6E2B272927293B0A20200A7D2C0A0A686964654861';
wwv_flow_api.g_varchar2_table(64) := '6E6473203A2066756E6374696F6E202829207B0A2020746869732E686F757248616E642E7365744174747269627574652822686569676874222C223022293B0A2020746869732E6D696E75746548616E642E736574417474726962757465282268656967';
wwv_flow_api.g_varchar2_table(65) := '6874222C223022293B20200A7D2C0A0A736574486F757248616E64203A2066756E6374696F6E2028686F7572290A7B206966202820686F75722029200A20207B20746869732E63757272656E74486F7572203D204D6174682E7472756E6328686F757229';
wwv_flow_api.g_varchar2_table(66) := '3B207D0A2020656C73650A20207B20686F7572203D20746869732E63757272656E74486F75723B207D0A202020200A20202F2F2074616B65206D696E7574657320696E746F206163636F756E7420666F7220686F757268616E640A202069662028207468';
wwv_flow_api.g_varchar2_table(67) := '69732E63757272656E744D696E7574657320290A20207B20686F7572203D204D6174682E7472756E6328686F757229202B20746869732E63757272656E744D696E757465732F38303B207D0A202064656772656573203D2028686F7572202B203629202A';
wwv_flow_api.g_varchar2_table(68) := '2033303B0A2020726F746174696F6E203D20646567726565732E746F537472696E672829202B202220222B785B305D2B2220222B795B305D3B0A2020746869732E686F757248616E642E73657441747472696275746528227472616E73666F726D222C22';
wwv_flow_api.g_varchar2_table(69) := '726F7461746528222B726F746174696F6E2B222922293B0A2020746869732E686F757248616E642E7365744174747269627574652822686569676874222C746869732E68616E644C656E6774685B27686F757248616E64275D293B0A7D2C0A0A7365744D';
wwv_flow_api.g_varchar2_table(70) := '696E75746548616E64203A2066756E6374696F6E20286D696E75746573290A7B2069662028206D696E757465732029200A20207B20746869732E63757272656E744D696E75746573203D206D696E757465733B207D0A2020656C73650A20207B206D696E';
wwv_flow_api.g_varchar2_table(71) := '75746573203D20746869732E63757272656E744D696E757465733B207D0A0A202064656772656573203D20284D6174682E726F756E64286D696E757465732929202A2036202B203138303B0A2020726F746174696F6E203D20646567726565732E746F53';
wwv_flow_api.g_varchar2_table(72) := '7472696E672829202B202220222B785B305D2B2220222B795B305D3B0A2020746869732E6D696E75746548616E642E73657441747472696275746528227472616E73666F726D222C22726F7461746528222B726F746174696F6E2B222922293B0A202074';
wwv_flow_api.g_varchar2_table(73) := '6869732E6D696E75746548616E642E7365744174747269627574652822686569676874222C746869732E68616E644C656E6774685B276D696E75746548616E64275D293B0A7D2C0A0A68696465436F6E74726F6C203A2066756E6374696F6E2028290A7B';
wwv_flow_api.g_varchar2_table(74) := '2024282723746963506167654261636B67726F756E6427292E6869646528293B0A202024282723272B746869732E7469634964292E6869646528293B0A7D2C0A0A73686F77436F6E74726F6C203A2066756E6374696F6E2028290A7B200A20202F2A2073';
wwv_flow_api.g_varchar2_table(75) := '686F772074686520636C6F636B20636F6E74726F6C202A2F0A202024282723272B746869732E7469634964292E73686F7728293B0A20202F2A2068696465207468652068616E6473202A2F0A2020617065787469632E6869646548616E647328293B0A20';
wwv_flow_api.g_varchar2_table(76) := '202F2A20696E697469616C697A652074686520616D2F706D20627574746F6E73202A2F0A2020617065787469632E7365744D6F646528293B20200A7D2C0A0A72657475726E54696D65203A2066756E6374696F6E2028290A7B200A202064656275672827';
wwv_flow_api.g_varchar2_table(77) := '72657475726E54696D6527293B20200A2020746869732E68696465436F6E74726F6C28293B0A202069662028746869732E636C6F636B4974656D20262620746869732E63757272656E74486F757220262620746869732E63757272656E744D696E757465';
wwv_flow_api.g_varchar2_table(78) := '732029200A20207B207661722074696D65203D20746869732E6C70616428746869732E63757272656E74486F757229202B20273A27202B20746869732E6C70616428746869732E63757272656E744D696E75746573293B0A202020202428636C6F636B49';
wwv_flow_api.g_varchar2_table(79) := '74656D292E76616C2874696D65293B0A20207D0A7D2C0A0A2F2A2067656E65726174652053564720656C656D656E74202A2F0A737667437265617465456C656D656E74203A2066756E6374696F6E2820747970652029200A7B2072657475726E20646F63';
wwv_flow_api.g_varchar2_table(80) := '756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C2074797065293B0A7D2C0A0A2F2A2067656E65726174652053564720726F6F7420656C656D656E74202A2F0A7376674372';
wwv_flow_api.g_varchar2_table(81) := '65617465526F6F74456C656D203A2066756E6374696F6E20202869642C2077696474682C206865696768742C2076696577626F78290A7B2076617220737667203D20746869732E737667437265617465456C656D656E74282773766727293B0A20207376';
wwv_flow_api.g_varchar2_table(82) := '672E73657441747472696275746528226964222C6964293B0A20207376672E73657441747472696275746528227769647468222C7769647468293B0A20207376672E7365744174747269627574652822686569676874222C686569676874293B0A202073';
wwv_flow_api.g_varchar2_table(83) := '76672E736574417474726962757465282276696577426F78222C76696577626F78293B0A202072657475726E28737667293B0A7D2C0A0A73766743726561746547726F7570203A2066756E6374696F6E202028206E616D652C2067726F7570436C617373';
wwv_flow_api.g_varchar2_table(84) := '2029200A7B207661722067726F7570203D20746869732E737667437265617465456C656D656E7428276727293B0A202067726F75702E73657441747472696275746528276964272C6E616D65293B0A2020696620282067726F7570436C6173732029200A';
wwv_flow_api.g_varchar2_table(85) := '20207B2067726F75702E7365744174747269627574652827636C617373272C67726F7570436C617373293B207D200A202072657475726E202867726F7570293B0A7D2C0A0A63656E74657254657874456C656D656E74203A2066756E6374696F6E202874';
wwv_flow_api.g_varchar2_table(86) := '65787449642C782C7769647468290A7B20746578744F626A203D20646F63756D656E742E676574456C656D656E744279496428746578744964293B0A20206C656E677468203D20746578744F626A2E676574436F6D7075746564546578744C656E677468';
wwv_flow_api.g_varchar2_table(87) := '28290A2020785465787420203D2078202B2028207769647468202D206C656E67746820292F323B0A2020746578744F626A2E736574417474726962757465282778272C7854657874293B0A7D2C0A0A6C656674416C69676E54657874456C656D656E7420';
wwv_flow_api.g_varchar2_table(88) := '3A2066756E6374696F6E20287465787449642C784C656674290A7B20746578744F626A203D20646F63756D656E742E676574456C656D656E744279496428746578744964293B0A20206C656E677468203D20746578744F626A2E676574436F6D70757465';
wwv_flow_api.g_varchar2_table(89) := '64546578744C656E67746828290A20207661722078526967687420203D20784C656674202D206C656E6774683B0A2020746578744F626A2E736574417474726962757465282778272C785269676874293B0A202072657475726E28784C656674293B0A7D';
wwv_flow_api.g_varchar2_table(90) := '2C0A0A2F2A2067656E657261746520535647207465787420656C656D656E74202A2F0A73766743726561746554657874456C656D656E74203A2066756E6374696F6E2028206E616D652C20746578742C20782C207920290A7B206E657754657874203D20';
wwv_flow_api.g_varchar2_table(91) := '746869732E737667437265617465456C656D656E7428277465787427293B200A20206E6577546578742E73657441747472696275746528226964222C6E616D65293B0A20206E6577546578742E736574417474726962757465282278222C78293B0A2020';
wwv_flow_api.g_varchar2_table(92) := '6E6577546578742E736574417474726962757465282279222C79293B0A202076617220746578744E6F6465203D20646F63756D656E742E637265617465546578744E6F64652874657874293B0A20206E6577546578742E617070656E644368696C642874';
wwv_flow_api.g_varchar2_table(93) := '6578744E6F6465293B0A202072657475726E206E6577546578743B0A7D2C0A0A73766743726561746552656374203A2066756E6374696F6E202867726F75702C69642C782C792C77696474682C6865696768742C66696C6C2C7374726F6B652C7374726F';
wwv_flow_api.g_varchar2_table(94) := '6B655769647468290A20207B202428746869732E737667437265617465456C656D656E742827726563742729292E6174747228276964272C6964290A202020202020202020202020202020202E61747472282778272C78292E61747472282779272C7929';
wwv_flow_api.g_varchar2_table(95) := '0A202020202020202020202020202020202E6174747228277769647468272C7769647468292E617474722827686569676874272C686569676874290A202020202020202020202020202020202E6174747228277374726F6B652D7769647468272C737472';
wwv_flow_api.g_varchar2_table(96) := '6F6B655769647468292E6174747228277374726F6B65272C7374726F6B65290A202020202020202020202020202020202E61747472282266696C6C222C66696C6C292E617070656E64546F2820242867726F75702920293B20200A20207D2C0A0A2F2A20';
wwv_flow_api.g_varchar2_table(97) := '67656E65726174657320726F756E64656420627574746F6E202A2F0A637265617465427574746F6E203A2066756E6374696F6E2020282067726F75702C206E616D652C20746578742C20782C20792C2077696474682C2068656967687420290A7B202F2A';
wwv_flow_api.g_varchar2_table(98) := '206372656174652067726F7570202A2F0A202076617220627574746F6E203D20746869732E73766743726561746547726F7570286E616D652C27627574746F6E27293B0A0A20202428746869732E5356472827726563742729292E617474722827696427';
wwv_flow_api.g_varchar2_table(99) := '2C6E616D652B22426F7822290A202020202020202020202020202020202E61747472282778272C78292E61747472282779272C79290A202020202020202020202020202020202E6174747228277278272C273527292E6174747228277279272C27352729';
wwv_flow_api.g_varchar2_table(100) := '0A202020202020202020202020202020202E6174747228277769647468272C7769647468292E617474722827686569676874272C686569676874290A202020202020202020202020202020202E6174747228277374726F6B652D7769647468272C273127';
wwv_flow_api.g_varchar2_table(101) := '292E6174747228277374726F6B65272C27626C61636B27290A202020202020202020202020202020202E61747472282266696C6C222C22776869746522292E617070656E64546F28202428627574746F6E2920293B20200A0A20202428746869732E5356';
wwv_flow_api.g_varchar2_table(102) := '472827616E696D6174652729292E617474722822626567696E222C22636C69636B22290A202020202020202020202020202020202020202E617474722822647572222C22302E357322290A202020202020202020202020202020202020202E6174747228';
wwv_flow_api.g_varchar2_table(103) := '22726570656174436F756E74222C223122290A202020202020202020202020202020202020202E6174747228226174747269627574654E616D65222C2266696C6C22290A202020202020202020202020202020202020202E61747472282276616C756573';
wwv_flow_api.g_varchar2_table(104) := '222C2277686974653B2067726179203B20776869746522290A202020202020202020202020202020202020202E61747472282266696C6C222C22667265657A6522292E617070656E64546F282024282723272B6E616D652B27426F78272920293B0A0A20';
wwv_flow_api.g_varchar2_table(105) := '20627574746F6E54657874203D20746869732E73766743726561746554657874456C656D656E74286E616D652B2254657874222C746578742C782C792B6865696768742D3134290A0A20202428627574746F6E54657874292E617070656E64546F282024';
wwv_flow_api.g_varchar2_table(106) := '28627574746F6E2920293B0A20200A20202428627574746F6E292E617070656E64546F2820242867726F75702920293B20200A0A2020746869732E63656E74657254657874456C656D656E7428627574746F6E546578742E69642C782C7769647468293B';
wwv_flow_api.g_varchar2_table(107) := '0A0A202072657475726E28627574746F6E293B0A7D2C0A0A2F2F2067656E65726174652068616E640A67656E657261746548616E64203A2066756E6374696F6E202867726F75702C206964290A20207B207661722068616E64203D20646F63756D656E74';
wwv_flow_api.g_varchar2_table(108) := '2E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C20277265637427293B202F2F4372656174652061205265637420696E205356472773206E616D6573706163650A2020202068616E642E';
wwv_flow_api.g_varchar2_table(109) := '7365744174747269627574652822696422202020202C6964293B0A2020202068616E642E7365744174747269627574652822782220202020202C313639293B0A2020202068616E642E7365744174747269627574652822792220202020202C795B305D29';
wwv_flow_api.g_varchar2_table(110) := '3B0A2020202068616E642E7365744174747269627574652822776964746822202C223522293B0A2020202068616E642E7365744174747269627574652822686569676874222C746869732E68616E644C656E6774685B69645D293B0A2020202068616E64';
wwv_flow_api.g_varchar2_table(111) := '2E7365744174747269627574652822727822202020202C223322293B0A2020202068616E642E7365744174747269627574652822727922202020202C223322293B0A2020202068616E642E736574417474726962757465282266696C6C2220202C22626C';
wwv_flow_api.g_varchar2_table(112) := '61636B22293B0A2020202068616E642E73657441747472696275746528227374726F6B652D7769647468222C223022293B0A2020202068616E642E73657441747472696275746528227472616E73666F726D222C22726F746174652831383020222B785B';
wwv_flow_api.g_varchar2_table(113) := '305D2B2220222B795B305D2B222922293B0A2020202068616E6447726F7570203D20746869732E73766743726561746547726F75702869642B2747726F757027293B0A2020202068616E6447726F75702E617070656E644368696C642868616E64293B0A';
wwv_flow_api.g_varchar2_table(114) := '2020202067726F75702E617070656E644368696C642868616E6447726F7570293B0A2020202069662028206964203D3D2027686F757248616E642720290A202020207B20746869732E686F757248616E64203D2068616E643B207D0A20202020656C7365';
wwv_flow_api.g_varchar2_table(115) := '0A202020207B20746869732E6D696E75746548616E64203D2068616E643B207D0A20207D2C0A0A7570646174654469676974616C54696D65203A2066756E6374696F6E20202820686F7572732C206D696E7574657320290A7B206966202820686F757273';
wwv_flow_api.g_varchar2_table(116) := '20213D206E756C6C20290A20207B206966202820686F757273203E3D20302029200A202020207B20646F63756D656E742E676574456C656D656E744279496428276469676974616C54696D65486F75727327292E74657874436F6E74656E74203D207468';
wwv_flow_api.g_varchar2_table(117) := '69732E6C70616428686F757273293B0A202020202020746869732E6C656674416C69676E54657874456C656D656E7428276469676974616C54696D65486F757273272C686F7572546578744C656674293B0A202020207D0A2020202069662028206D696E';
wwv_flow_api.g_varchar2_table(118) := '75746573203E3D20302029200A202020207B20646F63756D656E742E676574456C656D656E744279496428276469676974616C54696D654D696E7574657327292E74657874436F6E74656E74203D20746869732E6C706164286D696E75746573293B0A20';
wwv_flow_api.g_varchar2_table(119) := '2020207D0A20207D0A2020656C73650A20207B20646F63756D656E742E676574456C656D656E744279496428276469676974616C54696D65486F75727327292E74657874436F6E74656E74203D2022223B0A20202020646F63756D656E742E676574456C';
wwv_flow_api.g_varchar2_table(120) := '656D656E744279496428276469676974616C54696D654D696E7574657327292E74657874436F6E74656E74203D2022223B0A20207D0A7D2C0A0A757064617465416E616C6F6754696D65203A2066756E6374696F6E20202820686F7572732C206D696E75';
wwv_flow_api.g_varchar2_table(121) := '74657320290A7B20686F757273203D207061727365496E7428686F757273293B0A20206966202820746869732E63757272656E744D696E75746573202920207B20686F757273203D20686F757273202B206D696E757465732F38303B207D0A2020746869';
wwv_flow_api.g_varchar2_table(122) := '732E736574486F757248616E6428686F757273293B0A202069662028746869732E63757272656E744D696E757465732920746869732E7365744D696E75746548616E64286D696E75746573293B20202F2F206F6E6C7920646973706C6179207768656E20';
wwv_flow_api.g_varchar2_table(123) := '6D696E75746573206861732076616C75650A7D2C0A0A6372656174654469676974616C54696D65203A2066756E6374696F6E20282067726F75702C20686F7572732C206D696E75746573290A7B206C47726F7570203D20746869732E7376674372656174';
wwv_flow_api.g_varchar2_table(124) := '6547726F757028277469634469676974616C54696D6547726F757027293B0A202024286C47726F7570292E617070656E64546F202820242867726F75702920293B0A0A202078203D2039353B2020202020202079203D202D33353B0A2020776964746820';
wwv_flow_api.g_varchar2_table(125) := '3D203134383B2020686569676874203D2033353B0A2020746869732E73766743726561746552656374286C47726F75702C277469634469676974616C54696D65426F78272C782C792C77696474682C6865696768742C277768697465272C27626C61636B';
wwv_flow_api.g_varchar2_table(126) := '272C273127293B0A20207920203D2079202B20686569676874202D20353B0A0A20207854657874203D2078202B2077696474682F323B0A202074657874203D20746869732E73766743726561746554657874456C656D656E7428276469676974616C5469';
wwv_flow_api.g_varchar2_table(127) := '6D65436F6C6F6E272C273A272C78546578742C792D35293B0A2020242874657874292E617070656E64546F282024286C47726F75702920293B0A0A2020686F757273203D20746869732E6C70616428686F757273293B0A20207854657874203D2078202B';
wwv_flow_api.g_varchar2_table(128) := '2077696474682F32202D20353B0A202074657874203D20746869732E73766743726561746554657874456C656D656E7428276469676974616C54696D65486F757273272C686F7572732C78546578742C792D35293B20200A2020242874657874292E6170';
wwv_flow_api.g_varchar2_table(129) := '70656E64546F282024286C47726F75702920293B0A2020686F7572546578744C656674203D20746869732E6C656674416C69676E54657874456C656D656E7428276469676974616C54696D65486F757273272C7854657874293B0A20200A20206D696E75';
wwv_flow_api.g_varchar2_table(130) := '746573203D20746869732E6C706164286D696E75746573293B0A20207854657874203D2078202B2077696474682F32202B2031323B0A202074657874203D20746869732E73766743726561746554657874456C656D656E7428276469676974616C54696D';
wwv_flow_api.g_varchar2_table(131) := '654D696E75746573272C6D696E757465732C78546578742C792D35293B0A2020242874657874292E617070656E64546F282024286C47726F75702920293B0A20200A202072657475726E286C47726F7570293B0A7D2C0A0A73657443757272656E744469';
wwv_flow_api.g_varchar2_table(132) := '676974616C54696D65203A2066756E6374696F6E2028290A7B20746869732E7570646174654469676974616C54696D6528746869732E63757272656E74486F75722C746869732E63757272656E744D696E75746573293B0A7D2C0A0A746F414D203A2066';
wwv_flow_api.g_varchar2_table(133) := '756E6374696F6E2028290A7B206966202820746869732E63757272656E74486F7572203E3D2031322029200A20207B20746869732E63757272656E74486F7572203D20746869732E63757272656E74486F7572202D2031323B200A20202020746869732E';
wwv_flow_api.g_varchar2_table(134) := '73657443757272656E744469676974616C54696D6528293B0A20207D0A2020746869732E7365744D6F64652827414D27293B0A7D2C0A0A746F504D203A2066756E6374696F6E2028290A7B206966202820746869732E63757272656E74486F7572203C20';
wwv_flow_api.g_varchar2_table(135) := '31322029200A20207B20746869732E63757272656E74486F7572203D20746869732E63757272656E74486F7572202B2031323B200A20202020746869732E73657443757272656E744469676974616C54696D6528293B0A20207D0A2020746869732E7365';
wwv_flow_api.g_varchar2_table(136) := '744D6F64652827504D27293B0A7D2C0A0A73657443757272656E74416E616C6F6754696D65203A2066756E6374696F6E2028290A7B200A20202F2F2073686F7720616E616C6F672074696D650A2020746869732E757064617465416E616C6F6754696D65';
wwv_flow_api.g_varchar2_table(137) := '28746869732E63757272656E74486F75722C746869732E63757272656E744D696E75746573293B0A7D2C0A0A74696353657454696D65203A2066756E6374696F6E202028686F75722C6D696E75746573290A7B200A20202F2F206966206E6F2070617261';
wwv_flow_api.g_varchar2_table(138) := '6D6574657273207468656E2074616B652063757272656E742074696D650A202069662028686F757229202020207B20746869732E63757272656E74486F7572732020203D20686F75723B207D0A2020696620286D696E7574657329207B20746869732E63';
wwv_flow_api.g_varchar2_table(139) := '757272656E744D696E75746573203D206D696E757465733B207D0A0A20202F2F20646973706C61792074696D65206469676974616C6C7920616E6420616E616C6F670A2020746869732E73657443757272656E744469676974616C54696D6528293B0A20';
wwv_flow_api.g_varchar2_table(140) := '20746869732E73657443757272656E74416E616C6F6754696D6528293B0A7D2C0A0A746963416464546F7563684576656E7473203A2066756E6374696F6E20202820696420290A7B0A0A202076617220746963426F78203D2024282723272B6964295B30';
wwv_flow_api.g_varchar2_table(141) := '5D3B0A0A2020746963426F782E6164644576656E744C697374656E65722827746F7563687374617274272C2066756E6374696F6E2865297B0A2020202076617220746F7563686F626A203D20652E6368616E676564546F75636865735B305D3B20202F2F';
wwv_flow_api.g_varchar2_table(142) := '207265666572656E636520666972737420746F75636820706F696E74202869653A2066697273742066696E676572290A20202020737461727478203D207061727365496E7428746F7563686F626A2E636C69656E7458293B202F2F20676574207820706F';
wwv_flow_api.g_varchar2_table(143) := '736974696F6E206F6620746F75636820706F696E742072656C617469766520746F206C6566742065646765206F662062726F777365720A20202020737461727479203D207061727365496E7428746F7563686F626A2E636C69656E7459293B202F2F2067';
wwv_flow_api.g_varchar2_table(144) := '6574207920706F736974696F6E206F6620746F75636820706F696E742072656C617469766520746F20746F702065646765206F662062726F777365720A20202020617065787469632E64656275672827746F75636853746172743A207374617274696E67';
wwv_flow_api.g_varchar2_table(145) := '20706F736974696F6E203D20272B7374617274782B223B222B737461727479293B0A202020200A20202020617065787469632E746F7563685374617274496E436C6F636B203D2066616C73653B0A202020206966202820617065787469632E7769746869';
wwv_flow_api.g_varchar2_table(146) := '6E436C6F636B287374617274782C7374617274792920290A202020207B20652E70726576656E7444656661756C7428293B2020202F2F206E6F206F746865722066756E6374696F6E20706572666F726D65640A202020202020617065787469632E746F75';
wwv_flow_api.g_varchar2_table(147) := '63685374617274496E436C6F636B203D20747275653B0A202020207D2020202020202020202020202020202020200A2020207D2C2066616C7365293B0A20200A2020746963426F782E6164644576656E744C697374656E65722827746F7563686D6F7665';
wwv_flow_api.g_varchar2_table(148) := '272C2066756E6374696F6E2865297B0A2020202076617220746F7563686F626A203D20652E6368616E676564546F75636865735B305D202F2F207265666572656E636520666972737420746F75636820706F696E7420666F722074686973206576656E74';
wwv_flow_api.g_varchar2_table(149) := '0A202020207661722064697278203D207061727365496E7428746F7563686F626A2E636C69656E7458292D7374617274783B0A202020207661722064697279203D207061727365496E7428746F7563686F626A2E636C69656E7459292D7374617274793B';
wwv_flow_api.g_varchar2_table(150) := '0A20202020617065787469632E73657448616E6428646972782C64697279293B2020202F2F2073686F77732068616E642061732076697375616C20666565646261636B0A20202020652E70726576656E7444656661756C7428293B0A20207D2C2066616C';
wwv_flow_api.g_varchar2_table(151) := '7365293B0A200A2020746963426F782E6164644576656E744C697374656E65722827746F756368656E64272C2066756E6374696F6E2865297B0A2020202076617220746F7563686F626A203D20652E6368616E676564546F75636865735B305D202F2F20';
wwv_flow_api.g_varchar2_table(152) := '7265666572656E636520666972737420746F75636820706F696E7420666F722074686973206576656E740A202020207661722064697278203D207061727365496E7428746F7563686F626A2E636C69656E7458292D7374617274783B202020200A202020';
wwv_flow_api.g_varchar2_table(153) := '207661722064697279203D207061727365496E7428746F7563686F626A2E636C69656E7459292D7374617274793B0A20202020617065787469632E64656275672827746F756368456E643A20646972656374696F6E73203D20272B646972782B223B222B';
wwv_flow_api.g_varchar2_table(154) := '64697279293B0A20202020617065787469632E73657448616E6428646972782C64697279293B0A202020202F2F2070726576656E742066726F6D207265616374696E67206F6E20636C69636B20627920726571756972696E67206D696E696D756D206469';
wwv_flow_api.g_varchar2_table(155) := '7374616E63650A0A202020206966202820284D6174682E616273286469727829202B204D6174682E61627328646972792929203E20617065787469632E73656E73697469766974792029200A202020207B207661722074696D65203D2061706578746963';
wwv_flow_api.g_varchar2_table(156) := '2E67657454696D6528646972782C2D64697279293B0A2020202020206966202820617065787469632E61637469766548616E644E616D65203D3D2027686F75722720290A2020202020207B20617065787469632E63757272656E74486F7572203D207469';
wwv_flow_api.g_varchar2_table(157) := '6D653B200A20202020202020202F2F20616461707420686F757220746F2074696D652077696E646F770A20202020202020206966202820617065787469632E63757272656E74486F7572203C20617065787469632E77696E646F775F626173652029207B';
wwv_flow_api.g_varchar2_table(158) := '20617065787469632E63757272656E74486F7572203D20617065787469632E63757272656E74486F7572202B2031323B207D0A2020202020207D0A202020202020656C73650A2020202020207B20617065787469632E63757272656E744D696E75746573';
wwv_flow_api.g_varchar2_table(159) := '203D2074696D65202A20353B207D0A202020202020617065787469632E74696353657454696D6528293B0A202020202020617065787469632E73657441637469766548616E642827746F67676C6527293B0A202020207D0A202020206966202820617065';
wwv_flow_api.g_varchar2_table(160) := '787469632E746F7563685374617274496E436C6F636B2029202020200A202020207B20652E70726576656E7444656661756C7428293B207D0A2020207D2C2066616C7365293B200A0A7D2C0A0A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(161) := '2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0A202A20636F6E74726F6C205449430A202A2F0A746963506167654261636B67726F756E64203A2066756E6374696F6E2028290A7B20';
wwv_flow_api.g_varchar2_table(162) := '0A202072657475726E20282024282723746963506167654261636B67726F756E64272920293B0A7D2C0A0A746963457869737473203A2066756E6374696F6E2028290A7B200A202072657475726E20282024282723746963436F6E74726F6C27292E6C65';
wwv_flow_api.g_varchar2_table(163) := '6E677468203E203020293B0A7D2C0A0A74696343616E63656C203A2066756E6374696F6E2028290A7B200A2020746869732E68696465436F6E74726F6C28293B0A7D2C0A0A74696352657475726E54696D65203A2066756E6374696F6E2028290A7B200A';
wwv_flow_api.g_varchar2_table(164) := '2020746869732E6465627567282774696352657475726E54696D6527293B0A2020746869732E68696465436F6E74726F6C28293B0A202020200A20202F2F2072657475726E2063686F73656E2074696D6520746F20636C6F636B206974656D0A20206966';
wwv_flow_api.g_varchar2_table(165) := '2028746869732E636C6F636B4974656D29200A20207B20746869732E63757272656E7454696D65203D2027273B0A202020206966202820746869732E63757272656E74486F7572203E202D3120262620746869732E63757272656E744D696E7574657320';
wwv_flow_api.g_varchar2_table(166) := '3E202D312029200A2020202020207B200A202020202020202076617220616D5F706D203D2028746869732E63757272656E74486F7572203E2031322029203F2027504D27203A2027414D273B0A202020202020202076617220686F757220203D20287468';
wwv_flow_api.g_varchar2_table(167) := '69732E63757272656E74486F7572203E2031322029203F20746869732E63757272656E74486F7572202D203132203A20746869732E63757272656E74486F75723B0A0A20202020202020206966202820746869732E74696D655F666F726D6174203D3D20';
wwv_flow_api.g_varchar2_table(168) := '2768683A6D6920616D2720290A20202020202020207B200A2020202020202020202020746869732E63757272656E7454696D65203D20746869732E6C70616428686F757229202B20273A27202B20746869732E6C70616428746869732E63757272656E74';
wwv_flow_api.g_varchar2_table(169) := '4D696E7574657329202B20272027202B20616D5F706D3B0A20202020202020207D0A0A20202020202020206966202820746869732E74696D655F666F726D6174203D3D2027686832342E6D692720290A20202020202020207B200A202020202020202020';
wwv_flow_api.g_varchar2_table(170) := '2020746869732E63757272656E7454696D65203D20746869732E6C70616428746869732E63757272656E74486F757229202B20272E27202B20746869732E6C70616428746869732E63757272656E744D696E75746573293B0A20202020202020207D0A0A';
wwv_flow_api.g_varchar2_table(171) := '20202020202020206966202820746869732E74696D655F666F726D6174203D3D202768682E6D6920616D2720290A20202020202020207B200A2020202020202020202020746869732E63757272656E7454696D65203D20746869732E6C70616428686F75';
wwv_flow_api.g_varchar2_table(172) := '7229202B20272E27202B20746869732E6C70616428746869732E63757272656E744D696E7574657329202B20272027202B20616D5F706D3B0A20202020202020207D0A0A20202020202020202F2F20656C73652064656661756C740A2020202020202020';
wwv_flow_api.g_varchar2_table(173) := '6966202820746869732E63757272656E7454696D65203D3D206E756C6C207C7C20746869732E63757272656E7454696D65203D3D20272720290A20202020202020207B200A20202020202020202020746869732E63757272656E7454696D65203D207468';
wwv_flow_api.g_varchar2_table(174) := '69732E6C70616428746869732E63757272656E74486F757229202B20273A27202B20746869732E6C70616428746869732E63757272656E744D696E75746573293B200A20202020202020207D0A2020202020202020746869732E64656275672874686973';
wwv_flow_api.g_varchar2_table(175) := '2E63757272656E7454696D65293B0A20202020202020200A20202020202020202428746869732E636C6F636B4974656D292E76616C28746869732E63757272656E7454696D65293B0A20202020202020202428746869732E636C6F636B4974656D292E63';
wwv_flow_api.g_varchar2_table(176) := '68616E676528293B0A2020202020207D20200A20207D0A7D2C0A0A2F2A202D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D0A202A20646973706C6179207468652054494320636F6E74726F6C0A202A2F0A0A62';
wwv_flow_api.g_varchar2_table(177) := '75696C64436F6E74726F6C203A2066756E6374696F6E2028206974656D20290A7B200A20202F2F206372656174652064697620636F766572696E67207468652077686F6C6520706167650A2020242827626F647927292E617070656E6428273C64697620';
wwv_flow_api.g_varchar2_table(178) := '69643D22746963506167654261636B67726F756E64223E3C2F6469763E27293B0A0A20202F2F206372656174652064697620636F766572696E67207468652077686F6C65207061676520666F722063656E746572696E67206F6620636F6E74726F6C0A20';
wwv_flow_api.g_varchar2_table(179) := '20242827626F647927292E617070656E6428273C6469762069643D22746963436F6E74726F6C223E3C2F6469763E27293B0A0A20202F2F2063726561746520636F6E7461696E696E672064697620666F7220636C6F636B0A202024282723746963436F6E';
wwv_flow_api.g_varchar2_table(180) := '74726F6C27292E617070656E6428273C6469762069643D22746963426F78223E3C2F6469763E27293B0A20200A0A2020766172207376675769647468203D204D6174682E6D696E2820242877696E646F77292E776964746828292C20353030293B0A2020';
wwv_flow_api.g_varchar2_table(181) := '76617220737667486569676874203D204D6174682E726F756E6428207376675769647468202A20363530202F35303020293B0A2020737667486569676874203D20242877696E646F77292E6865696768742829202D2037303B0A20200A2020737667203D';
wwv_flow_api.g_varchar2_table(182) := '20746869732E737667437265617465526F6F74456C656D2822746963436C6F636B222C73766757696474682C7376674865696768742C22302030203335302033353022293B0A20202428737667292E617070656E64546F282024282723746963426F7827';
wwv_flow_api.g_varchar2_table(183) := '2920293B0A0A20207661722074696354696D65203D20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C20276727293B0A202074696354696D652E73657441747472';
wwv_flow_api.g_varchar2_table(184) := '696275746528226964222C2274696354696D6522293B0A202074696354696D652E7365744174747269627574652822636F6C6F72222C22626C61636B22293B0A202074696354696D652E7365744174747269627574652822666F6E742D66616D696C7922';
wwv_flow_api.g_varchar2_table(185) := '2C22617269616C22293B0A202074696354696D652E7365744174747269627574652822666F6E742D73697A65222C22333422293B0A20207376672E617070656E644368696C642874696354696D65293B200A0A2020746869732E63726561746544696769';
wwv_flow_api.g_varchar2_table(186) := '74616C54696D652874696354696D652C302C30293B0A2020242827237469634469676974616C54696D6547726F757027292E636C69636B20282066756E6374696F6E20286576656E7429207B0A20202020746869732E73657441637469766548616E6428';
wwv_flow_api.g_varchar2_table(187) := '27746F67676C6527293B0A20207D293B0A20200A2020627574746F6E414D203D20746869732E637265617465427574746F6E20282074696354696D652C2027627574746F6E414D272C2027414D272C202031302C202D33352C2037302C20333520293B0A';
wwv_flow_api.g_varchar2_table(188) := '20202428627574746F6E414D292E636C69636B282066756E6374696F6E2829207B20617065787469632E746F414D28293B207D20293B0A0A2020627574746F6E504D203D20746869732E637265617465427574746F6E20282074696354696D652C202762';
wwv_flow_api.g_varchar2_table(189) := '7574746F6E504D272C2027504D272C203235382C202D33352C2037302C20333520293B0A20202428627574746F6E504D292E636C69636B282066756E6374696F6E2829207B20617065787469632E746F504D28293B207D20293B0A20200A202062757474';
wwv_flow_api.g_varchar2_table(190) := '6F6E43616E63656C203D20746869732E637265617465427574746F6E20282074696354696D652C2027627574746F6E43616E63656C272C202743616E63656C272C202031302C203334302C203134392C20333520293B0A20202428627574746F6E43616E';
wwv_flow_api.g_varchar2_table(191) := '63656C292E636C69636B20282066756E6374696F6E2829207B20617065787469632E74696343616E63656C28293B7D20293B0A0A2020627574746F6E4F4B203D20746869732E637265617465427574746F6E20282074696354696D652C2027627574746F';
wwv_flow_api.g_varchar2_table(192) := '6E4F4B272C20274F4B272C203137382C203334302C203134392C20333520293B0A20202428627574746F6E4F4B292E636C69636B20282066756E6374696F6E2829207B20617065787469632E74696352657475726E54696D6528293B7D20293B0A20200A';
wwv_flow_api.g_varchar2_table(193) := '0A20207661722067726F7570203D20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C20276727293B0A202067726F75702E73657441747472696275746528226964';
wwv_flow_api.g_varchar2_table(194) := '222C227469634E756D6265727322293B0A202067726F75702E7365744174747269627574652822636F6C6F72222C22626C61636B22293B0A202067726F75702E7365744174747269627574652822666F6E742D66616D696C79222C22617269616C22293B';
wwv_flow_api.g_varchar2_table(195) := '0A202067726F75702E7365744174747269627574652822666F6E742D73697A65222C22333422293B0A20207376672E617070656E644368696C642867726F7570293B200A0A2020746869732E746963416464546F7563684576656E747328277469634E75';
wwv_flow_api.g_varchar2_table(196) := '6D6265727327293B0A0A20202F2F2064726177206E756D62657273206F6E20636C6F636B0A202078203D205B203137312C203231332C203235342C203236372C203235342C203231342C203136322C203130382C2036392C2035352C2035392C20313030';
wwv_flow_api.g_varchar2_table(197) := '2C203135325D3B0A202079203D205B203135322C2037342C203131332C203136342C203231382C203235352C203237302C203235352C203231382C203136342C203131332C2037342C2035385D3B0A2020666F72202820693D303B2069203C3D20313220';
wwv_flow_api.g_varchar2_table(198) := '3B20692B2B2029200A20207B20795B695D203D20795B695D202B2031323B207D200A0A20202F2F2064726177206261636B67726F756E640A20206E657752656374203D20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F';
wwv_flow_api.g_varchar2_table(199) := '2F7777772E77332E6F72672F323030302F737667222C20277265637427293B202F2F4372656174652061205265637420696E205356472773206E616D6573706163650A20206E6577526563742E73657441747472696275746528226964222C2274696342';
wwv_flow_api.g_varchar2_table(200) := '61636B67726F756E6422293B0A20206E6577526563742E7365744174747269627574652822782220202020202C22313022293B0A20206E6577526563742E7365744174747269627574652822792220202020202C22313022293B0A20206E657752656374';
wwv_flow_api.g_varchar2_table(201) := '2E7365744174747269627574652822776964746822202C2233313822293B0A20206E6577526563742E7365744174747269627574652822686569676874222C2233313422293B0A20206E6577526563742E73657441747472696275746528227278222020';
wwv_flow_api.g_varchar2_table(202) := '20202C22363522293B0A20206E6577526563742E7365744174747269627574652822727922202020202C22363522293B0A20206E6577526563742E736574417474726962757465282266696C6C2220202C22626C61636B22293B0A20206E657752656374';
wwv_flow_api.g_varchar2_table(203) := '2E73657441747472696275746528227374726F6B652D7769647468222C223022293B0A202067726F75702E617070656E644368696C64286E657752656374293B0A20200A20202F2F206472617720636C6F636B20706C6174650A20206E6577436972636C';
wwv_flow_api.g_varchar2_table(204) := '65203D20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C2027636972636C6527293B202F2F437265617465206120636972636C6520696E205356472773206E616D';
wwv_flow_api.g_varchar2_table(205) := '6573706163650A20206E6577436972636C652E73657441747472696275746528226964222C2263656E74657222293B0A20206E6577436972636C652E73657441747472696275746528226378222C785B305D293B0A20206E6577436972636C652E736574';
wwv_flow_api.g_varchar2_table(206) := '41747472696275746528226379222C795B305D293B0A20206E6577436972636C652E736574417474726962757465282272222C2231343022293B0A20206E6577436972636C652E736574417474726962757465282266696C6C222C22776869746522293B';
wwv_flow_api.g_varchar2_table(207) := '0A20206E6577436972636C652E73657441747472696275746528227374726F6B65222C22626C61636B22293B0A20206E6577436972636C652E73657441747472696275746528227374726F6B652D7769647468222C223522293B0A202067726F75702E61';
wwv_flow_api.g_varchar2_table(208) := '7070656E644368696C64286E6577436972636C65293B0A0A20202F2F206472617720686F757248616E640A2020746869732E67656E657261746548616E642867726F75702C27686F757248616E6427293B0A2020746869732E67656E657261746548616E';
wwv_flow_api.g_varchar2_table(209) := '642867726F75702C276D696E75746548616E6427293B0A0A20202F2F20647261772063656E746572206F662074686520636C6F636B0A20206E6577436972636C65203D20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F';
wwv_flow_api.g_varchar2_table(210) := '2F7777772E77332E6F72672F323030302F737667222C2027636972636C6527293B202F2F437265617465206120636972636C6520696E205356472773206E616D6573706163650A20206E6577436972636C652E7365744174747269627574652822696422';
wwv_flow_api.g_varchar2_table(211) := '2C2263656E74657222293B0A20206E6577436972636C652E73657441747472696275746528226378222C785B305D293B0A20206E6577436972636C652E73657441747472696275746528226379222C795B305D293B0A20206E6577436972636C652E7365';
wwv_flow_api.g_varchar2_table(212) := '74417474726962757465282272222C223522293B0A20206E6577436972636C652E736574417474726962757465282266696C6C222C2272656422293B0A20206E6577436972636C652E73657441747472696275746528227374726F6B65222C22626C6163';
wwv_flow_api.g_varchar2_table(213) := '6B22293B0A20206E6577436972636C652E73657441747472696275746528227374726F6B652D7769647468222C223522293B0A202067726F75702E617070656E644368696C64286E6577436972636C65293B0A202020200A20200A2020666F7220282069';
wwv_flow_api.g_varchar2_table(214) := '3D313B2069203C3D203132203B20692B2B2029200A20207B206E657754657874203D20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C20277465787427293B202F';
wwv_flow_api.g_varchar2_table(215) := '2F4372656174652061207465787420696E205356472773206E616D6573706163650A202020206E6577546578742E73657441747472696275746528226964222C22747874222B69293B0A202020206E6577546578742E7365744174747269627574652822';
wwv_flow_api.g_varchar2_table(216) := '78222C785B695D293B0A202020206E6577546578742E736574417474726962757465282279222C795B695D293B0A202020202F2F206E6577546578742E736574417474726962757465282266696C6C222C636C6F636B46696C6C436F6C6F72293B0A2020';
wwv_flow_api.g_varchar2_table(217) := '202076617220746578744E6F6465203D20646F63756D656E742E637265617465546578744E6F64652869293B0A202020206E6577546578742E617070656E644368696C6428746578744E6F6465293B0A2020202067726F75702E617070656E644368696C';
wwv_flow_api.g_varchar2_table(218) := '64286E657754657874293B0A20207D0A0A20200A20202F2A206966202820216973546F75636844657669636528292029202A2F0A20207B202428225B69645E3D7478745D22292E636C69636B20282066756E6374696F6E20286576656E7429207B0A2020';
wwv_flow_api.g_varchar2_table(219) := '20202020207661722074696D65203D20242874686973292E617474722827696427292E737562737472696E672833293B0A202020202020206966202820617065787469632E67657441637469766548616E642829203D3D2027686F75722720290A202020';
wwv_flow_api.g_varchar2_table(220) := '202020207B200A202020202020202020617065787469632E63757272656E74486F7572203D207061727365496E742874696D65293B0A2020202020202020206966202820617065787469632E63757272656E74486F7572203D3D2031322029207B206170';
wwv_flow_api.g_varchar2_table(221) := '65787469632E63757272656E74486F7572203D20303B207D0A2020202020202020206966202820617065787469632E63757272656E74486F7572203C20617065787469632E77696E646F775F626173652029207B20617065787469632E63757272656E74';
wwv_flow_api.g_varchar2_table(222) := '486F7572203D20617065787469632E63757272656E74486F7572202B2031323B207D0A0A2020202020202020206966202820617065787469632E63757272656E744D696E75746573203C20302029200A20202020202020202020207B2061706578746963';
wwv_flow_api.g_varchar2_table(223) := '2E63757272656E744D696E75746573203D20303B207D0A2020202020202020206966202820617065787469632E6D6F6465203D3D2027504D2720262620617065787469632E63757272656E74486F7572203C2031322029200A2020202020202020202020';
wwv_flow_api.g_varchar2_table(224) := '7B20617065787469632E63757272656E74486F7572203D20617065787469632E63757272656E74486F7572202B2031323B207D0A202020202020202020617065787469632E736574486F757248616E6428293B0A20202020202020202061706578746963';
wwv_flow_api.g_varchar2_table(225) := '2E73657441637469766548616E6428276D696E75746527293B0A202020202020207D0A20202020202020656C73650A202020202020207B20617065787469632E63757272656E744D696E75746573203D207061727365496E742874696D65292A353B0A20';
wwv_flow_api.g_varchar2_table(226) := '20202020202020206966202820617065787469632E63757272656E744D696E75746573203D3D2036302029207B20617065787469632E63757272656E744D696E75746573203D20303B207D200A202020202020202020617065787469632E7365744D696E';
wwv_flow_api.g_varchar2_table(227) := '75746548616E6428293B0A202020202020202020617065787469632E73657441637469766548616E642827686F757227293B0A202020202020207D0A20202020202020617065787469632E73657443757272656E744469676974616C54696D6528293B0A';
wwv_flow_api.g_varchar2_table(228) := '202020207D20293B0A20207D0A0A7D2C0A74696353686F77203A2066756E6374696F6E2028206974656D2C2077696E646F775F626173652C2074696D655F666F726D617420290A7B200A20202F2F2073746F726520706172616D65746572730A20207468';
wwv_flow_api.g_varchar2_table(229) := '69732E636C6F636B4974656D203D206974656D3B0A2020746869732E77696E646F775F62617365203D2077696E646F775F626173653B0A2020746869732E74696D655F666F726D6174203D2074696D655F666F726D61743B0A2020202020200A20202F2F';
wwv_flow_api.g_varchar2_table(230) := '2073686F7720736861646564206261636B67726F756E640A20202428746869732E746963506167654261636B67726F756E642829292E73686F7728293B0A0A20202F2F20696620636F6E74726F6C20657869737473207468656E2073686F772069742065';
wwv_flow_api.g_varchar2_table(231) := '6C7365206275696C642069740A20206966202820746869732E746963457869737473282920290A20207B20746869732E73686F77436F6E74726F6C286974656D293B207D0A2020656C73650A20207B20746869732E6275696C64436F6E74726F6C286974';
wwv_flow_api.g_varchar2_table(232) := '656D293B207D0A20200A20202F2F206D616B652068616E647320696E76697369626C650A2020746869732E6869646548616E647328293B0A20200A20202F2F20696E697469616C697A652074696D650A2020746869732E63757272656E74486F7572203D';
wwv_flow_api.g_varchar2_table(233) := '206E756C6C3B0A2020746869732E63757272656E744D696E75746573203D206E756C6C3B0A2020746869732E7570646174654469676974616C54696D6528746869732E63757272656E74486F75722C746869732E63757272656E744D696E75746573293B';
wwv_flow_api.g_varchar2_table(234) := '0A202020200A20202F2F2073657420686F757268616E64206173206163746976650A2020746869732E73657441637469766548616E642827686F757227293B0A20200A7D2C0A0A2F2A204170657820706C7567696E2066756E6374696F6E202A2F0A646F';
wwv_flow_api.g_varchar2_table(235) := '4974203A2066756E6374696F6E2829200A7B0A202020207661722074696D653B0A2020202076617220646154686973203D20746869733B0A202020200A202020207661722076456C656D656E74734172726179203D206461546869732E61666665637465';
wwv_flow_api.g_varchar2_table(236) := '64456C656D656E74733B0A20202020766172206974656D4964203D202723272B242876456C656D656E74734172726179292E617474722827696427293B0A0A202020207661722077696E646F775F62617365203D2028206461546869732E616374696F6E';
wwv_flow_api.g_varchar2_table(237) := '2E61747472696275746530312029203F206461546869732E616374696F6E2E6174747269627574653031203A20373B0A202020207661722074696D655F666F726D6174203D2028206461546869732E616374696F6E2E6174747269627574653032202920';
wwv_flow_api.g_varchar2_table(238) := '3F206461546869732E616374696F6E2E6174747269627574653032203A2027686832343A6D69273B0A20202020617065787469632E6C6F6767696E67202020203D2028206461546869732E616374696F6E2E61747472696275746531302029203F206461';
wwv_flow_api.g_varchar2_table(239) := '546869732E616374696F6E2E6174747269627574653130203A20303B0A202020202F2F204C6F6767696E670A20202020617065787469632E6465627567282746756E6374696F6E3A204170657820546F7563682054696D6520436F6E74726F6C27293B0A';
wwv_flow_api.g_varchar2_table(240) := '20202020617065787469632E64656275672827506172616D65746572733A206974656D20494420202020203D272B6974656D4964293B0A20202020617065787469632E6465627567282720202020202020202020202077696E646F775F62617365203D27';
wwv_flow_api.g_varchar2_table(241) := '2B77696E646F775F62617365293B0A20202020617065787469632E6465627567282720202020202020202020202074696D655F666F726D6174203D272B74696D655F666F726D6174293B0A0A202020202F2A200A20202020202A20637265617465207469';
wwv_flow_api.g_varchar2_table(242) := '6D65207069636B65722069636F6E730A20202020202A2061747461636820636C69636B206576656E7420746F2073686F772074686520636C6F636B0A20202020202A2F0A202020202428272E6861732D74696D652D7069636B657227292E656163682820';
wwv_flow_api.g_varchar2_table(243) := '66756E6374696F6E2829207B200A2020202020202020766172206974656D5F6964203D20242874686973292E617474722827696427293B0A2020202020202020242874686973292E616674657228603C64697620636C6173733D22612D427574746F6E20';
wwv_flow_api.g_varchar2_table(244) := '612D427574746F6E2D696E6C696E6522206F6E636C69636B3D22617065787469632E74696353686F77282723247B6974656D5F69647D272C247B77696E646F775F626173657D2C27247B74696D655F666F726D61747D2729223E3C6920636C6173733D22';
wwv_flow_api.g_varchar2_table(245) := '66612066612D636C6F636B2D6F223E3C2F693E3C2F6469763E60293B200A202020207D20293B0A0A7D0A0A7D0A0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(127687639099183102)
,p_plugin_id=>wwv_flow_api.id(158417528875673949)
,p_file_name=>'apextic.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220617065787469633D7B783A6E756C6C2C793A6E756C6C2C686F757248616E643A6E756C6C2C6D696E75746548616E643A6E756C6C2C61637469766548616E643A6E756C6C2C68616E644C656E6774683A7B686F757248616E643A223630222C6D';
wwv_flow_api.g_varchar2_table(2) := '696E75746548616E643A223835227D2C636C6F636B4974656D3A6E756C6C2C74696349643A22746963436F6E74726F6C222C746963426F783A646F63756D656E742E676574456C656D656E74427949642822746963426F7822292C7374617274783A302C';
wwv_flow_api.g_varchar2_table(3) := '7374617274793A302C646973743A302C686F7572546578744C6566743A302C77696E646F775F626173653A372C74696D655F666F726D61743A22686832343A6D69222C6C6F6767696E673A302C61637469766548616E644E616D653A22686F7572222C63';
wwv_flow_api.g_varchar2_table(4) := '757272656E74486F75723A6E756C6C2C63757272656E744D696E757465733A6E756C6C2C73656E73697469766974793A32302C6D6F64653A2262617365222C746F7563685374617274496E436C6F636B3A21312C64656275673A66756E6374696F6E2874';
wwv_flow_api.g_varchar2_table(5) := '297B313D3D746869732E6C6F6767696E672626636F6E736F6C652E6C6F672874297D2C6C7061643A66756E6374696F6E2874297B76617220653D22223B72657475726E206E756C6C213D742626313D3D28653D742E746F537472696E672829292E6C656E';
wwv_flow_api.g_varchar2_table(6) := '677468262628653D2230222B65292C657D2C676574416E676C6546726F6D566563746F723A66756E6374696F6E28742C65297B76617220693D302C6E3D3138302F4D6174682E50493B72657475726E20303D3D743F693D653E303F3138303A303A28693D';
wwv_flow_api.g_varchar2_table(7) := '4D6174682E6174616E28652F4D6174682E616273287429292A6E2C693D743E303F39302B693A3237302D69292C697D2C7365744D6F64653A66756E6374696F6E2874297B746869732E6D6F64653D742C22414D223D3D746869732E6D6F64653F28746869';
wwv_flow_api.g_varchar2_table(8) := '732E77696E646F775F626173653D302C24282223627574746F6E414D207465787422292E61747472282266696C6C222C226C69676874677261792229293A22414D223D3D746869732E6D6F6465262628746869732E77696E646F775F626173653D31322C';
wwv_flow_api.g_varchar2_table(9) := '24282223627574746F6E504D207465787422292E61747472282266696C6C222C226C69676874677261792229292C24282223627574746F6E414D207465787422292E61747472282266696C6C222C22626C61636B22292C24282223627574746F6E504D20';
wwv_flow_api.g_varchar2_table(10) := '7465787422292E61747472282266696C6C222C22626C61636B22297D2C5356473A66756E6374696F6E2874297B72657475726E20646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F32303030';
wwv_flow_api.g_varchar2_table(11) := '2F737667222C74297D2C73657443757272656E7454696D6546726F6D537472696E673A66756E6374696F6E2874297B76617220653D742E73706C697428223A22293B652E6C656E6774683E3D31262628746869732E63757272656E74486F75723D706172';
wwv_flow_api.g_varchar2_table(12) := '7365496E7428655B305D292C746869732E63757272656E74486F75723E3D31323F746869732E7365744D6F64652822504D22293A746869732E7365744D6F64652822414D2229292C652E6C656E6774683E3D32262628746869732E63757272656E744D69';
wwv_flow_api.g_varchar2_table(13) := '6E757465733D7061727365496E7428655B315D29297D2C67657454696D653A66756E6374696F6E28742C65297B76617220692C6E3B72657475726E204D6174682E6162732865293E4D6174682E6162732874293F286E3D742F652C693D653E303F31313A';
wwv_flow_api.g_varchar2_table(14) := '35293A286E3D2D652F742C693D743E303F323A38292C6E3E2D2E3236262628692B3D31292C6E3E2E3236262628692B3D31292C693E3D3132262628692D3D3132292C697D2C67657441637469766548616E643A66756E6374696F6E28297B72657475726E';
wwv_flow_api.g_varchar2_table(15) := '20746869732E61637469766548616E644E616D657C7C28746869732E61637469766548616E644E616D653D22686F7572222C746869732E61637469766548616E643D686F757248616E64292C746869732E61637469766548616E644E616D657D2C736574';
wwv_flow_api.g_varchar2_table(16) := '41637469766548616E643A66756E6374696F6E2874297B76617220653D22626C61636B222C693D22626C61636B223B22746F67676C6522213D74262622686F757222213D742626226D696E75746522213D747C7C2822746F67676C65223D3D7426262874';
wwv_flow_api.g_varchar2_table(17) := '3D22686F7572223D3D746869732E67657441637469766548616E6428293F226D696E757465223A22686F757222292C226D696E757465223D3D743F28653D22726564222C746869732E61637469766548616E643D746869732E6D696E75746548616E642C';
wwv_flow_api.g_varchar2_table(18) := '746869732E61637469766548616E644E616D653D226D696E75746522293A22686F7572223D3D74262628693D22726564222C746869732E61637469766548616E643D746869732E686F757248616E642C746869732E61637469766548616E644E616D653D';
wwv_flow_api.g_varchar2_table(19) := '22686F757222292C2428686F757248616E64295B305D2E736574417474726962757465282266696C6C222C69292C24286D696E75746548616E64295B305D2E736574417474726962757465282266696C6C222C65292C646F63756D656E742E676574456C';
wwv_flow_api.g_varchar2_table(20) := '656D656E744279496428226469676974616C54696D65486F75727322292E736574417474726962757465282266696C6C222C69292C646F63756D656E742E676574456C656D656E744279496428226469676974616C54696D654D696E7574657322292E73';
wwv_flow_api.g_varchar2_table(21) := '6574417474726962757465282266696C6C222C6529297D2C77697468696E436C6F636B3A66756E6374696F6E28742C65297B76617220693D21313B72657475726E2064783D742D785B305D2C64793D652D795B305D2C4D6174682E737172742864782A64';
wwv_flow_api.g_varchar2_table(22) := '782B64792A6479293C3D746869732E68616E644C656E6774685B746869732E6D696E75746548616E645D262628693D2130292C697D2C73657448616E643A66756E6374696F6E28742C65297B76617220693D4D6174682E7371727428742A742B652A6529';
wwv_flow_api.g_varchar2_table(23) := '2C6E3D746869732E676574416E676C6546726F6D566563746F7228742C65293B6E2B3D3138303B76617220723D746869732E68616E644C656E6774685B746869732E61637469766548616E644E616D652B2248616E64225D3B693E72262628693D72293B';
wwv_flow_api.g_varchar2_table(24) := '76617220753D6E2E746F537472696E6728292B2220222B785B305D2B2220222B795B305D2C613D746869732E61637469766548616E644E616D652B2248616E64223B24282223222B61295B305D2E7365744174747269627574652822686569676874222C';
wwv_flow_api.g_varchar2_table(25) := '69292C24282223222B61295B305D2E73657441747472696275746528227472616E73666F726D222C22726F7461746528222B752B222922297D2C6869646548616E64733A66756E6374696F6E28297B746869732E686F757248616E642E73657441747472';
wwv_flow_api.g_varchar2_table(26) := '69627574652822686569676874222C223022292C746869732E6D696E75746548616E642E7365744174747269627574652822686569676874222C223022297D2C736574486F757248616E643A66756E6374696F6E2874297B743F746869732E6375727265';
wwv_flow_api.g_varchar2_table(27) := '6E74486F75723D4D6174682E7472756E632874293A743D746869732E63757272656E74486F75722C746869732E63757272656E744D696E75746573262628743D4D6174682E7472756E632874292B746869732E63757272656E744D696E757465732F3830';
wwv_flow_api.g_varchar2_table(28) := '292C646567726565733D33302A28742B36292C726F746174696F6E3D646567726565732E746F537472696E6728292B2220222B785B305D2B2220222B795B305D2C746869732E686F757248616E642E73657441747472696275746528227472616E73666F';
wwv_flow_api.g_varchar2_table(29) := '726D222C22726F7461746528222B726F746174696F6E2B222922292C746869732E686F757248616E642E7365744174747269627574652822686569676874222C746869732E68616E644C656E6774682E686F757248616E64297D2C7365744D696E757465';
wwv_flow_api.g_varchar2_table(30) := '48616E643A66756E6374696F6E2874297B743F746869732E63757272656E744D696E757465733D743A743D746869732E63757272656E744D696E757465732C646567726565733D362A4D6174682E726F756E642874292B3138302C726F746174696F6E3D';
wwv_flow_api.g_varchar2_table(31) := '646567726565732E746F537472696E6728292B2220222B785B305D2B2220222B795B305D2C746869732E6D696E75746548616E642E73657441747472696275746528227472616E73666F726D222C22726F7461746528222B726F746174696F6E2B222922';
wwv_flow_api.g_varchar2_table(32) := '292C746869732E6D696E75746548616E642E7365744174747269627574652822686569676874222C746869732E68616E644C656E6774682E6D696E75746548616E64297D2C68696465436F6E74726F6C3A66756E6374696F6E28297B2428222374696350';
wwv_flow_api.g_varchar2_table(33) := '6167654261636B67726F756E6422292E6869646528292C24282223222B746869732E7469634964292E6869646528297D2C73686F77436F6E74726F6C3A66756E6374696F6E28297B24282223222B746869732E7469634964292E73686F7728292C617065';
wwv_flow_api.g_varchar2_table(34) := '787469632E6869646548616E647328292C617065787469632E7365744D6F646528297D2C72657475726E54696D653A66756E6374696F6E28297B6966286465627567282272657475726E54696D6522292C746869732E68696465436F6E74726F6C28292C';
wwv_flow_api.g_varchar2_table(35) := '746869732E636C6F636B4974656D2626746869732E63757272656E74486F75722626746869732E63757272656E744D696E75746573297B76617220743D746869732E6C70616428746869732E63757272656E74486F7572292B223A222B746869732E6C70';
wwv_flow_api.g_varchar2_table(36) := '616428746869732E63757272656E744D696E75746573293B2428636C6F636B4974656D292E76616C2874297D7D2C737667437265617465456C656D656E743A66756E6374696F6E2874297B72657475726E20646F63756D656E742E637265617465456C65';
wwv_flow_api.g_varchar2_table(37) := '6D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C74297D2C737667437265617465526F6F74456C656D3A66756E6374696F6E28742C652C692C6E297B76617220723D746869732E737667437265617465456C656D';
wwv_flow_api.g_varchar2_table(38) := '656E74282273766722293B72657475726E20722E73657441747472696275746528226964222C74292C722E73657441747472696275746528227769647468222C65292C722E7365744174747269627574652822686569676874222C69292C722E73657441';
wwv_flow_api.g_varchar2_table(39) := '7474726962757465282276696577426F78222C6E292C727D2C73766743726561746547726F75703A66756E6374696F6E28742C65297B76617220693D746869732E737667437265617465456C656D656E7428226722293B72657475726E20692E73657441';
wwv_flow_api.g_varchar2_table(40) := '747472696275746528226964222C74292C652626692E7365744174747269627574652822636C617373222C65292C697D2C63656E74657254657874456C656D656E743A66756E6374696F6E28742C652C69297B746578744F626A3D646F63756D656E742E';
wwv_flow_api.g_varchar2_table(41) := '676574456C656D656E74427949642874292C6C656E6774683D746578744F626A2E676574436F6D7075746564546578744C656E67746828292C78546578743D652B28692D6C656E677468292F322C746578744F626A2E7365744174747269627574652822';
wwv_flow_api.g_varchar2_table(42) := '78222C7854657874297D2C6C656674416C69676E54657874456C656D656E743A66756E6374696F6E28742C65297B746578744F626A3D646F63756D656E742E676574456C656D656E74427949642874292C6C656E6774683D746578744F626A2E67657443';
wwv_flow_api.g_varchar2_table(43) := '6F6D7075746564546578744C656E67746828293B76617220693D652D6C656E6774683B72657475726E20746578744F626A2E736574417474726962757465282278222C69292C657D2C73766743726561746554657874456C656D656E743A66756E637469';
wwv_flow_api.g_varchar2_table(44) := '6F6E28742C652C692C6E297B6E6577546578743D746869732E737667437265617465456C656D656E7428227465787422292C6E6577546578742E73657441747472696275746528226964222C74292C6E6577546578742E73657441747472696275746528';
wwv_flow_api.g_varchar2_table(45) := '2278222C69292C6E6577546578742E736574417474726962757465282279222C6E293B76617220723D646F63756D656E742E637265617465546578744E6F64652865293B72657475726E206E6577546578742E617070656E644368696C642872292C6E65';
wwv_flow_api.g_varchar2_table(46) := '77546578747D2C737667437265617465526563743A66756E6374696F6E28742C652C692C6E2C722C752C612C732C63297B2428746869732E737667437265617465456C656D656E742822726563742229292E6174747228226964222C65292E6174747228';
wwv_flow_api.g_varchar2_table(47) := '2278222C69292E61747472282279222C6E292E6174747228227769647468222C72292E617474722822686569676874222C75292E6174747228227374726F6B652D7769647468222C63292E6174747228227374726F6B65222C73292E6174747228226669';
wwv_flow_api.g_varchar2_table(48) := '6C6C222C61292E617070656E64546F2824287429297D2C637265617465427574746F6E3A66756E6374696F6E28742C652C692C6E2C722C752C61297B76617220733D746869732E73766743726561746547726F757028652C22627574746F6E22293B7265';
wwv_flow_api.g_varchar2_table(49) := '7475726E202428746869732E5356472822726563742229292E6174747228226964222C652B22426F7822292E61747472282278222C6E292E61747472282279222C72292E6174747228227278222C223522292E6174747228227279222C223522292E6174';
wwv_flow_api.g_varchar2_table(50) := '747228227769647468222C75292E617474722822686569676874222C61292E6174747228227374726F6B652D7769647468222C223122292E6174747228227374726F6B65222C22626C61636B22292E61747472282266696C6C222C22776869746522292E';
wwv_flow_api.g_varchar2_table(51) := '617070656E64546F2824287329292C2428746869732E5356472822616E696D6174652229292E617474722822626567696E222C22636C69636B22292E617474722822647572222C22302E357322292E617474722822726570656174436F756E74222C2231';
wwv_flow_api.g_varchar2_table(52) := '22292E6174747228226174747269627574654E616D65222C2266696C6C22292E61747472282276616C756573222C2277686974653B2067726179203B20776869746522292E61747472282266696C6C222C22667265657A6522292E617070656E64546F28';
wwv_flow_api.g_varchar2_table(53) := '24282223222B652B22426F782229292C627574746F6E546578743D746869732E73766743726561746554657874456C656D656E7428652B2254657874222C692C6E2C722B612D3134292C2428627574746F6E54657874292E617070656E64546F28242873';
wwv_flow_api.g_varchar2_table(54) := '29292C242873292E617070656E64546F2824287429292C746869732E63656E74657254657874456C656D656E7428627574746F6E546578742E69642C6E2C75292C737D2C67656E657261746548616E643A66756E6374696F6E28742C65297B7661722069';
wwv_flow_api.g_varchar2_table(55) := '3D646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C227265637422293B692E73657441747472696275746528226964222C65292C692E736574417474726962757465';
wwv_flow_api.g_varchar2_table(56) := '282278222C313639292C692E736574417474726962757465282279222C795B305D292C692E73657441747472696275746528227769647468222C223522292C692E7365744174747269627574652822686569676874222C746869732E68616E644C656E67';
wwv_flow_api.g_varchar2_table(57) := '74685B655D292C692E73657441747472696275746528227278222C223322292C692E73657441747472696275746528227279222C223322292C692E736574417474726962757465282266696C6C222C22626C61636B22292C692E73657441747472696275';
wwv_flow_api.g_varchar2_table(58) := '746528227374726F6B652D7769647468222C223022292C692E73657441747472696275746528227472616E73666F726D222C22726F746174652831383020222B785B305D2B2220222B795B305D2B222922292C68616E6447726F75703D746869732E7376';
wwv_flow_api.g_varchar2_table(59) := '6743726561746547726F757028652B2247726F757022292C68616E6447726F75702E617070656E644368696C642869292C742E617070656E644368696C642868616E6447726F7570292C22686F757248616E64223D3D653F746869732E686F757248616E';
wwv_flow_api.g_varchar2_table(60) := '643D693A746869732E6D696E75746548616E643D697D2C7570646174654469676974616C54696D653A66756E6374696F6E28742C65297B6E756C6C213D743F28743E3D30262628646F63756D656E742E676574456C656D656E7442794964282264696769';
wwv_flow_api.g_varchar2_table(61) := '74616C54696D65486F75727322292E74657874436F6E74656E743D746869732E6C7061642874292C746869732E6C656674416C69676E54657874456C656D656E7428226469676974616C54696D65486F757273222C686F7572546578744C65667429292C';
wwv_flow_api.g_varchar2_table(62) := '653E3D30262628646F63756D656E742E676574456C656D656E744279496428226469676974616C54696D654D696E7574657322292E74657874436F6E74656E743D746869732E6C70616428652929293A28646F63756D656E742E676574456C656D656E74';
wwv_flow_api.g_varchar2_table(63) := '4279496428226469676974616C54696D65486F75727322292E74657874436F6E74656E743D22222C646F63756D656E742E676574456C656D656E744279496428226469676974616C54696D654D696E7574657322292E74657874436F6E74656E743D2222';
wwv_flow_api.g_varchar2_table(64) := '297D2C757064617465416E616C6F6754696D653A66756E6374696F6E28742C65297B743D7061727365496E742874292C746869732E63757272656E744D696E75746573262628742B3D652F3830292C746869732E736574486F757248616E642874292C74';
wwv_flow_api.g_varchar2_table(65) := '6869732E63757272656E744D696E757465732626746869732E7365744D696E75746548616E642865297D2C6372656174654469676974616C54696D653A66756E6374696F6E28742C652C69297B72657475726E206C47726F75703D746869732E73766743';
wwv_flow_api.g_varchar2_table(66) := '726561746547726F757028227469634469676974616C54696D6547726F757022292C24286C47726F7570292E617070656E64546F2824287429292C783D39352C793D2D33352C77696474683D3134382C6865696768743D33352C746869732E7376674372';
wwv_flow_api.g_varchar2_table(67) := '6561746552656374286C47726F75702C227469634469676974616C54696D65426F78222C782C792C77696474682C6865696768742C227768697465222C22626C61636B222C223122292C793D792B6865696768742D352C78546578743D782B7769647468';
wwv_flow_api.g_varchar2_table(68) := '2F322C746578743D746869732E73766743726561746554657874456C656D656E7428226469676974616C54696D65436F6C6F6E222C223A222C78546578742C792D35292C242874657874292E617070656E64546F2824286C47726F757029292C653D7468';
wwv_flow_api.g_varchar2_table(69) := '69732E6C7061642865292C78546578743D782B77696474682F322D352C746578743D746869732E73766743726561746554657874456C656D656E7428226469676974616C54696D65486F757273222C652C78546578742C792D35292C242874657874292E';
wwv_flow_api.g_varchar2_table(70) := '617070656E64546F2824286C47726F757029292C686F7572546578744C6566743D746869732E6C656674416C69676E54657874456C656D656E7428226469676974616C54696D65486F757273222C7854657874292C693D746869732E6C7061642869292C';
wwv_flow_api.g_varchar2_table(71) := '78546578743D782B77696474682F322B31322C746578743D746869732E73766743726561746554657874456C656D656E7428226469676974616C54696D654D696E75746573222C692C78546578742C792D35292C242874657874292E617070656E64546F';
wwv_flow_api.g_varchar2_table(72) := '2824286C47726F757029292C6C47726F75707D2C73657443757272656E744469676974616C54696D653A66756E6374696F6E28297B746869732E7570646174654469676974616C54696D6528746869732E63757272656E74486F75722C746869732E6375';
wwv_flow_api.g_varchar2_table(73) := '7272656E744D696E75746573297D2C746F414D3A66756E6374696F6E28297B746869732E63757272656E74486F75723E3D3132262628746869732E63757272656E74486F75723D746869732E63757272656E74486F75722D31322C746869732E73657443';
wwv_flow_api.g_varchar2_table(74) := '757272656E744469676974616C54696D652829292C746869732E7365744D6F64652822414D22297D2C746F504D3A66756E6374696F6E28297B746869732E63757272656E74486F75723C3132262628746869732E63757272656E74486F75723D74686973';
wwv_flow_api.g_varchar2_table(75) := '2E63757272656E74486F75722B31322C746869732E73657443757272656E744469676974616C54696D652829292C746869732E7365744D6F64652822504D22297D2C73657443757272656E74416E616C6F6754696D653A66756E6374696F6E28297B7468';
wwv_flow_api.g_varchar2_table(76) := '69732E757064617465416E616C6F6754696D6528746869732E63757272656E74486F75722C746869732E63757272656E744D696E75746573297D2C74696353657454696D653A66756E6374696F6E28742C65297B74262628746869732E63757272656E74';
wwv_flow_api.g_varchar2_table(77) := '486F7572733D74292C65262628746869732E63757272656E744D696E757465733D65292C746869732E73657443757272656E744469676974616C54696D6528292C746869732E73657443757272656E74416E616C6F6754696D6528297D2C746963416464';
wwv_flow_api.g_varchar2_table(78) := '546F7563684576656E74733A66756E6374696F6E2874297B76617220653D24282223222B74295B305D3B652E6164644576656E744C697374656E65722822746F7563687374617274222C66756E6374696F6E2874297B76617220653D742E6368616E6765';
wwv_flow_api.g_varchar2_table(79) := '64546F75636865735B305D3B7374617274783D7061727365496E7428652E636C69656E7458292C7374617274793D7061727365496E7428652E636C69656E7459292C617065787469632E64656275672822746F75636853746172743A207374617274696E';
wwv_flow_api.g_varchar2_table(80) := '6720706F736974696F6E203D20222B7374617274782B223B222B737461727479292C617065787469632E746F7563685374617274496E436C6F636B3D21312C617065787469632E77697468696E436C6F636B287374617274782C73746172747929262628';
wwv_flow_api.g_varchar2_table(81) := '742E70726576656E7444656661756C7428292C617065787469632E746F7563685374617274496E436C6F636B3D2130297D2C2131292C652E6164644576656E744C697374656E65722822746F7563686D6F7665222C66756E6374696F6E2874297B766172';
wwv_flow_api.g_varchar2_table(82) := '20653D742E6368616E676564546F75636865735B305D2C693D7061727365496E7428652E636C69656E7458292D7374617274782C6E3D7061727365496E7428652E636C69656E7459292D7374617274793B617065787469632E73657448616E6428692C6E';
wwv_flow_api.g_varchar2_table(83) := '292C742E70726576656E7444656661756C7428297D2C2131292C652E6164644576656E744C697374656E65722822746F756368656E64222C66756E6374696F6E2874297B76617220653D742E6368616E676564546F75636865735B305D2C693D70617273';
wwv_flow_api.g_varchar2_table(84) := '65496E7428652E636C69656E7458292D7374617274782C6E3D7061727365496E7428652E636C69656E7459292D7374617274793B696628617065787469632E64656275672822746F756368456E643A20646972656374696F6E73203D20222B692B223B22';
wwv_flow_api.g_varchar2_table(85) := '2B6E292C617065787469632E73657448616E6428692C6E292C4D6174682E6162732869292B4D6174682E616273286E293E617065787469632E73656E7369746976697479297B76617220723D617065787469632E67657454696D6528692C2D6E293B2268';
wwv_flow_api.g_varchar2_table(86) := '6F7572223D3D617065787469632E61637469766548616E644E616D653F28617065787469632E63757272656E74486F75723D722C617065787469632E63757272656E74486F75723C617065787469632E77696E646F775F62617365262628617065787469';
wwv_flow_api.g_varchar2_table(87) := '632E63757272656E74486F75723D617065787469632E63757272656E74486F75722B313229293A617065787469632E63757272656E744D696E757465733D352A722C617065787469632E74696353657454696D6528292C617065787469632E7365744163';
wwv_flow_api.g_varchar2_table(88) := '7469766548616E642822746F67676C6522297D617065787469632E746F7563685374617274496E436C6F636B2626742E70726576656E7444656661756C7428297D2C2131297D2C746963506167654261636B67726F756E643A66756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(89) := '72657475726E2024282223746963506167654261636B67726F756E6422297D2C7469634578697374733A66756E6374696F6E28297B72657475726E2024282223746963436F6E74726F6C22292E6C656E6774683E307D2C74696343616E63656C3A66756E';
wwv_flow_api.g_varchar2_table(90) := '6374696F6E28297B746869732E68696465436F6E74726F6C28297D2C74696352657475726E54696D653A66756E6374696F6E28297B696628746869732E6465627567282274696352657475726E54696D6522292C746869732E68696465436F6E74726F6C';
wwv_flow_api.g_varchar2_table(91) := '28292C746869732E636C6F636B4974656D262628746869732E63757272656E7454696D653D22222C746869732E63757272656E74486F75723E2D312626746869732E63757272656E744D696E757465733E2D3129297B76617220743D746869732E637572';
wwv_flow_api.g_varchar2_table(92) := '72656E74486F75723E31323F22504D223A22414D222C653D746869732E63757272656E74486F75723E31323F746869732E63757272656E74486F75722D31323A746869732E63757272656E74486F75723B2268683A6D6920616D223D3D746869732E7469';
wwv_flow_api.g_varchar2_table(93) := '6D655F666F726D6174262628746869732E63757272656E7454696D653D746869732E6C7061642865292B223A222B746869732E6C70616428746869732E63757272656E744D696E75746573292B2220222B74292C22686832342E6D69223D3D746869732E';
wwv_flow_api.g_varchar2_table(94) := '74696D655F666F726D6174262628746869732E63757272656E7454696D653D746869732E6C70616428746869732E63757272656E74486F7572292B222E222B746869732E6C70616428746869732E63757272656E744D696E7574657329292C2268682E6D';
wwv_flow_api.g_varchar2_table(95) := '6920616D223D3D746869732E74696D655F666F726D6174262628746869732E63757272656E7454696D653D746869732E6C7061642865292B222E222B746869732E6C70616428746869732E63757272656E744D696E75746573292B2220222B74292C6E75';
wwv_flow_api.g_varchar2_table(96) := '6C6C213D746869732E63757272656E7454696D6526262222213D746869732E63757272656E7454696D657C7C28746869732E63757272656E7454696D653D746869732E6C70616428746869732E63757272656E74486F7572292B223A222B746869732E6C';
wwv_flow_api.g_varchar2_table(97) := '70616428746869732E63757272656E744D696E7574657329292C746869732E646562756728746869732E63757272656E7454696D65292C2428746869732E636C6F636B4974656D292E76616C28746869732E63757272656E7454696D65292C2428746869';
wwv_flow_api.g_varchar2_table(98) := '732E636C6F636B4974656D292E6368616E676528297D7D2C6275696C64436F6E74726F6C3A66756E6374696F6E2874297B242822626F647922292E617070656E6428273C6469762069643D22746963506167654261636B67726F756E64223E3C2F646976';
wwv_flow_api.g_varchar2_table(99) := '3E27292C242822626F647922292E617070656E6428273C6469762069643D22746963436F6E74726F6C223E3C2F6469763E27292C24282223746963436F6E74726F6C22292E617070656E6428273C6469762069643D22746963426F78223E3C2F6469763E';
wwv_flow_api.g_varchar2_table(100) := '27293B76617220653D4D6174682E6D696E28242877696E646F77292E776964746828292C353030292C6E3D4D6174682E726F756E64283635302A652F353030293B6E3D242877696E646F77292E68656967687428292D37302C7376673D746869732E7376';
wwv_flow_api.g_varchar2_table(101) := '67437265617465526F6F74456C656D2822746963436C6F636B222C652C6E2C22302030203335302033353022292C2428737667292E617070656E64546F2824282223746963426F782229293B76617220723D646F63756D656E742E637265617465456C65';
wwv_flow_api.g_varchar2_table(102) := '6D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C226722293B722E73657441747472696275746528226964222C2274696354696D6522292C722E7365744174747269627574652822636F6C6F72222C22626C6163';
wwv_flow_api.g_varchar2_table(103) := '6B22292C722E7365744174747269627574652822666F6E742D66616D696C79222C22617269616C22292C722E7365744174747269627574652822666F6E742D73697A65222C22333422292C7376672E617070656E644368696C642872292C746869732E63';
wwv_flow_api.g_varchar2_table(104) := '72656174654469676974616C54696D6528722C302C30292C242822237469634469676974616C54696D6547726F757022292E636C69636B2866756E6374696F6E2874297B746869732E73657441637469766548616E642822746F67676C6522297D292C62';
wwv_flow_api.g_varchar2_table(105) := '7574746F6E414D3D746869732E637265617465427574746F6E28722C22627574746F6E414D222C22414D222C31302C2D33352C37302C3335292C2428627574746F6E414D292E636C69636B2866756E6374696F6E28297B617065787469632E746F414D28';
wwv_flow_api.g_varchar2_table(106) := '297D292C627574746F6E504D3D746869732E637265617465427574746F6E28722C22627574746F6E504D222C22504D222C3235382C2D33352C37302C3335292C2428627574746F6E504D292E636C69636B2866756E6374696F6E28297B61706578746963';
wwv_flow_api.g_varchar2_table(107) := '2E746F504D28297D292C627574746F6E43616E63656C3D746869732E637265617465427574746F6E28722C22627574746F6E43616E63656C222C2243616E63656C222C31302C3334302C3134392C3335292C2428627574746F6E43616E63656C292E636C';
wwv_flow_api.g_varchar2_table(108) := '69636B2866756E6374696F6E28297B617065787469632E74696343616E63656C28297D292C627574746F6E4F4B3D746869732E637265617465427574746F6E28722C22627574746F6E4F4B222C224F4B222C3137382C3334302C3134392C3335292C2428';
wwv_flow_api.g_varchar2_table(109) := '627574746F6E4F4B292E636C69636B2866756E6374696F6E28297B617065787469632E74696352657475726E54696D6528297D293B76617220753D646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F';
wwv_flow_api.g_varchar2_table(110) := '72672F323030302F737667222C226722293B666F7228752E73657441747472696275746528226964222C227469634E756D6265727322292C752E7365744174747269627574652822636F6C6F72222C22626C61636B22292C752E73657441747472696275';
wwv_flow_api.g_varchar2_table(111) := '74652822666F6E742D66616D696C79222C22617269616C22292C752E7365744174747269627574652822666F6E742D73697A65222C22333422292C7376672E617070656E644368696C642875292C746869732E746963416464546F7563684576656E7473';
wwv_flow_api.g_varchar2_table(112) := '28227469634E756D6265727322292C783D5B3137312C3231332C3235342C3236372C3235342C3231342C3136322C3130382C36392C35352C35392C3130302C3135325D2C793D5B3135322C37342C3131332C3136342C3231382C3235352C3237302C3235';
wwv_flow_api.g_varchar2_table(113) := '352C3231382C3136342C3131332C37342C35385D2C693D303B693C3D31323B692B2B29795B695D3D795B695D2B31323B666F72286E6577526563743D646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E';
wwv_flow_api.g_varchar2_table(114) := '6F72672F323030302F737667222C227265637422292C6E6577526563742E73657441747472696275746528226964222C227469634261636B67726F756E6422292C6E6577526563742E736574417474726962757465282278222C22313022292C6E657752';
wwv_flow_api.g_varchar2_table(115) := '6563742E736574417474726962757465282279222C22313022292C6E6577526563742E73657441747472696275746528227769647468222C2233313822292C6E6577526563742E7365744174747269627574652822686569676874222C2233313422292C';
wwv_flow_api.g_varchar2_table(116) := '6E6577526563742E73657441747472696275746528227278222C22363522292C6E6577526563742E73657441747472696275746528227279222C22363522292C6E6577526563742E736574417474726962757465282266696C6C222C22626C61636B2229';
wwv_flow_api.g_varchar2_table(117) := '2C6E6577526563742E73657441747472696275746528227374726F6B652D7769647468222C223022292C752E617070656E644368696C64286E657752656374292C6E6577436972636C653D646F63756D656E742E637265617465456C656D656E744E5328';
wwv_flow_api.g_varchar2_table(118) := '22687474703A2F2F7777772E77332E6F72672F323030302F737667222C22636972636C6522292C6E6577436972636C652E73657441747472696275746528226964222C2263656E74657222292C6E6577436972636C652E73657441747472696275746528';
wwv_flow_api.g_varchar2_table(119) := '226378222C785B305D292C6E6577436972636C652E73657441747472696275746528226379222C795B305D292C6E6577436972636C652E736574417474726962757465282272222C2231343022292C6E6577436972636C652E7365744174747269627574';
wwv_flow_api.g_varchar2_table(120) := '65282266696C6C222C22776869746522292C6E6577436972636C652E73657441747472696275746528227374726F6B65222C22626C61636B22292C6E6577436972636C652E73657441747472696275746528227374726F6B652D7769647468222C223522';
wwv_flow_api.g_varchar2_table(121) := '292C752E617070656E644368696C64286E6577436972636C65292C746869732E67656E657261746548616E6428752C22686F757248616E6422292C746869732E67656E657261746548616E6428752C226D696E75746548616E6422292C6E657743697263';
wwv_flow_api.g_varchar2_table(122) := '6C653D646F63756D656E742E637265617465456C656D656E744E532822687474703A2F2F7777772E77332E6F72672F323030302F737667222C22636972636C6522292C6E6577436972636C652E73657441747472696275746528226964222C2263656E74';
wwv_flow_api.g_varchar2_table(123) := '657222292C6E6577436972636C652E73657441747472696275746528226378222C785B305D292C6E6577436972636C652E73657441747472696275746528226379222C795B305D292C6E6577436972636C652E736574417474726962757465282272222C';
wwv_flow_api.g_varchar2_table(124) := '223522292C6E6577436972636C652E736574417474726962757465282266696C6C222C2272656422292C6E6577436972636C652E73657441747472696275746528227374726F6B65222C22626C61636B22292C6E6577436972636C652E73657441747472';
wwv_flow_api.g_varchar2_table(125) := '696275746528227374726F6B652D7769647468222C223522292C752E617070656E644368696C64286E6577436972636C65292C693D313B693C3D31323B692B2B297B6E6577546578743D646F63756D656E742E637265617465456C656D656E744E532822';
wwv_flow_api.g_varchar2_table(126) := '687474703A2F2F7777772E77332E6F72672F323030302F737667222C227465787422292C6E6577546578742E73657441747472696275746528226964222C22747874222B69292C6E6577546578742E736574417474726962757465282278222C785B695D';
wwv_flow_api.g_varchar2_table(127) := '292C6E6577546578742E736574417474726962757465282279222C795B695D293B76617220613D646F63756D656E742E637265617465546578744E6F64652869293B6E6577546578742E617070656E644368696C642861292C752E617070656E64436869';
wwv_flow_api.g_varchar2_table(128) := '6C64286E657754657874297D2428225B69645E3D7478745D22292E636C69636B2866756E6374696F6E2874297B76617220653D242874686973292E617474722822696422292E737562737472696E672833293B22686F7572223D3D617065787469632E67';
wwv_flow_api.g_varchar2_table(129) := '657441637469766548616E6428293F28617065787469632E63757272656E74486F75723D7061727365496E742865292C31323D3D617065787469632E63757272656E74486F7572262628617065787469632E63757272656E74486F75723D30292C617065';
wwv_flow_api.g_varchar2_table(130) := '787469632E63757272656E74486F75723C617065787469632E77696E646F775F62617365262628617065787469632E63757272656E74486F75723D617065787469632E63757272656E74486F75722B3132292C617065787469632E63757272656E744D69';
wwv_flow_api.g_varchar2_table(131) := '6E757465733C30262628617065787469632E63757272656E744D696E757465733D30292C22504D223D3D617065787469632E6D6F64652626617065787469632E63757272656E74486F75723C3132262628617065787469632E63757272656E74486F7572';
wwv_flow_api.g_varchar2_table(132) := '3D617065787469632E63757272656E74486F75722B3132292C617065787469632E736574486F757248616E6428292C617065787469632E73657441637469766548616E6428226D696E7574652229293A28617065787469632E63757272656E744D696E75';
wwv_flow_api.g_varchar2_table(133) := '7465733D352A7061727365496E742865292C36303D3D617065787469632E63757272656E744D696E75746573262628617065787469632E63757272656E744D696E757465733D30292C617065787469632E7365744D696E75746548616E6428292C617065';
wwv_flow_api.g_varchar2_table(134) := '787469632E73657441637469766548616E642822686F75722229292C617065787469632E73657443757272656E744469676974616C54696D6528297D297D2C74696353686F773A66756E6374696F6E28742C652C69297B746869732E636C6F636B497465';
wwv_flow_api.g_varchar2_table(135) := '6D3D742C746869732E77696E646F775F626173653D652C746869732E74696D655F666F726D61743D692C2428746869732E746963506167654261636B67726F756E642829292E73686F7728292C746869732E74696345786973747328293F746869732E73';
wwv_flow_api.g_varchar2_table(136) := '686F77436F6E74726F6C2874293A746869732E6275696C64436F6E74726F6C2874292C746869732E6869646548616E647328292C746869732E63757272656E74486F75723D6E756C6C2C746869732E63757272656E744D696E757465733D6E756C6C2C74';
wwv_flow_api.g_varchar2_table(137) := '6869732E7570646174654469676974616C54696D6528746869732E63757272656E74486F75722C746869732E63757272656E744D696E75746573292C746869732E73657441637469766548616E642822686F757222297D2C646F49743A66756E6374696F';
wwv_flow_api.g_varchar2_table(138) := '6E28297B76617220743D746869732E6166666563746564456C656D656E74732C653D2223222B242874292E617474722822696422292C693D746869732E616374696F6E2E61747472696275746530313F746869732E616374696F6E2E6174747269627574';
wwv_flow_api.g_varchar2_table(139) := '6530313A372C6E3D746869732E616374696F6E2E61747472696275746530323F746869732E616374696F6E2E61747472696275746530323A22686832343A6D69223B617065787469632E6C6F6767696E673D746869732E616374696F6E2E617474726962';
wwv_flow_api.g_varchar2_table(140) := '75746531303F746869732E616374696F6E2E61747472696275746531303A302C617065787469632E6465627567282246756E6374696F6E3A204170657820546F7563682054696D6520436F6E74726F6C22292C617065787469632E646562756728225061';
wwv_flow_api.g_varchar2_table(141) := '72616D65746572733A206974656D20494420202020203D222B65292C617065787469632E6465627567282220202020202020202020202077696E646F775F62617365203D222B69292C617065787469632E64656275672822202020202020202020202020';
wwv_flow_api.g_varchar2_table(142) := '74696D655F666F726D6174203D222B6E292C2428222E6861732D74696D652D7069636B657222292E656163682866756E6374696F6E28297B76617220743D242874686973292E617474722822696422293B242874686973292E616674657228603C646976';
wwv_flow_api.g_varchar2_table(143) := '20636C6173733D22612D427574746F6E20612D427574746F6E2D696E6C696E6522206F6E636C69636B3D22617065787469632E74696353686F77282723247B747D272C247B697D2C27247B6E7D2729223E3C6920636C6173733D2266612066612D636C6F';
wwv_flow_api.g_varchar2_table(144) := '636B2D6F223E3C2F693E3C2F6469763E60297D297D7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(127688028515194734)
,p_plugin_id=>wwv_flow_api.id(158417528875673949)
,p_file_name=>'apextic.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0A202A2050726F647563743A204150455820546F7563682054696D6520496E';
wwv_flow_api.g_varchar2_table(2) := '70757420436F6E74726F6C0A202A20436F7079726967687420323031353A204469636B204472616C2C204465746F72612C20546865204E65746865726C616E64730A202A0A202A204368616E6765733A200A202A2031352D30372D323031392020537479';
wwv_flow_api.g_varchar2_table(3) := '6C696E67206F662074686520636C6F636B2069636F6E2061646465640A202A2F0A0A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A';
wwv_flow_api.g_varchar2_table(4) := '2A2A2A0A202A205374796C696E672074686520636C6F636B2069636F6E0A202A0A202A2F0A2E612D427574746F6E2D696E6C696E65207B0A202020206F726465723A20333B0A202020206865696768743A20343870783B0A20202020626F726465722D72';
wwv_flow_api.g_varchar2_table(5) := '61646975733A2030203270782032707820303B0A202020206D617267696E2D6C6566743A2D343070783B0A202020207A2D696E6465783A203130303B0A7D0A2E612D427574746F6E2D696E6C696E652069207B0A202020206D617267696E2D746F703A20';
wwv_flow_api.g_varchar2_table(6) := '3870783B0A7D0A0A2F2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A0A202A205374796C696E672074686520636C6F636B2063';
wwv_flow_api.g_varchar2_table(7) := '6F6E74726F6C0A202A2F0A2374696350616765207B0A2020706F736974696F6E203A206162736F6C7574653B0A2020746F70203A203070783B0A20206C656674203A203070783B0A20207769647468203A20313030253B0A2020686569676874203A2031';
wwv_flow_api.g_varchar2_table(8) := '3030253B0A20206261636B67726F756E642D636F6C6F723A677261793B0A20206F706163697479203A20302E393B0A7D0A0A23746963436F6E74726F6C207B0A202020206261636B67726F756E643A206E6F6E6520726570656174207363726F6C6C2030';
wwv_flow_api.g_varchar2_table(9) := '2030207267626128302C20302C20302C20302E32293B0A20202020626F74746F6D3A20303B0A202020206C6566743A20303B0A202020206D617267696E2D746F703A20333570783B0A20202020706F736974696F6E3A206162736F6C7574653B0A202020';
wwv_flow_api.g_varchar2_table(10) := '2072696768743A20303B0A20202020746F703A20303B0A202020207A2D696E6465783A203230303B0A7D0A0A23746963426F78207B0A70616464696E673A20313070783B0A2D7765626B69742D626F782D73697A696E673A20626F726465722D626F783B';
wwv_flow_api.g_varchar2_table(11) := '0A2D6D6F7A2D626F782D73697A696E673A20626F726465722D626F783B0A626F782D73697A696E673A20626F726465722D626F783B0A7D0A23746963427574746F6E73207B0A2020207769647468203A203235303B0A202020686569677468203A203230';
wwv_flow_api.g_varchar2_table(12) := '70783B0A2020206D617267696E2D746F70203A20313070783B0A7D0A2E746963427574746F6E207B0A20206261636B67726F756E642D636F6C6F72203A207472616E73706172656E743B0A20207769647468203A2031323070783B0A2020626F72646572';
wwv_flow_api.g_varchar2_table(13) := '3A2032707820736F6C69642077686974653B0A2020636F6C6F72203A2077686974653B0A2020666F6E742D776569676874203A20626F6C643B0A2020706F736974696F6E203A2072656C61746976653B0A2020666C6F6174203A206C6566743B0A202074';
wwv_flow_api.g_varchar2_table(14) := '6578742D616C69676E203A2063656E7465723B0A7D0A2E746963427574746F6E2E63757272656E74207B0A2020636F6C6F72203A2079656C6C6F773B0A7D0A2374696354696D65207B0A2020636F6C6F72203A2077686974653B0A2020666F6E742D7369';
wwv_flow_api.g_varchar2_table(15) := '7A65203A20312E3137656D3B0A2020666F6E742D776569676874203A20626F6C643B0A20206D617267696E2D746F703A313070783B0A2020626F726465723A32707820736F6C69642077686974653B0A202077696474683A373070783B0A202068656967';
wwv_flow_api.g_varchar2_table(16) := '68743A323070783B0A20206D617267696E2D6C6566743A383070783B0A202070616464696E672D746F703A3570783B0A7D0A2374696354696D6520646976207B0A2020706F736974696F6E203A2072656C61746976653B200A2020666C6F6174203A206C';
wwv_flow_api.g_varchar2_table(17) := '6566743B200A7D0A2374696354696D65486F757273207B0A2020746578742D616C69676E203A2072696768743B200A20207769647468203A20333070783B0A7D0A2374696354696D65536570617261746F72207B0A2020746578742D616C69676E203A20';
wwv_flow_api.g_varchar2_table(18) := '63656E7465723B200A20207769647468203A20313070783B0A7D0A2374696354696D654D696E75746573207B0A2020746578742D616C69676E203A206C6566743B200A7D0A0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(158423773390727948)
,p_plugin_id=>wwv_flow_api.id(158417528875673949)
,p_file_name=>'apextic.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/region_type/de_danielh_apexsignature
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(171564484896863540)
,p_plugin_type=>'REGION TYPE'
,p_name=>'DE.DANIELH.APEXSIGNATURE'
,p_display_name=>'APEX Signature'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','DE.DANIELH.APEXSIGNATURE'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Signature',
' * Version: 1.1 (25.04.2016)',
' * Author:  Daniel Hochleitner',
' *-------------------------------------',
'*/',
'FUNCTION render_apexsignature(p_region              IN apex_plugin.t_region,',
'                              p_plugin              IN apex_plugin.t_plugin,',
'                              p_is_printer_friendly IN BOOLEAN)',
'  RETURN apex_plugin.t_region_render_result IS',
'  -- plugin attributes',
'  l_width              NUMBER := p_region.attribute_01;',
'  l_height             NUMBER := p_region.attribute_02;',
'  l_line_minwidth      VARCHAR2(50) := p_region.attribute_03;',
'  l_line_maxwidth      VARCHAR2(50) := p_region.attribute_04;',
'  l_background_color   VARCHAR2(100) := p_region.attribute_05;',
'  l_pen_color          VARCHAR2(100) := p_region.attribute_06;',
'  l_logging            VARCHAR2(50) := p_region.attribute_08;',
'  l_clear_btn_selector VARCHAR2(100) := p_region.attribute_09;',
'  l_save_btn_selector  VARCHAR2(100) := p_region.attribute_10;',
'  l_alert_text         VARCHAR2(200) := p_region.attribute_11;',
'  l_show_spinner       VARCHAR2(50) := p_region.attribute_12;',
'  -- other variables',
'  l_region_id              VARCHAR2(200);',
'  l_canvas_id              VARCHAR2(200);',
'  l_background_color_esc   VARCHAR2(100);',
'  l_pen_color_esc          VARCHAR2(100);',
'  l_clear_btn_selector_esc VARCHAR2(100);',
'  l_save_btn_selector_esc  VARCHAR2(100);',
'  l_alert_text_esc         VARCHAR2(200);',
'  -- js/css file vars',
'  l_signaturepad_js  VARCHAR2(50);',
'  l_apexsignature_js VARCHAR2(50);',
'  --',
'BEGIN',
'  -- Debug',
'  IF apex_application.g_debug THEN',
'    apex_plugin_util.debug_region(p_plugin => p_plugin,',
'                                  p_region => p_region);',
'    -- set js/css filenames',
'    l_apexsignature_js := ''apexsignature'';',
'    l_signaturepad_js  := ''signature_pad'';',
'  ELSE',
'    l_apexsignature_js := ''apexsignature.min'';',
'    l_signaturepad_js  := ''signature_pad.min'';',
'  END IF;',
'  -- set variables and defaults',
'  l_region_id    := apex_escape.html_attribute(p_region.static_id ||',
'                                               ''_signature'');',
'  l_canvas_id    := l_region_id || ''_canvas'';',
'  l_logging      := nvl(l_logging,',
'                        ''false'');',
'  l_show_spinner := nvl(l_show_spinner,',
'                        ''false'');',
'  -- escape input',
'  l_background_color_esc   := sys.htf.escape_sc(l_background_color);',
'  l_pen_color_esc          := sys.htf.escape_sc(l_pen_color);',
'  l_clear_btn_selector_esc := sys.htf.escape_sc(l_clear_btn_selector);',
'  l_save_btn_selector_esc  := sys.htf.escape_sc(l_save_btn_selector);',
'  l_alert_text_esc         := sys.htf.escape_sc(l_alert_text);',
'  --',
'  -- add div and canvas for signature pad',
'  sys.htp.p(''<div id="'' || l_region_id || ''"><canvas id="'' || l_canvas_id ||',
'            ''" width="'' || l_width || ''" height="'' || l_height ||',
'            ''" style="border: solid; border-radius: 4px; box-shadow: 0 0 5px rgba(0, 0, 0, 0.02) inset;"></canvas></div>'');',
'  --',
'  -- add signaturepad and apexsignature js files',
'  apex_javascript.add_library(p_name           => l_signaturepad_js,',
'                              p_directory      => p_plugin.file_prefix ||',
'                                                  ''js/'',',
'                              p_version        => NULL,',
'                              p_skip_extension => FALSE);',
'  --',
'  apex_javascript.add_library(p_name           => l_apexsignature_js,',
'                              p_directory      => p_plugin.file_prefix ||',
'                                                  ''js/'',',
'                              p_version        => NULL,',
'                              p_skip_extension => FALSE);',
'  --',
'  -- onload code',
'  apex_javascript.add_onload_code(p_code => ''apexSignature.apexSignatureFnc('' ||',
'                                            apex_javascript.add_value(p_region.static_id) || ''{'' ||',
'                                            apex_javascript.add_attribute(''ajaxIdentifier'',',
'                                                                          apex_plugin.get_ajax_identifier) ||',
'                                            apex_javascript.add_attribute(''canvasId'',',
'                                                                          l_canvas_id) ||',
'                                            apex_javascript.add_attribute(''lineMinWidth'',',
'                                                                          l_line_minwidth) ||',
'                                            apex_javascript.add_attribute(''lineMaxWidth'',',
'                                                                          l_line_maxwidth) ||',
'                                            apex_javascript.add_attribute(''backgroundColor'',',
'                                                                          l_background_color_esc) ||',
'                                            apex_javascript.add_attribute(''penColor'',',
'                                                                          l_pen_color_esc) ||',
'                                            apex_javascript.add_attribute(''clearButton'',',
'                                                                          l_clear_btn_selector_esc) ||',
'                                            apex_javascript.add_attribute(''saveButton'',',
'                                                                          l_save_btn_selector_esc) ||',
'                                            apex_javascript.add_attribute(''emptyAlert'',',
'                                                                          l_alert_text_esc) ||',
'                                            apex_javascript.add_attribute(''showSpinner'',',
'                                                                          l_show_spinner,',
'                                                                          FALSE,',
'                                                                          FALSE) || ''},'' ||',
'                                            apex_javascript.add_value(l_logging,',
'                                                                      FALSE) || '');'');',
'  --',
'  RETURN NULL;',
'  --',
'END render_apexsignature;',
'--',
'--',
'-- AJAX function',
'--',
'--',
'FUNCTION ajax_apexsignature(p_region IN apex_plugin.t_region,',
'                            p_plugin IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_region_ajax_result IS',
'  --',
'  -- plugin attributes',
'  l_result     apex_plugin.t_region_ajax_result;',
'  l_plsql_code p_region.attribute_07%TYPE := p_region.attribute_07;',
'  --',
'BEGIN',
'  -- execute PL/SQL',
'  apex_plugin_util.execute_plsql_code(p_plsql_code => l_plsql_code);',
'  --',
'  --',
'  RETURN NULL;',
'  --',
'END ajax_apexsignature;'))
,p_api_version=>1
,p_render_function=>'render_apexsignature'
,p_ajax_function=>'ajax_apexsignature'
,p_substitute_attributes=>false
,p_subscribe_plugin_settings=>true
,p_help_text=>'APEX Signature allows you to draw smooth signatures into a HTML5 canvas and enables you to save the resulting image into database.'
,p_version_identifier=>'1.1'
,p_about_url=>'https://github.com/Dani3lSun/apex-plugin-apexsignature'
,p_files_version=>944
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171635043421930395)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'600'
,p_is_translatable=>false
,p_help_text=>'Width of signature area'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171635349178932579)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'400'
,p_is_translatable=>false
,p_help_text=>'Height of signature area'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171635582965984717)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Line minWidth'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'0.5'
,p_is_translatable=>false
,p_help_text=>'Minimum width of a line. Defaults to 0.5'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171635970396987853)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Line maxWidth'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'2.5'
,p_is_translatable=>false
,p_help_text=>'Maximum width of a line. Defaults to 2.5'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171636182399080533)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Background Color'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'rgba(0,0,0,0)'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'rgba(0,0,0,0) - transparent black<br>',
'rgb(255,255,255) - opaque white<br>',
'#FFFFFF - white<br>',
'red'))
,p_help_text=>'Background color of signature area. Defaults to "rgba(0,0,0,0)"'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171636515954086917)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Pen color'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'black'
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'black<br>',
'#FFFFFF<br>',
'red'))
,p_help_text=>'Color used to draw the lines. Defaults to "black"'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171637149243109935)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'PLSQL Code'
,p_attribute_type=>'PLSQL'
,p_is_required=>true
,p_default_value=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  --',
'  l_collection_name VARCHAR2(100);',
'  l_clob            CLOB;',
'  l_blob            BLOB;',
'  l_filename        VARCHAR2(100);',
'  l_mime_type       VARCHAR2(100);',
'  l_token           VARCHAR2(32000);',
'  --',
'BEGIN',
'  -- get defaults',
'  l_filename  := ''signature_'' ||',
'                 to_char(SYSDATE,',
'                         ''YYYYMMDDHH24MISS'') || ''.png'';',
'  l_mime_type := ''image/png'';',
'  -- build CLOB from f01 30k Array',
'  dbms_lob.createtemporary(l_clob,',
'                           FALSE,',
'                           dbms_lob.session);',
'',
'  FOR i IN 1 .. apex_application.g_f01.count LOOP',
'    l_token := wwv_flow.g_f01(i);',
'  ',
'    IF length(l_token) > 0 THEN',
'      dbms_lob.writeappend(l_clob,',
'                           length(l_token),',
'                           l_token);',
'    END IF;',
'  END LOOP;',
'  --',
'  -- convert base64 CLOB to BLOB (mimetype: image/png)',
'  l_blob := apex_web_service.clobbase642blob(p_clob => l_clob);',
'  --',
'  -- create own collection (here starts custom part (for example a Insert statement))',
'  -- collection name',
'  l_collection_name := ''APEX_SIGNATURE'';',
'  -- check if exist',
'  IF NOT',
'      apex_collection.collection_exists(p_collection_name => l_collection_name) THEN',
'    apex_collection.create_collection(l_collection_name);',
'  END IF;',
'  -- add collection member (only if BLOB not null)',
'  IF dbms_lob.getlength(lob_loc => l_blob) IS NOT NULL THEN',
'    apex_collection.add_member(p_collection_name => l_collection_name,',
'                               p_c001            => l_filename, -- filename',
'                               p_c002            => l_mime_type, -- mime_type',
'                               p_d001            => SYSDATE, -- date created',
'                               p_blob001         => l_blob); -- BLOB img content',
'  END IF;',
'  --',
'END;'))
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT c001    AS filename,<br>',
'       c002    AS mime_type,<br>',
'       d001    AS date_created,<br>',
'       blob001 AS img_content<br>',
'  FROM apex_collections<br>',
' WHERE collection_name = ''APEX_SIGNATURE'';'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'PLSQL code which saves the resulting image to database tables or collections.<br>',
'Default to Collection "APEX_SIGNATURE".<br>',
'Column c001 => filename<br>',
'Column c002 => mime_type<br>',
'Column d001 => date created<br>',
'Column blob001 => BLOB of image<br>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171637452400111927)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>130
,p_prompt=>'Logging'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Whether to log events in the console.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(171637744527112551)
,p_plugin_attribute_id=>wwv_flow_api.id(171637452400111927)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(171638143835113041)
,p_plugin_attribute_id=>wwv_flow_api.id(171637452400111927)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171656018294842207)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Clear Button JQuery Selector'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MY_BUTTON_STATIC_ID<br>',
'.my_button_class<br>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'JQuery Selector to identify the "Clear Button" to clear signature area.<br>',
'This selector is internally used for "onclick" event.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171656652040845883)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Save Button JQuery Selector'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#MY_BUTTON_STATIC_ID<br>',
'.my_button_class<br>'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'JQuery Selector to identify the "Save Button" to save signature into Database.<br>',
'This selector is internally used for "onclick" event.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171664209405013367)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Save empty Signature Alert text'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Signature must have a value'
,p_is_translatable=>false
,p_help_text=>'Alert text when a User tries to save a empty signature.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(171685002034217743)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Show WaitSpinner'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Show/Hide wait spinner when saving image into database'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(171685609625218282)
,p_plugin_attribute_id=>wwv_flow_api.id(171685002034217743)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(171686079942218741)
,p_plugin_attribute_id=>wwv_flow_api.id(171685002034217743)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(171662625359997358)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_name=>'apexsignature-cleared'
,p_display_name=>'Signature cleared'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(171663342538997359)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_name=>'apexsignature-error-db'
,p_display_name=>'Signature saved to DB Error'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(171662967270997359)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_name=>'apexsignature-saved-db'
,p_display_name=>'Signature saved to DB'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2866756E6374696F6E2028726F6F742C20666163746F727929207B0A202069662028747970656F6620646566696E65203D3D3D202766756E6374696F6E2720262620646566696E652E616D6429207B0A202020202F2F20414D442E205265676973746572';
wwv_flow_api.g_varchar2_table(2) := '20617320616E20616E6F6E796D6F7573206D6F64756C6520756E6C65737320616D644D6F64756C654964206973207365740A20202020646566696E65285B5D2C2066756E6374696F6E202829207B0A20202020202072657475726E2028726F6F745B2753';
wwv_flow_api.g_varchar2_table(3) := '69676E6174757265506164275D203D20666163746F72792829293B0A202020207D293B0A20207D20656C73652069662028747970656F66206578706F727473203D3D3D20276F626A6563742729207B0A202020202F2F204E6F64652E20446F6573206E6F';
wwv_flow_api.g_varchar2_table(4) := '7420776F726B20776974682073747269637420436F6D6D6F6E4A532C206275740A202020202F2F206F6E6C7920436F6D6D6F6E4A532D6C696B6520656E7669726F6E6D656E7473207468617420737570706F7274206D6F64756C652E6578706F7274732C';
wwv_flow_api.g_varchar2_table(5) := '0A202020202F2F206C696B65204E6F64652E0A202020206D6F64756C652E6578706F727473203D20666163746F727928293B0A20207D20656C7365207B0A20202020726F6F745B275369676E6174757265506164275D203D20666163746F727928293B0A';
wwv_flow_api.g_varchar2_table(6) := '20207D0A7D28746869732C2066756E6374696F6E202829207B0A0A2F2A210A202A205369676E6174757265205061642076312E352E330A202A2068747470733A2F2F6769746875622E636F6D2F737A696D656B2F7369676E61747572655F7061640A202A';
wwv_flow_api.g_varchar2_table(7) := '0A202A20436F70797269676874203230313620537A796D6F6E204E6F77616B0A202A2052656C656173656420756E64657220746865204D4954206C6963656E73650A202A0A202A20546865206D61696E206964656120616E6420736F6D65207061727473';
wwv_flow_api.g_varchar2_table(8) := '206F662074686520636F64652028652E672E2064726177696E67207661726961626C652077696474682042C3A97A69657220637572766529206172652074616B656E2066726F6D3A0A202A20687474703A2F2F636F726E65722E73717561726575702E63';
wwv_flow_api.g_varchar2_table(9) := '6F6D2F323031322F30372F736D6F6F746865722D7369676E6174757265732E68746D6C0A202A0A202A20496D706C656D656E746174696F6E206F6620696E746572706F6C6174696F6E207573696E672063756269632042C3A97A69657220637572766573';
wwv_flow_api.g_varchar2_table(10) := '2069732074616B656E2066726F6D3A0A202A20687474703A2F2F62656E6B6E6F7773636F64652E776F726470726573732E636F6D2F323031322F30392F31342F706174682D696E746572706F6C6174696F6E2D7573696E672D63756269632D62657A6965';
wwv_flow_api.g_varchar2_table(11) := '722D616E642D636F6E74726F6C2D706F696E742D657374696D6174696F6E2D696E2D6A6176617363726970740A202A0A202A20416C676F726974686D20666F7220617070726F78696D61746564206C656E677468206F6620612042C3A97A696572206375';
wwv_flow_api.g_varchar2_table(12) := '7276652069732074616B656E2066726F6D3A0A202A20687474703A2F2F7777772E6C656D6F64612E6E65742F6D617468732F62657A6965722D6C656E6774682F696E6465782E68746D6C0A202A0A202A2F0A766172205369676E6174757265506164203D';
wwv_flow_api.g_varchar2_table(13) := '202866756E6374696F6E2028646F63756D656E7429207B0A202020202275736520737472696374223B0A0A20202020766172205369676E6174757265506164203D2066756E6374696F6E202863616E7661732C206F7074696F6E7329207B0A2020202020';
wwv_flow_api.g_varchar2_table(14) := '2020207661722073656C66203D20746869732C0A2020202020202020202020206F707473203D206F7074696F6E73207C7C207B7D3B0A0A2020202020202020746869732E76656C6F6369747946696C746572576569676874203D206F7074732E76656C6F';
wwv_flow_api.g_varchar2_table(15) := '6369747946696C746572576569676874207C7C20302E373B0A2020202020202020746869732E6D696E5769647468203D206F7074732E6D696E5769647468207C7C20302E353B0A2020202020202020746869732E6D61785769647468203D206F7074732E';
wwv_flow_api.g_varchar2_table(16) := '6D61785769647468207C7C20322E353B0A2020202020202020746869732E646F7453697A65203D206F7074732E646F7453697A65207C7C2066756E6374696F6E202829207B0A20202020202020202020202072657475726E2028746869732E6D696E5769';
wwv_flow_api.g_varchar2_table(17) := '647468202B20746869732E6D6178576964746829202F20323B0A20202020202020207D3B0A2020202020202020746869732E70656E436F6C6F72203D206F7074732E70656E436F6C6F72207C7C2022626C61636B223B0A2020202020202020746869732E';
wwv_flow_api.g_varchar2_table(18) := '6261636B67726F756E64436F6C6F72203D206F7074732E6261636B67726F756E64436F6C6F72207C7C20227267626128302C302C302C3029223B0A2020202020202020746869732E6F6E456E64203D206F7074732E6F6E456E643B0A2020202020202020';
wwv_flow_api.g_varchar2_table(19) := '746869732E6F6E426567696E203D206F7074732E6F6E426567696E3B0A0A2020202020202020746869732E5F63616E766173203D2063616E7661733B0A2020202020202020746869732E5F637478203D2063616E7661732E676574436F6E746578742822';
wwv_flow_api.g_varchar2_table(20) := '326422293B0A2020202020202020746869732E636C65617228293B0A0A20202020202020202F2F207765206E6565642061646420746865736520696E6C696E6520736F20746865792061726520617661696C61626C6520746F20756E62696E6420776869';
wwv_flow_api.g_varchar2_table(21) := '6C65207374696C6C20686176696E670A20202020202020202F2F202061636365737320746F202773656C662720776520636F756C6420757365205F2E62696E64206275742069742773206E6F7420776F72746820616464696E67206120646570656E6465';
wwv_flow_api.g_varchar2_table(22) := '6E63790A2020202020202020746869732E5F68616E646C654D6F757365446F776E203D2066756E6374696F6E20286576656E7429207B0A202020202020202020202020696620286576656E742E7768696368203D3D3D203129207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(23) := '202020202020202073656C662E5F6D6F757365427574746F6E446F776E203D20747275653B0A2020202020202020202020202020202073656C662E5F7374726F6B65426567696E286576656E74293B0A2020202020202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(24) := '20207D3B0A0A2020202020202020746869732E5F68616E646C654D6F7573654D6F7665203D2066756E6374696F6E20286576656E7429207B0A2020202020202020202020206966202873656C662E5F6D6F757365427574746F6E446F776E29207B0A2020';
wwv_flow_api.g_varchar2_table(25) := '202020202020202020202020202073656C662E5F7374726F6B65557064617465286576656E74293B0A2020202020202020202020207D0A20202020202020207D3B0A0A2020202020202020746869732E5F68616E646C654D6F7573655570203D2066756E';
wwv_flow_api.g_varchar2_table(26) := '6374696F6E20286576656E7429207B0A202020202020202020202020696620286576656E742E7768696368203D3D3D20312026262073656C662E5F6D6F757365427574746F6E446F776E29207B0A2020202020202020202020202020202073656C662E5F';
wwv_flow_api.g_varchar2_table(27) := '6D6F757365427574746F6E446F776E203D2066616C73653B0A2020202020202020202020202020202073656C662E5F7374726F6B65456E64286576656E74293B0A2020202020202020202020207D0A20202020202020207D3B0A0A202020202020202074';
wwv_flow_api.g_varchar2_table(28) := '6869732E5F68616E646C65546F7563685374617274203D2066756E6374696F6E20286576656E7429207B0A202020202020202020202020696620286576656E742E746172676574546F75636865732E6C656E677468203D3D203129207B0A202020202020';
wwv_flow_api.g_varchar2_table(29) := '2020202020202020202076617220746F756368203D206576656E742E6368616E676564546F75636865735B305D3B0A2020202020202020202020202020202073656C662E5F7374726F6B65426567696E28746F756368293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(30) := '20207D0A20202020202020207D3B0A0A2020202020202020746869732E5F68616E646C65546F7563684D6F7665203D2066756E6374696F6E20286576656E7429207B0A2020202020202020202020202F2F2050726576656E74207363726F6C6C696E672E';
wwv_flow_api.g_varchar2_table(31) := '0A2020202020202020202020206576656E742E70726576656E7444656661756C7428293B0A0A20202020202020202020202076617220746F756368203D206576656E742E746172676574546F75636865735B305D3B0A2020202020202020202020207365';
wwv_flow_api.g_varchar2_table(32) := '6C662E5F7374726F6B6555706461746528746F756368293B0A20202020202020207D3B0A0A2020202020202020746869732E5F68616E646C65546F756368456E64203D2066756E6374696F6E20286576656E7429207B0A20202020202020202020202076';
wwv_flow_api.g_varchar2_table(33) := '61722077617343616E766173546F7563686564203D206576656E742E746172676574203D3D3D2073656C662E5F63616E7661733B0A2020202020202020202020206966202877617343616E766173546F756368656429207B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(34) := '20202020206576656E742E70726576656E7444656661756C7428293B0A2020202020202020202020202020202073656C662E5F7374726F6B65456E64286576656E74293B0A2020202020202020202020207D0A20202020202020207D3B0A0A2020202020';
wwv_flow_api.g_varchar2_table(35) := '202020746869732E5F68616E646C654D6F7573654576656E747328293B0A2020202020202020746869732E5F68616E646C65546F7563684576656E747328293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E';
wwv_flow_api.g_varchar2_table(36) := '636C656172203D2066756E6374696F6E202829207B0A202020202020202076617220637478203D20746869732E5F6374782C0A20202020202020202020202063616E766173203D20746869732E5F63616E7661733B0A0A20202020202020206374782E66';
wwv_flow_api.g_varchar2_table(37) := '696C6C5374796C65203D20746869732E6261636B67726F756E64436F6C6F723B0A20202020202020206374782E636C6561725265637428302C20302C2063616E7661732E77696474682C2063616E7661732E686569676874293B0A202020202020202063';
wwv_flow_api.g_varchar2_table(38) := '74782E66696C6C5265637428302C20302C2063616E7661732E77696474682C2063616E7661732E686569676874293B0A2020202020202020746869732E5F726573657428293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F74';
wwv_flow_api.g_varchar2_table(39) := '6F747970652E746F4461746155524C203D2066756E6374696F6E2028696D616765547970652C207175616C69747929207B0A20202020202020207661722063616E766173203D20746869732E5F63616E7661733B0A202020202020202072657475726E20';
wwv_flow_api.g_varchar2_table(40) := '63616E7661732E746F4461746155524C2E6170706C792863616E7661732C20617267756D656E7473293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E66726F6D4461746155524C203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(41) := '20286461746155726C29207B0A20202020202020207661722073656C66203D20746869732C0A202020202020202020202020696D616765203D206E657720496D61676528292C0A202020202020202020202020726174696F203D2077696E646F772E6465';
wwv_flow_api.g_varchar2_table(42) := '76696365506978656C526174696F207C7C20312C0A2020202020202020202020207769647468203D20746869732E5F63616E7661732E7769647468202F20726174696F2C0A202020202020202020202020686569676874203D20746869732E5F63616E76';
wwv_flow_api.g_varchar2_table(43) := '61732E686569676874202F20726174696F3B0A0A2020202020202020746869732E5F726573657428293B0A2020202020202020696D6167652E737263203D206461746155726C3B0A2020202020202020696D6167652E6F6E6C6F6164203D2066756E6374';
wwv_flow_api.g_varchar2_table(44) := '696F6E202829207B0A20202020202020202020202073656C662E5F6374782E64726177496D61676528696D6167652C20302C20302C2077696474682C20686569676874293B0A20202020202020207D3B0A2020202020202020746869732E5F6973456D70';
wwv_flow_api.g_varchar2_table(45) := '7479203D2066616C73653B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F7374726F6B65557064617465203D2066756E6374696F6E20286576656E7429207B0A202020202020202076617220706F696E7420';
wwv_flow_api.g_varchar2_table(46) := '3D20746869732E5F637265617465506F696E74286576656E74293B0A2020202020202020746869732E5F616464506F696E7428706F696E74293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F7374726F6B';
wwv_flow_api.g_varchar2_table(47) := '65426567696E203D2066756E6374696F6E20286576656E7429207B0A2020202020202020746869732E5F726573657428293B0A2020202020202020746869732E5F7374726F6B65557064617465286576656E74293B0A2020202020202020696620287479';
wwv_flow_api.g_varchar2_table(48) := '70656F6620746869732E6F6E426567696E203D3D3D202766756E6374696F6E2729207B0A202020202020202020202020746869732E6F6E426567696E286576656E74293B0A20202020202020207D0A202020207D3B0A0A202020205369676E6174757265';
wwv_flow_api.g_varchar2_table(49) := '5061642E70726F746F747970652E5F7374726F6B6544726177203D2066756E6374696F6E2028706F696E7429207B0A202020202020202076617220637478203D20746869732E5F6374782C0A202020202020202020202020646F7453697A65203D207479';
wwv_flow_api.g_varchar2_table(50) := '70656F6628746869732E646F7453697A6529203D3D3D202766756E6374696F6E27203F20746869732E646F7453697A652829203A20746869732E646F7453697A653B0A0A20202020202020206374782E626567696E5061746828293B0A20202020202020';
wwv_flow_api.g_varchar2_table(51) := '20746869732E5F64726177506F696E7428706F696E742E782C20706F696E742E792C20646F7453697A65293B0A20202020202020206374782E636C6F73655061746828293B0A20202020202020206374782E66696C6C28293B0A202020207D3B0A0A2020';
wwv_flow_api.g_varchar2_table(52) := '20205369676E61747572655061642E70726F746F747970652E5F7374726F6B65456E64203D2066756E6374696F6E20286576656E7429207B0A20202020202020207661722063616E447261774375727665203D20746869732E706F696E74732E6C656E67';
wwv_flow_api.g_varchar2_table(53) := '7468203E20322C0A202020202020202020202020706F696E74203D20746869732E706F696E74735B305D3B0A0A2020202020202020696620282163616E44726177437572766520262620706F696E7429207B0A202020202020202020202020746869732E';
wwv_flow_api.g_varchar2_table(54) := '5F7374726F6B654472617728706F696E74293B0A20202020202020207D0A202020202020202069662028747970656F6620746869732E6F6E456E64203D3D3D202766756E6374696F6E2729207B0A202020202020202020202020746869732E6F6E456E64';
wwv_flow_api.g_varchar2_table(55) := '286576656E74293B0A20202020202020207D0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F68616E646C654D6F7573654576656E7473203D2066756E6374696F6E202829207B0A2020202020202020746869';
wwv_flow_api.g_varchar2_table(56) := '732E5F6D6F757365427574746F6E446F776E203D2066616C73653B0A0A2020202020202020746869732E5F63616E7661732E6164644576656E744C697374656E657228226D6F757365646F776E222C20746869732E5F68616E646C654D6F757365446F77';
wwv_flow_api.g_varchar2_table(57) := '6E293B0A2020202020202020746869732E5F63616E7661732E6164644576656E744C697374656E657228226D6F7573656D6F7665222C20746869732E5F68616E646C654D6F7573654D6F7665293B0A2020202020202020646F63756D656E742E61646445';
wwv_flow_api.g_varchar2_table(58) := '76656E744C697374656E657228226D6F7573657570222C20746869732E5F68616E646C654D6F7573655570293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F68616E646C65546F7563684576656E747320';
wwv_flow_api.g_varchar2_table(59) := '3D2066756E6374696F6E202829207B0A20202020202020202F2F205061737320746F756368206576656E747320746F2063616E76617320656C656D656E74206F6E206D6F62696C65204945313120616E6420456467652E0A202020202020202074686973';
wwv_flow_api.g_varchar2_table(60) := '2E5F63616E7661732E7374796C652E6D73546F756368416374696F6E203D20276E6F6E65273B0A2020202020202020746869732E5F63616E7661732E7374796C652E746F756368416374696F6E203D20276E6F6E65273B0A0A2020202020202020746869';
wwv_flow_api.g_varchar2_table(61) := '732E5F63616E7661732E6164644576656E744C697374656E65722822746F7563687374617274222C20746869732E5F68616E646C65546F7563685374617274293B0A2020202020202020746869732E5F63616E7661732E6164644576656E744C69737465';
wwv_flow_api.g_varchar2_table(62) := '6E65722822746F7563686D6F7665222C20746869732E5F68616E646C65546F7563684D6F7665293B0A2020202020202020746869732E5F63616E7661732E6164644576656E744C697374656E65722822746F756368656E64222C20746869732E5F68616E';
wwv_flow_api.g_varchar2_table(63) := '646C65546F756368456E64293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E6F6E203D2066756E6374696F6E202829207B0A2020202020202020746869732E5F68616E646C654D6F7573654576656E747328';
wwv_flow_api.g_varchar2_table(64) := '293B0A2020202020202020746869732E5F68616E646C65546F7563684576656E747328293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E6F6666203D2066756E6374696F6E202829207B0A20202020202020';
wwv_flow_api.g_varchar2_table(65) := '20746869732E5F63616E7661732E72656D6F76654576656E744C697374656E657228226D6F757365646F776E222C20746869732E5F68616E646C654D6F757365446F776E293B0A2020202020202020746869732E5F63616E7661732E72656D6F76654576';
wwv_flow_api.g_varchar2_table(66) := '656E744C697374656E657228226D6F7573656D6F7665222C20746869732E5F68616E646C654D6F7573654D6F7665293B0A2020202020202020646F63756D656E742E72656D6F76654576656E744C697374656E657228226D6F7573657570222C20746869';
wwv_flow_api.g_varchar2_table(67) := '732E5F68616E646C654D6F7573655570293B0A0A2020202020202020746869732E5F63616E7661732E72656D6F76654576656E744C697374656E65722822746F7563687374617274222C20746869732E5F68616E646C65546F7563685374617274293B0A';
wwv_flow_api.g_varchar2_table(68) := '2020202020202020746869732E5F63616E7661732E72656D6F76654576656E744C697374656E65722822746F7563686D6F7665222C20746869732E5F68616E646C65546F7563684D6F7665293B0A2020202020202020746869732E5F63616E7661732E72';
wwv_flow_api.g_varchar2_table(69) := '656D6F76654576656E744C697374656E65722822746F756368656E64222C20746869732E5F68616E646C65546F756368456E64293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E6973456D707479203D2066';
wwv_flow_api.g_varchar2_table(70) := '756E6374696F6E202829207B0A202020202020202072657475726E20746869732E5F6973456D7074793B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F7265736574203D2066756E6374696F6E202829207B';
wwv_flow_api.g_varchar2_table(71) := '0A2020202020202020746869732E706F696E7473203D205B5D3B0A2020202020202020746869732E5F6C61737456656C6F63697479203D20303B0A2020202020202020746869732E5F6C6173745769647468203D2028746869732E6D696E576964746820';
wwv_flow_api.g_varchar2_table(72) := '2B20746869732E6D6178576964746829202F20323B0A2020202020202020746869732E5F6973456D707479203D20747275653B0A2020202020202020746869732E5F6374782E66696C6C5374796C65203D20746869732E70656E436F6C6F723B0A202020';
wwv_flow_api.g_varchar2_table(73) := '207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F637265617465506F696E74203D2066756E6374696F6E20286576656E7429207B0A20202020202020207661722072656374203D20746869732E5F63616E7661732E6765';
wwv_flow_api.g_varchar2_table(74) := '74426F756E64696E67436C69656E745265637428293B0A202020202020202072657475726E206E657720506F696E74280A2020202020202020202020206576656E742E636C69656E7458202D20726563742E6C6566742C0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(75) := '6576656E742E636C69656E7459202D20726563742E746F700A2020202020202020293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F616464506F696E74203D2066756E6374696F6E2028706F696E742920';
wwv_flow_api.g_varchar2_table(76) := '7B0A202020202020202076617220706F696E7473203D20746869732E706F696E74732C0A20202020202020202020202063322C2063332C0A20202020202020202020202063757276652C20746D703B0A0A2020202020202020706F696E74732E70757368';
wwv_flow_api.g_varchar2_table(77) := '28706F696E74293B0A0A202020202020202069662028706F696E74732E6C656E677468203E203229207B0A2020202020202020202020202F2F20546F207265647563652074686520696E697469616C206C6167206D616B6520697420776F726B20776974';
wwv_flow_api.g_varchar2_table(78) := '68203320706F696E74730A2020202020202020202020202F2F20627920636F7079696E672074686520666972737420706F696E7420746F2074686520626567696E6E696E672E0A20202020202020202020202069662028706F696E74732E6C656E677468';
wwv_flow_api.g_varchar2_table(79) := '203D3D3D20332920706F696E74732E756E736869667428706F696E74735B305D293B0A0A202020202020202020202020746D70203D20746869732E5F63616C63756C6174654375727665436F6E74726F6C506F696E747328706F696E74735B305D2C2070';
wwv_flow_api.g_varchar2_table(80) := '6F696E74735B315D2C20706F696E74735B325D293B0A2020202020202020202020206332203D20746D702E63323B0A202020202020202020202020746D70203D20746869732E5F63616C63756C6174654375727665436F6E74726F6C506F696E74732870';
wwv_flow_api.g_varchar2_table(81) := '6F696E74735B315D2C20706F696E74735B325D2C20706F696E74735B335D293B0A2020202020202020202020206333203D20746D702E63313B0A2020202020202020202020206375727665203D206E65772042657A69657228706F696E74735B315D2C20';
wwv_flow_api.g_varchar2_table(82) := '63322C2063332C20706F696E74735B325D293B0A202020202020202020202020746869732E5F6164644375727665286375727665293B0A0A2020202020202020202020202F2F2052656D6F76652074686520666972737420656C656D656E742066726F6D';
wwv_flow_api.g_varchar2_table(83) := '20746865206C6973742C0A2020202020202020202020202F2F20736F207468617420776520616C776179732068617665206E6F206D6F7265207468616E203420706F696E747320696E20706F696E74732061727261792E0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(84) := '706F696E74732E736869667428293B0A20202020202020207D0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F63616C63756C6174654375727665436F6E74726F6C506F696E7473203D2066756E6374696F6E';
wwv_flow_api.g_varchar2_table(85) := '202873312C2073322C20733329207B0A202020202020202076617220647831203D2073312E78202D2073322E782C20647931203D2073312E79202D2073322E792C0A202020202020202020202020647832203D2073322E78202D2073332E782C20647932';
wwv_flow_api.g_varchar2_table(86) := '203D2073322E79202D2073332E792C0A0A2020202020202020202020206D31203D207B783A202873312E78202B2073322E7829202F20322E302C20793A202873312E79202B2073322E7929202F20322E307D2C0A2020202020202020202020206D32203D';
wwv_flow_api.g_varchar2_table(87) := '207B783A202873322E78202B2073332E7829202F20322E302C20793A202873322E79202B2073332E7929202F20322E307D2C0A0A2020202020202020202020206C31203D204D6174682E73717274286478312A647831202B206479312A647931292C0A20';
wwv_flow_api.g_varchar2_table(88) := '20202020202020202020206C32203D204D6174682E73717274286478322A647832202B206479322A647932292C0A0A20202020202020202020202064786D203D20286D312E78202D206D322E78292C0A20202020202020202020202064796D203D20286D';
wwv_flow_api.g_varchar2_table(89) := '312E79202D206D322E79292C0A0A2020202020202020202020206B203D206C32202F20286C31202B206C32292C0A202020202020202020202020636D203D207B783A206D322E78202B2064786D2A6B2C20793A206D322E79202B2064796D2A6B7D2C0A0A';
wwv_flow_api.g_varchar2_table(90) := '2020202020202020202020207478203D2073322E78202D20636D2E782C0A2020202020202020202020207479203D2073322E79202D20636D2E793B0A0A202020202020202072657475726E207B0A20202020202020202020202063313A206E657720506F';
wwv_flow_api.g_varchar2_table(91) := '696E74286D312E78202B2074782C206D312E79202B207479292C0A20202020202020202020202063323A206E657720506F696E74286D322E78202B2074782C206D322E79202B207479290A20202020202020207D3B0A202020207D3B0A0A202020205369';
wwv_flow_api.g_varchar2_table(92) := '676E61747572655061642E70726F746F747970652E5F6164644375727665203D2066756E6374696F6E2028637572766529207B0A2020202020202020766172207374617274506F696E74203D2063757276652E7374617274506F696E742C0A2020202020';
wwv_flow_api.g_varchar2_table(93) := '20202020202020656E64506F696E74203D2063757276652E656E64506F696E742C0A20202020202020202020202076656C6F636974792C206E657757696474683B0A0A202020202020202076656C6F63697479203D20656E64506F696E742E76656C6F63';
wwv_flow_api.g_varchar2_table(94) := '69747946726F6D287374617274506F696E74293B0A202020202020202076656C6F63697479203D20746869732E76656C6F6369747946696C746572576569676874202A2076656C6F636974790A2020202020202020202020202B202831202D2074686973';
wwv_flow_api.g_varchar2_table(95) := '2E76656C6F6369747946696C74657257656967687429202A20746869732E5F6C61737456656C6F636974793B0A0A20202020202020206E65775769647468203D20746869732E5F7374726F6B6557696474682876656C6F63697479293B0A202020202020';
wwv_flow_api.g_varchar2_table(96) := '2020746869732E5F6472617743757276652863757276652C20746869732E5F6C61737457696474682C206E65775769647468293B0A0A2020202020202020746869732E5F6C61737456656C6F63697479203D2076656C6F636974793B0A20202020202020';
wwv_flow_api.g_varchar2_table(97) := '20746869732E5F6C6173745769647468203D206E657757696474683B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F64726177506F696E74203D2066756E6374696F6E2028782C20792C2073697A6529207B';
wwv_flow_api.g_varchar2_table(98) := '0A202020202020202076617220637478203D20746869732E5F6374783B0A0A20202020202020206374782E6D6F7665546F28782C2079293B0A20202020202020206374782E61726328782C20792C2073697A652C20302C2032202A204D6174682E50492C';
wwv_flow_api.g_varchar2_table(99) := '2066616C7365293B0A2020202020202020746869732E5F6973456D707479203D2066616C73653B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F647261774375727665203D2066756E6374696F6E20286375';
wwv_flow_api.g_varchar2_table(100) := '7276652C20737461727457696474682C20656E64576964746829207B0A202020202020202076617220637478203D20746869732E5F6374782C0A202020202020202020202020776964746844656C7461203D20656E645769647468202D20737461727457';
wwv_flow_api.g_varchar2_table(101) := '696474682C0A2020202020202020202020206472617753746570732C2077696474682C20692C20742C2074742C207474742C20752C2075752C207575752C20782C20793B0A0A2020202020202020647261775374657073203D204D6174682E666C6F6F72';
wwv_flow_api.g_varchar2_table(102) := '2863757276652E6C656E6774682829293B0A20202020202020206374782E626567696E5061746828293B0A2020202020202020666F72202869203D20303B2069203C206472617753746570733B20692B2B29207B0A2020202020202020202020202F2F20';
wwv_flow_api.g_varchar2_table(103) := '43616C63756C617465207468652042657A6965722028782C20792920636F6F7264696E61746520666F72207468697320737465702E0A20202020202020202020202074203D2069202F206472617753746570733B0A202020202020202020202020747420';
wwv_flow_api.g_varchar2_table(104) := '3D2074202A20743B0A202020202020202020202020747474203D207474202A20743B0A20202020202020202020202075203D2031202D20743B0A2020202020202020202020207575203D2075202A20753B0A202020202020202020202020757575203D20';
wwv_flow_api.g_varchar2_table(105) := '7575202A20753B0A0A20202020202020202020202078203D20757575202A2063757276652E7374617274506F696E742E783B0A20202020202020202020202078202B3D2033202A207575202A2074202A2063757276652E636F6E74726F6C312E783B0A20';
wwv_flow_api.g_varchar2_table(106) := '202020202020202020202078202B3D2033202A2075202A207474202A2063757276652E636F6E74726F6C322E783B0A20202020202020202020202078202B3D20747474202A2063757276652E656E64506F696E742E783B0A0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(107) := '2079203D20757575202A2063757276652E7374617274506F696E742E793B0A20202020202020202020202079202B3D2033202A207575202A2074202A2063757276652E636F6E74726F6C312E793B0A20202020202020202020202079202B3D2033202A20';
wwv_flow_api.g_varchar2_table(108) := '75202A207474202A2063757276652E636F6E74726F6C322E793B0A20202020202020202020202079202B3D20747474202A2063757276652E656E64506F696E742E793B0A0A2020202020202020202020207769647468203D207374617274576964746820';
wwv_flow_api.g_varchar2_table(109) := '2B20747474202A20776964746844656C74613B0A202020202020202020202020746869732E5F64726177506F696E7428782C20792C207769647468293B0A20202020202020207D0A20202020202020206374782E636C6F73655061746828293B0A202020';
wwv_flow_api.g_varchar2_table(110) := '20202020206374782E66696C6C28293B0A202020207D3B0A0A202020205369676E61747572655061642E70726F746F747970652E5F7374726F6B655769647468203D2066756E6374696F6E202876656C6F6369747929207B0A2020202020202020726574';
wwv_flow_api.g_varchar2_table(111) := '75726E204D6174682E6D617828746869732E6D61785769647468202F202876656C6F63697479202B2031292C20746869732E6D696E5769647468293B0A202020207D3B0A0A0A2020202076617220506F696E74203D2066756E6374696F6E2028782C2079';
wwv_flow_api.g_varchar2_table(112) := '2C2074696D6529207B0A2020202020202020746869732E78203D20783B0A2020202020202020746869732E79203D20793B0A2020202020202020746869732E74696D65203D2074696D65207C7C206E6577204461746528292E67657454696D6528293B0A';
wwv_flow_api.g_varchar2_table(113) := '202020207D3B0A0A20202020506F696E742E70726F746F747970652E76656C6F6369747946726F6D203D2066756E6374696F6E2028737461727429207B0A202020202020202072657475726E2028746869732E74696D6520213D3D2073746172742E7469';
wwv_flow_api.g_varchar2_table(114) := '6D6529203F20746869732E64697374616E6365546F28737461727429202F2028746869732E74696D65202D2073746172742E74696D6529203A20313B0A202020207D3B0A0A20202020506F696E742E70726F746F747970652E64697374616E6365546F20';
wwv_flow_api.g_varchar2_table(115) := '3D2066756E6374696F6E2028737461727429207B0A202020202020202072657475726E204D6174682E73717274284D6174682E706F7728746869732E78202D2073746172742E782C203229202B204D6174682E706F7728746869732E79202D2073746172';
wwv_flow_api.g_varchar2_table(116) := '742E792C203229293B0A202020207D3B0A0A202020207661722042657A696572203D2066756E6374696F6E20287374617274506F696E742C20636F6E74726F6C312C20636F6E74726F6C322C20656E64506F696E7429207B0A2020202020202020746869';
wwv_flow_api.g_varchar2_table(117) := '732E7374617274506F696E74203D207374617274506F696E743B0A2020202020202020746869732E636F6E74726F6C31203D20636F6E74726F6C313B0A2020202020202020746869732E636F6E74726F6C32203D20636F6E74726F6C323B0A2020202020';
wwv_flow_api.g_varchar2_table(118) := '202020746869732E656E64506F696E74203D20656E64506F696E743B0A202020207D3B0A0A202020202F2F2052657475726E7320617070726F78696D61746564206C656E6774682E0A2020202042657A6965722E70726F746F747970652E6C656E677468';
wwv_flow_api.g_varchar2_table(119) := '203D2066756E6374696F6E202829207B0A2020202020202020766172207374657073203D2031302C0A2020202020202020202020206C656E677468203D20302C0A202020202020202020202020692C20742C2063782C2063792C2070782C2070792C2078';
wwv_flow_api.g_varchar2_table(120) := '646966662C2079646966663B0A0A2020202020202020666F72202869203D20303B2069203C3D2073746570733B20692B2B29207B0A20202020202020202020202074203D2069202F2073746570733B0A2020202020202020202020206378203D20746869';
wwv_flow_api.g_varchar2_table(121) := '732E5F706F696E7428742C20746869732E7374617274506F696E742E782C20746869732E636F6E74726F6C312E782C20746869732E636F6E74726F6C322E782C20746869732E656E64506F696E742E78293B0A2020202020202020202020206379203D20';
wwv_flow_api.g_varchar2_table(122) := '746869732E5F706F696E7428742C20746869732E7374617274506F696E742E792C20746869732E636F6E74726F6C312E792C20746869732E636F6E74726F6C322E792C20746869732E656E64506F696E742E79293B0A2020202020202020202020206966';
wwv_flow_api.g_varchar2_table(123) := '202869203E203029207B0A202020202020202020202020202020207864696666203D206378202D2070783B0A202020202020202020202020202020207964696666203D206379202D2070793B0A202020202020202020202020202020206C656E67746820';
wwv_flow_api.g_varchar2_table(124) := '2B3D204D6174682E73717274287864696666202A207864696666202B207964696666202A207964696666293B0A2020202020202020202020207D0A2020202020202020202020207078203D2063783B0A2020202020202020202020207079203D2063793B';
wwv_flow_api.g_varchar2_table(125) := '0A20202020202020207D0A202020202020202072657475726E206C656E6774683B0A202020207D3B0A0A2020202042657A6965722E70726F746F747970652E5F706F696E74203D2066756E6374696F6E2028742C2073746172742C2063312C2063322C20';
wwv_flow_api.g_varchar2_table(126) := '656E6429207B0A202020202020202072657475726E202020202020202020207374617274202A2028312E30202D207429202A2028312E30202D20742920202A2028312E30202D2074290A2020202020202020202020202020202B20332E30202A20206331';
wwv_flow_api.g_varchar2_table(127) := '202020202A2028312E30202D207429202A2028312E30202D20742920202A20740A2020202020202020202020202020202B20332E30202A20206332202020202A2028312E30202D207429202A2074202020202020202020202A20740A2020202020202020';
wwv_flow_api.g_varchar2_table(128) := '202020202020202B2020202020202020656E642020202A20742020202020202020202A2074202020202020202020202A20743B0A202020207D3B0A0A2020202072657475726E205369676E61747572655061643B0A7D2928646F63756D656E74293B0A0A';
wwv_flow_api.g_varchar2_table(129) := '72657475726E205369676E61747572655061643B0A0A7D29293B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(171627461505873423)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_file_name=>'js/signature_pad.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2166756E6374696F6E28612C62297B2266756E6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D643F646566696E65285B5D2C66756E6374696F6E28297B72657475726E20612E5369676E61747572655061643D6228297D';
wwv_flow_api.g_varchar2_table(2) := '293A226F626A656374223D3D747970656F66206578706F7274733F6D6F64756C652E6578706F7274733D6228293A612E5369676E61747572655061643D6228297D28746869732C66756E6374696F6E28297B2F2A210A202A205369676E61747572652050';
wwv_flow_api.g_varchar2_table(3) := '61642076312E352E33207C2068747470733A2F2F6769746875622E636F6D2F737A696D656B2F7369676E61747572655F7061640A202A20286329203230313620537A796D6F6E204E6F77616B207C2052656C656173656420756E64657220746865204D49';
wwv_flow_api.g_varchar2_table(4) := '54206C6963656E73650A202A2F0A76617220613D66756E6374696F6E2861297B2275736520737472696374223B76617220623D66756E6374696F6E28612C62297B76617220633D746869732C643D627C7C7B7D3B746869732E76656C6F6369747946696C';
wwv_flow_api.g_varchar2_table(5) := '7465725765696768743D642E76656C6F6369747946696C7465725765696768747C7C2E372C746869732E6D696E57696474683D642E6D696E57696474687C7C2E352C746869732E6D617857696474683D642E6D617857696474687C7C322E352C74686973';
wwv_flow_api.g_varchar2_table(6) := '2E646F7453697A653D642E646F7453697A657C7C66756E6374696F6E28297B72657475726E28746869732E6D696E57696474682B746869732E6D61785769647468292F327D2C746869732E70656E436F6C6F723D642E70656E436F6C6F727C7C22626C61';
wwv_flow_api.g_varchar2_table(7) := '636B222C746869732E6261636B67726F756E64436F6C6F723D642E6261636B67726F756E64436F6C6F727C7C227267626128302C302C302C3029222C746869732E6F6E456E643D642E6F6E456E642C746869732E6F6E426567696E3D642E6F6E42656769';
wwv_flow_api.g_varchar2_table(8) := '6E2C746869732E5F63616E7661733D612C746869732E5F6374783D612E676574436F6E746578742822326422292C746869732E636C65617228292C746869732E5F68616E646C654D6F757365446F776E3D66756E6374696F6E2861297B313D3D3D612E77';
wwv_flow_api.g_varchar2_table(9) := '68696368262628632E5F6D6F757365427574746F6E446F776E3D21302C632E5F7374726F6B65426567696E286129297D2C746869732E5F68616E646C654D6F7573654D6F76653D66756E6374696F6E2861297B632E5F6D6F757365427574746F6E446F77';
wwv_flow_api.g_varchar2_table(10) := '6E2626632E5F7374726F6B655570646174652861297D2C746869732E5F68616E646C654D6F75736555703D66756E6374696F6E2861297B313D3D3D612E77686963682626632E5F6D6F757365427574746F6E446F776E262628632E5F6D6F757365427574';
wwv_flow_api.g_varchar2_table(11) := '746F6E446F776E3D21312C632E5F7374726F6B65456E64286129297D2C746869732E5F68616E646C65546F75636853746172743D66756E6374696F6E2861297B696628313D3D612E746172676574546F75636865732E6C656E677468297B76617220623D';
wwv_flow_api.g_varchar2_table(12) := '612E6368616E676564546F75636865735B305D3B632E5F7374726F6B65426567696E2862297D7D2C746869732E5F68616E646C65546F7563684D6F76653D66756E6374696F6E2861297B612E70726576656E7444656661756C7428293B76617220623D61';
wwv_flow_api.g_varchar2_table(13) := '2E746172676574546F75636865735B305D3B632E5F7374726F6B655570646174652862297D2C746869732E5F68616E646C65546F756368456E643D66756E6374696F6E2861297B76617220623D612E7461726765743D3D3D632E5F63616E7661733B6226';
wwv_flow_api.g_varchar2_table(14) := '2628612E70726576656E7444656661756C7428292C632E5F7374726F6B65456E64286129297D2C746869732E5F68616E646C654D6F7573654576656E747328292C746869732E5F68616E646C65546F7563684576656E747328297D3B622E70726F746F74';
wwv_flow_api.g_varchar2_table(15) := '7970652E636C6561723D66756E6374696F6E28297B76617220613D746869732E5F6374782C623D746869732E5F63616E7661733B612E66696C6C5374796C653D746869732E6261636B67726F756E64436F6C6F722C612E636C6561725265637428302C30';
wwv_flow_api.g_varchar2_table(16) := '2C622E77696474682C622E686569676874292C612E66696C6C5265637428302C302C622E77696474682C622E686569676874292C746869732E5F726573657428297D2C622E70726F746F747970652E746F4461746155524C3D66756E6374696F6E28297B';
wwv_flow_api.g_varchar2_table(17) := '76617220613D746869732E5F63616E7661733B72657475726E20612E746F4461746155524C2E6170706C7928612C617267756D656E7473297D2C622E70726F746F747970652E66726F6D4461746155524C3D66756E6374696F6E2861297B76617220623D';
wwv_flow_api.g_varchar2_table(18) := '746869732C633D6E657720496D6167652C643D77696E646F772E646576696365506978656C526174696F7C7C312C653D746869732E5F63616E7661732E77696474682F642C663D746869732E5F63616E7661732E6865696768742F643B746869732E5F72';
wwv_flow_api.g_varchar2_table(19) := '6573657428292C632E7372633D612C632E6F6E6C6F61643D66756E6374696F6E28297B622E5F6374782E64726177496D61676528632C302C302C652C66297D2C746869732E5F6973456D7074793D21317D2C622E70726F746F747970652E5F7374726F6B';
wwv_flow_api.g_varchar2_table(20) := '655570646174653D66756E6374696F6E2861297B76617220623D746869732E5F637265617465506F696E742861293B746869732E5F616464506F696E742862297D2C622E70726F746F747970652E5F7374726F6B65426567696E3D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(21) := '61297B746869732E5F726573657428292C746869732E5F7374726F6B655570646174652861292C2266756E6374696F6E223D3D747970656F6620746869732E6F6E426567696E2626746869732E6F6E426567696E2861297D2C622E70726F746F74797065';
wwv_flow_api.g_varchar2_table(22) := '2E5F7374726F6B65447261773D66756E6374696F6E2861297B76617220623D746869732E5F6374782C633D2266756E6374696F6E223D3D747970656F6620746869732E646F7453697A653F746869732E646F7453697A6528293A746869732E646F745369';
wwv_flow_api.g_varchar2_table(23) := '7A653B622E626567696E5061746828292C746869732E5F64726177506F696E7428612E782C612E792C63292C622E636C6F73655061746828292C622E66696C6C28297D2C622E70726F746F747970652E5F7374726F6B65456E643D66756E6374696F6E28';
wwv_flow_api.g_varchar2_table(24) := '61297B76617220623D746869732E706F696E74732E6C656E6774683E322C633D746869732E706F696E74735B305D3B21622626632626746869732E5F7374726F6B65447261772863292C2266756E6374696F6E223D3D747970656F6620746869732E6F6E';
wwv_flow_api.g_varchar2_table(25) := '456E642626746869732E6F6E456E642861297D2C622E70726F746F747970652E5F68616E646C654D6F7573654576656E74733D66756E6374696F6E28297B746869732E5F6D6F757365427574746F6E446F776E3D21312C746869732E5F63616E7661732E';
wwv_flow_api.g_varchar2_table(26) := '6164644576656E744C697374656E657228226D6F757365646F776E222C746869732E5F68616E646C654D6F757365446F776E292C746869732E5F63616E7661732E6164644576656E744C697374656E657228226D6F7573656D6F7665222C746869732E5F';
wwv_flow_api.g_varchar2_table(27) := '68616E646C654D6F7573654D6F7665292C612E6164644576656E744C697374656E657228226D6F7573657570222C746869732E5F68616E646C654D6F7573655570297D2C622E70726F746F747970652E5F68616E646C65546F7563684576656E74733D66';
wwv_flow_api.g_varchar2_table(28) := '756E6374696F6E28297B746869732E5F63616E7661732E7374796C652E6D73546F756368416374696F6E3D226E6F6E65222C746869732E5F63616E7661732E7374796C652E746F756368416374696F6E3D226E6F6E65222C746869732E5F63616E766173';
wwv_flow_api.g_varchar2_table(29) := '2E6164644576656E744C697374656E65722822746F7563687374617274222C746869732E5F68616E646C65546F7563685374617274292C746869732E5F63616E7661732E6164644576656E744C697374656E65722822746F7563686D6F7665222C746869';
wwv_flow_api.g_varchar2_table(30) := '732E5F68616E646C65546F7563684D6F7665292C746869732E5F63616E7661732E6164644576656E744C697374656E65722822746F756368656E64222C746869732E5F68616E646C65546F756368456E64297D2C622E70726F746F747970652E6F6E3D66';
wwv_flow_api.g_varchar2_table(31) := '756E6374696F6E28297B746869732E5F68616E646C654D6F7573654576656E747328292C746869732E5F68616E646C65546F7563684576656E747328297D2C622E70726F746F747970652E6F66663D66756E6374696F6E28297B746869732E5F63616E76';
wwv_flow_api.g_varchar2_table(32) := '61732E72656D6F76654576656E744C697374656E657228226D6F757365646F776E222C746869732E5F68616E646C654D6F757365446F776E292C746869732E5F63616E7661732E72656D6F76654576656E744C697374656E657228226D6F7573656D6F76';
wwv_flow_api.g_varchar2_table(33) := '65222C746869732E5F68616E646C654D6F7573654D6F7665292C612E72656D6F76654576656E744C697374656E657228226D6F7573657570222C746869732E5F68616E646C654D6F7573655570292C746869732E5F63616E7661732E72656D6F76654576';
wwv_flow_api.g_varchar2_table(34) := '656E744C697374656E65722822746F7563687374617274222C746869732E5F68616E646C65546F7563685374617274292C746869732E5F63616E7661732E72656D6F76654576656E744C697374656E65722822746F7563686D6F7665222C746869732E5F';
wwv_flow_api.g_varchar2_table(35) := '68616E646C65546F7563684D6F7665292C746869732E5F63616E7661732E72656D6F76654576656E744C697374656E65722822746F756368656E64222C746869732E5F68616E646C65546F756368456E64297D2C622E70726F746F747970652E6973456D';
wwv_flow_api.g_varchar2_table(36) := '7074793D66756E6374696F6E28297B72657475726E20746869732E5F6973456D7074797D2C622E70726F746F747970652E5F72657365743D66756E6374696F6E28297B746869732E706F696E74733D5B5D2C746869732E5F6C61737456656C6F63697479';
wwv_flow_api.g_varchar2_table(37) := '3D302C746869732E5F6C61737457696474683D28746869732E6D696E57696474682B746869732E6D61785769647468292F322C746869732E5F6973456D7074793D21302C746869732E5F6374782E66696C6C5374796C653D746869732E70656E436F6C6F';
wwv_flow_api.g_varchar2_table(38) := '727D2C622E70726F746F747970652E5F637265617465506F696E743D66756E6374696F6E2861297B76617220623D746869732E5F63616E7661732E676574426F756E64696E67436C69656E745265637428293B72657475726E206E6577206328612E636C';
wwv_flow_api.g_varchar2_table(39) := '69656E74582D622E6C6566742C612E636C69656E74592D622E746F70297D2C622E70726F746F747970652E5F616464506F696E743D66756E6374696F6E2861297B76617220622C632C652C662C673D746869732E706F696E74733B672E70757368286129';
wwv_flow_api.g_varchar2_table(40) := '2C672E6C656E6774683E32262628333D3D3D672E6C656E6774682626672E756E736869667428675B305D292C663D746869732E5F63616C63756C6174654375727665436F6E74726F6C506F696E747328675B305D2C675B315D2C675B325D292C623D662E';
wwv_flow_api.g_varchar2_table(41) := '63322C663D746869732E5F63616C63756C6174654375727665436F6E74726F6C506F696E747328675B315D2C675B325D2C675B335D292C633D662E63312C653D6E6577206428675B315D2C622C632C675B325D292C746869732E5F616464437572766528';
wwv_flow_api.g_varchar2_table(42) := '65292C672E73686966742829297D2C622E70726F746F747970652E5F63616C63756C6174654375727665436F6E74726F6C506F696E74733D66756E6374696F6E28612C622C64297B76617220653D612E782D622E782C663D612E792D622E792C673D622E';
wwv_flow_api.g_varchar2_table(43) := '782D642E782C683D622E792D642E792C693D7B783A28612E782B622E78292F322C793A28612E792B622E79292F327D2C6A3D7B783A28622E782B642E78292F322C793A28622E792B642E79292F327D2C6B3D4D6174682E7371727428652A652B662A6629';
wwv_flow_api.g_varchar2_table(44) := '2C6C3D4D6174682E7371727428672A672B682A68292C6D3D692E782D6A2E782C6E3D692E792D6A2E792C6F3D6C2F286B2B6C292C703D7B783A6A2E782B6D2A6F2C793A6A2E792B6E2A6F7D2C713D622E782D702E782C723D622E792D702E793B72657475';
wwv_flow_api.g_varchar2_table(45) := '726E7B63313A6E6577206328692E782B712C692E792B72292C63323A6E65772063286A2E782B712C6A2E792B72297D7D2C622E70726F746F747970652E5F61646443757276653D66756E6374696F6E2861297B76617220622C632C643D612E7374617274';
wwv_flow_api.g_varchar2_table(46) := '506F696E742C653D612E656E64506F696E743B623D652E76656C6F6369747946726F6D2864292C623D746869732E76656C6F6369747946696C7465725765696768742A622B28312D746869732E76656C6F6369747946696C746572576569676874292A74';
wwv_flow_api.g_varchar2_table(47) := '6869732E5F6C61737456656C6F636974792C633D746869732E5F7374726F6B6557696474682862292C746869732E5F64726177437572766528612C746869732E5F6C61737457696474682C63292C746869732E5F6C61737456656C6F636974793D622C74';
wwv_flow_api.g_varchar2_table(48) := '6869732E5F6C61737457696474683D637D2C622E70726F746F747970652E5F64726177506F696E743D66756E6374696F6E28612C622C63297B76617220643D746869732E5F6374783B642E6D6F7665546F28612C62292C642E61726328612C622C632C30';
wwv_flow_api.g_varchar2_table(49) := '2C322A4D6174682E50492C2131292C746869732E5F6973456D7074793D21317D2C622E70726F746F747970652E5F6472617743757276653D66756E6374696F6E28612C622C63297B76617220642C652C662C672C682C692C6A2C6B2C6C2C6D2C6E2C6F3D';
wwv_flow_api.g_varchar2_table(50) := '746869732E5F6374782C703D632D623B666F7228643D4D6174682E666C6F6F7228612E6C656E6774682829292C6F2E626567696E5061746828292C663D303B643E663B662B2B29673D662F642C683D672A672C693D682A672C6A3D312D672C6B3D6A2A6A';
wwv_flow_api.g_varchar2_table(51) := '2C6C3D6B2A6A2C6D3D6C2A612E7374617274506F696E742E782C6D2B3D332A6B2A672A612E636F6E74726F6C312E782C6D2B3D332A6A2A682A612E636F6E74726F6C322E782C6D2B3D692A612E656E64506F696E742E782C6E3D6C2A612E737461727450';
wwv_flow_api.g_varchar2_table(52) := '6F696E742E792C6E2B3D332A6B2A672A612E636F6E74726F6C312E792C6E2B3D332A6A2A682A612E636F6E74726F6C322E792C6E2B3D692A612E656E64506F696E742E792C653D622B692A702C746869732E5F64726177506F696E74286D2C6E2C65293B';
wwv_flow_api.g_varchar2_table(53) := '6F2E636C6F73655061746828292C6F2E66696C6C28297D2C622E70726F746F747970652E5F7374726F6B6557696474683D66756E6374696F6E2861297B72657475726E204D6174682E6D617828746869732E6D617857696474682F28612B31292C746869';
wwv_flow_api.g_varchar2_table(54) := '732E6D696E5769647468297D3B76617220633D66756E6374696F6E28612C622C63297B746869732E783D612C746869732E793D622C746869732E74696D653D637C7C286E65772044617465292E67657454696D6528297D3B632E70726F746F747970652E';
wwv_flow_api.g_varchar2_table(55) := '76656C6F6369747946726F6D3D66756E6374696F6E2861297B72657475726E20746869732E74696D65213D3D612E74696D653F746869732E64697374616E6365546F2861292F28746869732E74696D652D612E74696D65293A317D2C632E70726F746F74';
wwv_flow_api.g_varchar2_table(56) := '7970652E64697374616E6365546F3D66756E6374696F6E2861297B72657475726E204D6174682E73717274284D6174682E706F7728746869732E782D612E782C32292B4D6174682E706F7728746869732E792D612E792C3229297D3B76617220643D6675';
wwv_flow_api.g_varchar2_table(57) := '6E6374696F6E28612C622C632C64297B746869732E7374617274506F696E743D612C746869732E636F6E74726F6C313D622C746869732E636F6E74726F6C323D632C746869732E656E64506F696E743D647D3B72657475726E20642E70726F746F747970';
wwv_flow_api.g_varchar2_table(58) := '652E6C656E6774683D66756E6374696F6E28297B76617220612C622C632C642C652C662C672C682C693D31302C6A3D303B666F7228613D303B693E3D613B612B2B29623D612F692C633D746869732E5F706F696E7428622C746869732E7374617274506F';
wwv_flow_api.g_varchar2_table(59) := '696E742E782C746869732E636F6E74726F6C312E782C746869732E636F6E74726F6C322E782C746869732E656E64506F696E742E78292C643D746869732E5F706F696E7428622C746869732E7374617274506F696E742E792C746869732E636F6E74726F';
wwv_flow_api.g_varchar2_table(60) := '6C312E792C746869732E636F6E74726F6C322E792C746869732E656E64506F696E742E79292C613E30262628673D632D652C683D642D662C6A2B3D4D6174682E7371727428672A672B682A6829292C653D632C663D643B72657475726E206A7D2C642E70';
wwv_flow_api.g_varchar2_table(61) := '726F746F747970652E5F706F696E743D66756E6374696F6E28612C622C632C642C65297B72657475726E20622A28312D61292A28312D61292A28312D61292B332A632A28312D61292A28312D61292A612B332A642A28312D61292A612A612B652A612A61';
wwv_flow_api.g_varchar2_table(62) := '2A617D2C627D28646F63756D656E74293B72657475726E20617D293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(171627862677874094)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_file_name=>'js/signature_pad.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F2041504558205369676E61747572652066756E6374696F6E730A2F2F20417574686F723A2044616E69656C20486F63686C6569746E65720A2F2F2056657273696F6E3A20312E310A0A2F2F20676C6F62616C206E616D6573706163650A7661722061';
wwv_flow_api.g_varchar2_table(2) := '7065785369676E6174757265203D207B0A202020202F2F20706172736520737472696E6720746F20626F6F6C65616E0A202020207061727365426F6F6C65616E3A2066756E6374696F6E2870537472696E6729207B0A2020202020202020766172207042';
wwv_flow_api.g_varchar2_table(3) := '6F6F6C65616E3B0A20202020202020206966202870537472696E672E746F4C6F776572436173652829203D3D2027747275652729207B0A20202020202020202020202070426F6F6C65616E203D20747275653B0A20202020202020207D0A202020202020';
wwv_flow_api.g_varchar2_table(4) := '20206966202870537472696E672E746F4C6F776572436173652829203D3D202766616C73652729207B0A20202020202020202020202070426F6F6C65616E203D2066616C73653B0A20202020202020207D0A202020202020202069662028212870537472';
wwv_flow_api.g_varchar2_table(5) := '696E672E746F4C6F776572436173652829203D3D202774727565272920262620212870537472696E672E746F4C6F776572436173652829203D3D202766616C7365272929207B0A20202020202020202020202070426F6F6C65616E203D20756E64656669';
wwv_flow_api.g_varchar2_table(6) := '6E65643B0A20202020202020207D0A202020202020202072657475726E2070426F6F6C65616E3B0A202020207D2C0A202020202F2F206275696C64732061206A732061727261792066726F6D206C6F6E6720737472696E670A20202020636C6F62324172';
wwv_flow_api.g_varchar2_table(7) := '7261793A2066756E6374696F6E28636C6F622C2073697A652C20617272617929207B0A20202020202020206C6F6F70436F756E74203D204D6174682E666C6F6F7228636C6F622E6C656E677468202F2073697A6529202B20313B0A202020202020202066';
wwv_flow_api.g_varchar2_table(8) := '6F7220287661722069203D20303B2069203C206C6F6F70436F756E743B20692B2B29207B0A20202020202020202020202061727261792E7075736828636C6F622E736C6963652873697A65202A20692C2073697A65202A202869202B20312929293B0A20';
wwv_flow_api.g_varchar2_table(9) := '202020202020207D0A202020202020202072657475726E2061727261793B0A202020207D2C0A202020202F2F20636F6E7665727473204461746155524920746F2062617365363420737472696E670A2020202064617461555249326261736536343A2066';
wwv_flow_api.g_varchar2_table(10) := '756E6374696F6E286461746155524929207B0A202020202020202076617220626173653634203D20646174615552492E73756273747228646174615552492E696E6465784F6628272C2729202B2031293B0A202020202020202072657475726E20626173';
wwv_flow_api.g_varchar2_table(11) := '6536343B0A202020207D2C0A202020202F2F207361766520746F2044422066756E6374696F6E0A20202020736176653244623A2066756E6374696F6E2870416A61784964656E7469666965722C2070526567696F6E49642C2070496D672C2063616C6C62';
wwv_flow_api.g_varchar2_table(12) := '61636B29207B0A20202020202020202F2F20696D67204461746155524920746F206261736536340A202020202020202076617220626173653634203D20617065785369676E61747572652E64617461555249326261736536342870496D67293B0A202020';
wwv_flow_api.g_varchar2_table(13) := '20202020202F2F2073706C69742062617365363420636C6F6220737472696E6720746F20663031206172726179206C656E6774682033306B0A2020202020202020766172206630314172726179203D205B5D3B0A20202020202020206630314172726179';
wwv_flow_api.g_varchar2_table(14) := '203D20617065785369676E61747572652E636C6F62324172726179286261736536342C2033303030302C206630314172726179293B0A20202020202020202F2F204170657820416A61782043616C6C0A2020202020202020617065782E7365727665722E';
wwv_flow_api.g_varchar2_table(15) := '706C7567696E2870416A61784964656E7469666965722C207B0A2020202020202020202020206630313A2066303141727261790A20202020202020207D2C207B0A20202020202020202020202064617461547970653A202768746D6C272C0A2020202020';
wwv_flow_api.g_varchar2_table(16) := '202020202020202F2F205355434553532066756E6374696F6E0A202020202020202020202020737563636573733A2066756E6374696F6E2829207B0A202020202020202020202020202020202F2F206164642061706578206576656E740A202020202020';
wwv_flow_api.g_varchar2_table(17) := '202020202020202020202428272327202B2070526567696F6E4964292E747269676765722827617065787369676E61747572652D73617665642D646227293B0A202020202020202020202020202020202F2F2063616C6C6261636B0A2020202020202020';
wwv_flow_api.g_varchar2_table(18) := '202020202020202063616C6C6261636B28293B0A2020202020202020202020207D2C0A2020202020202020202020202F2F204552524F522066756E6374696F6E0A2020202020202020202020206572726F723A2066756E6374696F6E287868722C20704D';
wwv_flow_api.g_varchar2_table(19) := '65737361676529207B0A202020202020202020202020202020202F2F206164642061706578206576656E740A202020202020202020202020202020202428272327202B2070526567696F6E4964292E747269676765722827617065787369676E61747572';
wwv_flow_api.g_varchar2_table(20) := '652D6572726F722D646227293B0A20202020202020202020202020202020636F6E736F6C652E6C6F672827736176653244623A20617065782E7365727665722E706C7567696E204552524F523A272C20704D657373616765293B0A202020202020202020';
wwv_flow_api.g_varchar2_table(21) := '202020202020202F2F2063616C6C6261636B0A2020202020202020202020202020202063616C6C6261636B28293B0A2020202020202020202020207D0A20202020202020207D293B0A202020207D2C0A202020202F2F2066756E6374696F6E2074686174';
wwv_flow_api.g_varchar2_table(22) := '20676574732063616C6C65642066726F6D20706C7567696E0A20202020617065785369676E6174757265466E633A2066756E6374696F6E2870526567696F6E49642C20704F7074696F6E732C20704C6F6767696E6729207B0A2020202020202020766172';
wwv_flow_api.g_varchar2_table(23) := '20764F7074696F6E73203D20704F7074696F6E733B0A2020202020202020766172207643616E76617324203D20646F63756D656E742E676574456C656D656E744279496428764F7074696F6E732E63616E7661734964293B0A2020202020202020766172';
wwv_flow_api.g_varchar2_table(24) := '20764C6F6767696E67203D20617065785369676E61747572652E7061727365426F6F6C65616E28704C6F6767696E67293B0A202020202020202076617220764D696E5769647468203D207061727365496E7428764F7074696F6E732E6C696E654D696E57';
wwv_flow_api.g_varchar2_table(25) := '69647468293B0A202020202020202076617220764D61785769647468203D207061727365496E7428764F7074696F6E732E6C696E654D61785769647468293B0A20202020202020207661722076436C65617242746E53656C6563746F72203D20764F7074';
wwv_flow_api.g_varchar2_table(26) := '696F6E732E636C656172427574746F6E3B0A202020202020202076617220765361766542746E53656C6563746F72203D20764F7074696F6E732E73617665427574746F6E3B0A20202020202020207661722076456D707479416C657274203D20764F7074';
wwv_flow_api.g_varchar2_table(27) := '696F6E732E656D707479416C6572743B0A2020202020202020766172207653686F775370696E6E6572203D20617065785369676E61747572652E7061727365426F6F6C65616E28764F7074696F6E732E73686F775370696E6E6572293B0A202020202020';
wwv_flow_api.g_varchar2_table(28) := '2020766172207643616E7661735769647468203D207643616E766173242E77696474683B0A2020202020202020766172207643616E766173486569676874203D207643616E766173242E6865696768743B0A20202020202020207661722076436C69656E';
wwv_flow_api.g_varchar2_table(29) := '745769647468203D207061727365496E7428646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E745769647468293B0A202020202020202076617220764369656E74486569676874203D207061727365496E7428646F63756D656E';
wwv_flow_api.g_varchar2_table(30) := '742E646F63756D656E74456C656D656E742E636C69656E74486569676874293B0A20202020202020202F2F204C6F6767696E670A202020202020202069662028764C6F6767696E6729207B0A202020202020202020202020636F6E736F6C652E6C6F6728';
wwv_flow_api.g_varchar2_table(31) := '27617065785369676E6174757265466E633A20764F7074696F6E732E616A61784964656E7469666965723A272C20764F7074696F6E732E616A61784964656E746966696572293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065';
wwv_flow_api.g_varchar2_table(32) := '785369676E6174757265466E633A20764F7074696F6E732E63616E76617349643A272C20764F7074696F6E732E63616E7661734964293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A2076';
wwv_flow_api.g_varchar2_table(33) := '4F7074696F6E732E6C696E654D696E57696474683A272C20764F7074696F6E732E6C696E654D696E5769647468293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E';
wwv_flow_api.g_varchar2_table(34) := '6C696E654D617857696474683A272C20764F7074696F6E732E6C696E654D61785769647468293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E6261636B67726F75';
wwv_flow_api.g_varchar2_table(35) := '6E64436F6C6F723A272C20764F7074696F6E732E6261636B67726F756E64436F6C6F72293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E70656E436F6C6F723A27';
wwv_flow_api.g_varchar2_table(36) := '2C20764F7074696F6E732E70656E436F6C6F72293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E73617665427574746F6E3A272C20764F7074696F6E732E736176';
wwv_flow_api.g_varchar2_table(37) := '65427574746F6E293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E636C656172427574746F6E3A272C20764F7074696F6E732E636C656172427574746F6E293B0A';
wwv_flow_api.g_varchar2_table(38) := '202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E656D707479416C6572743A272C20764F7074696F6E732E656D707479416C657274293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(39) := '636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A20764F7074696F6E732E73686F775370696E6E65723A272C20764F7074696F6E732E73686F775370696E6E6572293B0A202020202020202020202020636F6E736F6C652E6C6F';
wwv_flow_api.g_varchar2_table(40) := '672827617065785369676E6174757265466E633A2070526567696F6E49643A272C2070526567696F6E4964293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A207643616E76617357696474';
wwv_flow_api.g_varchar2_table(41) := '683A272C207643616E7661735769647468293B0A202020202020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A207643616E7661734865696768743A272C207643616E766173486569676874293B0A20202020';
wwv_flow_api.g_varchar2_table(42) := '2020202020202020636F6E736F6C652E6C6F672827617065785369676E6174757265466E633A2076436C69656E7457696474683A272C2076436C69656E745769647468293B0A202020202020202020202020636F6E736F6C652E6C6F6728276170657853';
wwv_flow_api.g_varchar2_table(43) := '69676E6174757265466E633A20764369656E744865696768743A272C207643616E766173486569676874293B0A20202020202020207D0A20202020202020202F2F20726573697A652063616E7661732069662073637265656E20736D616C6C6572207468';
wwv_flow_api.g_varchar2_table(44) := '616E2063616E7661730A2020202020202020696620287643616E7661735769647468203E2076436C69656E74576964746829207B0A2020202020202020202020207643616E766173242E7769647468203D2076436C69656E745769647468202D2036303B';
wwv_flow_api.g_varchar2_table(45) := '0A20202020202020207D0A2020202020202020696620287643616E766173486569676874203E20764369656E7448656967687429207B0A2020202020202020202020207643616E766173242E686569676874203D20764369656E74486569676874202D20';
wwv_flow_api.g_varchar2_table(46) := '36303B0A20202020202020207D0A20202020202020202F2F205349474E41545552455041440A20202020202020202F2F20637265617465207369676E61747572655061640A2020202020202020766172207369676E6174757265506164203D206E657720';
wwv_flow_api.g_varchar2_table(47) := '5369676E6174757265506164287643616E766173242C207B0A2020202020202020202020206D696E57696474683A20764D696E57696474682C0A2020202020202020202020206D617857696474683A20764D617857696474682C0A202020202020202020';
wwv_flow_api.g_varchar2_table(48) := '2020206261636B67726F756E64436F6C6F723A20764F7074696F6E732E6261636B67726F756E64436F6C6F722C0A20202020202020202020202070656E436F6C6F723A20764F7074696F6E732E70656E436F6C6F720A20202020202020207D293B0A2020';
wwv_flow_api.g_varchar2_table(49) := '2020202020202F2F20636C656172207369676E61747572655061640A2020202020202020242876436C65617242746E53656C6563746F72292E636C69636B2866756E6374696F6E2829207B0A2020202020202020202020207369676E6174757265506164';
wwv_flow_api.g_varchar2_table(50) := '2E636C65617228293B0A2020202020202020202020202F2F206164642061706578206576656E740A2020202020202020202020202428272327202B2070526567696F6E4964292E747269676765722827617065787369676E61747572652D636C65617265';
wwv_flow_api.g_varchar2_table(51) := '6427293B0A20202020202020207D293B0A20202020202020202F2F2073617665207369676E617475726550616420746F2044420A20202020202020202428765361766542746E53656C6563746F72292E636C69636B2866756E6374696F6E2829207B0A20';
wwv_flow_api.g_varchar2_table(52) := '202020202020202020202076617220764973456D707479203D207369676E61747572655061642E6973456D70747928293B0A2020202020202020202020202F2F206F6E6C79207768656E207369676E6174757265206973206E6F7420656D7074790A2020';
wwv_flow_api.g_varchar2_table(53) := '2020202020202020202069662028764973456D707479203D3D3D2066616C736529207B0A202020202020202020202020202020202F2F2073686F772077616974207370696E6E65720A20202020202020202020202020202020696620287653686F775370';
wwv_flow_api.g_varchar2_table(54) := '696E6E657229207B0A2020202020202020202020202020202020202020766172206C5370696E6E657224203D20617065782E7574696C2E73686F775370696E6E6572282428272327202B2070526567696F6E496429293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(55) := '202020207D0A202020202020202020202020202020202F2F207361766520696D6167650A202020202020202020202020202020207661722076496D67203D207369676E61747572655061642E746F4461746155524C28293B0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(56) := '2020202020617065785369676E61747572652E7361766532446228764F7074696F6E732E616A61784964656E7469666965722C2070526567696F6E49642C2076496D672C2066756E6374696F6E2829207B0A202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(57) := '20202F2F20636C6561720A20202020202020202020202020202020202020207369676E61747572655061642E636C65617228293B0A20202020202020202020202020202020202020202F2F2072656D6F76652077616974207370696E6E65720A20202020';
wwv_flow_api.g_varchar2_table(58) := '20202020202020202020202020202020696620287653686F775370696E6E657229207B0A2020202020202020202020202020202020202020202020206C5370696E6E6572242E72656D6F766528293B0A2020202020202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(59) := '7D0A202020202020202020202020202020207D293B0A202020202020202020202020202020202F2F20697320656D7074790A2020202020202020202020207D20656C7365207B0A20202020202020202020202020202020616C6572742876456D70747941';
wwv_flow_api.g_varchar2_table(60) := '6C657274293B0A2020202020202020202020207D0A20202020202020207D293B0A202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(171638894245290704)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_file_name=>'js/apexsignature.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220617065785369676E61747572653D7B7061727365426F6F6C65616E3A66756E6374696F6E2862297B76617220613B2274727565223D3D622E746F4C6F776572436173652829262628613D2130293B2266616C7365223D3D622E746F4C6F776572';
wwv_flow_api.g_varchar2_table(2) := '436173652829262628613D2131293B227472756522213D622E746F4C6F77657243617365282926262266616C736522213D622E746F4C6F776572436173652829262628613D766F69642030293B72657475726E20617D2C636C6F623241727261793A6675';
wwv_flow_api.g_varchar2_table(3) := '6E6374696F6E28622C612C64297B6C6F6F70436F756E743D4D6174682E666C6F6F7228622E6C656E6774682F61292B313B666F722876617220633D303B633C6C6F6F70436F756E743B632B2B29642E7075736828622E736C69636528612A632C612A2863';
wwv_flow_api.g_varchar2_table(4) := '2B312929293B72657475726E20647D2C64617461555249326261736536343A66756E6374696F6E2862297B72657475726E20622E73756273747228622E696E6465784F6628222C22292B31297D2C736176653244623A66756E6374696F6E28622C612C64';
wwv_flow_api.g_varchar2_table(5) := '2C63297B643D617065785369676E61747572652E64617461555249326261736536342864293B76617220653D5B5D2C653D617065785369676E61747572652E636C6F6232417272617928642C3345342C65293B617065782E7365727665722E706C756769';
wwv_flow_api.g_varchar2_table(6) := '6E28622C0A7B6630313A657D2C7B64617461547970653A2268746D6C222C737563636573733A66756E6374696F6E28297B24282223222B61292E747269676765722822617065787369676E61747572652D73617665642D646222293B6328297D2C657272';
wwv_flow_api.g_varchar2_table(7) := '6F723A66756E6374696F6E28622C64297B24282223222B61292E747269676765722822617065787369676E61747572652D6572726F722D646222293B636F6E736F6C652E6C6F672822736176653244623A20617065782E7365727665722E706C7567696E';
wwv_flow_api.g_varchar2_table(8) := '204552524F523A222C64293B6328297D7D297D2C617065785369676E6174757265466E633A66756E6374696F6E28622C612C64297B76617220633D646F63756D656E742E676574456C656D656E744279496428612E63616E7661734964293B643D617065';
wwv_flow_api.g_varchar2_table(9) := '785369676E61747572652E7061727365426F6F6C65616E2864293B76617220653D7061727365496E7428612E6C696E654D696E5769647468292C6E3D7061727365496E7428612E6C696E654D61785769647468292C703D612E636C656172427574746F6E';
wwv_flow_api.g_varchar2_table(10) := '2C713D612E73617665427574746F6E2C723D612E656D707479416C6572742C6B3D617065785369676E61747572652E7061727365426F6F6C65616E28612E73686F775370696E6E6572292C6C3D632E77696474682C673D632E6865696768742C683D7061';
wwv_flow_api.g_varchar2_table(11) := '727365496E7428646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E745769647468292C0A6D3D7061727365496E7428646F63756D656E742E646F63756D656E74456C656D656E742E636C69656E74486569676874293B64262628';
wwv_flow_api.g_varchar2_table(12) := '636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E616A61784964656E7469666965723A222C612E616A61784964656E746966696572292C636F6E736F6C652E6C6F672822617065785369676E61747572';
wwv_flow_api.g_varchar2_table(13) := '65466E633A20764F7074696F6E732E63616E76617349643A222C612E63616E7661734964292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E6C696E654D696E57696474683A222C612E6C696E654D';
wwv_flow_api.g_varchar2_table(14) := '696E5769647468292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E6C696E654D617857696474683A222C612E6C696E654D61785769647468292C636F6E736F6C652E6C6F67282261706578536967';
wwv_flow_api.g_varchar2_table(15) := '6E6174757265466E633A20764F7074696F6E732E6261636B67726F756E64436F6C6F723A222C612E6261636B67726F756E64436F6C6F72292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E70656E';
wwv_flow_api.g_varchar2_table(16) := '436F6C6F723A222C612E70656E436F6C6F72292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E73617665427574746F6E3A222C0A612E73617665427574746F6E292C636F6E736F6C652E6C6F6728';
wwv_flow_api.g_varchar2_table(17) := '22617065785369676E6174757265466E633A20764F7074696F6E732E636C656172427574746F6E3A222C612E636C656172427574746F6E292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E656D70';
wwv_flow_api.g_varchar2_table(18) := '7479416C6572743A222C612E656D707479416C657274292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A20764F7074696F6E732E73686F775370696E6E65723A222C612E73686F775370696E6E6572292C636F6E736F6C65';
wwv_flow_api.g_varchar2_table(19) := '2E6C6F672822617065785369676E6174757265466E633A2070526567696F6E49643A222C62292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A207643616E76617357696474683A222C6C292C636F6E736F6C652E6C6F6728';
wwv_flow_api.g_varchar2_table(20) := '22617065785369676E6174757265466E633A207643616E7661734865696768743A222C67292C636F6E736F6C652E6C6F672822617065785369676E6174757265466E633A2076436C69656E7457696474683A222C68292C636F6E736F6C652E6C6F672822';
wwv_flow_api.g_varchar2_table(21) := '617065785369676E6174757265466E633A20764369656E744865696768743A222C6729293B6C3E68262628632E77696474683D682D3630293B673E6D262628632E6865696768743D6D2D3630293B0A76617220663D6E6577205369676E61747572655061';
wwv_flow_api.g_varchar2_table(22) := '6428632C7B6D696E57696474683A652C6D617857696474683A6E2C6261636B67726F756E64436F6C6F723A612E6261636B67726F756E64436F6C6F722C70656E436F6C6F723A612E70656E436F6C6F727D293B242870292E636C69636B2866756E637469';
wwv_flow_api.g_varchar2_table(23) := '6F6E28297B662E636C65617228293B24282223222B62292E747269676765722822617065787369676E61747572652D636C656172656422297D293B242871292E636C69636B2866756E6374696F6E28297B69662821313D3D3D662E6973456D7074792829';
wwv_flow_api.g_varchar2_table(24) := '297B6966286B2976617220633D617065782E7574696C2E73686F775370696E6E65722824282223222B6229293B76617220643D662E746F4461746155524C28293B617065785369676E61747572652E7361766532446228612E616A61784964656E746966';
wwv_flow_api.g_varchar2_table(25) := '6965722C622C642C66756E6374696F6E28297B662E636C65617228293B6B2626632E72656D6F766528297D297D656C736520616C6572742872297D297D7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(171639342194291286)
,p_plugin_id=>wwv_flow_api.id(171564484896863540)
,p_file_name=>'js/apexsignature.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/item_type/de_danielh_clockpicker
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(11281921034772539271)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'DE.DANIELH.CLOCKPICKER'
,p_display_name=>'ClockPicker'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','DE.DANIELH.CLOCKPICKER'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * ClockPicker Functions',
' * Version: 1.7.0 (22.12.2016)',
' * Author:  Daniel Hochleitner',
' *-------------------------------------',
'*/',
'FUNCTION render_clockpicker(p_item                IN apex_plugin.t_page_item,',
'                            p_plugin              IN apex_plugin.t_plugin,',
'                            p_value               IN VARCHAR2,',
'                            p_is_readonly         IN BOOLEAN,',
'                            p_is_printer_friendly IN BOOLEAN)',
'  RETURN apex_plugin.t_page_item_render_result IS',
'  -- plugin attributes',
'  l_result                  apex_plugin.t_page_item_render_result;',
'  l_placement               VARCHAR2(50) := p_item.attribute_01;',
'  l_align                   VARCHAR2(50) := p_item.attribute_02;',
'  l_autoclose               VARCHAR2(50) := p_item.attribute_03;',
'  l_done_btn_text           VARCHAR2(100) := p_item.attribute_04;',
'  l_12h_mode                VARCHAR2(50) := p_item.attribute_05;',
'  l_suppress_soft_keyboards NUMBER := p_item.attribute_06;',
'  l_show_clock_button       NUMBER := p_item.attribute_07;',
'  l_logging                 VARCHAR2(50) := p_item.attribute_08;',
'  -- other vars',
'  l_name            VARCHAR2(30);',
'  l_escaped_value   VARCHAR2(1000);',
'  l_onload_string   VARCHAR2(2000);',
'  l_html_string     VARCHAR2(2000);',
'  l_element_item_id VARCHAR2(200);',
'  --',
'BEGIN',
'  --',
'  -- Printer Friendly Display',
'  IF p_is_printer_friendly THEN',
'    apex_plugin_util.print_display_only(p_item_name        => p_item.name,',
'                                        p_display_value    => p_value,',
'                                        p_show_line_breaks => FALSE,',
'                                        p_escape           => TRUE,',
'                                        p_attributes       => p_item.element_attributes);',
'    -- Read Only Display',
'  ELSIF p_is_readonly THEN',
'    apex_plugin_util.print_hidden_if_readonly(p_item_name           => p_item.name,',
'                                              p_value               => p_value,',
'                                              p_is_readonly         => p_is_readonly,',
'                                              p_is_printer_friendly => p_is_printer_friendly);',
'    -- Normal Display',
'  ELSE',
'    --',
'    l_element_item_id := p_item.name;',
'    l_name            := apex_plugin.get_input_name_for_page_item(FALSE);',
'    l_escaped_value   := apex_escape.html(p_value);',
'    --',
'    l_html_string := ''<input '';',
'    l_html_string := l_html_string || ''type="text" '';',
'    l_html_string := l_html_string || ''name="'' || l_name || ''" '';',
'    l_html_string := l_html_string || ''id="'' || l_element_item_id || ''" '';',
'    l_html_string := l_html_string || ''value="'' || l_escaped_value || ''" '';',
'    l_html_string := l_html_string || ''size="'' || p_item.element_width || ''" '';',
'    -- suppress soft keyboard',
'    IF l_suppress_soft_keyboards = 1 THEN',
'      l_html_string := l_html_string || ''onfocus="blur();" '';',
'    END IF;',
'    --',
'    l_html_string := l_html_string || ''maxlength="'' ||',
'                     p_item.element_max_length || ''" '';',
'    l_html_string := l_html_string || '' '' || p_item.element_attributes ||',
'                     '' />'';',
'    -- show clock button',
'    IF l_show_clock_button = 1 THEN',
'      l_html_string := l_html_string ||',
'                       ''<span class="t-Form-itemText t-Form-itemText--post"><a id="'' ||',
'                       l_element_item_id ||',
'                       ''_button" class="a-Button a-Button--popupLOV clockpicker-btn" href="javascript:void(0);"><span class="fa fa-clock-o"></span></a></span>'';',
'      -- button style',
'      apex_css.add(p_css => ''.clockpicker-btn { box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.125) inset !important; }'',',
'                   p_key => ''clockpicker_style'');',
'    END IF;',
'    -- write item html',
'    htp.p(l_html_string);',
'    --',
'    -- Include the Bootstrap CSS',
'    apex_css.add_file(p_name      => ''bootstrap.min'',',
'                      p_directory => p_plugin.file_prefix || ''css/'');',
'    -- Include the ClockPicker CSS',
'    apex_css.add_file(p_name      => ''bootstrap-clockpicker.min'',',
'                      p_directory => p_plugin.file_prefix || ''css/'');',
'  ',
'    -- Include ClockPicker JS',
'    apex_javascript.add_library(p_name           => ''bootstrap-clockpicker.min'',',
'                                p_directory      => p_plugin.file_prefix ||',
'                                                    ''js/'',',
'                                p_version        => NULL,',
'                                p_skip_extension => FALSE);',
'    --',
'    apex_javascript.add_library(p_name           => ''apexclockpicker.min'',',
'                                p_directory      => p_plugin.file_prefix ||',
'                                                    ''js/'',',
'                                p_version        => NULL,',
'                                p_skip_extension => FALSE);',
'    --',
'    -- JS Onload Code',
'    l_onload_string := ''apexClockPicker.initClockPicker('' ||',
'                       apex_javascript.add_value(l_element_item_id) || ''{'' ||',
'                       apex_javascript.add_attribute(p_name      => ''placement'',',
'                                                     p_value     => l_placement,',
'                                                     p_add_comma => TRUE) ||',
'                       apex_javascript.add_attribute(p_name      => ''align'',',
'                                                     p_value     => l_align,',
'                                                     p_add_comma => TRUE) ||',
'                       apex_javascript.add_attribute(p_name      => ''autoclose'',',
'                                                     p_value     => l_autoclose,',
'                                                     p_add_comma => TRUE) ||',
'                       apex_javascript.add_attribute(p_name      => ''donetext'',',
'                                                     p_value     => l_done_btn_text,',
'                                                     p_add_comma => TRUE) ||',
'                       apex_javascript.add_attribute(p_name      => ''twelvehour'',',
'                                                     p_value     => l_12h_mode,',
'                                                     p_add_comma => TRUE) ||',
'                       apex_javascript.add_attribute(p_name      => ''showbutton'',',
'                                                     p_value     => l_show_clock_button,',
'                                                     p_add_comma => TRUE) ||',
'                       apex_javascript.add_attribute(p_name      => ''default'',',
'                                                     p_value     => ''now'',',
'                                                     p_add_comma => FALSE) || ''},'' ||',
'                       apex_javascript.add_value(l_logging,',
'                                                 FALSE) || '');'';',
'    --',
'    apex_javascript.add_inline_code(p_code => l_onload_string);',
'    --',
'  END IF;',
'  --',
'  l_result.is_navigable := TRUE;',
'  --',
'  RETURN(l_result);',
'  --',
'END render_clockpicker;'))
,p_api_version=>1
,p_render_function=>'render_clockpicker'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:ESCAPE_OUTPUT:SOURCE:ELEMENT:WIDTH:ELEMENT_OPTION'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Clockpicker item plugin for APEX',
'In 24h and 12h format.',
'Original from: http://weareoutman.github.io/clockpicker/'))
,p_version_identifier=>'1.7.0'
,p_about_url=>'https://github.com/Dani3lSun/apex-plugin-clockpicker'
,p_files_version=>36
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11281921211346539276)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Placement'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'bottom'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Placement:</strong><br>',
'- bottom (default)<br>',
'- top <br>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11281939243415674546)
,p_plugin_attribute_id=>wwv_flow_api.id(11281921211346539276)
,p_display_sequence=>10
,p_display_value=>'Bottom'
,p_return_value=>'bottom'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11281939663116675010)
,p_plugin_attribute_id=>wwv_flow_api.id(11281921211346539276)
,p_display_sequence=>20
,p_display_value=>'Top'
,p_return_value=>'top'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11281977222342229627)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Align'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_default_value=>'left'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Placement:</strong><br>',
'- Left (default)<br>',
'- Right <br>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11281977888501230169)
,p_plugin_attribute_id=>wwv_flow_api.id(11281977222342229627)
,p_display_sequence=>10
,p_display_value=>'Left'
,p_return_value=>'left'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11281978226902230891)
,p_plugin_attribute_id=>wwv_flow_api.id(11281977222342229627)
,p_display_sequence=>20
,p_display_value=>'Right'
,p_return_value=>'right'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11281922083872539279)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Autoclose'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'true'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Autoclose:</strong><br>',
'- True (default)<br>',
'- False <br>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11281942245429693181)
,p_plugin_attribute_id=>wwv_flow_api.id(11281922083872539279)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11281942612406693876)
,p_plugin_attribute_id=>wwv_flow_api.id(11281922083872539279)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11282137574593263420)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Done Button Text'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Done'
,p_is_translatable=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Done Button Text:</strong><br>',
'When set to "autoclose false" a done button to close is displayed. Enter the displayed text.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(11417193322862008525)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>35
,p_prompt=>'12h mode'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose if 12h mode (am/pm) is on or off.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11417195152346009339)
,p_plugin_attribute_id=>wwv_flow_api.id(11417193322862008525)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(11417196021387010088)
,p_plugin_attribute_id=>wwv_flow_api.id(11417193322862008525)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(15515757798804044628)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Suppress Mobile Keyboards'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Suppress the default behavior on mobile devices to fade out the soft keyboard.<br>',
'If set to Yes no keyboard is shown on mobile devices, but the possibility to enter free text is also suppressed.'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(15515763211584049107)
,p_plugin_attribute_id=>wwv_flow_api.id(15515757798804044628)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'1'
,p_help_text=>'Suppress soft keyboards and free text input'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(15515829238247052216)
,p_plugin_attribute_id=>wwv_flow_api.id(15515757798804044628)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'0'
,p_help_text=>unistr('Default: Don\00BFt suppress soft keyboards and free text inputs')
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(169587454237430597)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>45
,p_prompt=>'Show clock button'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'0'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Choose if a small button with clock icon is shown on right side of item'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(169589273022431232)
,p_plugin_attribute_id=>wwv_flow_api.id(169587454237430597)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'1'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(169589702890431680)
,p_plugin_attribute_id=>wwv_flow_api.id(169587454237430597)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'0'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(185228703914458114)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Logging'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'false'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Whether to log events in the console.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(185230796097459019)
,p_plugin_attribute_id=>wwv_flow_api.id(185228703914458114)
,p_display_sequence=>10
,p_display_value=>'True'
,p_return_value=>'true'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(185231209210459811)
,p_plugin_attribute_id=>wwv_flow_api.id(185228703914458114)
,p_display_sequence=>20
,p_display_value=>'False'
,p_return_value=>'false'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210A202A20426F6F7473747261702076332E332E362028687474703A2F2F676574626F6F7473747261702E636F6D290A202A20436F7079726967687420323031312D3230313520547769747465722C20496E632E0A202A204C6963656E7365642075';
wwv_flow_api.g_varchar2_table(2) := '6E646572204D4954202868747470733A2F2F6769746875622E636F6D2F747762732F626F6F7473747261702F626C6F622F6D61737465722F4C4943454E5345290A202A2F2F2A2120536F757263653A2068747470733A2F2F6769746875622E636F6D2F68';
wwv_flow_api.g_varchar2_table(3) := '3562702F68746D6C352D626F696C6572706C6174652F626C6F622F6D61737465722F7372632F6373732F6D61696E2E637373202A2F406D65646961207072696E747B2A2C2A3A6265666F72652C2A3A61667465727B6261636B67726F756E643A7472616E';
wwv_flow_api.g_varchar2_table(4) := '73706172656E742021696D706F7274616E743B636F6C6F723A233030302021696D706F7274616E743B626F782D736861646F773A6E6F6E652021696D706F7274616E743B746578742D736861646F773A6E6F6E652021696D706F7274616E747D612C613A';
wwv_flow_api.g_varchar2_table(5) := '766973697465647B746578742D6465636F726174696F6E3A756E6465726C696E657D615B687265665D3A61667465727B636F6E74656E743A222028222061747472286872656629202229227D616262725B7469746C655D3A61667465727B636F6E74656E';
wwv_flow_api.g_varchar2_table(6) := '743A222028222061747472287469746C6529202229227D615B687265665E3D2223225D3A61667465722C615B687265665E3D226A6176617363726970743A225D3A61667465727B636F6E74656E743A22227D7072652C626C6F636B71756F74657B626F72';
wwv_flow_api.g_varchar2_table(7) := '6465723A31707820736F6C696420233939393B706167652D627265616B2D696E736964653A61766F69647D74686561647B646973706C61793A7461626C652D6865616465722D67726F75707D74722C696D677B706167652D627265616B2D696E73696465';
wwv_flow_api.g_varchar2_table(8) := '3A61766F69647D696D677B6D61782D77696474683A313030252021696D706F7274616E747D702C68322C68337B6F727068616E733A333B7769646F77733A337D68322C68337B706167652D627265616B2D61667465723A61766F69647D2E6E6176626172';
wwv_flow_api.g_varchar2_table(9) := '7B646973706C61793A6E6F6E657D2E62746E3E2E63617265742C2E64726F7075703E2E62746E3E2E63617265747B626F726465722D746F702D636F6C6F723A233030302021696D706F7274616E747D2E6C6162656C7B626F726465723A31707820736F6C';
wwv_flow_api.g_varchar2_table(10) := '696420233030307D2E7461626C657B626F726465722D636F6C6C617073653A636F6C6C617073652021696D706F7274616E747D2E7461626C652074642C2E7461626C652074687B6261636B67726F756E642D636F6C6F723A236666662021696D706F7274';
wwv_flow_api.g_varchar2_table(11) := '616E747D2E7461626C652D626F7264657265642074682C2E7461626C652D626F7264657265642074647B626F726465723A31707820736F6C696420236464642021696D706F7274616E747D7D40666F6E742D666163657B666F6E742D66616D696C793A27';
wwv_flow_api.g_varchar2_table(12) := '476C79706869636F6E732048616C666C696E6773273B7372633A75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D726567756C61722E656F7427293B7372633A75726C28272E2E2F666F6E74732F676C7970686963';
wwv_flow_api.g_varchar2_table(13) := '6F6E732D68616C666C696E67732D726567756C61722E656F743F236965666978272920666F726D61742827656D6265646465642D6F70656E7479706527292C75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D7265';
wwv_flow_api.g_varchar2_table(14) := '67756C61722E776F666632272920666F726D61742827776F66663227292C75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D726567756C61722E776F6666272920666F726D61742827776F666627292C75726C2827';
wwv_flow_api.g_varchar2_table(15) := '2E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D726567756C61722E747466272920666F726D61742827747275657479706527292C75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D7265';
wwv_flow_api.g_varchar2_table(16) := '67756C61722E73766723676C79706869636F6E735F68616C666C696E6773726567756C6172272920666F726D6174282773766727297D2E676C79706869636F6E7B706F736974696F6E3A72656C61746976653B746F703A3170783B646973706C61793A69';
wwv_flow_api.g_varchar2_table(17) := '6E6C696E652D626C6F636B3B666F6E742D66616D696C793A27476C79706869636F6E732048616C666C696E6773273B666F6E742D7374796C653A6E6F726D616C3B666F6E742D7765696768743A6E6F726D616C3B6C696E652D6865696768743A313B2D77';
wwv_flow_api.g_varchar2_table(18) := '65626B69742D666F6E742D736D6F6F7468696E673A616E7469616C69617365643B2D6D6F7A2D6F73782D666F6E742D736D6F6F7468696E673A677261797363616C657D2E676C79706869636F6E2D617374657269736B3A6265666F72657B636F6E74656E';
wwv_flow_api.g_varchar2_table(19) := '743A225C30303261227D2E676C79706869636F6E2D706C75733A6265666F72657B636F6E74656E743A225C30303262227D2E676C79706869636F6E2D6575726F3A6265666F72652C2E676C79706869636F6E2D6575723A6265666F72657B636F6E74656E';
wwv_flow_api.g_varchar2_table(20) := '743A225C32306163227D2E676C79706869636F6E2D6D696E75733A6265666F72657B636F6E74656E743A225C32323132227D2E676C79706869636F6E2D636C6F75643A6265666F72657B636F6E74656E743A225C32363031227D2E676C79706869636F6E';
wwv_flow_api.g_varchar2_table(21) := '2D656E76656C6F70653A6265666F72657B636F6E74656E743A225C32373039227D2E676C79706869636F6E2D70656E63696C3A6265666F72657B636F6E74656E743A225C32373066227D2E676C79706869636F6E2D676C6173733A6265666F72657B636F';
wwv_flow_api.g_varchar2_table(22) := '6E74656E743A225C65303031227D2E676C79706869636F6E2D6D757369633A6265666F72657B636F6E74656E743A225C65303032227D2E676C79706869636F6E2D7365617263683A6265666F72657B636F6E74656E743A225C65303033227D2E676C7970';
wwv_flow_api.g_varchar2_table(23) := '6869636F6E2D68656172743A6265666F72657B636F6E74656E743A225C65303035227D2E676C79706869636F6E2D737461723A6265666F72657B636F6E74656E743A225C65303036227D2E676C79706869636F6E2D737461722D656D7074793A6265666F';
wwv_flow_api.g_varchar2_table(24) := '72657B636F6E74656E743A225C65303037227D2E676C79706869636F6E2D757365723A6265666F72657B636F6E74656E743A225C65303038227D2E676C79706869636F6E2D66696C6D3A6265666F72657B636F6E74656E743A225C65303039227D2E676C';
wwv_flow_api.g_varchar2_table(25) := '79706869636F6E2D74682D6C617267653A6265666F72657B636F6E74656E743A225C65303130227D2E676C79706869636F6E2D74683A6265666F72657B636F6E74656E743A225C65303131227D2E676C79706869636F6E2D74682D6C6973743A6265666F';
wwv_flow_api.g_varchar2_table(26) := '72657B636F6E74656E743A225C65303132227D2E676C79706869636F6E2D6F6B3A6265666F72657B636F6E74656E743A225C65303133227D2E676C79706869636F6E2D72656D6F76653A6265666F72657B636F6E74656E743A225C65303134227D2E676C';
wwv_flow_api.g_varchar2_table(27) := '79706869636F6E2D7A6F6F6D2D696E3A6265666F72657B636F6E74656E743A225C65303135227D2E676C79706869636F6E2D7A6F6F6D2D6F75743A6265666F72657B636F6E74656E743A225C65303136227D2E676C79706869636F6E2D6F66663A626566';
wwv_flow_api.g_varchar2_table(28) := '6F72657B636F6E74656E743A225C65303137227D2E676C79706869636F6E2D7369676E616C3A6265666F72657B636F6E74656E743A225C65303138227D2E676C79706869636F6E2D636F673A6265666F72657B636F6E74656E743A225C65303139227D2E';
wwv_flow_api.g_varchar2_table(29) := '676C79706869636F6E2D74726173683A6265666F72657B636F6E74656E743A225C65303230227D2E676C79706869636F6E2D686F6D653A6265666F72657B636F6E74656E743A225C65303231227D2E676C79706869636F6E2D66696C653A6265666F7265';
wwv_flow_api.g_varchar2_table(30) := '7B636F6E74656E743A225C65303232227D2E676C79706869636F6E2D74696D653A6265666F72657B636F6E74656E743A225C65303233227D2E676C79706869636F6E2D726F61643A6265666F72657B636F6E74656E743A225C65303234227D2E676C7970';
wwv_flow_api.g_varchar2_table(31) := '6869636F6E2D646F776E6C6F61642D616C743A6265666F72657B636F6E74656E743A225C65303235227D2E676C79706869636F6E2D646F776E6C6F61643A6265666F72657B636F6E74656E743A225C65303236227D2E676C79706869636F6E2D75706C6F';
wwv_flow_api.g_varchar2_table(32) := '61643A6265666F72657B636F6E74656E743A225C65303237227D2E676C79706869636F6E2D696E626F783A6265666F72657B636F6E74656E743A225C65303238227D2E676C79706869636F6E2D706C61792D636972636C653A6265666F72657B636F6E74';
wwv_flow_api.g_varchar2_table(33) := '656E743A225C65303239227D2E676C79706869636F6E2D7265706561743A6265666F72657B636F6E74656E743A225C65303330227D2E676C79706869636F6E2D726566726573683A6265666F72657B636F6E74656E743A225C65303331227D2E676C7970';
wwv_flow_api.g_varchar2_table(34) := '6869636F6E2D6C6973742D616C743A6265666F72657B636F6E74656E743A225C65303332227D2E676C79706869636F6E2D6C6F636B3A6265666F72657B636F6E74656E743A225C65303333227D2E676C79706869636F6E2D666C61673A6265666F72657B';
wwv_flow_api.g_varchar2_table(35) := '636F6E74656E743A225C65303334227D2E676C79706869636F6E2D6865616470686F6E65733A6265666F72657B636F6E74656E743A225C65303335227D2E676C79706869636F6E2D766F6C756D652D6F66663A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(36) := '65303336227D2E676C79706869636F6E2D766F6C756D652D646F776E3A6265666F72657B636F6E74656E743A225C65303337227D2E676C79706869636F6E2D766F6C756D652D75703A6265666F72657B636F6E74656E743A225C65303338227D2E676C79';
wwv_flow_api.g_varchar2_table(37) := '706869636F6E2D7172636F64653A6265666F72657B636F6E74656E743A225C65303339227D2E676C79706869636F6E2D626172636F64653A6265666F72657B636F6E74656E743A225C65303430227D2E676C79706869636F6E2D7461673A6265666F7265';
wwv_flow_api.g_varchar2_table(38) := '7B636F6E74656E743A225C65303431227D2E676C79706869636F6E2D746167733A6265666F72657B636F6E74656E743A225C65303432227D2E676C79706869636F6E2D626F6F6B3A6265666F72657B636F6E74656E743A225C65303433227D2E676C7970';
wwv_flow_api.g_varchar2_table(39) := '6869636F6E2D626F6F6B6D61726B3A6265666F72657B636F6E74656E743A225C65303434227D2E676C79706869636F6E2D7072696E743A6265666F72657B636F6E74656E743A225C65303435227D2E676C79706869636F6E2D63616D6572613A6265666F';
wwv_flow_api.g_varchar2_table(40) := '72657B636F6E74656E743A225C65303436227D2E676C79706869636F6E2D666F6E743A6265666F72657B636F6E74656E743A225C65303437227D2E676C79706869636F6E2D626F6C643A6265666F72657B636F6E74656E743A225C65303438227D2E676C';
wwv_flow_api.g_varchar2_table(41) := '79706869636F6E2D6974616C69633A6265666F72657B636F6E74656E743A225C65303439227D2E676C79706869636F6E2D746578742D6865696768743A6265666F72657B636F6E74656E743A225C65303530227D2E676C79706869636F6E2D746578742D';
wwv_flow_api.g_varchar2_table(42) := '77696474683A6265666F72657B636F6E74656E743A225C65303531227D2E676C79706869636F6E2D616C69676E2D6C6566743A6265666F72657B636F6E74656E743A225C65303532227D2E676C79706869636F6E2D616C69676E2D63656E7465723A6265';
wwv_flow_api.g_varchar2_table(43) := '666F72657B636F6E74656E743A225C65303533227D2E676C79706869636F6E2D616C69676E2D72696768743A6265666F72657B636F6E74656E743A225C65303534227D2E676C79706869636F6E2D616C69676E2D6A7573746966793A6265666F72657B63';
wwv_flow_api.g_varchar2_table(44) := '6F6E74656E743A225C65303535227D2E676C79706869636F6E2D6C6973743A6265666F72657B636F6E74656E743A225C65303536227D2E676C79706869636F6E2D696E64656E742D6C6566743A6265666F72657B636F6E74656E743A225C65303537227D';
wwv_flow_api.g_varchar2_table(45) := '2E676C79706869636F6E2D696E64656E742D72696768743A6265666F72657B636F6E74656E743A225C65303538227D2E676C79706869636F6E2D6661636574696D652D766964656F3A6265666F72657B636F6E74656E743A225C65303539227D2E676C79';
wwv_flow_api.g_varchar2_table(46) := '706869636F6E2D706963747572653A6265666F72657B636F6E74656E743A225C65303630227D2E676C79706869636F6E2D6D61702D6D61726B65723A6265666F72657B636F6E74656E743A225C65303632227D2E676C79706869636F6E2D61646A757374';
wwv_flow_api.g_varchar2_table(47) := '3A6265666F72657B636F6E74656E743A225C65303633227D2E676C79706869636F6E2D74696E743A6265666F72657B636F6E74656E743A225C65303634227D2E676C79706869636F6E2D656469743A6265666F72657B636F6E74656E743A225C65303635';
wwv_flow_api.g_varchar2_table(48) := '227D2E676C79706869636F6E2D73686172653A6265666F72657B636F6E74656E743A225C65303636227D2E676C79706869636F6E2D636865636B3A6265666F72657B636F6E74656E743A225C65303637227D2E676C79706869636F6E2D6D6F76653A6265';
wwv_flow_api.g_varchar2_table(49) := '666F72657B636F6E74656E743A225C65303638227D2E676C79706869636F6E2D737465702D6261636B776172643A6265666F72657B636F6E74656E743A225C65303639227D2E676C79706869636F6E2D666173742D6261636B776172643A6265666F7265';
wwv_flow_api.g_varchar2_table(50) := '7B636F6E74656E743A225C65303730227D2E676C79706869636F6E2D6261636B776172643A6265666F72657B636F6E74656E743A225C65303731227D2E676C79706869636F6E2D706C61793A6265666F72657B636F6E74656E743A225C65303732227D2E';
wwv_flow_api.g_varchar2_table(51) := '676C79706869636F6E2D70617573653A6265666F72657B636F6E74656E743A225C65303733227D2E676C79706869636F6E2D73746F703A6265666F72657B636F6E74656E743A225C65303734227D2E676C79706869636F6E2D666F72776172643A626566';
wwv_flow_api.g_varchar2_table(52) := '6F72657B636F6E74656E743A225C65303735227D2E676C79706869636F6E2D666173742D666F72776172643A6265666F72657B636F6E74656E743A225C65303736227D2E676C79706869636F6E2D737465702D666F72776172643A6265666F72657B636F';
wwv_flow_api.g_varchar2_table(53) := '6E74656E743A225C65303737227D2E676C79706869636F6E2D656A6563743A6265666F72657B636F6E74656E743A225C65303738227D2E676C79706869636F6E2D63686576726F6E2D6C6566743A6265666F72657B636F6E74656E743A225C6530373922';
wwv_flow_api.g_varchar2_table(54) := '7D2E676C79706869636F6E2D63686576726F6E2D72696768743A6265666F72657B636F6E74656E743A225C65303830227D2E676C79706869636F6E2D706C75732D7369676E3A6265666F72657B636F6E74656E743A225C65303831227D2E676C79706869';
wwv_flow_api.g_varchar2_table(55) := '636F6E2D6D696E75732D7369676E3A6265666F72657B636F6E74656E743A225C65303832227D2E676C79706869636F6E2D72656D6F76652D7369676E3A6265666F72657B636F6E74656E743A225C65303833227D2E676C79706869636F6E2D6F6B2D7369';
wwv_flow_api.g_varchar2_table(56) := '676E3A6265666F72657B636F6E74656E743A225C65303834227D2E676C79706869636F6E2D7175657374696F6E2D7369676E3A6265666F72657B636F6E74656E743A225C65303835227D2E676C79706869636F6E2D696E666F2D7369676E3A6265666F72';
wwv_flow_api.g_varchar2_table(57) := '657B636F6E74656E743A225C65303836227D2E676C79706869636F6E2D73637265656E73686F743A6265666F72657B636F6E74656E743A225C65303837227D2E676C79706869636F6E2D72656D6F76652D636972636C653A6265666F72657B636F6E7465';
wwv_flow_api.g_varchar2_table(58) := '6E743A225C65303838227D2E676C79706869636F6E2D6F6B2D636972636C653A6265666F72657B636F6E74656E743A225C65303839227D2E676C79706869636F6E2D62616E2D636972636C653A6265666F72657B636F6E74656E743A225C65303930227D';
wwv_flow_api.g_varchar2_table(59) := '2E676C79706869636F6E2D6172726F772D6C6566743A6265666F72657B636F6E74656E743A225C65303931227D2E676C79706869636F6E2D6172726F772D72696768743A6265666F72657B636F6E74656E743A225C65303932227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(60) := '6E2D6172726F772D75703A6265666F72657B636F6E74656E743A225C65303933227D2E676C79706869636F6E2D6172726F772D646F776E3A6265666F72657B636F6E74656E743A225C65303934227D2E676C79706869636F6E2D73686172652D616C743A';
wwv_flow_api.g_varchar2_table(61) := '6265666F72657B636F6E74656E743A225C65303935227D2E676C79706869636F6E2D726573697A652D66756C6C3A6265666F72657B636F6E74656E743A225C65303936227D2E676C79706869636F6E2D726573697A652D736D616C6C3A6265666F72657B';
wwv_flow_api.g_varchar2_table(62) := '636F6E74656E743A225C65303937227D2E676C79706869636F6E2D6578636C616D6174696F6E2D7369676E3A6265666F72657B636F6E74656E743A225C65313031227D2E676C79706869636F6E2D676966743A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(63) := '65313032227D2E676C79706869636F6E2D6C6561663A6265666F72657B636F6E74656E743A225C65313033227D2E676C79706869636F6E2D666972653A6265666F72657B636F6E74656E743A225C65313034227D2E676C79706869636F6E2D6579652D6F';
wwv_flow_api.g_varchar2_table(64) := '70656E3A6265666F72657B636F6E74656E743A225C65313035227D2E676C79706869636F6E2D6579652D636C6F73653A6265666F72657B636F6E74656E743A225C65313036227D2E676C79706869636F6E2D7761726E696E672D7369676E3A6265666F72';
wwv_flow_api.g_varchar2_table(65) := '657B636F6E74656E743A225C65313037227D2E676C79706869636F6E2D706C616E653A6265666F72657B636F6E74656E743A225C65313038227D2E676C79706869636F6E2D63616C656E6461723A6265666F72657B636F6E74656E743A225C6531303922';
wwv_flow_api.g_varchar2_table(66) := '7D2E676C79706869636F6E2D72616E646F6D3A6265666F72657B636F6E74656E743A225C65313130227D2E676C79706869636F6E2D636F6D6D656E743A6265666F72657B636F6E74656E743A225C65313131227D2E676C79706869636F6E2D6D61676E65';
wwv_flow_api.g_varchar2_table(67) := '743A6265666F72657B636F6E74656E743A225C65313132227D2E676C79706869636F6E2D63686576726F6E2D75703A6265666F72657B636F6E74656E743A225C65313133227D2E676C79706869636F6E2D63686576726F6E2D646F776E3A6265666F7265';
wwv_flow_api.g_varchar2_table(68) := '7B636F6E74656E743A225C65313134227D2E676C79706869636F6E2D726574776565743A6265666F72657B636F6E74656E743A225C65313135227D2E676C79706869636F6E2D73686F7070696E672D636172743A6265666F72657B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(69) := '5C65313136227D2E676C79706869636F6E2D666F6C6465722D636C6F73653A6265666F72657B636F6E74656E743A225C65313137227D2E676C79706869636F6E2D666F6C6465722D6F70656E3A6265666F72657B636F6E74656E743A225C65313138227D';
wwv_flow_api.g_varchar2_table(70) := '2E676C79706869636F6E2D726573697A652D766572746963616C3A6265666F72657B636F6E74656E743A225C65313139227D2E676C79706869636F6E2D726573697A652D686F72697A6F6E74616C3A6265666F72657B636F6E74656E743A225C65313230';
wwv_flow_api.g_varchar2_table(71) := '227D2E676C79706869636F6E2D6864643A6265666F72657B636F6E74656E743A225C65313231227D2E676C79706869636F6E2D62756C6C686F726E3A6265666F72657B636F6E74656E743A225C65313232227D2E676C79706869636F6E2D62656C6C3A62';
wwv_flow_api.g_varchar2_table(72) := '65666F72657B636F6E74656E743A225C65313233227D2E676C79706869636F6E2D63657274696669636174653A6265666F72657B636F6E74656E743A225C65313234227D2E676C79706869636F6E2D7468756D62732D75703A6265666F72657B636F6E74';
wwv_flow_api.g_varchar2_table(73) := '656E743A225C65313235227D2E676C79706869636F6E2D7468756D62732D646F776E3A6265666F72657B636F6E74656E743A225C65313236227D2E676C79706869636F6E2D68616E642D72696768743A6265666F72657B636F6E74656E743A225C653132';
wwv_flow_api.g_varchar2_table(74) := '37227D2E676C79706869636F6E2D68616E642D6C6566743A6265666F72657B636F6E74656E743A225C65313238227D2E676C79706869636F6E2D68616E642D75703A6265666F72657B636F6E74656E743A225C65313239227D2E676C79706869636F6E2D';
wwv_flow_api.g_varchar2_table(75) := '68616E642D646F776E3A6265666F72657B636F6E74656E743A225C65313330227D2E676C79706869636F6E2D636972636C652D6172726F772D72696768743A6265666F72657B636F6E74656E743A225C65313331227D2E676C79706869636F6E2D636972';
wwv_flow_api.g_varchar2_table(76) := '636C652D6172726F772D6C6566743A6265666F72657B636F6E74656E743A225C65313332227D2E676C79706869636F6E2D636972636C652D6172726F772D75703A6265666F72657B636F6E74656E743A225C65313333227D2E676C79706869636F6E2D63';
wwv_flow_api.g_varchar2_table(77) := '6972636C652D6172726F772D646F776E3A6265666F72657B636F6E74656E743A225C65313334227D2E676C79706869636F6E2D676C6F62653A6265666F72657B636F6E74656E743A225C65313335227D2E676C79706869636F6E2D7772656E63683A6265';
wwv_flow_api.g_varchar2_table(78) := '666F72657B636F6E74656E743A225C65313336227D2E676C79706869636F6E2D7461736B733A6265666F72657B636F6E74656E743A225C65313337227D2E676C79706869636F6E2D66696C7465723A6265666F72657B636F6E74656E743A225C65313338';
wwv_flow_api.g_varchar2_table(79) := '227D2E676C79706869636F6E2D6272696566636173653A6265666F72657B636F6E74656E743A225C65313339227D2E676C79706869636F6E2D66756C6C73637265656E3A6265666F72657B636F6E74656E743A225C65313430227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(80) := '6E2D64617368626F6172643A6265666F72657B636F6E74656E743A225C65313431227D2E676C79706869636F6E2D7061706572636C69703A6265666F72657B636F6E74656E743A225C65313432227D2E676C79706869636F6E2D68656172742D656D7074';
wwv_flow_api.g_varchar2_table(81) := '793A6265666F72657B636F6E74656E743A225C65313433227D2E676C79706869636F6E2D6C696E6B3A6265666F72657B636F6E74656E743A225C65313434227D2E676C79706869636F6E2D70686F6E653A6265666F72657B636F6E74656E743A225C6531';
wwv_flow_api.g_varchar2_table(82) := '3435227D2E676C79706869636F6E2D7075736870696E3A6265666F72657B636F6E74656E743A225C65313436227D2E676C79706869636F6E2D7573643A6265666F72657B636F6E74656E743A225C65313438227D2E676C79706869636F6E2D6762703A62';
wwv_flow_api.g_varchar2_table(83) := '65666F72657B636F6E74656E743A225C65313439227D2E676C79706869636F6E2D736F72743A6265666F72657B636F6E74656E743A225C65313530227D2E676C79706869636F6E2D736F72742D62792D616C7068616265743A6265666F72657B636F6E74';
wwv_flow_api.g_varchar2_table(84) := '656E743A225C65313531227D2E676C79706869636F6E2D736F72742D62792D616C7068616265742D616C743A6265666F72657B636F6E74656E743A225C65313532227D2E676C79706869636F6E2D736F72742D62792D6F726465723A6265666F72657B63';
wwv_flow_api.g_varchar2_table(85) := '6F6E74656E743A225C65313533227D2E676C79706869636F6E2D736F72742D62792D6F726465722D616C743A6265666F72657B636F6E74656E743A225C65313534227D2E676C79706869636F6E2D736F72742D62792D617474726962757465733A626566';
wwv_flow_api.g_varchar2_table(86) := '6F72657B636F6E74656E743A225C65313535227D2E676C79706869636F6E2D736F72742D62792D617474726962757465732D616C743A6265666F72657B636F6E74656E743A225C65313536227D2E676C79706869636F6E2D756E636865636B65643A6265';
wwv_flow_api.g_varchar2_table(87) := '666F72657B636F6E74656E743A225C65313537227D2E676C79706869636F6E2D657870616E643A6265666F72657B636F6E74656E743A225C65313538227D2E676C79706869636F6E2D636F6C6C617073652D646F776E3A6265666F72657B636F6E74656E';
wwv_flow_api.g_varchar2_table(88) := '743A225C65313539227D2E676C79706869636F6E2D636F6C6C617073652D75703A6265666F72657B636F6E74656E743A225C65313630227D2E676C79706869636F6E2D6C6F672D696E3A6265666F72657B636F6E74656E743A225C65313631227D2E676C';
wwv_flow_api.g_varchar2_table(89) := '79706869636F6E2D666C6173683A6265666F72657B636F6E74656E743A225C65313632227D2E676C79706869636F6E2D6C6F672D6F75743A6265666F72657B636F6E74656E743A225C65313633227D2E676C79706869636F6E2D6E65772D77696E646F77';
wwv_flow_api.g_varchar2_table(90) := '3A6265666F72657B636F6E74656E743A225C65313634227D2E676C79706869636F6E2D7265636F72643A6265666F72657B636F6E74656E743A225C65313635227D2E676C79706869636F6E2D736176653A6265666F72657B636F6E74656E743A225C6531';
wwv_flow_api.g_varchar2_table(91) := '3636227D2E676C79706869636F6E2D6F70656E3A6265666F72657B636F6E74656E743A225C65313637227D2E676C79706869636F6E2D73617665643A6265666F72657B636F6E74656E743A225C65313638227D2E676C79706869636F6E2D696D706F7274';
wwv_flow_api.g_varchar2_table(92) := '3A6265666F72657B636F6E74656E743A225C65313639227D2E676C79706869636F6E2D6578706F72743A6265666F72657B636F6E74656E743A225C65313730227D2E676C79706869636F6E2D73656E643A6265666F72657B636F6E74656E743A225C6531';
wwv_flow_api.g_varchar2_table(93) := '3731227D2E676C79706869636F6E2D666C6F7070792D6469736B3A6265666F72657B636F6E74656E743A225C65313732227D2E676C79706869636F6E2D666C6F7070792D73617665643A6265666F72657B636F6E74656E743A225C65313733227D2E676C';
wwv_flow_api.g_varchar2_table(94) := '79706869636F6E2D666C6F7070792D72656D6F76653A6265666F72657B636F6E74656E743A225C65313734227D2E676C79706869636F6E2D666C6F7070792D736176653A6265666F72657B636F6E74656E743A225C65313735227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(95) := '6E2D666C6F7070792D6F70656E3A6265666F72657B636F6E74656E743A225C65313736227D2E676C79706869636F6E2D6372656469742D636172643A6265666F72657B636F6E74656E743A225C65313737227D2E676C79706869636F6E2D7472616E7366';
wwv_flow_api.g_varchar2_table(96) := '65723A6265666F72657B636F6E74656E743A225C65313738227D2E676C79706869636F6E2D6375746C6572793A6265666F72657B636F6E74656E743A225C65313739227D2E676C79706869636F6E2D6865616465723A6265666F72657B636F6E74656E74';
wwv_flow_api.g_varchar2_table(97) := '3A225C65313830227D2E676C79706869636F6E2D636F6D707265737365643A6265666F72657B636F6E74656E743A225C65313831227D2E676C79706869636F6E2D65617270686F6E653A6265666F72657B636F6E74656E743A225C65313832227D2E676C';
wwv_flow_api.g_varchar2_table(98) := '79706869636F6E2D70686F6E652D616C743A6265666F72657B636F6E74656E743A225C65313833227D2E676C79706869636F6E2D746F7765723A6265666F72657B636F6E74656E743A225C65313834227D2E676C79706869636F6E2D73746174733A6265';
wwv_flow_api.g_varchar2_table(99) := '666F72657B636F6E74656E743A225C65313835227D2E676C79706869636F6E2D73642D766964656F3A6265666F72657B636F6E74656E743A225C65313836227D2E676C79706869636F6E2D68642D766964656F3A6265666F72657B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(100) := '5C65313837227D2E676C79706869636F6E2D7375627469746C65733A6265666F72657B636F6E74656E743A225C65313838227D2E676C79706869636F6E2D736F756E642D73746572656F3A6265666F72657B636F6E74656E743A225C65313839227D2E67';
wwv_flow_api.g_varchar2_table(101) := '6C79706869636F6E2D736F756E642D646F6C62793A6265666F72657B636F6E74656E743A225C65313930227D2E676C79706869636F6E2D736F756E642D352D313A6265666F72657B636F6E74656E743A225C65313931227D2E676C79706869636F6E2D73';
wwv_flow_api.g_varchar2_table(102) := '6F756E642D362D313A6265666F72657B636F6E74656E743A225C65313932227D2E676C79706869636F6E2D736F756E642D372D313A6265666F72657B636F6E74656E743A225C65313933227D2E676C79706869636F6E2D636F707972696768742D6D6172';
wwv_flow_api.g_varchar2_table(103) := '6B3A6265666F72657B636F6E74656E743A225C65313934227D2E676C79706869636F6E2D726567697374726174696F6E2D6D61726B3A6265666F72657B636F6E74656E743A225C65313935227D2E676C79706869636F6E2D636C6F75642D646F776E6C6F';
wwv_flow_api.g_varchar2_table(104) := '61643A6265666F72657B636F6E74656E743A225C65313937227D2E676C79706869636F6E2D636C6F75642D75706C6F61643A6265666F72657B636F6E74656E743A225C65313938227D2E676C79706869636F6E2D747265652D636F6E696665723A626566';
wwv_flow_api.g_varchar2_table(105) := '6F72657B636F6E74656E743A225C65313939227D2E676C79706869636F6E2D747265652D6465636964756F75733A6265666F72657B636F6E74656E743A225C65323030227D2E676C79706869636F6E2D63643A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(106) := '65323031227D2E676C79706869636F6E2D736176652D66696C653A6265666F72657B636F6E74656E743A225C65323032227D2E676C79706869636F6E2D6F70656E2D66696C653A6265666F72657B636F6E74656E743A225C65323033227D2E676C797068';
wwv_flow_api.g_varchar2_table(107) := '69636F6E2D6C6576656C2D75703A6265666F72657B636F6E74656E743A225C65323034227D2E676C79706869636F6E2D636F70793A6265666F72657B636F6E74656E743A225C65323035227D2E676C79706869636F6E2D70617374653A6265666F72657B';
wwv_flow_api.g_varchar2_table(108) := '636F6E74656E743A225C65323036227D2E676C79706869636F6E2D616C6572743A6265666F72657B636F6E74656E743A225C65323039227D2E676C79706869636F6E2D657175616C697A65723A6265666F72657B636F6E74656E743A225C65323130227D';
wwv_flow_api.g_varchar2_table(109) := '2E676C79706869636F6E2D6B696E673A6265666F72657B636F6E74656E743A225C65323131227D2E676C79706869636F6E2D717565656E3A6265666F72657B636F6E74656E743A225C65323132227D2E676C79706869636F6E2D7061776E3A6265666F72';
wwv_flow_api.g_varchar2_table(110) := '657B636F6E74656E743A225C65323133227D2E676C79706869636F6E2D626973686F703A6265666F72657B636F6E74656E743A225C65323134227D2E676C79706869636F6E2D6B6E696768743A6265666F72657B636F6E74656E743A225C65323135227D';
wwv_flow_api.g_varchar2_table(111) := '2E676C79706869636F6E2D626162792D666F726D756C613A6265666F72657B636F6E74656E743A225C65323136227D2E676C79706869636F6E2D74656E743A6265666F72657B636F6E74656E743A225C32366661227D2E676C79706869636F6E2D626C61';
wwv_flow_api.g_varchar2_table(112) := '636B626F6172643A6265666F72657B636F6E74656E743A225C65323138227D2E676C79706869636F6E2D6265643A6265666F72657B636F6E74656E743A225C65323139227D2E676C79706869636F6E2D6170706C653A6265666F72657B636F6E74656E74';
wwv_flow_api.g_varchar2_table(113) := '3A225C66386666227D2E676C79706869636F6E2D65726173653A6265666F72657B636F6E74656E743A225C65323231227D2E676C79706869636F6E2D686F7572676C6173733A6265666F72657B636F6E74656E743A225C32333162227D2E676C79706869';
wwv_flow_api.g_varchar2_table(114) := '636F6E2D6C616D703A6265666F72657B636F6E74656E743A225C65323233227D2E676C79706869636F6E2D6475706C69636174653A6265666F72657B636F6E74656E743A225C65323234227D2E676C79706869636F6E2D70696767792D62616E6B3A6265';
wwv_flow_api.g_varchar2_table(115) := '666F72657B636F6E74656E743A225C65323235227D2E676C79706869636F6E2D73636973736F72733A6265666F72657B636F6E74656E743A225C65323236227D2E676C79706869636F6E2D626974636F696E3A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(116) := '65323237227D2E676C79706869636F6E2D6274633A6265666F72657B636F6E74656E743A225C65323237227D2E676C79706869636F6E2D7862743A6265666F72657B636F6E74656E743A225C65323237227D2E676C79706869636F6E2D79656E3A626566';
wwv_flow_api.g_varchar2_table(117) := '6F72657B636F6E74656E743A225C30306135227D2E676C79706869636F6E2D6A70793A6265666F72657B636F6E74656E743A225C30306135227D2E676C79706869636F6E2D7275626C653A6265666F72657B636F6E74656E743A225C32306264227D2E67';
wwv_flow_api.g_varchar2_table(118) := '6C79706869636F6E2D7275623A6265666F72657B636F6E74656E743A225C32306264227D2E676C79706869636F6E2D7363616C653A6265666F72657B636F6E74656E743A225C65323330227D2E676C79706869636F6E2D6963652D6C6F6C6C793A626566';
wwv_flow_api.g_varchar2_table(119) := '6F72657B636F6E74656E743A225C65323331227D2E676C79706869636F6E2D6963652D6C6F6C6C792D7461737465643A6265666F72657B636F6E74656E743A225C65323332227D2E676C79706869636F6E2D656475636174696F6E3A6265666F72657B63';
wwv_flow_api.g_varchar2_table(120) := '6F6E74656E743A225C65323333227D2E676C79706869636F6E2D6F7074696F6E2D686F72697A6F6E74616C3A6265666F72657B636F6E74656E743A225C65323334227D2E676C79706869636F6E2D6F7074696F6E2D766572746963616C3A6265666F7265';
wwv_flow_api.g_varchar2_table(121) := '7B636F6E74656E743A225C65323335227D2E676C79706869636F6E2D6D656E752D68616D6275726765723A6265666F72657B636F6E74656E743A225C65323336227D2E676C79706869636F6E2D6D6F64616C2D77696E646F773A6265666F72657B636F6E';
wwv_flow_api.g_varchar2_table(122) := '74656E743A225C65323337227D2E676C79706869636F6E2D6F696C3A6265666F72657B636F6E74656E743A225C65323338227D2E676C79706869636F6E2D677261696E3A6265666F72657B636F6E74656E743A225C65323339227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(123) := '6E2D73756E676C61737365733A6265666F72657B636F6E74656E743A225C65323430227D2E676C79706869636F6E2D746578742D73697A653A6265666F72657B636F6E74656E743A225C65323431227D2E676C79706869636F6E2D746578742D636F6C6F';
wwv_flow_api.g_varchar2_table(124) := '723A6265666F72657B636F6E74656E743A225C65323432227D2E676C79706869636F6E2D746578742D6261636B67726F756E643A6265666F72657B636F6E74656E743A225C65323433227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D74';
wwv_flow_api.g_varchar2_table(125) := '6F703A6265666F72657B636F6E74656E743A225C65323434227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D626F74746F6D3A6265666F72657B636F6E74656E743A225C65323435227D2E676C79706869636F6E2D6F626A6563742D616C';
wwv_flow_api.g_varchar2_table(126) := '69676E2D686F72697A6F6E74616C3A6265666F72657B636F6E74656E743A225C65323436227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D6C6566743A6265666F72657B636F6E74656E743A225C65323437227D2E676C79706869636F6E';
wwv_flow_api.g_varchar2_table(127) := '2D6F626A6563742D616C69676E2D766572746963616C3A6265666F72657B636F6E74656E743A225C65323438227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D72696768743A6265666F72657B636F6E74656E743A225C65323439227D2E';
wwv_flow_api.g_varchar2_table(128) := '676C79706869636F6E2D747269616E676C652D72696768743A6265666F72657B636F6E74656E743A225C65323530227D2E676C79706869636F6E2D747269616E676C652D6C6566743A6265666F72657B636F6E74656E743A225C65323531227D2E676C79';
wwv_flow_api.g_varchar2_table(129) := '706869636F6E2D747269616E676C652D626F74746F6D3A6265666F72657B636F6E74656E743A225C65323532227D2E676C79706869636F6E2D747269616E676C652D746F703A6265666F72657B636F6E74656E743A225C65323533227D2E676C79706869';
wwv_flow_api.g_varchar2_table(130) := '636F6E2D636F6E736F6C653A6265666F72657B636F6E74656E743A225C65323534227D2E676C79706869636F6E2D73757065727363726970743A6265666F72657B636F6E74656E743A225C65323535227D2E676C79706869636F6E2D7375627363726970';
wwv_flow_api.g_varchar2_table(131) := '743A6265666F72657B636F6E74656E743A225C65323536227D2E676C79706869636F6E2D6D656E752D6C6566743A6265666F72657B636F6E74656E743A225C65323537227D2E676C79706869636F6E2D6D656E752D72696768743A6265666F72657B636F';
wwv_flow_api.g_varchar2_table(132) := '6E74656E743A225C65323538227D2E676C79706869636F6E2D6D656E752D646F776E3A6265666F72657B636F6E74656E743A225C65323539227D2E676C79706869636F6E2D6D656E752D75703A6265666F72657B636F6E74656E743A225C65323630227D';
wwv_flow_api.g_varchar2_table(133) := '2E62746E7B646973706C61793A696E6C696E652D626C6F636B3B6D617267696E2D626F74746F6D3A303B666F6E742D7765696768743A6E6F726D616C3B746578742D616C69676E3A63656E7465723B766572746963616C2D616C69676E3A6D6964646C65';
wwv_flow_api.g_varchar2_table(134) := '3B746F7563682D616374696F6E3A6D616E6970756C6174696F6E3B637572736F723A706F696E7465723B6261636B67726F756E642D696D6167653A6E6F6E653B626F726465723A31707820736F6C6964207472616E73706172656E743B77686974652D73';
wwv_flow_api.g_varchar2_table(135) := '706163653A6E6F777261703B70616464696E673A36707820313270783B666F6E742D73697A653A313470783B6C696E652D6865696768743A312E34323835373134333B626F726465722D7261646975733A3470783B2D7765626B69742D757365722D7365';
wwv_flow_api.g_varchar2_table(136) := '6C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E657D2E62746E3A666F6375732C2E62746E3A6163746976653A666F6375732C2E';
wwv_flow_api.g_varchar2_table(137) := '62746E2E6163746976653A666F6375732C2E62746E2E666F6375732C2E62746E3A6163746976652E666F6375732C2E62746E2E6163746976652E666F6375737B6F75746C696E653A7468696E20646F747465643B6F75746C696E653A357078206175746F';
wwv_flow_api.g_varchar2_table(138) := '202D7765626B69742D666F6375732D72696E672D636F6C6F723B6F75746C696E652D6F66667365743A2D3270787D2E62746E3A686F7665722C2E62746E3A666F6375732C2E62746E2E666F6375737B636F6C6F723A233333333B746578742D6465636F72';
wwv_flow_api.g_varchar2_table(139) := '6174696F6E3A6E6F6E657D2E62746E3A6163746976652C2E62746E2E6163746976657B6F75746C696E653A303B6261636B67726F756E642D696D6167653A6E6F6E653B2D7765626B69742D626F782D736861646F773A696E736574203020337078203570';
wwv_flow_api.g_varchar2_table(140) := '78207267626128302C302C302C302E313235293B626F782D736861646F773A696E73657420302033707820357078207267626128302C302C302C302E313235297D2E62746E2E64697361626C65642C2E62746E5B64697361626C65645D2C6669656C6473';
wwv_flow_api.g_varchar2_table(141) := '65745B64697361626C65645D202E62746E7B637572736F723A6E6F742D616C6C6F7765643B6F7061636974793A2E36353B66696C7465723A616C706861286F7061636974793D3635293B2D7765626B69742D626F782D736861646F773A6E6F6E653B626F';
wwv_flow_api.g_varchar2_table(142) := '782D736861646F773A6E6F6E657D612E62746E2E64697361626C65642C6669656C647365745B64697361626C65645D20612E62746E7B706F696E7465722D6576656E74733A6E6F6E657D2E62746E2D64656661756C747B636F6C6F723A233333333B6261';
wwv_flow_api.g_varchar2_table(143) := '636B67726F756E642D636F6C6F723A236666663B626F726465722D636F6C6F723A236363637D2E62746E2D64656661756C743A666F6375732C2E62746E2D64656661756C742E666F6375737B636F6C6F723A233333333B6261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(144) := '6C6F723A236536653665363B626F726465722D636F6C6F723A233863386338637D2E62746E2D64656661756C743A686F7665727B636F6C6F723A233333333B6261636B67726F756E642D636F6C6F723A236536653665363B626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(145) := '3A236164616461647D2E62746E2D64656661756C743A6163746976652C2E62746E2D64656661756C742E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64656661756C747B636F6C6F723A233333333B6261636B67';
wwv_flow_api.g_varchar2_table(146) := '726F756E642D636F6C6F723A236536653665363B626F726465722D636F6C6F723A236164616461647D2E62746E2D64656661756C743A6163746976653A686F7665722C2E62746E2D64656661756C742E6163746976653A686F7665722C2E6F70656E3E2E';
wwv_flow_api.g_varchar2_table(147) := '64726F70646F776E2D746F67676C652E62746E2D64656661756C743A686F7665722C2E62746E2D64656661756C743A6163746976653A666F6375732C2E62746E2D64656661756C742E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F77';
wwv_flow_api.g_varchar2_table(148) := '6E2D746F67676C652E62746E2D64656661756C743A666F6375732C2E62746E2D64656661756C743A6163746976652E666F6375732C2E62746E2D64656661756C742E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C';
wwv_flow_api.g_varchar2_table(149) := '652E62746E2D64656661756C742E666F6375737B636F6C6F723A233333333B6261636B67726F756E642D636F6C6F723A236434643464343B626F726465722D636F6C6F723A233863386338637D2E62746E2D64656661756C743A6163746976652C2E6274';
wwv_flow_api.g_varchar2_table(150) := '6E2D64656661756C742E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64656661756C747B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D64656661756C742E64697361626C65643A686F7665';
wwv_flow_api.g_varchar2_table(151) := '722C2E62746E2D64656661756C745B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D64656661756C743A686F7665722C2E62746E2D64656661756C742E64697361626C65643A666F6375732C2E6274';
wwv_flow_api.g_varchar2_table(152) := '6E2D64656661756C745B64697361626C65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64656661756C743A666F6375732C2E62746E2D64656661756C742E64697361626C65642E666F6375732C2E62746E2D646566';
wwv_flow_api.g_varchar2_table(153) := '61756C745B64697361626C65645D2E666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64656661756C742E666F6375737B6261636B67726F756E642D636F6C6F723A236666663B626F726465722D636F6C6F723A236363637D2E';
wwv_flow_api.g_varchar2_table(154) := '62746E2D64656661756C74202E62616467657B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233333337D2E62746E2D7072696D6172797B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A23333337616237';
wwv_flow_api.g_varchar2_table(155) := '3B626F726465722D636F6C6F723A233265366461347D2E62746E2D7072696D6172793A666F6375732C2E62746E2D7072696D6172792E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233238363039303B626F7264';
wwv_flow_api.g_varchar2_table(156) := '65722D636F6C6F723A233132326234307D2E62746E2D7072696D6172793A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233238363039303B626F726465722D636F6C6F723A233230346437347D2E62746E2D7072';
wwv_flow_api.g_varchar2_table(157) := '696D6172793A6163746976652C2E62746E2D7072696D6172792E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7072696D6172797B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A23323836';
wwv_flow_api.g_varchar2_table(158) := '3039303B626F726465722D636F6C6F723A233230346437347D2E62746E2D7072696D6172793A6163746976653A686F7665722C2E62746E2D7072696D6172792E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E';
wwv_flow_api.g_varchar2_table(159) := '62746E2D7072696D6172793A686F7665722C2E62746E2D7072696D6172793A6163746976653A666F6375732C2E62746E2D7072696D6172792E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D707269';
wwv_flow_api.g_varchar2_table(160) := '6D6172793A666F6375732C2E62746E2D7072696D6172793A6163746976652E666F6375732C2E62746E2D7072696D6172792E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7072696D6172792E666F';
wwv_flow_api.g_varchar2_table(161) := '6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233230346437343B626F726465722D636F6C6F723A233132326234307D2E62746E2D7072696D6172793A6163746976652C2E62746E2D7072696D6172792E616374697665';
wwv_flow_api.g_varchar2_table(162) := '2C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7072696D6172797B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D7072696D6172792E64697361626C65643A686F7665722C2E62746E2D7072696D6172795B64';
wwv_flow_api.g_varchar2_table(163) := '697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D7072696D6172793A686F7665722C2E62746E2D7072696D6172792E64697361626C65643A666F6375732C2E62746E2D7072696D6172795B64697361626C';
wwv_flow_api.g_varchar2_table(164) := '65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D7072696D6172793A666F6375732C2E62746E2D7072696D6172792E64697361626C65642E666F6375732C2E62746E2D7072696D6172795B64697361626C65645D2E66';
wwv_flow_api.g_varchar2_table(165) := '6F6375732C6669656C647365745B64697361626C65645D202E62746E2D7072696D6172792E666F6375737B6261636B67726F756E642D636F6C6F723A233333376162373B626F726465722D636F6C6F723A233265366461347D2E62746E2D7072696D6172';
wwv_flow_api.g_varchar2_table(166) := '79202E62616467657B636F6C6F723A233333376162373B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D737563636573737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233563623835633B626F72646572';
wwv_flow_api.g_varchar2_table(167) := '2D636F6C6F723A233463616534637D2E62746E2D737563636573733A666F6375732C2E62746E2D737563636573732E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233434396434343B626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(168) := '723A233235353632357D2E62746E2D737563636573733A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233434396434343B626F726465722D636F6C6F723A233339383433397D2E62746E2D737563636573733A61';
wwv_flow_api.g_varchar2_table(169) := '63746976652C2E62746E2D737563636573732E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563636573737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233434396434343B626F72';
wwv_flow_api.g_varchar2_table(170) := '6465722D636F6C6F723A233339383433397D2E62746E2D737563636573733A6163746976653A686F7665722C2E62746E2D737563636573732E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563';
wwv_flow_api.g_varchar2_table(171) := '636573733A686F7665722C2E62746E2D737563636573733A6163746976653A666F6375732C2E62746E2D737563636573732E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563636573733A666F';
wwv_flow_api.g_varchar2_table(172) := '6375732C2E62746E2D737563636573733A6163746976652E666F6375732C2E62746E2D737563636573732E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563636573732E666F6375737B636F6C';
wwv_flow_api.g_varchar2_table(173) := '6F723A236666663B6261636B67726F756E642D636F6C6F723A233339383433393B626F726465722D636F6C6F723A233235353632357D2E62746E2D737563636573733A6163746976652C2E62746E2D737563636573732E6163746976652C2E6F70656E3E';
wwv_flow_api.g_varchar2_table(174) := '2E64726F70646F776E2D746F67676C652E62746E2D737563636573737B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D737563636573732E64697361626C65643A686F7665722C2E62746E2D737563636573735B64697361626C6564';
wwv_flow_api.g_varchar2_table(175) := '5D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D737563636573733A686F7665722C2E62746E2D737563636573732E64697361626C65643A666F6375732C2E62746E2D737563636573735B64697361626C65645D3A666F63';
wwv_flow_api.g_varchar2_table(176) := '75732C6669656C647365745B64697361626C65645D202E62746E2D737563636573733A666F6375732C2E62746E2D737563636573732E64697361626C65642E666F6375732C2E62746E2D737563636573735B64697361626C65645D2E666F6375732C6669';
wwv_flow_api.g_varchar2_table(177) := '656C647365745B64697361626C65645D202E62746E2D737563636573732E666F6375737B6261636B67726F756E642D636F6C6F723A233563623835633B626F726465722D636F6C6F723A233463616534637D2E62746E2D73756363657373202E62616467';
wwv_flow_api.g_varchar2_table(178) := '657B636F6C6F723A233563623835633B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D696E666F7B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233562633064653B626F726465722D636F6C6F723A233436';
wwv_flow_api.g_varchar2_table(179) := '623864617D2E62746E2D696E666F3A666F6375732C2E62746E2D696E666F2E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233331623064353B626F726465722D636F6C6F723A233162366438357D2E62746E2D69';
wwv_flow_api.g_varchar2_table(180) := '6E666F3A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233331623064353B626F726465722D636F6C6F723A233236396162637D2E62746E2D696E666F3A6163746976652C2E62746E2D696E666F2E616374697665';
wwv_flow_api.g_varchar2_table(181) := '2C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F7B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233331623064353B626F726465722D636F6C6F723A233236396162637D2E62746E2D696E666F3A';
wwv_flow_api.g_varchar2_table(182) := '6163746976653A686F7665722C2E62746E2D696E666F2E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F3A686F7665722C2E62746E2D696E666F3A6163746976653A666F6375732C2E6274';
wwv_flow_api.g_varchar2_table(183) := '6E2D696E666F2E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F3A666F6375732C2E62746E2D696E666F3A6163746976652E666F6375732C2E62746E2D696E666F2E6163746976652E666F';
wwv_flow_api.g_varchar2_table(184) := '6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F2E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233236396162633B626F726465722D636F6C6F723A233162366438357D2E';
wwv_flow_api.g_varchar2_table(185) := '62746E2D696E666F3A6163746976652C2E62746E2D696E666F2E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F7B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D696E666F2E646973';
wwv_flow_api.g_varchar2_table(186) := '61626C65643A686F7665722C2E62746E2D696E666F5B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D696E666F3A686F7665722C2E62746E2D696E666F2E64697361626C65643A666F6375732C2E62';
wwv_flow_api.g_varchar2_table(187) := '746E2D696E666F5B64697361626C65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D696E666F3A666F6375732C2E62746E2D696E666F2E64697361626C65642E666F6375732C2E62746E2D696E666F5B64697361626C';
wwv_flow_api.g_varchar2_table(188) := '65645D2E666F6375732C6669656C647365745B64697361626C65645D202E62746E2D696E666F2E666F6375737B6261636B67726F756E642D636F6C6F723A233562633064653B626F726465722D636F6C6F723A233436623864617D2E62746E2D696E666F';
wwv_flow_api.g_varchar2_table(189) := '202E62616467657B636F6C6F723A233562633064653B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D7761726E696E677B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236630616434653B626F726465722D';
wwv_flow_api.g_varchar2_table(190) := '636F6C6F723A236565613233367D2E62746E2D7761726E696E673A666F6375732C2E62746E2D7761726E696E672E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236563393731663B626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(191) := '3A233938356630647D2E62746E2D7761726E696E673A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236563393731663B626F726465722D636F6C6F723A236435383531327D2E62746E2D7761726E696E673A6163';
wwv_flow_api.g_varchar2_table(192) := '746976652C2E62746E2D7761726E696E672E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E696E677B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236563393731663B626F7264';
wwv_flow_api.g_varchar2_table(193) := '65722D636F6C6F723A236435383531327D2E62746E2D7761726E696E673A6163746976653A686F7665722C2E62746E2D7761726E696E672E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E';
wwv_flow_api.g_varchar2_table(194) := '696E673A686F7665722C2E62746E2D7761726E696E673A6163746976653A666F6375732C2E62746E2D7761726E696E672E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E696E673A666F63';
wwv_flow_api.g_varchar2_table(195) := '75732C2E62746E2D7761726E696E673A6163746976652E666F6375732C2E62746E2D7761726E696E672E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E696E672E666F6375737B636F6C6F';
wwv_flow_api.g_varchar2_table(196) := '723A236666663B6261636B67726F756E642D636F6C6F723A236435383531323B626F726465722D636F6C6F723A233938356630647D2E62746E2D7761726E696E673A6163746976652C2E62746E2D7761726E696E672E6163746976652C2E6F70656E3E2E';
wwv_flow_api.g_varchar2_table(197) := '64726F70646F776E2D746F67676C652E62746E2D7761726E696E677B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D7761726E696E672E64697361626C65643A686F7665722C2E62746E2D7761726E696E675B64697361626C65645D';
wwv_flow_api.g_varchar2_table(198) := '3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D7761726E696E673A686F7665722C2E62746E2D7761726E696E672E64697361626C65643A666F6375732C2E62746E2D7761726E696E675B64697361626C65645D3A666F6375';
wwv_flow_api.g_varchar2_table(199) := '732C6669656C647365745B64697361626C65645D202E62746E2D7761726E696E673A666F6375732C2E62746E2D7761726E696E672E64697361626C65642E666F6375732C2E62746E2D7761726E696E675B64697361626C65645D2E666F6375732C666965';
wwv_flow_api.g_varchar2_table(200) := '6C647365745B64697361626C65645D202E62746E2D7761726E696E672E666F6375737B6261636B67726F756E642D636F6C6F723A236630616434653B626F726465722D636F6C6F723A236565613233367D2E62746E2D7761726E696E67202E6261646765';
wwv_flow_api.g_varchar2_table(201) := '7B636F6C6F723A236630616434653B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D64616E6765727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236439353334663B626F726465722D636F6C6F723A2364';
wwv_flow_api.g_varchar2_table(202) := '34336633617D2E62746E2D64616E6765723A666F6375732C2E62746E2D64616E6765722E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236339333032633B626F726465722D636F6C6F723A233736316331397D2E';
wwv_flow_api.g_varchar2_table(203) := '62746E2D64616E6765723A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236339333032633B626F726465722D636F6C6F723A236163323932357D2E62746E2D64616E6765723A6163746976652C2E62746E2D6461';
wwv_flow_api.g_varchar2_table(204) := '6E6765722E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236339333032633B626F726465722D636F6C6F723A2361633239';
wwv_flow_api.g_varchar2_table(205) := '32357D2E62746E2D64616E6765723A6163746976653A686F7665722C2E62746E2D64616E6765722E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765723A686F7665722C2E62746E2D6461';
wwv_flow_api.g_varchar2_table(206) := '6E6765723A6163746976653A666F6375732C2E62746E2D64616E6765722E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765723A666F6375732C2E62746E2D64616E6765723A6163746976';
wwv_flow_api.g_varchar2_table(207) := '652E666F6375732C2E62746E2D64616E6765722E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765722E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(208) := '3A236163323932353B626F726465722D636F6C6F723A233736316331397D2E62746E2D64616E6765723A6163746976652C2E62746E2D64616E6765722E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765';
wwv_flow_api.g_varchar2_table(209) := '727B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D64616E6765722E64697361626C65643A686F7665722C2E62746E2D64616E6765725B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62';
wwv_flow_api.g_varchar2_table(210) := '746E2D64616E6765723A686F7665722C2E62746E2D64616E6765722E64697361626C65643A666F6375732C2E62746E2D64616E6765725B64697361626C65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64616E6765';
wwv_flow_api.g_varchar2_table(211) := '723A666F6375732C2E62746E2D64616E6765722E64697361626C65642E666F6375732C2E62746E2D64616E6765725B64697361626C65645D2E666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64616E6765722E666F6375737B';
wwv_flow_api.g_varchar2_table(212) := '6261636B67726F756E642D636F6C6F723A236439353334663B626F726465722D636F6C6F723A236434336633617D2E62746E2D64616E676572202E62616467657B636F6C6F723A236439353334663B6261636B67726F756E642D636F6C6F723A23666666';
wwv_flow_api.g_varchar2_table(213) := '7D2E62746E2D6C696E6B7B636F6C6F723A233333376162373B666F6E742D7765696768743A6E6F726D616C3B626F726465722D7261646975733A307D2E62746E2D6C696E6B2C2E62746E2D6C696E6B3A6163746976652C2E62746E2D6C696E6B2E616374';
wwv_flow_api.g_varchar2_table(214) := '6976652C2E62746E2D6C696E6B5B64697361626C65645D2C6669656C647365745B64697361626C65645D202E62746E2D6C696E6B7B6261636B67726F756E642D636F6C6F723A7472616E73706172656E743B2D7765626B69742D626F782D736861646F77';
wwv_flow_api.g_varchar2_table(215) := '3A6E6F6E653B626F782D736861646F773A6E6F6E657D2E62746E2D6C696E6B2C2E62746E2D6C696E6B3A686F7665722C2E62746E2D6C696E6B3A666F6375732C2E62746E2D6C696E6B3A6163746976657B626F726465722D636F6C6F723A7472616E7370';
wwv_flow_api.g_varchar2_table(216) := '6172656E747D2E62746E2D6C696E6B3A686F7665722C2E62746E2D6C696E6B3A666F6375737B636F6C6F723A233233353237633B746578742D6465636F726174696F6E3A756E6465726C696E653B6261636B67726F756E642D636F6C6F723A7472616E73';
wwv_flow_api.g_varchar2_table(217) := '706172656E747D2E62746E2D6C696E6B5B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D6C696E6B3A686F7665722C2E62746E2D6C696E6B5B64697361626C65645D3A666F6375732C6669656C6473';
wwv_flow_api.g_varchar2_table(218) := '65745B64697361626C65645D202E62746E2D6C696E6B3A666F6375737B636F6C6F723A233737373B746578742D6465636F726174696F6E3A6E6F6E657D2E62746E2D6C677B70616464696E673A3130707820313670783B666F6E742D73697A653A313870';
wwv_flow_api.g_varchar2_table(219) := '783B6C696E652D6865696768743A312E333333333333333B626F726465722D7261646975733A3670787D2E62746E2D736D7B70616464696E673A35707820313070783B666F6E742D73697A653A313270783B6C696E652D6865696768743A312E353B626F';
wwv_flow_api.g_varchar2_table(220) := '726465722D7261646975733A3370787D2E62746E2D78737B70616464696E673A317078203570783B666F6E742D73697A653A313270783B6C696E652D6865696768743A312E353B626F726465722D7261646975733A3370787D2E62746E2D626C6F636B7B';
wwv_flow_api.g_varchar2_table(221) := '646973706C61793A626C6F636B3B77696474683A313030257D2E62746E2D626C6F636B2B2E62746E2D626C6F636B7B6D617267696E2D746F703A3570787D696E7075745B747970653D227375626D6974225D2E62746E2D626C6F636B2C696E7075745B74';
wwv_flow_api.g_varchar2_table(222) := '7970653D227265736574225D2E62746E2D626C6F636B2C696E7075745B747970653D22627574746F6E225D2E62746E2D626C6F636B7B77696474683A313030257D2E746F6F6C7469707B706F736974696F6E3A6162736F6C7574653B7A2D696E6465783A';
wwv_flow_api.g_varchar2_table(223) := '313037303B646973706C61793A626C6F636B3B666F6E742D66616D696C793A2248656C766574696361204E657565222C48656C7665746963612C417269616C2C73616E732D73657269663B666F6E742D7374796C653A6E6F726D616C3B666F6E742D7765';
wwv_flow_api.g_varchar2_table(224) := '696768743A6E6F726D616C3B6C65747465722D73706163696E673A6E6F726D616C3B6C696E652D627265616B3A6175746F3B6C696E652D6865696768743A312E34323835373134333B746578742D616C69676E3A6C6566743B746578742D616C69676E3A';
wwv_flow_api.g_varchar2_table(225) := '73746172743B746578742D6465636F726174696F6E3A6E6F6E653B746578742D736861646F773A6E6F6E653B746578742D7472616E73666F726D3A6E6F6E653B77686974652D73706163653A6E6F726D616C3B776F72642D627265616B3A6E6F726D616C';
wwv_flow_api.g_varchar2_table(226) := '3B776F72642D73706163696E673A6E6F726D616C3B776F72642D777261703A6E6F726D616C3B666F6E742D73697A653A313270783B6F7061636974793A303B66696C7465723A616C706861286F7061636974793D30297D2E746F6F6C7469702E696E7B6F';
wwv_flow_api.g_varchar2_table(227) := '7061636974793A2E393B66696C7465723A616C706861286F7061636974793D3930297D2E746F6F6C7469702E746F707B6D617267696E2D746F703A2D3370783B70616464696E673A35707820307D2E746F6F6C7469702E72696768747B6D617267696E2D';
wwv_flow_api.g_varchar2_table(228) := '6C6566743A3370783B70616464696E673A30203570787D2E746F6F6C7469702E626F74746F6D7B6D617267696E2D746F703A3370783B70616464696E673A35707820307D2E746F6F6C7469702E6C6566747B6D617267696E2D6C6566743A2D3370783B70';
wwv_flow_api.g_varchar2_table(229) := '616464696E673A30203570787D2E746F6F6C7469702D696E6E65727B6D61782D77696474683A32303070783B70616464696E673A337078203870783B636F6C6F723A236666663B746578742D616C69676E3A63656E7465723B6261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(230) := '636F6C6F723A233030303B626F726465722D7261646975733A3470787D2E746F6F6C7469702D6172726F777B706F736974696F6E3A6162736F6C7574653B77696474683A303B6865696768743A303B626F726465722D636F6C6F723A7472616E73706172';
wwv_flow_api.g_varchar2_table(231) := '656E743B626F726465722D7374796C653A736F6C69647D2E746F6F6C7469702E746F70202E746F6F6C7469702D6172726F777B626F74746F6D3A303B6C6566743A3530253B6D617267696E2D6C6566743A2D3570783B626F726465722D77696474683A35';
wwv_flow_api.g_varchar2_table(232) := '70782035707820303B626F726465722D746F702D636F6C6F723A233030307D2E746F6F6C7469702E746F702D6C656674202E746F6F6C7469702D6172726F777B626F74746F6D3A303B72696768743A3570783B6D617267696E2D626F74746F6D3A2D3570';
wwv_flow_api.g_varchar2_table(233) := '783B626F726465722D77696474683A3570782035707820303B626F726465722D746F702D636F6C6F723A233030307D2E746F6F6C7469702E746F702D7269676874202E746F6F6C7469702D6172726F777B626F74746F6D3A303B6C6566743A3570783B6D';
wwv_flow_api.g_varchar2_table(234) := '617267696E2D626F74746F6D3A2D3570783B626F726465722D77696474683A3570782035707820303B626F726465722D746F702D636F6C6F723A233030307D2E746F6F6C7469702E7269676874202E746F6F6C7469702D6172726F777B746F703A353025';
wwv_flow_api.g_varchar2_table(235) := '3B6C6566743A303B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A357078203570782035707820303B626F726465722D72696768742D636F6C6F723A233030307D2E746F6F6C7469702E6C656674202E746F6F6C7469702D6172';
wwv_flow_api.g_varchar2_table(236) := '726F777B746F703A3530253B72696768743A303B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A357078203020357078203570783B626F726465722D6C6566742D636F6C6F723A233030307D2E746F6F6C7469702E626F74746F';
wwv_flow_api.g_varchar2_table(237) := '6D202E746F6F6C7469702D6172726F777B746F703A303B6C6566743A3530253B6D617267696E2D6C6566743A2D3570783B626F726465722D77696474683A3020357078203570783B626F726465722D626F74746F6D2D636F6C6F723A233030307D2E746F';
wwv_flow_api.g_varchar2_table(238) := '6F6C7469702E626F74746F6D2D6C656674202E746F6F6C7469702D6172726F777B746F703A303B72696768743A3570783B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A3020357078203570783B626F726465722D626F74746F';
wwv_flow_api.g_varchar2_table(239) := '6D2D636F6C6F723A233030307D2E746F6F6C7469702E626F74746F6D2D7269676874202E746F6F6C7469702D6172726F777B746F703A303B6C6566743A3570783B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A302035707820';
wwv_flow_api.g_varchar2_table(240) := '3570783B626F726465722D626F74746F6D2D636F6C6F723A233030307D2E706F706F7665727B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A303B7A2D696E6465783A313036303B646973706C61793A6E6F6E653B6D61782D77';
wwv_flow_api.g_varchar2_table(241) := '696474683A32373670783B70616464696E673A3170783B666F6E742D66616D696C793A2248656C766574696361204E657565222C48656C7665746963612C417269616C2C73616E732D73657269663B666F6E742D7374796C653A6E6F726D616C3B666F6E';
wwv_flow_api.g_varchar2_table(242) := '742D7765696768743A6E6F726D616C3B6C65747465722D73706163696E673A6E6F726D616C3B6C696E652D627265616B3A6175746F3B6C696E652D6865696768743A312E34323835373134333B746578742D616C69676E3A6C6566743B746578742D616C';
wwv_flow_api.g_varchar2_table(243) := '69676E3A73746172743B746578742D6465636F726174696F6E3A6E6F6E653B746578742D736861646F773A6E6F6E653B746578742D7472616E73666F726D3A6E6F6E653B77686974652D73706163653A6E6F726D616C3B776F72642D627265616B3A6E6F';
wwv_flow_api.g_varchar2_table(244) := '726D616C3B776F72642D73706163696E673A6E6F726D616C3B776F72642D777261703A6E6F726D616C3B666F6E742D73697A653A313470783B6261636B67726F756E642D636F6C6F723A236666663B6261636B67726F756E642D636C69703A7061646469';
wwv_flow_api.g_varchar2_table(245) := '6E672D626F783B626F726465723A31707820736F6C696420236363633B626F726465723A31707820736F6C6964207267626128302C302C302C302E32293B626F726465722D7261646975733A3670783B2D7765626B69742D626F782D736861646F773A30';
wwv_flow_api.g_varchar2_table(246) := '203570782031307078207267626128302C302C302C302E32293B626F782D736861646F773A30203570782031307078207267626128302C302C302C302E32297D2E706F706F7665722E746F707B6D617267696E2D746F703A2D313070787D2E706F706F76';
wwv_flow_api.g_varchar2_table(247) := '65722E72696768747B6D617267696E2D6C6566743A313070787D2E706F706F7665722E626F74746F6D7B6D617267696E2D746F703A313070787D2E706F706F7665722E6C6566747B6D617267696E2D6C6566743A2D313070787D2E706F706F7665722D74';
wwv_flow_api.g_varchar2_table(248) := '69746C657B6D617267696E3A303B70616464696E673A38707820313470783B666F6E742D73697A653A313470783B6261636B67726F756E642D636F6C6F723A236637663766373B626F726465722D626F74746F6D3A31707820736F6C6964202365626562';
wwv_flow_api.g_varchar2_table(249) := '65623B626F726465722D7261646975733A35707820357078203020307D2E706F706F7665722D636F6E74656E747B70616464696E673A39707820313470787D2E706F706F7665723E2E6172726F772C2E706F706F7665723E2E6172726F773A6166746572';
wwv_flow_api.g_varchar2_table(250) := '7B706F736974696F6E3A6162736F6C7574653B646973706C61793A626C6F636B3B77696474683A303B6865696768743A303B626F726465722D636F6C6F723A7472616E73706172656E743B626F726465722D7374796C653A736F6C69647D2E706F706F76';
wwv_flow_api.g_varchar2_table(251) := '65723E2E6172726F777B626F726465722D77696474683A313170787D2E706F706F7665723E2E6172726F773A61667465727B626F726465722D77696474683A313070783B636F6E74656E743A22227D2E706F706F7665722E746F703E2E6172726F777B6C';
wwv_flow_api.g_varchar2_table(252) := '6566743A3530253B6D617267696E2D6C6566743A2D313170783B626F726465722D626F74746F6D2D77696474683A303B626F726465722D746F702D636F6C6F723A233939393B626F726465722D746F702D636F6C6F723A7267626128302C302C302C302E';
wwv_flow_api.g_varchar2_table(253) := '3235293B626F74746F6D3A2D313170787D2E706F706F7665722E746F703E2E6172726F773A61667465727B636F6E74656E743A2220223B626F74746F6D3A3170783B6D617267696E2D6C6566743A2D313070783B626F726465722D626F74746F6D2D7769';
wwv_flow_api.g_varchar2_table(254) := '6474683A303B626F726465722D746F702D636F6C6F723A236666667D2E706F706F7665722E72696768743E2E6172726F777B746F703A3530253B6C6566743A2D313170783B6D617267696E2D746F703A2D313170783B626F726465722D6C6566742D7769';
wwv_flow_api.g_varchar2_table(255) := '6474683A303B626F726465722D72696768742D636F6C6F723A233939393B626F726465722D72696768742D636F6C6F723A7267626128302C302C302C302E3235297D2E706F706F7665722E72696768743E2E6172726F773A61667465727B636F6E74656E';
wwv_flow_api.g_varchar2_table(256) := '743A2220223B6C6566743A3170783B626F74746F6D3A2D313070783B626F726465722D6C6566742D77696474683A303B626F726465722D72696768742D636F6C6F723A236666667D2E706F706F7665722E626F74746F6D3E2E6172726F777B6C6566743A';
wwv_flow_api.g_varchar2_table(257) := '3530253B6D617267696E2D6C6566743A2D313170783B626F726465722D746F702D77696474683A303B626F726465722D626F74746F6D2D636F6C6F723A233939393B626F726465722D626F74746F6D2D636F6C6F723A7267626128302C302C302C302E32';
wwv_flow_api.g_varchar2_table(258) := '35293B746F703A2D313170787D2E706F706F7665722E626F74746F6D3E2E6172726F773A61667465727B636F6E74656E743A2220223B746F703A3170783B6D617267696E2D6C6566743A2D313070783B626F726465722D746F702D77696474683A303B62';
wwv_flow_api.g_varchar2_table(259) := '6F726465722D626F74746F6D2D636F6C6F723A236666667D2E706F706F7665722E6C6566743E2E6172726F777B746F703A3530253B72696768743A2D313170783B6D617267696E2D746F703A2D313170783B626F726465722D72696768742D7769647468';
wwv_flow_api.g_varchar2_table(260) := '3A303B626F726465722D6C6566742D636F6C6F723A233939393B626F726465722D6C6566742D636F6C6F723A7267626128302C302C302C302E3235297D2E706F706F7665722E6C6566743E2E6172726F773A61667465727B636F6E74656E743A2220223B';
wwv_flow_api.g_varchar2_table(261) := '72696768743A3170783B626F726465722D72696768742D77696474683A303B626F726465722D6C6566742D636F6C6F723A236666663B626F74746F6D3A2D313070787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121150451800093315)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'bootstrap.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210A202A20436C6F636B5069636B65722076302E302E3720666F7220426F6F7473747261702028687474703A2F2F77656172656F75746D616E2E6769746875622E696F2F636C6F636B7069636B65722F290A202A20436F7079726967687420323031';
wwv_flow_api.g_varchar2_table(2) := '342057616E67205368656E7765692E0A202A204C6963656E73656420756E646572204D4954202868747470733A2F2F6769746875622E636F6D2F77656172656F75746D616E2F636C6F636B7069636B65722F626C6F622F67682D70616765732F4C494345';
wwv_flow_api.g_varchar2_table(3) := '4E5345290A202A2F2E636C6F636B7069636B6572202E696E7075742D67726F75702D6164646F6E7B637572736F723A706F696E7465727D2E636C6F636B7069636B65722D6D6F76696E677B637572736F723A6D6F76657D2E636C6F636B7069636B65722D';
wwv_flow_api.g_varchar2_table(4) := '616C69676E2D6C6566742E706F706F7665723E2E6172726F777B6C6566743A323570787D2E636C6F636B7069636B65722D616C69676E2D746F702E706F706F7665723E2E6172726F777B746F703A313770787D2E636C6F636B7069636B65722D616C6967';
wwv_flow_api.g_varchar2_table(5) := '6E2D72696768742E706F706F7665723E2E6172726F777B6C6566743A6175746F3B72696768743A323570787D2E636C6F636B7069636B65722D616C69676E2D626F74746F6D2E706F706F7665723E2E6172726F777B746F703A6175746F3B626F74746F6D';
wwv_flow_api.g_varchar2_table(6) := '3A3670787D2E636C6F636B7069636B65722D706F706F766572202E706F706F7665722D7469746C657B6261636B67726F756E642D636F6C6F723A236666663B636F6C6F723A233939393B666F6E742D73697A653A323470783B666F6E742D776569676874';
wwv_flow_api.g_varchar2_table(7) := '3A3730303B6C696E652D6865696768743A333070783B746578742D616C69676E3A63656E7465727D2E636C6F636B7069636B65722D706F706F766572202E706F706F7665722D7469746C65207370616E7B637572736F723A706F696E7465727D2E636C6F';
wwv_flow_api.g_varchar2_table(8) := '636B7069636B65722D706F706F766572202E706F706F7665722D636F6E74656E747B6261636B67726F756E642D636F6C6F723A236638663866383B70616464696E673A313270787D2E706F706F7665722D636F6E74656E743A6C6173742D6368696C647B';
wwv_flow_api.g_varchar2_table(9) := '626F726465722D626F74746F6D2D6C6566742D7261646975733A3570783B626F726465722D626F74746F6D2D72696768742D7261646975733A3570787D2E636C6F636B7069636B65722D706C6174657B6261636B67726F756E642D636F6C6F723A236666';
wwv_flow_api.g_varchar2_table(10) := '663B626F726465723A31707820736F6C696420236363633B626F726465722D7261646975733A3530253B77696474683A32303070783B6865696768743A32303070783B6F766572666C6F773A76697369626C653B706F736974696F6E3A72656C61746976';
wwv_flow_api.g_varchar2_table(11) := '653B2D7765626B69742D746F7563682D63616C6C6F75743A6E6F6E653B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6B68746D6C2D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B';
wwv_flow_api.g_varchar2_table(12) := '2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E657D2E636C6F636B7069636B65722D63616E7661732C2E636C6F636B7069636B65722D6469616C7B77696474683A32303070783B6865696768743A3230307078';
wwv_flow_api.g_varchar2_table(13) := '3B706F736974696F6E3A6162736F6C7574653B6C6566743A2D3170783B746F703A2D3170787D2E636C6F636B7069636B65722D6D696E757465737B7669736962696C6974793A68696464656E7D2E636C6F636B7069636B65722D7469636B7B626F726465';
wwv_flow_api.g_varchar2_table(14) := '722D7261646975733A3530253B636F6C6F723A233636363B6C696E652D6865696768743A323670783B746578742D616C69676E3A63656E7465723B77696474683A323670783B6865696768743A323670783B706F736974696F6E3A6162736F6C7574653B';
wwv_flow_api.g_varchar2_table(15) := '637572736F723A706F696E7465727D2E636C6F636B7069636B65722D7469636B2E6163746976652C2E636C6F636B7069636B65722D7469636B3A686F7665727B6261636B67726F756E642D636F6C6F723A236330653566373B6261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(16) := '636F6C6F723A7267626128302C3134392C3232312C2E3235297D2E636C6F636B7069636B65722D627574746F6E7B6261636B67726F756E642D696D6167653A6E6F6E653B6261636B67726F756E642D636F6C6F723A236666663B626F726465722D776964';
wwv_flow_api.g_varchar2_table(17) := '74683A317078203020303B626F726465722D746F702D6C6566742D7261646975733A303B626F726465722D746F702D72696768742D7261646975733A303B6D617267696E3A303B70616464696E673A3130707820307D2E636C6F636B7069636B65722D62';
wwv_flow_api.g_varchar2_table(18) := '7574746F6E3A686F7665727B6261636B67726F756E642D696D6167653A6E6F6E653B6261636B67726F756E642D636F6C6F723A236562656265627D2E636C6F636B7069636B65722D627574746F6E3A666F6375737B6F75746C696E653A3021696D706F72';
wwv_flow_api.g_varchar2_table(19) := '74616E747D2E636C6F636B7069636B65722D6469616C7B2D7765626B69742D7472616E736974696F6E3A2D7765626B69742D7472616E73666F726D203335306D732C6F706163697479203335306D733B2D6D6F7A2D7472616E736974696F6E3A2D6D6F7A';
wwv_flow_api.g_varchar2_table(20) := '2D7472616E73666F726D203335306D732C6F706163697479203335306D733B2D6D732D7472616E736974696F6E3A2D6D732D7472616E73666F726D203335306D732C6F706163697479203335306D733B2D6F2D7472616E736974696F6E3A2D6F2D747261';
wwv_flow_api.g_varchar2_table(21) := '6E73666F726D203335306D732C6F706163697479203335306D733B7472616E736974696F6E3A7472616E73666F726D203335306D732C6F706163697479203335306D737D2E636C6F636B7069636B65722D6469616C2D6F75747B6F7061636974793A307D';
wwv_flow_api.g_varchar2_table(22) := '2E636C6F636B7069636B65722D686F7572732E636C6F636B7069636B65722D6469616C2D6F75747B2D7765626B69742D7472616E73666F726D3A7363616C6528312E322C312E32293B2D6D6F7A2D7472616E73666F726D3A7363616C6528312E322C312E';
wwv_flow_api.g_varchar2_table(23) := '32293B2D6D732D7472616E73666F726D3A7363616C6528312E322C312E32293B2D6F2D7472616E73666F726D3A7363616C6528312E322C312E32293B7472616E73666F726D3A7363616C6528312E322C312E32297D2E636C6F636B7069636B65722D6D69';
wwv_flow_api.g_varchar2_table(24) := '6E757465732E636C6F636B7069636B65722D6469616C2D6F75747B2D7765626B69742D7472616E73666F726D3A7363616C65282E382C2E38293B2D6D6F7A2D7472616E73666F726D3A7363616C65282E382C2E38293B2D6D732D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(25) := '7363616C65282E382C2E38293B2D6F2D7472616E73666F726D3A7363616C65282E382C2E38293B7472616E73666F726D3A7363616C65282E382C2E38297D2E636C6F636B7069636B65722D63616E7661737B2D7765626B69742D7472616E736974696F6E';
wwv_flow_api.g_varchar2_table(26) := '3A6F706163697479203137356D733B2D6D6F7A2D7472616E736974696F6E3A6F706163697479203137356D733B2D6D732D7472616E736974696F6E3A6F706163697479203137356D733B2D6F2D7472616E736974696F6E3A6F706163697479203137356D';
wwv_flow_api.g_varchar2_table(27) := '733B7472616E736974696F6E3A6F706163697479203137356D737D2E636C6F636B7069636B65722D63616E7661732D6F75747B6F7061636974793A2E32357D2E636C6F636B7069636B65722D63616E7661732D62656172696E672C2E636C6F636B706963';
wwv_flow_api.g_varchar2_table(28) := '6B65722D63616E7661732D66677B7374726F6B653A6E6F6E653B66696C6C3A233030393564647D2E636C6F636B7069636B65722D63616E7661732D62677B7374726F6B653A6E6F6E653B66696C6C3A236330653566377D2E636C6F636B7069636B65722D';
wwv_flow_api.g_varchar2_table(29) := '63616E7661732D62672D7472616E737B66696C6C3A7267626128302C3134392C3232312C2E3235297D2E636C6F636B7069636B65722D63616E766173206C696E657B7374726F6B653A233030393564643B7374726F6B652D77696474683A313B7374726F';
wwv_flow_api.g_varchar2_table(30) := '6B652D6C696E656361703A726F756E647D2E636C6F636B7069636B65722D627574746F6E2E616D2D627574746F6E7B6D617267696E3A3170783B70616464696E673A3570783B626F726465723A31707820736F6C6964207267626128302C302C302C2E32';
wwv_flow_api.g_varchar2_table(31) := '293B626F726465722D7261646975733A3470787D2E636C6F636B7069636B65722D627574746F6E2E706D2D627574746F6E7B6D617267696E3A31707820317078203170782031333670783B70616464696E673A3570783B626F726465723A31707820736F';
wwv_flow_api.g_varchar2_table(32) := '6C6964207267626128302C302C302C2E32293B626F726465722D7261646975733A3470787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121150722548093325)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'bootstrap-clockpicker.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F204150455820436C6F636B7069636B65722066756E6374696F6E730A2F2F20417574686F723A2044616E69656C20486F63686C6569746E65720A2F2F2056657273696F6E3A20312E372E300A0A2F2F20676C6F62616C206E616D6573706163650A76';
wwv_flow_api.g_varchar2_table(2) := '61722061706578436C6F636B5069636B6572203D207B0A202020202F2F20706172736520737472696E6720746F20626F6F6C65616E0A202020207061727365426F6F6C65616E3A2066756E6374696F6E2870537472696E6729207B0A2020202020202020';
wwv_flow_api.g_varchar2_table(3) := '7661722070426F6F6C65616E3B0A20202020202020206966202870537472696E672E746F4C6F776572436173652829203D3D2027747275652729207B0A20202020202020202020202070426F6F6C65616E203D20747275653B0A20202020202020207D0A';
wwv_flow_api.g_varchar2_table(4) := '20202020202020206966202870537472696E672E746F4C6F776572436173652829203D3D202766616C73652729207B0A20202020202020202020202070426F6F6C65616E203D2066616C73653B0A20202020202020207D0A202020202020202069662028';
wwv_flow_api.g_varchar2_table(5) := '212870537472696E672E746F4C6F776572436173652829203D3D202774727565272920262620212870537472696E672E746F4C6F776572436173652829203D3D202766616C7365272929207B0A20202020202020202020202070426F6F6C65616E203D20';
wwv_flow_api.g_varchar2_table(6) := '756E646566696E65643B0A20202020202020207D0A202020202020202072657475726E2070426F6F6C65616E3B0A202020207D2C0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0A2020';
wwv_flow_api.g_varchar2_table(7) := '2020696E6974436C6F636B5069636B65723A2066756E6374696F6E28704974656D49642C20704F7074696F6E732C20704C6F6767696E6729207B0A202020202020202076617220764F7074696F6E73203D20704F7074696F6E733B0A2020202020202020';
wwv_flow_api.g_varchar2_table(8) := '7661722076506C6163656D656E74203D20764F7074696F6E732E706C6163656D656E743B0A20202020202020207661722076416C69676E203D20764F7074696F6E732E616C69676E3B0A202020202020202076617220764175746F436C6F7365203D2061';
wwv_flow_api.g_varchar2_table(9) := '706578436C6F636B5069636B65722E7061727365426F6F6C65616E28764F7074696F6E732E6175746F636C6F7365293B0A20202020202020207661722076446F6E6554657874203D20764F7074696F6E732E646F6E65746578743B0A2020202020202020';
wwv_flow_api.g_varchar2_table(10) := '76617220765477656C7665486F7572203D2061706578436C6F636B5069636B65722E7061727365426F6F6C65616E28764F7074696F6E732E7477656C7665686F7572293B0A2020202020202020766172207653686F77427574746F6E496E74203D20764F';
wwv_flow_api.g_varchar2_table(11) := '7074696F6E732E73686F77627574746F6E3B0A202020202020202076617220764C6F6767696E67203D2061706578436C6F636B5069636B65722E7061727365426F6F6C65616E28704C6F6767696E67293B0A2020202020202020766172207653686F7742';
wwv_flow_api.g_varchar2_table(12) := '7574746F6E3B0A0A2020202020202020696620287653686F77427574746F6E496E74203D3D2031207C7C207653686F77427574746F6E496E74203D3D2027312729207B0A2020202020202020202020207653686F77427574746F6E203D20747275653B0A';
wwv_flow_api.g_varchar2_table(13) := '20202020202020207D20656C7365207B0A2020202020202020202020207653686F77427574746F6E203D2066616C73653B0A20202020202020207D0A20202020202020202F2F204C6F6767696E670A202020202020202069662028764C6F6767696E6729';
wwv_flow_api.g_varchar2_table(14) := '207B0A202020202020202020202020636F6E736F6C652E6C6F67282761706578436C6F636B5069636B65723A20704974656D49643A272C20704974656D4964293B0A202020202020202020202020636F6E736F6C652E6C6F67282761706578436C6F636B';
wwv_flow_api.g_varchar2_table(15) := '5069636B65723A20764F7074696F6E732E706C6163656D656E743A272C20764F7074696F6E732E706C6163656D656E74293B0A202020202020202020202020636F6E736F6C652E6C6F67282761706578436C6F636B5069636B65723A20764F7074696F6E';
wwv_flow_api.g_varchar2_table(16) := '732E616C69676E3A272C20764F7074696F6E732E616C69676E293B0A202020202020202020202020636F6E736F6C652E6C6F67282761706578436C6F636B5069636B65723A20764F7074696F6E732E764175746F436C6F73653A272C20764F7074696F6E';
wwv_flow_api.g_varchar2_table(17) := '732E6175746F636C6F7365293B0A202020202020202020202020636F6E736F6C652E6C6F67282761706578436C6F636B5069636B65723A20764F7074696F6E732E76446F6E65546578743A272C20764F7074696F6E732E646F6E6574657874293B0A2020';
wwv_flow_api.g_varchar2_table(18) := '20202020202020202020636F6E736F6C652E6C6F67282761706578436C6F636B5069636B65723A20764F7074696F6E732E765477656C7665486F75723A272C20764F7074696F6E732E7477656C7665686F7572293B0A202020202020202020202020636F';
wwv_flow_api.g_varchar2_table(19) := '6E736F6C652E6C6F67282761706578436C6F636B5069636B65723A20764F7074696F6E732E7653686F77427574746F6E3A272C20764F7074696F6E732E73686F77627574746F6E293B0A20202020202020207D0A20202020202020202F2F20436C6F636B';
wwv_flow_api.g_varchar2_table(20) := '7069636B65720A202020202020202076617220636C6F636B5069636B65724974656D203D202428272327202B20704974656D4964292E636C6F636B7069636B6572287B0A20202020202020202020202022706C6163656D656E74223A2076506C6163656D';
wwv_flow_api.g_varchar2_table(21) := '656E742C0A20202020202020202020202022616C69676E223A2076416C69676E2C0A202020202020202020202020226175746F636C6F7365223A20764175746F436C6F73652C0A20202020202020202020202022646F6E6574657874223A2076446F6E65';
wwv_flow_api.g_varchar2_table(22) := '546578742C0A202020202020202020202020227477656C7665686F7572223A20765477656C7665486F75722C0A2020202020202020202020202264656661756C74223A20226E6F77220A20202020202020207D293B0A20202020202020202F2F20436C6F';
wwv_flow_api.g_varchar2_table(23) := '636B20427574746F6E0A2020202020202020696620287653686F77427574746F6E29207B0A2020202020202020202020202428272327202B20704974656D4964202B20275F627574746F6E27292E636C69636B2866756E6374696F6E286529207B0A2020';
wwv_flow_api.g_varchar2_table(24) := '2020202020202020202020202020652E73746F7050726F7061676174696F6E28293B0A20202020202020202020202020202020636C6F636B5069636B65724974656D2E636C6F636B7069636B6572282773686F7727293B0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(25) := '7D293B0A20202020202020207D0A20202020202020202F2F2041504558206974656D0A2020202020202020617065782E7769646765742E696E6974506167654974656D28704974656D49642C207B0A20202020202020202020202064697361626C653A20';
wwv_flow_api.g_varchar2_table(26) := '66756E6374696F6E2829207B0A20202020202020202020202020202020617065782E6A517565727928222322202B20746869732E6964292E616464436C6173732822617065785F64697361626C656422292E70726F70282264697361626C6564222C2021';
wwv_flow_api.g_varchar2_table(27) := '30293B0A20202020202020202020202020202020617065782E6A517565727928222322202B20746869732E6964202B20225F627574746F6E22292E616464436C6173732822617065785F64697361626C656422292E70726F70282264697361626C656422';
wwv_flow_api.g_varchar2_table(28) := '2C202130293B0A2020202020202020202020207D2C0A202020202020202020202020656E61626C653A2066756E6374696F6E2829207B0A20202020202020202020202020202020617065782E6A517565727928222322202B20746869732E6964292E7265';
wwv_flow_api.g_varchar2_table(29) := '6D6F7665436C6173732822617065785F64697361626C656422292E70726F70282264697361626C6564222C2030293B0A20202020202020202020202020202020617065782E6A517565727928222322202B20746869732E6964202B20225F627574746F6E';
wwv_flow_api.g_varchar2_table(30) := '22292E72656D6F7665436C6173732822617065785F64697361626C656422292E70726F70282264697361626C6564222C2030293B0A2020202020202020202020207D0A20202020202020207D293B0A202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121151482404094028)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'apexclockpicker.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '7661722061706578436C6F636B5069636B65723D7B7061727365426F6F6C65616E3A66756E6374696F6E2862297B76617220613B2274727565223D3D622E746F4C6F776572436173652829262628613D2130293B2266616C7365223D3D622E746F4C6F77';
wwv_flow_api.g_varchar2_table(2) := '6572436173652829262628613D2131293B227472756522213D622E746F4C6F77657243617365282926262266616C736522213D622E746F4C6F776572436173652829262628613D766F69642030293B72657475726E20617D2C696E6974436C6F636B5069';
wwv_flow_api.g_varchar2_table(3) := '636B65723A66756E6374696F6E28622C612C64297B76617220653D612E706C6163656D656E742C663D612E616C69676E2C673D61706578436C6F636B5069636B65722E7061727365426F6F6C65616E28612E6175746F636C6F7365292C683D612E646F6E';
wwv_flow_api.g_varchar2_table(4) := '65746578742C6B3D61706578436C6F636B5069636B65722E7061727365426F6F6C65616E28612E7477656C7665686F7572292C633D612E73686F77627574746F6E3B643D61706578436C6F636B5069636B65722E7061727365426F6F6C65616E2864293B';
wwv_flow_api.g_varchar2_table(5) := '633D313D3D637C7C2231223D3D633F21303A21313B64262628636F6E736F6C652E6C6F67282261706578436C6F636B5069636B65723A20704974656D49643A222C62292C636F6E736F6C652E6C6F67282261706578436C6F636B5069636B65723A20764F';
wwv_flow_api.g_varchar2_table(6) := '7074696F6E732E706C6163656D656E743A222C0A612E706C6163656D656E74292C636F6E736F6C652E6C6F67282261706578436C6F636B5069636B65723A20764F7074696F6E732E616C69676E3A222C612E616C69676E292C636F6E736F6C652E6C6F67';
wwv_flow_api.g_varchar2_table(7) := '282261706578436C6F636B5069636B65723A20764F7074696F6E732E764175746F436C6F73653A222C612E6175746F636C6F7365292C636F6E736F6C652E6C6F67282261706578436C6F636B5069636B65723A20764F7074696F6E732E76446F6E655465';
wwv_flow_api.g_varchar2_table(8) := '78743A222C612E646F6E6574657874292C636F6E736F6C652E6C6F67282261706578436C6F636B5069636B65723A20764F7074696F6E732E765477656C7665486F75723A222C612E7477656C7665686F7572292C636F6E736F6C652E6C6F672822617065';
wwv_flow_api.g_varchar2_table(9) := '78436C6F636B5069636B65723A20764F7074696F6E732E7653686F77427574746F6E3A222C612E73686F77627574746F6E29293B766172206C3D24282223222B62292E636C6F636B7069636B6572287B706C6163656D656E743A652C616C69676E3A662C';
wwv_flow_api.g_varchar2_table(10) := '6175746F636C6F73653A672C646F6E65746578743A682C7477656C7665686F75723A6B2C2264656661756C74223A226E6F77227D293B63262624282223222B622B225F627574746F6E22292E636C69636B2866756E6374696F6E2861297B612E73746F70';
wwv_flow_api.g_varchar2_table(11) := '50726F7061676174696F6E28293B6C2E636C6F636B7069636B6572282273686F7722297D293B0A617065782E7769646765742E696E6974506167654974656D28622C7B64697361626C653A66756E6374696F6E28297B617065782E6A5175657279282223';
wwv_flow_api.g_varchar2_table(12) := '222B746869732E6964292E616464436C6173732822617065785F64697361626C656422292E70726F70282264697361626C6564222C2130293B617065782E6A5175657279282223222B746869732E69642B225F627574746F6E22292E616464436C617373';
wwv_flow_api.g_varchar2_table(13) := '2822617065785F64697361626C656422292E70726F70282264697361626C6564222C2130297D2C656E61626C653A66756E6374696F6E28297B617065782E6A5175657279282223222B746869732E6964292E72656D6F7665436C6173732822617065785F';
wwv_flow_api.g_varchar2_table(14) := '64697361626C656422292E70726F70282264697361626C6564222C30293B617065782E6A5175657279282223222B746869732E69642B225F627574746F6E22292E72656D6F7665436C6173732822617065785F64697361626C656422292E70726F702822';
wwv_flow_api.g_varchar2_table(15) := '64697361626C6564222C30297D7D297D7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121151736808094030)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'apexclockpicker.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210A202A20436C6F636B5069636B65722076302E302E372028687474703A2F2F77656172656F75746D616E2E6769746875622E696F2F636C6F636B7069636B65722F290A202A20436F7079726967687420323031342057616E67205368656E776569';
wwv_flow_api.g_varchar2_table(2) := '2E0A202A204C6963656E73656420756E646572204D4954202868747470733A2F2F6769746875622E636F6D2F77656172656F75746D616E2F636C6F636B7069636B65722F626C6F622F67682D70616765732F4C4943454E5345290A202A2F0A2166756E63';
wwv_flow_api.g_varchar2_table(3) := '74696F6E28297B66756E6374696F6E20742874297B72657475726E20646F63756D656E742E637265617465456C656D656E744E5328702C74297D66756E6374696F6E20692874297B72657475726E2831303E743F2230223A2222292B747D66756E637469';
wwv_flow_api.g_varchar2_table(4) := '6F6E20652874297B76617220693D2B2B6D2B22223B72657475726E20743F742B693A697D66756E6374696F6E207328732C72297B66756E6374696F6E207028742C69297B76617220653D752E6F666673657428292C733D2F5E746F7563682F2E74657374';
wwv_flow_api.g_varchar2_table(5) := '28742E74797065292C6F3D652E6C6566742B622C6E3D652E746F702B622C703D28733F742E6F726967696E616C4576656E742E746F75636865735B305D3A74292E70616765582D6F2C683D28733F742E6F726967696E616C4576656E742E746F75636865';
wwv_flow_api.g_varchar2_table(6) := '735B305D3A74292E70616765592D6E2C6B3D4D6174682E7371727428702A702B682A68292C763D21313B69662821697C7C2128672D793E6B7C7C6B3E672B7929297B742E70726576656E7444656661756C7428293B766172206D3D73657454696D656F75';
wwv_flow_api.g_varchar2_table(7) := '742866756E6374696F6E28297B632E616464436C6173732822636C6F636B7069636B65722D6D6F76696E6722297D2C323030293B6C2626752E617070656E6428782E63616E766173292C782E73657448616E6428702C682C21692C2130292C612E6F6666';
wwv_flow_api.g_varchar2_table(8) := '2864292E6F6E28642C66756E6374696F6E2874297B742E70726576656E7444656661756C7428293B76617220693D2F5E746F7563682F2E7465737428742E74797065292C653D28693F742E6F726967696E616C4576656E742E746F75636865735B305D3A';
wwv_flow_api.g_varchar2_table(9) := '74292E70616765582D6F2C733D28693F742E6F726967696E616C4576656E742E746F75636865735B305D3A74292E70616765592D6E3B28767C7C65213D3D707C7C73213D3D6829262628763D21302C782E73657448616E6428652C732C21312C21302929';
wwv_flow_api.g_varchar2_table(10) := '7D292C612E6F66662866292E6F6E28662C66756E6374696F6E2874297B612E6F66662866292C742E70726576656E7444656661756C7428293B76617220653D2F5E746F7563682F2E7465737428742E74797065292C733D28653F742E6F726967696E616C';
wwv_flow_api.g_varchar2_table(11) := '4576656E742E6368616E676564546F75636865735B305D3A74292E70616765582D6F2C6C3D28653F742E6F726967696E616C4576656E742E6368616E676564546F75636865735B305D3A74292E70616765592D6E3B28697C7C76292626733D3D3D702626';
wwv_flow_api.g_varchar2_table(12) := '6C3D3D3D682626782E73657448616E6428732C6C292C22686F757273223D3D3D782E63757272656E74566965773F782E746F67676C655669657728226D696E75746573222C412F32293A722E6175746F636C6F7365262628782E6D696E75746573566965';
wwv_flow_api.g_varchar2_table(13) := '772E616464436C6173732822636C6F636B7069636B65722D6469616C2D6F757422292C73657454696D656F75742866756E6374696F6E28297B782E646F6E6528297D2C412F3229292C752E70726570656E64286A292C636C65617254696D656F7574286D';
wwv_flow_api.g_varchar2_table(14) := '292C632E72656D6F7665436C6173732822636C6F636B7069636B65722D6D6F76696E6722292C612E6F66662864297D297D7D76617220683D6E2856292C753D682E66696E6428222E636C6F636B7069636B65722D706C61746522292C763D682E66696E64';
wwv_flow_api.g_varchar2_table(15) := '28222E636C6F636B7069636B65722D686F75727322292C6D3D682E66696E6428222E636C6F636B7069636B65722D6D696E7574657322292C543D682E66696E6428222E636C6F636B7069636B65722D616D2D706D2D626C6F636B22292C433D22494E5055';
wwv_flow_api.g_varchar2_table(16) := '54223D3D3D732E70726F7028227461674E616D6522292C483D433F733A732E66696E642822696E70757422292C503D732E66696E6428222E696E7075742D67726F75702D6164646F6E22292C783D746869733B696628746869732E69643D652822637022';
wwv_flow_api.g_varchar2_table(17) := '292C746869732E656C656D656E743D732C746869732E6F7074696F6E733D722C746869732E6973417070656E6465643D21312C746869732E697353686F776E3D21312C746869732E63757272656E74566965773D22686F757273222C746869732E697349';
wwv_flow_api.g_varchar2_table(18) := '6E7075743D432C746869732E696E7075743D482C746869732E6164646F6E3D502C746869732E706F706F7665723D682C746869732E706C6174653D752C746869732E686F757273566965773D762C746869732E6D696E75746573566965773D6D2C746869';
wwv_flow_api.g_varchar2_table(19) := '732E616D506D426C6F636B3D542C746869732E7370616E486F7572733D682E66696E6428222E636C6F636B7069636B65722D7370616E2D686F75727322292C746869732E7370616E4D696E757465733D682E66696E6428222E636C6F636B7069636B6572';
wwv_flow_api.g_varchar2_table(20) := '2D7370616E2D6D696E7574657322292C746869732E7370616E416D506D3D682E66696E6428222E636C6F636B7069636B65722D7370616E2D616D2D706D22292C746869732E616D4F72506D3D22504D222C722E7477656C7665686F7572297B7B76617220';
wwv_flow_api.g_varchar2_table(21) := '533D5B273C64697620636C6173733D22636C6F636B7069636B65722D616D2D706D2D626C6F636B223E272C273C627574746F6E20747970653D22627574746F6E2220636C6173733D2262746E2062746E2D736D2062746E2D64656661756C7420636C6F63';
wwv_flow_api.g_varchar2_table(22) := '6B7069636B65722D627574746F6E20636C6F636B7069636B65722D616D2D627574746F6E223E272C22414D3C2F627574746F6E3E222C273C627574746F6E20747970653D22627574746F6E2220636C6173733D2262746E2062746E2D736D2062746E2D64';
wwv_flow_api.g_varchar2_table(23) := '656661756C7420636C6F636B7069636B65722D627574746F6E20636C6F636B7069636B65722D706D2D627574746F6E223E272C22504D3C2F627574746F6E3E222C223C2F6469763E225D2E6A6F696E282222293B6E2853297D6E28273C627574746F6E20';
wwv_flow_api.g_varchar2_table(24) := '747970653D22627574746F6E2220636C6173733D2262746E2062746E2D736D2062746E2D64656661756C7420636C6F636B7069636B65722D627574746F6E20616D2D627574746F6E223E414D3C2F627574746F6E3E27292E6F6E2822636C69636B222C66';
wwv_flow_api.g_varchar2_table(25) := '756E6374696F6E28297B782E616D4F72506D3D22414D222C6E28222E636C6F636B7069636B65722D7370616E2D616D2D706D22292E656D70747928292E617070656E642822414D22297D292E617070656E64546F28746869732E616D506D426C6F636B29';
wwv_flow_api.g_varchar2_table(26) := '2C6E28273C627574746F6E20747970653D22627574746F6E2220636C6173733D2262746E2062746E2D736D2062746E2D64656661756C7420636C6F636B7069636B65722D627574746F6E20706D2D627574746F6E223E504D3C2F627574746F6E3E27292E';
wwv_flow_api.g_varchar2_table(27) := '6F6E2822636C69636B222C66756E6374696F6E28297B782E616D4F72506D3D22504D222C6E28222E636C6F636B7069636B65722D7370616E2D616D2D706D22292E656D70747928292E617070656E642822504D22297D292E617070656E64546F28746869';
wwv_flow_api.g_varchar2_table(28) := '732E616D506D426C6F636B297D722E6175746F636C6F73657C7C6E28273C627574746F6E20747970653D22627574746F6E2220636C6173733D2262746E2062746E2D736D2062746E2D64656661756C742062746E2D626C6F636B20636C6F636B7069636B';
wwv_flow_api.g_varchar2_table(29) := '65722D627574746F6E223E272B722E646F6E65746578742B223C2F627574746F6E3E22292E636C69636B286E2E70726F787928746869732E646F6E652C7468697329292E617070656E64546F2868292C22746F7022213D3D722E706C6163656D656E7426';
wwv_flow_api.g_varchar2_table(30) := '2622626F74746F6D22213D3D722E706C6163656D656E747C7C22746F7022213D3D722E616C69676E262622626F74746F6D22213D3D722E616C69676E7C7C28722E616C69676E3D226C65667422292C226C65667422213D3D722E706C6163656D656E7426';
wwv_flow_api.g_varchar2_table(31) := '2622726967687422213D3D722E706C6163656D656E747C7C226C65667422213D3D722E616C69676E262622726967687422213D3D722E616C69676E7C7C28722E616C69676E3D22746F7022292C682E616464436C61737328722E706C6163656D656E7429';
wwv_flow_api.g_varchar2_table(32) := '2C682E616464436C6173732822636C6F636B7069636B65722D616C69676E2D222B722E616C69676E292C746869732E7370616E486F7572732E636C69636B286E2E70726F787928746869732E746F67676C65566965772C746869732C22686F7572732229';
wwv_flow_api.g_varchar2_table(33) := '292C746869732E7370616E4D696E757465732E636C69636B286E2E70726F787928746869732E746F67676C65566965772C746869732C226D696E757465732229292C482E6F6E2822666F6375732E636C6F636B7069636B657220636C69636B2E636C6F63';
wwv_flow_api.g_varchar2_table(34) := '6B7069636B6572222C6E2E70726F787928746869732E73686F772C7468697329292C502E6F6E2822636C69636B2E636C6F636B7069636B6572222C6E2E70726F787928746869732E746F67676C652C7468697329293B76617220452C442C492C422C7A3D';
wwv_flow_api.g_varchar2_table(35) := '6E28273C64697620636C6173733D22636C6F636B7069636B65722D7469636B223E3C2F6469763E27293B696628722E7477656C7665686F757229666F7228453D313B31333E453B452B3D3129443D7A2E636C6F6E6528292C493D452F362A4D6174682E50';
wwv_flow_api.g_varchar2_table(36) := '492C423D672C442E6373732822666F6E742D73697A65222C223132302522292C442E637373287B6C6566743A622B4D6174682E73696E2849292A422D792C746F703A622D4D6174682E636F732849292A422D797D292C442E68746D6C28303D3D3D453F22';
wwv_flow_api.g_varchar2_table(37) := '3030223A45292C762E617070656E642844292C442E6F6E286B2C70293B656C736520666F7228453D303B32343E453B452B3D31297B443D7A2E636C6F6E6528292C493D452F362A4D6174682E50493B766172204F3D453E30262631333E453B423D4F3F77';
wwv_flow_api.g_varchar2_table(38) := '3A672C442E637373287B6C6566743A622B4D6174682E73696E2849292A422D792C746F703A622D4D6174682E636F732849292A422D797D292C4F2626442E6373732822666F6E742D73697A65222C223132302522292C442E68746D6C28303D3D3D453F22';
wwv_flow_api.g_varchar2_table(39) := '3030223A45292C762E617070656E642844292C442E6F6E286B2C70297D666F7228453D303B36303E453B452B3D3529443D7A2E636C6F6E6528292C493D452F33302A4D6174682E50492C442E637373287B6C6566743A622B4D6174682E73696E2849292A';
wwv_flow_api.g_varchar2_table(40) := '672D792C746F703A622D4D6174682E636F732849292A672D797D292C442E6373732822666F6E742D73697A65222C223132302522292C442E68746D6C2869284529292C6D2E617070656E642844292C442E6F6E286B2C70293B696628752E6F6E286B2C66';
wwv_flow_api.g_varchar2_table(41) := '756E6374696F6E2874297B303D3D3D6E28742E746172676574292E636C6F7365737428222E636C6F636B7069636B65722D7469636B22292E6C656E67746826267028742C2130297D292C6C297B766172206A3D682E66696E6428222E636C6F636B706963';
wwv_flow_api.g_varchar2_table(42) := '6B65722D63616E76617322292C4C3D74282273766722293B4C2E7365744174747269627574652822636C617373222C22636C6F636B7069636B65722D73766722292C4C2E73657441747472696275746528227769647468222C4D292C4C2E736574417474';
wwv_flow_api.g_varchar2_table(43) := '7269627574652822686569676874222C4D293B76617220553D7428226722293B552E73657441747472696275746528227472616E73666F726D222C227472616E736C61746528222B622B222C222B622B222922293B76617220573D742822636972636C65';
wwv_flow_api.g_varchar2_table(44) := '22293B572E7365744174747269627574652822636C617373222C22636C6F636B7069636B65722D63616E7661732D62656172696E6722292C572E73657441747472696275746528226378222C30292C572E73657441747472696275746528226379222C30';
wwv_flow_api.g_varchar2_table(45) := '292C572E736574417474726962757465282272222C32293B766172204E3D7428226C696E6522293B4E2E73657441747472696275746528227831222C30292C4E2E73657441747472696275746528227931222C30293B76617220583D742822636972636C';
wwv_flow_api.g_varchar2_table(46) := '6522293B582E7365744174747269627574652822636C617373222C22636C6F636B7069636B65722D63616E7661732D626722292C582E736574417474726962757465282272222C79293B76617220593D742822636972636C6522293B592E736574417474';
wwv_flow_api.g_varchar2_table(47) := '7269627574652822636C617373222C22636C6F636B7069636B65722D63616E7661732D666722292C592E736574417474726962757465282272222C332E35292C552E617070656E644368696C64284E292C552E617070656E644368696C642858292C552E';
wwv_flow_api.g_varchar2_table(48) := '617070656E644368696C642859292C552E617070656E644368696C642857292C4C2E617070656E644368696C642855292C6A2E617070656E64284C292C746869732E68616E643D4E2C746869732E62673D582C746869732E66673D592C746869732E6265';
wwv_flow_api.g_varchar2_table(49) := '6172696E673D572C746869732E673D552C746869732E63616E7661733D6A7D6F28746869732E6F7074696F6E732E696E6974297D66756E6374696F6E206F2874297B7426262266756E6374696F6E223D3D747970656F66207426267428297D7661722063';
wwv_flow_api.g_varchar2_table(50) := '2C6E3D77696E646F772E6A51756572792C723D6E2877696E646F77292C613D6E28646F63756D656E74292C703D22687474703A2F2F7777772E77332E6F72672F323030302F737667222C6C3D22535647416E676C6522696E2077696E646F77262666756E';
wwv_flow_api.g_varchar2_table(51) := '6374696F6E28297B76617220742C693D646F63756D656E742E637265617465456C656D656E74282264697622293B72657475726E20692E696E6E657248544D4C3D223C7376672F3E222C743D28692E66697273744368696C642626692E66697273744368';
wwv_flow_api.g_varchar2_table(52) := '696C642E6E616D657370616365555249293D3D702C692E696E6E657248544D4C3D22222C747D28292C683D66756E6374696F6E28297B76617220743D646F63756D656E742E637265617465456C656D656E74282264697622292E7374796C653B72657475';
wwv_flow_api.g_varchar2_table(53) := '726E227472616E736974696F6E22696E20747C7C225765626B69745472616E736974696F6E22696E20747C7C224D6F7A5472616E736974696F6E22696E20747C7C226D735472616E736974696F6E22696E20747C7C224F5472616E736974696F6E22696E';
wwv_flow_api.g_varchar2_table(54) := '20747D28292C753D226F6E746F756368737461727422696E2077696E646F772C6B3D226D6F757365646F776E222B28753F2220746F7563687374617274223A2222292C643D226D6F7573656D6F76652E636C6F636B7069636B6572222B28753F2220746F';
wwv_flow_api.g_varchar2_table(55) := '7563686D6F76652E636C6F636B7069636B6572223A2222292C663D226D6F75736575702E636C6F636B7069636B6572222B28753F2220746F756368656E642E636C6F636B7069636B6572223A2222292C763D6E6176696761746F722E766962726174653F';
wwv_flow_api.g_varchar2_table(56) := '2276696272617465223A6E6176696761746F722E7765626B6974566962726174653F227765626B697456696272617465223A6E756C6C2C6D3D302C623D3130302C673D38302C773D35342C793D31332C4D3D322A622C413D683F3335303A312C563D5B27';
wwv_flow_api.g_varchar2_table(57) := '3C64697620636C6173733D22706F706F76657220636C6F636B7069636B65722D706F706F766572223E272C273C64697620636C6173733D226172726F77223E3C2F6469763E272C273C64697620636C6173733D22706F706F7665722D7469746C65223E27';
wwv_flow_api.g_varchar2_table(58) := '2C273C7370616E20636C6173733D22636C6F636B7069636B65722D7370616E2D686F75727320746578742D7072696D617279223E3C2F7370616E3E272C22203A20222C273C7370616E20636C6173733D22636C6F636B7069636B65722D7370616E2D6D69';
wwv_flow_api.g_varchar2_table(59) := '6E75746573223E3C2F7370616E3E272C273C7370616E20636C6173733D22636C6F636B7069636B65722D7370616E2D616D2D706D223E3C2F7370616E3E272C223C2F6469763E222C273C64697620636C6173733D22706F706F7665722D636F6E74656E74';
wwv_flow_api.g_varchar2_table(60) := '223E272C273C64697620636C6173733D22636C6F636B7069636B65722D706C617465223E272C273C64697620636C6173733D22636C6F636B7069636B65722D63616E766173223E3C2F6469763E272C273C64697620636C6173733D22636C6F636B706963';
wwv_flow_api.g_varchar2_table(61) := '6B65722D6469616C20636C6F636B7069636B65722D686F757273223E3C2F6469763E272C273C64697620636C6173733D22636C6F636B7069636B65722D6469616C20636C6F636B7069636B65722D6D696E7574657320636C6F636B7069636B65722D6469';
wwv_flow_api.g_varchar2_table(62) := '616C2D6F7574223E3C2F6469763E272C223C2F6469763E222C273C7370616E20636C6173733D22636C6F636B7069636B65722D616D2D706D2D626C6F636B223E272C223C2F7370616E3E222C223C2F6469763E222C223C2F6469763E225D2E6A6F696E28';
wwv_flow_api.g_varchar2_table(63) := '2222293B732E44454641554C54533D7B2264656661756C74223A22222C66726F6D6E6F773A302C706C6163656D656E743A22626F74746F6D222C616C69676E3A226C656674222C646F6E65746578743A22E5AE8CE68890222C6175746F636C6F73653A21';
wwv_flow_api.g_varchar2_table(64) := '312C7477656C7665686F75723A21312C766962726174653A21307D2C732E70726F746F747970652E746F67676C653D66756E6374696F6E28297B746869735B746869732E697353686F776E3F2268696465223A2273686F77225D28297D2C732E70726F74';
wwv_flow_api.g_varchar2_table(65) := '6F747970652E6C6F636174653D66756E6374696F6E28297B76617220743D746869732E656C656D656E742C693D746869732E706F706F7665722C653D742E6F666673657428292C733D742E6F75746572576964746828292C6F3D742E6F75746572486569';
wwv_flow_api.g_varchar2_table(66) := '67687428292C633D746869732E6F7074696F6E732E706C6163656D656E742C6E3D746869732E6F7074696F6E732E616C69676E2C723D7B7D3B73776974636828692E73686F7728292C63297B6361736522626F74746F6D223A722E746F703D652E746F70';
wwv_flow_api.g_varchar2_table(67) := '2B6F3B627265616B3B63617365227269676874223A722E6C6566743D652E6C6566742B733B627265616B3B6361736522746F70223A722E746F703D652E746F702D692E6F7574657248656967687428293B627265616B3B63617365226C656674223A722E';
wwv_flow_api.g_varchar2_table(68) := '6C6566743D652E6C6566742D692E6F75746572576964746828297D737769746368286E297B63617365226C656674223A722E6C6566743D652E6C6566743B627265616B3B63617365227269676874223A722E6C6566743D652E6C6566742B732D692E6F75';
wwv_flow_api.g_varchar2_table(69) := '746572576964746828293B627265616B3B6361736522746F70223A722E746F703D652E746F703B627265616B3B6361736522626F74746F6D223A722E746F703D652E746F702B6F2D692E6F7574657248656967687428297D692E6373732872297D2C732E';
wwv_flow_api.g_varchar2_table(70) := '70726F746F747970652E73686F773D66756E6374696F6E28297B69662821746869732E697353686F776E297B6F28746869732E6F7074696F6E732E6265666F726553686F77293B76617220743D746869733B746869732E6973417070656E6465647C7C28';
wwv_flow_api.g_varchar2_table(71) := '633D6E28646F63756D656E742E626F6479292E617070656E6428746869732E706F706F766572292C722E6F6E2822726573697A652E636C6F636B7069636B6572222B746869732E69642C66756E6374696F6E28297B742E697353686F776E2626742E6C6F';
wwv_flow_api.g_varchar2_table(72) := '6361746528297D292C746869732E6973417070656E6465643D2130293B76617220653D2828746869732E696E7075742E70726F70282276616C756522297C7C746869732E6F7074696F6E735B2264656661756C74225D7C7C2222292B2222292E73706C69';
wwv_flow_api.g_varchar2_table(73) := '7428223A22293B696628226E6F77223D3D3D655B305D297B76617220733D6E65772044617465282B6E657720446174652B746869732E6F7074696F6E732E66726F6D6E6F77293B653D5B732E676574486F75727328292C732E6765744D696E7574657328';
wwv_flow_api.g_varchar2_table(74) := '295D7D746869732E686F7572733D2B655B305D7C7C302C746869732E6D696E757465733D2B655B315D7C7C302C746869732E7370616E486F7572732E68746D6C286928746869732E686F75727329292C746869732E7370616E4D696E757465732E68746D';
wwv_flow_api.g_varchar2_table(75) := '6C286928746869732E6D696E7574657329292C746869732E746F67676C65566965772822686F75727322292C746869732E6C6F6361746528292C746869732E697353686F776E3D21302C612E6F6E2822636C69636B2E636C6F636B7069636B65722E222B';
wwv_flow_api.g_varchar2_table(76) := '746869732E69642B2220666F637573696E2E636C6F636B7069636B65722E222B746869732E69642C66756E6374696F6E2869297B76617220653D6E28692E746172676574293B303D3D3D652E636C6F7365737428742E706F706F766572292E6C656E6774';
wwv_flow_api.g_varchar2_table(77) := '682626303D3D3D652E636C6F7365737428742E6164646F6E292E6C656E6774682626303D3D3D652E636C6F7365737428742E696E707574292E6C656E6774682626742E6869646528297D292C612E6F6E28226B657975702E636C6F636B7069636B65722E';
wwv_flow_api.g_varchar2_table(78) := '222B746869732E69642C66756E6374696F6E2869297B32373D3D3D692E6B6579436F64652626742E6869646528297D292C6F28746869732E6F7074696F6E732E616674657253686F77297D7D2C732E70726F746F747970652E686964653D66756E637469';
wwv_flow_api.g_varchar2_table(79) := '6F6E28297B6F28746869732E6F7074696F6E732E6265666F726548696465292C746869732E697353686F776E3D21312C612E6F66662822636C69636B2E636C6F636B7069636B65722E222B746869732E69642B2220666F637573696E2E636C6F636B7069';
wwv_flow_api.g_varchar2_table(80) := '636B65722E222B746869732E6964292C612E6F666628226B657975702E636C6F636B7069636B65722E222B746869732E6964292C746869732E706F706F7665722E6869646528292C6F28746869732E6F7074696F6E732E616674657248696465297D2C73';
wwv_flow_api.g_varchar2_table(81) := '2E70726F746F747970652E746F67676C65566965773D66756E6374696F6E28742C69297B76617220653D21313B226D696E75746573223D3D3D7426262276697369626C65223D3D3D6E28746869732E686F75727356696577292E63737328227669736962';
wwv_flow_api.g_varchar2_table(82) := '696C69747922292626286F28746869732E6F7074696F6E732E6265666F7265486F757253656C656374292C653D2130293B76617220733D22686F757273223D3D3D742C633D733F746869732E686F757273566965773A746869732E6D696E757465735669';
wwv_flow_api.g_varchar2_table(83) := '65772C723D733F746869732E6D696E75746573566965773A746869732E686F757273566965773B746869732E63757272656E74566965773D742C746869732E7370616E486F7572732E746F67676C65436C6173732822746578742D7072696D617279222C';
wwv_flow_api.g_varchar2_table(84) := '73292C746869732E7370616E4D696E757465732E746F67676C65436C6173732822746578742D7072696D617279222C2173292C722E616464436C6173732822636C6F636B7069636B65722D6469616C2D6F757422292C632E63737328227669736962696C';
wwv_flow_api.g_varchar2_table(85) := '697479222C2276697369626C6522292E72656D6F7665436C6173732822636C6F636B7069636B65722D6469616C2D6F757422292C746869732E7265736574436C6F636B2869292C636C65617254696D656F757428746869732E746F67676C655669657754';
wwv_flow_api.g_varchar2_table(86) := '696D6572292C746869732E746F67676C655669657754696D65723D73657454696D656F75742866756E6374696F6E28297B722E63737328227669736962696C697479222C2268696464656E22297D2C41292C6526266F28746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(87) := '6166746572486F757253656C656374297D2C732E70726F746F747970652E7265736574436C6F636B3D66756E6374696F6E2874297B76617220693D746869732E63757272656E74566965772C653D746869735B695D2C733D22686F757273223D3D3D692C';
wwv_flow_api.g_varchar2_table(88) := '6F3D4D6174682E50492F28733F363A3330292C633D652A6F2C6E3D732626653E30262631333E653F773A672C723D4D6174682E73696E2863292A6E2C613D2D4D6174682E636F732863292A6E2C703D746869733B6C2626743F28702E63616E7661732E61';
wwv_flow_api.g_varchar2_table(89) := '6464436C6173732822636C6F636B7069636B65722D63616E7661732D6F757422292C73657454696D656F75742866756E6374696F6E28297B702E63616E7661732E72656D6F7665436C6173732822636C6F636B7069636B65722D63616E7661732D6F7574';
wwv_flow_api.g_varchar2_table(90) := '22292C702E73657448616E6428722C61297D2C7429293A746869732E73657448616E6428722C61297D2C732E70726F746F747970652E73657448616E643D66756E6374696F6E28742C652C732C6F297B76617220632C723D4D6174682E6174616E322874';
wwv_flow_api.g_varchar2_table(91) := '2C2D65292C613D22686F757273223D3D3D746869732E63757272656E74566965772C703D4D6174682E50492F28617C7C733F363A3330292C683D4D6174682E7371727428742A742B652A65292C753D746869732E6F7074696F6E732C6B3D61262628672B';
wwv_flow_api.g_varchar2_table(92) := '77292F323E682C643D6B3F773A673B696628752E7477656C7665686F7572262628643D67292C303E72262628723D322A4D6174682E50492B72292C633D4D6174682E726F756E6428722F70292C723D632A702C752E7477656C7665686F75723F613F303D';
wwv_flow_api.g_varchar2_table(93) := '3D3D63262628633D3132293A2873262628632A3D35292C36303D3D3D63262628633D3029293A613F2831323D3D3D63262628633D30292C633D6B3F303D3D3D633F31323A633A303D3D3D633F303A632B3132293A2873262628632A3D35292C36303D3D3D';
wwv_flow_api.g_varchar2_table(94) := '63262628633D3029292C746869735B746869732E63757272656E74566965775D213D3D632626762626746869732E6F7074696F6E732E76696272617465262628746869732E7669627261746554696D65727C7C286E6176696761746F725B765D28313029';
wwv_flow_api.g_varchar2_table(95) := '2C746869732E7669627261746554696D65723D73657454696D656F7574286E2E70726F78792866756E6374696F6E28297B746869732E7669627261746554696D65723D6E756C6C7D2C74686973292C3130302929292C746869735B746869732E63757272';
wwv_flow_api.g_varchar2_table(96) := '656E74566965775D3D632C746869735B613F227370616E486F757273223A227370616E4D696E75746573225D2E68746D6C2869286329292C216C2972657475726E20766F696420746869735B613F22686F75727356696577223A226D696E757465735669';
wwv_flow_api.g_varchar2_table(97) := '6577225D2E66696E6428222E636C6F636B7069636B65722D7469636B22292E656163682866756E6374696F6E28297B76617220743D6E2874686973293B742E746F67676C65436C6173732822616374697665222C633D3D3D2B742E68746D6C2829297D29';
wwv_flow_api.g_varchar2_table(98) := '3B6F7C7C216126266325353F28746869732E672E696E736572744265666F726528746869732E68616E642C746869732E62656172696E67292C746869732E672E696E736572744265666F726528746869732E62672C746869732E6667292C746869732E62';
wwv_flow_api.g_varchar2_table(99) := '672E7365744174747269627574652822636C617373222C22636C6F636B7069636B65722D63616E7661732D626720636C6F636B7069636B65722D63616E7661732D62672D7472616E732229293A28746869732E672E696E736572744265666F7265287468';
wwv_flow_api.g_varchar2_table(100) := '69732E68616E642C746869732E6267292C746869732E672E696E736572744265666F726528746869732E66672C746869732E6267292C746869732E62672E7365744174747269627574652822636C617373222C22636C6F636B7069636B65722D63616E76';
wwv_flow_api.g_varchar2_table(101) := '61732D62672229293B76617220663D4D6174682E73696E2872292A642C6D3D2D4D6174682E636F732872292A643B746869732E68616E642E73657441747472696275746528227832222C66292C746869732E68616E642E73657441747472696275746528';
wwv_flow_api.g_varchar2_table(102) := '227932222C6D292C746869732E62672E73657441747472696275746528226378222C66292C746869732E62672E73657441747472696275746528226379222C6D292C746869732E66672E73657441747472696275746528226378222C66292C746869732E';
wwv_flow_api.g_varchar2_table(103) := '66672E73657441747472696275746528226379222C6D297D2C732E70726F746F747970652E646F6E653D66756E6374696F6E28297B6F28746869732E6F7074696F6E732E6265666F7265446F6E65292C746869732E6869646528293B76617220743D7468';
wwv_flow_api.g_varchar2_table(104) := '69732E696E7075742E70726F70282276616C756522292C653D6928746869732E686F757273292B223A222B6928746869732E6D696E75746573293B746869732E6F7074696F6E732E7477656C7665686F7572262628652B3D746869732E616D4F72506D29';
wwv_flow_api.g_varchar2_table(105) := '2C746869732E696E7075742E70726F70282276616C7565222C65292C65213D3D74262628746869732E696E7075742E7472696767657248616E646C657228226368616E676522292C746869732E6973496E7075747C7C746869732E656C656D656E742E74';
wwv_flow_api.g_varchar2_table(106) := '72696767657228226368616E67652229292C746869732E6F7074696F6E732E6175746F636C6F73652626746869732E696E7075742E747269676765722822626C757222292C6F28746869732E6F7074696F6E732E6166746572446F6E65297D2C732E7072';
wwv_flow_api.g_varchar2_table(107) := '6F746F747970652E72656D6F76653D66756E6374696F6E28297B746869732E656C656D656E742E72656D6F7665446174612822636C6F636B7069636B657222292C746869732E696E7075742E6F66662822666F6375732E636C6F636B7069636B65722063';
wwv_flow_api.g_varchar2_table(108) := '6C69636B2E636C6F636B7069636B657222292C746869732E6164646F6E2E6F66662822636C69636B2E636C6F636B7069636B657222292C746869732E697353686F776E2626746869732E6869646528292C746869732E6973417070656E64656426262872';
wwv_flow_api.g_varchar2_table(109) := '2E6F66662822726573697A652E636C6F636B7069636B6572222B746869732E6964292C746869732E706F706F7665722E72656D6F76652829297D2C6E2E666E2E636C6F636B7069636B65723D66756E6374696F6E2874297B76617220693D41727261792E';
wwv_flow_api.g_varchar2_table(110) := '70726F746F747970652E736C6963652E63616C6C28617267756D656E74732C31293B72657475726E20746869732E656163682866756E6374696F6E28297B76617220653D6E2874686973292C6F3D652E646174612822636C6F636B7069636B657222293B';
wwv_flow_api.g_varchar2_table(111) := '6966286F292266756E6374696F6E223D3D747970656F66206F5B745D26266F5B745D2E6170706C79286F2C69293B656C73657B76617220633D6E2E657874656E64287B7D2C732E44454641554C54532C652E6461746128292C226F626A656374223D3D74';
wwv_flow_api.g_varchar2_table(112) := '7970656F662074262674293B652E646174612822636C6F636B7069636B6572222C6E6577207328652C6329297D7D297D7D28293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121152173887094031)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'bootstrap-clockpicker.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210A202A20426F6F7473747261702076332E332E362028687474703A2F2F676574626F6F7473747261702E636F6D290A202A20436F7079726967687420323031312D3230313520547769747465722C20496E632E0A202A204C6963656E7365642075';
wwv_flow_api.g_varchar2_table(2) := '6E646572204D4954202868747470733A2F2F6769746875622E636F6D2F747762732F626F6F7473747261702F626C6F622F6D61737465722F4C4943454E5345290A202A2F2F2A2120536F757263653A2068747470733A2F2F6769746875622E636F6D2F68';
wwv_flow_api.g_varchar2_table(3) := '3562702F68746D6C352D626F696C6572706C6174652F626C6F622F6D61737465722F7372632F6373732F6D61696E2E637373202A2F406D65646961207072696E747B2A2C2A3A6265666F72652C2A3A61667465727B6261636B67726F756E643A7472616E';
wwv_flow_api.g_varchar2_table(4) := '73706172656E742021696D706F7274616E743B636F6C6F723A233030302021696D706F7274616E743B626F782D736861646F773A6E6F6E652021696D706F7274616E743B746578742D736861646F773A6E6F6E652021696D706F7274616E747D612C613A';
wwv_flow_api.g_varchar2_table(5) := '766973697465647B746578742D6465636F726174696F6E3A756E6465726C696E657D615B687265665D3A61667465727B636F6E74656E743A222028222061747472286872656629202229227D616262725B7469746C655D3A61667465727B636F6E74656E';
wwv_flow_api.g_varchar2_table(6) := '743A222028222061747472287469746C6529202229227D615B687265665E3D2223225D3A61667465722C615B687265665E3D226A6176617363726970743A225D3A61667465727B636F6E74656E743A22227D7072652C626C6F636B71756F74657B626F72';
wwv_flow_api.g_varchar2_table(7) := '6465723A31707820736F6C696420233939393B706167652D627265616B2D696E736964653A61766F69647D74686561647B646973706C61793A7461626C652D6865616465722D67726F75707D74722C696D677B706167652D627265616B2D696E73696465';
wwv_flow_api.g_varchar2_table(8) := '3A61766F69647D696D677B6D61782D77696474683A313030252021696D706F7274616E747D702C68322C68337B6F727068616E733A333B7769646F77733A337D68322C68337B706167652D627265616B2D61667465723A61766F69647D2E6E6176626172';
wwv_flow_api.g_varchar2_table(9) := '7B646973706C61793A6E6F6E657D2E62746E3E2E63617265742C2E64726F7075703E2E62746E3E2E63617265747B626F726465722D746F702D636F6C6F723A233030302021696D706F7274616E747D2E6C6162656C7B626F726465723A31707820736F6C';
wwv_flow_api.g_varchar2_table(10) := '696420233030307D2E7461626C657B626F726465722D636F6C6C617073653A636F6C6C617073652021696D706F7274616E747D2E7461626C652074642C2E7461626C652074687B6261636B67726F756E642D636F6C6F723A236666662021696D706F7274';
wwv_flow_api.g_varchar2_table(11) := '616E747D2E7461626C652D626F7264657265642074682C2E7461626C652D626F7264657265642074647B626F726465723A31707820736F6C696420236464642021696D706F7274616E747D7D40666F6E742D666163657B666F6E742D66616D696C793A27';
wwv_flow_api.g_varchar2_table(12) := '476C79706869636F6E732048616C666C696E6773273B7372633A75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D726567756C61722E656F7427293B7372633A75726C28272E2E2F666F6E74732F676C7970686963';
wwv_flow_api.g_varchar2_table(13) := '6F6E732D68616C666C696E67732D726567756C61722E656F743F236965666978272920666F726D61742827656D6265646465642D6F70656E7479706527292C75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D7265';
wwv_flow_api.g_varchar2_table(14) := '67756C61722E776F666632272920666F726D61742827776F66663227292C75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D726567756C61722E776F6666272920666F726D61742827776F666627292C75726C2827';
wwv_flow_api.g_varchar2_table(15) := '2E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D726567756C61722E747466272920666F726D61742827747275657479706527292C75726C28272E2E2F666F6E74732F676C79706869636F6E732D68616C666C696E67732D7265';
wwv_flow_api.g_varchar2_table(16) := '67756C61722E73766723676C79706869636F6E735F68616C666C696E6773726567756C6172272920666F726D6174282773766727297D2E676C79706869636F6E7B706F736974696F6E3A72656C61746976653B746F703A3170783B646973706C61793A69';
wwv_flow_api.g_varchar2_table(17) := '6E6C696E652D626C6F636B3B666F6E742D66616D696C793A27476C79706869636F6E732048616C666C696E6773273B666F6E742D7374796C653A6E6F726D616C3B666F6E742D7765696768743A6E6F726D616C3B6C696E652D6865696768743A313B2D77';
wwv_flow_api.g_varchar2_table(18) := '65626B69742D666F6E742D736D6F6F7468696E673A616E7469616C69617365643B2D6D6F7A2D6F73782D666F6E742D736D6F6F7468696E673A677261797363616C657D2E676C79706869636F6E2D617374657269736B3A6265666F72657B636F6E74656E';
wwv_flow_api.g_varchar2_table(19) := '743A225C30303261227D2E676C79706869636F6E2D706C75733A6265666F72657B636F6E74656E743A225C30303262227D2E676C79706869636F6E2D6575726F3A6265666F72652C2E676C79706869636F6E2D6575723A6265666F72657B636F6E74656E';
wwv_flow_api.g_varchar2_table(20) := '743A225C32306163227D2E676C79706869636F6E2D6D696E75733A6265666F72657B636F6E74656E743A225C32323132227D2E676C79706869636F6E2D636C6F75643A6265666F72657B636F6E74656E743A225C32363031227D2E676C79706869636F6E';
wwv_flow_api.g_varchar2_table(21) := '2D656E76656C6F70653A6265666F72657B636F6E74656E743A225C32373039227D2E676C79706869636F6E2D70656E63696C3A6265666F72657B636F6E74656E743A225C32373066227D2E676C79706869636F6E2D676C6173733A6265666F72657B636F';
wwv_flow_api.g_varchar2_table(22) := '6E74656E743A225C65303031227D2E676C79706869636F6E2D6D757369633A6265666F72657B636F6E74656E743A225C65303032227D2E676C79706869636F6E2D7365617263683A6265666F72657B636F6E74656E743A225C65303033227D2E676C7970';
wwv_flow_api.g_varchar2_table(23) := '6869636F6E2D68656172743A6265666F72657B636F6E74656E743A225C65303035227D2E676C79706869636F6E2D737461723A6265666F72657B636F6E74656E743A225C65303036227D2E676C79706869636F6E2D737461722D656D7074793A6265666F';
wwv_flow_api.g_varchar2_table(24) := '72657B636F6E74656E743A225C65303037227D2E676C79706869636F6E2D757365723A6265666F72657B636F6E74656E743A225C65303038227D2E676C79706869636F6E2D66696C6D3A6265666F72657B636F6E74656E743A225C65303039227D2E676C';
wwv_flow_api.g_varchar2_table(25) := '79706869636F6E2D74682D6C617267653A6265666F72657B636F6E74656E743A225C65303130227D2E676C79706869636F6E2D74683A6265666F72657B636F6E74656E743A225C65303131227D2E676C79706869636F6E2D74682D6C6973743A6265666F';
wwv_flow_api.g_varchar2_table(26) := '72657B636F6E74656E743A225C65303132227D2E676C79706869636F6E2D6F6B3A6265666F72657B636F6E74656E743A225C65303133227D2E676C79706869636F6E2D72656D6F76653A6265666F72657B636F6E74656E743A225C65303134227D2E676C';
wwv_flow_api.g_varchar2_table(27) := '79706869636F6E2D7A6F6F6D2D696E3A6265666F72657B636F6E74656E743A225C65303135227D2E676C79706869636F6E2D7A6F6F6D2D6F75743A6265666F72657B636F6E74656E743A225C65303136227D2E676C79706869636F6E2D6F66663A626566';
wwv_flow_api.g_varchar2_table(28) := '6F72657B636F6E74656E743A225C65303137227D2E676C79706869636F6E2D7369676E616C3A6265666F72657B636F6E74656E743A225C65303138227D2E676C79706869636F6E2D636F673A6265666F72657B636F6E74656E743A225C65303139227D2E';
wwv_flow_api.g_varchar2_table(29) := '676C79706869636F6E2D74726173683A6265666F72657B636F6E74656E743A225C65303230227D2E676C79706869636F6E2D686F6D653A6265666F72657B636F6E74656E743A225C65303231227D2E676C79706869636F6E2D66696C653A6265666F7265';
wwv_flow_api.g_varchar2_table(30) := '7B636F6E74656E743A225C65303232227D2E676C79706869636F6E2D74696D653A6265666F72657B636F6E74656E743A225C65303233227D2E676C79706869636F6E2D726F61643A6265666F72657B636F6E74656E743A225C65303234227D2E676C7970';
wwv_flow_api.g_varchar2_table(31) := '6869636F6E2D646F776E6C6F61642D616C743A6265666F72657B636F6E74656E743A225C65303235227D2E676C79706869636F6E2D646F776E6C6F61643A6265666F72657B636F6E74656E743A225C65303236227D2E676C79706869636F6E2D75706C6F';
wwv_flow_api.g_varchar2_table(32) := '61643A6265666F72657B636F6E74656E743A225C65303237227D2E676C79706869636F6E2D696E626F783A6265666F72657B636F6E74656E743A225C65303238227D2E676C79706869636F6E2D706C61792D636972636C653A6265666F72657B636F6E74';
wwv_flow_api.g_varchar2_table(33) := '656E743A225C65303239227D2E676C79706869636F6E2D7265706561743A6265666F72657B636F6E74656E743A225C65303330227D2E676C79706869636F6E2D726566726573683A6265666F72657B636F6E74656E743A225C65303331227D2E676C7970';
wwv_flow_api.g_varchar2_table(34) := '6869636F6E2D6C6973742D616C743A6265666F72657B636F6E74656E743A225C65303332227D2E676C79706869636F6E2D6C6F636B3A6265666F72657B636F6E74656E743A225C65303333227D2E676C79706869636F6E2D666C61673A6265666F72657B';
wwv_flow_api.g_varchar2_table(35) := '636F6E74656E743A225C65303334227D2E676C79706869636F6E2D6865616470686F6E65733A6265666F72657B636F6E74656E743A225C65303335227D2E676C79706869636F6E2D766F6C756D652D6F66663A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(36) := '65303336227D2E676C79706869636F6E2D766F6C756D652D646F776E3A6265666F72657B636F6E74656E743A225C65303337227D2E676C79706869636F6E2D766F6C756D652D75703A6265666F72657B636F6E74656E743A225C65303338227D2E676C79';
wwv_flow_api.g_varchar2_table(37) := '706869636F6E2D7172636F64653A6265666F72657B636F6E74656E743A225C65303339227D2E676C79706869636F6E2D626172636F64653A6265666F72657B636F6E74656E743A225C65303430227D2E676C79706869636F6E2D7461673A6265666F7265';
wwv_flow_api.g_varchar2_table(38) := '7B636F6E74656E743A225C65303431227D2E676C79706869636F6E2D746167733A6265666F72657B636F6E74656E743A225C65303432227D2E676C79706869636F6E2D626F6F6B3A6265666F72657B636F6E74656E743A225C65303433227D2E676C7970';
wwv_flow_api.g_varchar2_table(39) := '6869636F6E2D626F6F6B6D61726B3A6265666F72657B636F6E74656E743A225C65303434227D2E676C79706869636F6E2D7072696E743A6265666F72657B636F6E74656E743A225C65303435227D2E676C79706869636F6E2D63616D6572613A6265666F';
wwv_flow_api.g_varchar2_table(40) := '72657B636F6E74656E743A225C65303436227D2E676C79706869636F6E2D666F6E743A6265666F72657B636F6E74656E743A225C65303437227D2E676C79706869636F6E2D626F6C643A6265666F72657B636F6E74656E743A225C65303438227D2E676C';
wwv_flow_api.g_varchar2_table(41) := '79706869636F6E2D6974616C69633A6265666F72657B636F6E74656E743A225C65303439227D2E676C79706869636F6E2D746578742D6865696768743A6265666F72657B636F6E74656E743A225C65303530227D2E676C79706869636F6E2D746578742D';
wwv_flow_api.g_varchar2_table(42) := '77696474683A6265666F72657B636F6E74656E743A225C65303531227D2E676C79706869636F6E2D616C69676E2D6C6566743A6265666F72657B636F6E74656E743A225C65303532227D2E676C79706869636F6E2D616C69676E2D63656E7465723A6265';
wwv_flow_api.g_varchar2_table(43) := '666F72657B636F6E74656E743A225C65303533227D2E676C79706869636F6E2D616C69676E2D72696768743A6265666F72657B636F6E74656E743A225C65303534227D2E676C79706869636F6E2D616C69676E2D6A7573746966793A6265666F72657B63';
wwv_flow_api.g_varchar2_table(44) := '6F6E74656E743A225C65303535227D2E676C79706869636F6E2D6C6973743A6265666F72657B636F6E74656E743A225C65303536227D2E676C79706869636F6E2D696E64656E742D6C6566743A6265666F72657B636F6E74656E743A225C65303537227D';
wwv_flow_api.g_varchar2_table(45) := '2E676C79706869636F6E2D696E64656E742D72696768743A6265666F72657B636F6E74656E743A225C65303538227D2E676C79706869636F6E2D6661636574696D652D766964656F3A6265666F72657B636F6E74656E743A225C65303539227D2E676C79';
wwv_flow_api.g_varchar2_table(46) := '706869636F6E2D706963747572653A6265666F72657B636F6E74656E743A225C65303630227D2E676C79706869636F6E2D6D61702D6D61726B65723A6265666F72657B636F6E74656E743A225C65303632227D2E676C79706869636F6E2D61646A757374';
wwv_flow_api.g_varchar2_table(47) := '3A6265666F72657B636F6E74656E743A225C65303633227D2E676C79706869636F6E2D74696E743A6265666F72657B636F6E74656E743A225C65303634227D2E676C79706869636F6E2D656469743A6265666F72657B636F6E74656E743A225C65303635';
wwv_flow_api.g_varchar2_table(48) := '227D2E676C79706869636F6E2D73686172653A6265666F72657B636F6E74656E743A225C65303636227D2E676C79706869636F6E2D636865636B3A6265666F72657B636F6E74656E743A225C65303637227D2E676C79706869636F6E2D6D6F76653A6265';
wwv_flow_api.g_varchar2_table(49) := '666F72657B636F6E74656E743A225C65303638227D2E676C79706869636F6E2D737465702D6261636B776172643A6265666F72657B636F6E74656E743A225C65303639227D2E676C79706869636F6E2D666173742D6261636B776172643A6265666F7265';
wwv_flow_api.g_varchar2_table(50) := '7B636F6E74656E743A225C65303730227D2E676C79706869636F6E2D6261636B776172643A6265666F72657B636F6E74656E743A225C65303731227D2E676C79706869636F6E2D706C61793A6265666F72657B636F6E74656E743A225C65303732227D2E';
wwv_flow_api.g_varchar2_table(51) := '676C79706869636F6E2D70617573653A6265666F72657B636F6E74656E743A225C65303733227D2E676C79706869636F6E2D73746F703A6265666F72657B636F6E74656E743A225C65303734227D2E676C79706869636F6E2D666F72776172643A626566';
wwv_flow_api.g_varchar2_table(52) := '6F72657B636F6E74656E743A225C65303735227D2E676C79706869636F6E2D666173742D666F72776172643A6265666F72657B636F6E74656E743A225C65303736227D2E676C79706869636F6E2D737465702D666F72776172643A6265666F72657B636F';
wwv_flow_api.g_varchar2_table(53) := '6E74656E743A225C65303737227D2E676C79706869636F6E2D656A6563743A6265666F72657B636F6E74656E743A225C65303738227D2E676C79706869636F6E2D63686576726F6E2D6C6566743A6265666F72657B636F6E74656E743A225C6530373922';
wwv_flow_api.g_varchar2_table(54) := '7D2E676C79706869636F6E2D63686576726F6E2D72696768743A6265666F72657B636F6E74656E743A225C65303830227D2E676C79706869636F6E2D706C75732D7369676E3A6265666F72657B636F6E74656E743A225C65303831227D2E676C79706869';
wwv_flow_api.g_varchar2_table(55) := '636F6E2D6D696E75732D7369676E3A6265666F72657B636F6E74656E743A225C65303832227D2E676C79706869636F6E2D72656D6F76652D7369676E3A6265666F72657B636F6E74656E743A225C65303833227D2E676C79706869636F6E2D6F6B2D7369';
wwv_flow_api.g_varchar2_table(56) := '676E3A6265666F72657B636F6E74656E743A225C65303834227D2E676C79706869636F6E2D7175657374696F6E2D7369676E3A6265666F72657B636F6E74656E743A225C65303835227D2E676C79706869636F6E2D696E666F2D7369676E3A6265666F72';
wwv_flow_api.g_varchar2_table(57) := '657B636F6E74656E743A225C65303836227D2E676C79706869636F6E2D73637265656E73686F743A6265666F72657B636F6E74656E743A225C65303837227D2E676C79706869636F6E2D72656D6F76652D636972636C653A6265666F72657B636F6E7465';
wwv_flow_api.g_varchar2_table(58) := '6E743A225C65303838227D2E676C79706869636F6E2D6F6B2D636972636C653A6265666F72657B636F6E74656E743A225C65303839227D2E676C79706869636F6E2D62616E2D636972636C653A6265666F72657B636F6E74656E743A225C65303930227D';
wwv_flow_api.g_varchar2_table(59) := '2E676C79706869636F6E2D6172726F772D6C6566743A6265666F72657B636F6E74656E743A225C65303931227D2E676C79706869636F6E2D6172726F772D72696768743A6265666F72657B636F6E74656E743A225C65303932227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(60) := '6E2D6172726F772D75703A6265666F72657B636F6E74656E743A225C65303933227D2E676C79706869636F6E2D6172726F772D646F776E3A6265666F72657B636F6E74656E743A225C65303934227D2E676C79706869636F6E2D73686172652D616C743A';
wwv_flow_api.g_varchar2_table(61) := '6265666F72657B636F6E74656E743A225C65303935227D2E676C79706869636F6E2D726573697A652D66756C6C3A6265666F72657B636F6E74656E743A225C65303936227D2E676C79706869636F6E2D726573697A652D736D616C6C3A6265666F72657B';
wwv_flow_api.g_varchar2_table(62) := '636F6E74656E743A225C65303937227D2E676C79706869636F6E2D6578636C616D6174696F6E2D7369676E3A6265666F72657B636F6E74656E743A225C65313031227D2E676C79706869636F6E2D676966743A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(63) := '65313032227D2E676C79706869636F6E2D6C6561663A6265666F72657B636F6E74656E743A225C65313033227D2E676C79706869636F6E2D666972653A6265666F72657B636F6E74656E743A225C65313034227D2E676C79706869636F6E2D6579652D6F';
wwv_flow_api.g_varchar2_table(64) := '70656E3A6265666F72657B636F6E74656E743A225C65313035227D2E676C79706869636F6E2D6579652D636C6F73653A6265666F72657B636F6E74656E743A225C65313036227D2E676C79706869636F6E2D7761726E696E672D7369676E3A6265666F72';
wwv_flow_api.g_varchar2_table(65) := '657B636F6E74656E743A225C65313037227D2E676C79706869636F6E2D706C616E653A6265666F72657B636F6E74656E743A225C65313038227D2E676C79706869636F6E2D63616C656E6461723A6265666F72657B636F6E74656E743A225C6531303922';
wwv_flow_api.g_varchar2_table(66) := '7D2E676C79706869636F6E2D72616E646F6D3A6265666F72657B636F6E74656E743A225C65313130227D2E676C79706869636F6E2D636F6D6D656E743A6265666F72657B636F6E74656E743A225C65313131227D2E676C79706869636F6E2D6D61676E65';
wwv_flow_api.g_varchar2_table(67) := '743A6265666F72657B636F6E74656E743A225C65313132227D2E676C79706869636F6E2D63686576726F6E2D75703A6265666F72657B636F6E74656E743A225C65313133227D2E676C79706869636F6E2D63686576726F6E2D646F776E3A6265666F7265';
wwv_flow_api.g_varchar2_table(68) := '7B636F6E74656E743A225C65313134227D2E676C79706869636F6E2D726574776565743A6265666F72657B636F6E74656E743A225C65313135227D2E676C79706869636F6E2D73686F7070696E672D636172743A6265666F72657B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(69) := '5C65313136227D2E676C79706869636F6E2D666F6C6465722D636C6F73653A6265666F72657B636F6E74656E743A225C65313137227D2E676C79706869636F6E2D666F6C6465722D6F70656E3A6265666F72657B636F6E74656E743A225C65313138227D';
wwv_flow_api.g_varchar2_table(70) := '2E676C79706869636F6E2D726573697A652D766572746963616C3A6265666F72657B636F6E74656E743A225C65313139227D2E676C79706869636F6E2D726573697A652D686F72697A6F6E74616C3A6265666F72657B636F6E74656E743A225C65313230';
wwv_flow_api.g_varchar2_table(71) := '227D2E676C79706869636F6E2D6864643A6265666F72657B636F6E74656E743A225C65313231227D2E676C79706869636F6E2D62756C6C686F726E3A6265666F72657B636F6E74656E743A225C65313232227D2E676C79706869636F6E2D62656C6C3A62';
wwv_flow_api.g_varchar2_table(72) := '65666F72657B636F6E74656E743A225C65313233227D2E676C79706869636F6E2D63657274696669636174653A6265666F72657B636F6E74656E743A225C65313234227D2E676C79706869636F6E2D7468756D62732D75703A6265666F72657B636F6E74';
wwv_flow_api.g_varchar2_table(73) := '656E743A225C65313235227D2E676C79706869636F6E2D7468756D62732D646F776E3A6265666F72657B636F6E74656E743A225C65313236227D2E676C79706869636F6E2D68616E642D72696768743A6265666F72657B636F6E74656E743A225C653132';
wwv_flow_api.g_varchar2_table(74) := '37227D2E676C79706869636F6E2D68616E642D6C6566743A6265666F72657B636F6E74656E743A225C65313238227D2E676C79706869636F6E2D68616E642D75703A6265666F72657B636F6E74656E743A225C65313239227D2E676C79706869636F6E2D';
wwv_flow_api.g_varchar2_table(75) := '68616E642D646F776E3A6265666F72657B636F6E74656E743A225C65313330227D2E676C79706869636F6E2D636972636C652D6172726F772D72696768743A6265666F72657B636F6E74656E743A225C65313331227D2E676C79706869636F6E2D636972';
wwv_flow_api.g_varchar2_table(76) := '636C652D6172726F772D6C6566743A6265666F72657B636F6E74656E743A225C65313332227D2E676C79706869636F6E2D636972636C652D6172726F772D75703A6265666F72657B636F6E74656E743A225C65313333227D2E676C79706869636F6E2D63';
wwv_flow_api.g_varchar2_table(77) := '6972636C652D6172726F772D646F776E3A6265666F72657B636F6E74656E743A225C65313334227D2E676C79706869636F6E2D676C6F62653A6265666F72657B636F6E74656E743A225C65313335227D2E676C79706869636F6E2D7772656E63683A6265';
wwv_flow_api.g_varchar2_table(78) := '666F72657B636F6E74656E743A225C65313336227D2E676C79706869636F6E2D7461736B733A6265666F72657B636F6E74656E743A225C65313337227D2E676C79706869636F6E2D66696C7465723A6265666F72657B636F6E74656E743A225C65313338';
wwv_flow_api.g_varchar2_table(79) := '227D2E676C79706869636F6E2D6272696566636173653A6265666F72657B636F6E74656E743A225C65313339227D2E676C79706869636F6E2D66756C6C73637265656E3A6265666F72657B636F6E74656E743A225C65313430227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(80) := '6E2D64617368626F6172643A6265666F72657B636F6E74656E743A225C65313431227D2E676C79706869636F6E2D7061706572636C69703A6265666F72657B636F6E74656E743A225C65313432227D2E676C79706869636F6E2D68656172742D656D7074';
wwv_flow_api.g_varchar2_table(81) := '793A6265666F72657B636F6E74656E743A225C65313433227D2E676C79706869636F6E2D6C696E6B3A6265666F72657B636F6E74656E743A225C65313434227D2E676C79706869636F6E2D70686F6E653A6265666F72657B636F6E74656E743A225C6531';
wwv_flow_api.g_varchar2_table(82) := '3435227D2E676C79706869636F6E2D7075736870696E3A6265666F72657B636F6E74656E743A225C65313436227D2E676C79706869636F6E2D7573643A6265666F72657B636F6E74656E743A225C65313438227D2E676C79706869636F6E2D6762703A62';
wwv_flow_api.g_varchar2_table(83) := '65666F72657B636F6E74656E743A225C65313439227D2E676C79706869636F6E2D736F72743A6265666F72657B636F6E74656E743A225C65313530227D2E676C79706869636F6E2D736F72742D62792D616C7068616265743A6265666F72657B636F6E74';
wwv_flow_api.g_varchar2_table(84) := '656E743A225C65313531227D2E676C79706869636F6E2D736F72742D62792D616C7068616265742D616C743A6265666F72657B636F6E74656E743A225C65313532227D2E676C79706869636F6E2D736F72742D62792D6F726465723A6265666F72657B63';
wwv_flow_api.g_varchar2_table(85) := '6F6E74656E743A225C65313533227D2E676C79706869636F6E2D736F72742D62792D6F726465722D616C743A6265666F72657B636F6E74656E743A225C65313534227D2E676C79706869636F6E2D736F72742D62792D617474726962757465733A626566';
wwv_flow_api.g_varchar2_table(86) := '6F72657B636F6E74656E743A225C65313535227D2E676C79706869636F6E2D736F72742D62792D617474726962757465732D616C743A6265666F72657B636F6E74656E743A225C65313536227D2E676C79706869636F6E2D756E636865636B65643A6265';
wwv_flow_api.g_varchar2_table(87) := '666F72657B636F6E74656E743A225C65313537227D2E676C79706869636F6E2D657870616E643A6265666F72657B636F6E74656E743A225C65313538227D2E676C79706869636F6E2D636F6C6C617073652D646F776E3A6265666F72657B636F6E74656E';
wwv_flow_api.g_varchar2_table(88) := '743A225C65313539227D2E676C79706869636F6E2D636F6C6C617073652D75703A6265666F72657B636F6E74656E743A225C65313630227D2E676C79706869636F6E2D6C6F672D696E3A6265666F72657B636F6E74656E743A225C65313631227D2E676C';
wwv_flow_api.g_varchar2_table(89) := '79706869636F6E2D666C6173683A6265666F72657B636F6E74656E743A225C65313632227D2E676C79706869636F6E2D6C6F672D6F75743A6265666F72657B636F6E74656E743A225C65313633227D2E676C79706869636F6E2D6E65772D77696E646F77';
wwv_flow_api.g_varchar2_table(90) := '3A6265666F72657B636F6E74656E743A225C65313634227D2E676C79706869636F6E2D7265636F72643A6265666F72657B636F6E74656E743A225C65313635227D2E676C79706869636F6E2D736176653A6265666F72657B636F6E74656E743A225C6531';
wwv_flow_api.g_varchar2_table(91) := '3636227D2E676C79706869636F6E2D6F70656E3A6265666F72657B636F6E74656E743A225C65313637227D2E676C79706869636F6E2D73617665643A6265666F72657B636F6E74656E743A225C65313638227D2E676C79706869636F6E2D696D706F7274';
wwv_flow_api.g_varchar2_table(92) := '3A6265666F72657B636F6E74656E743A225C65313639227D2E676C79706869636F6E2D6578706F72743A6265666F72657B636F6E74656E743A225C65313730227D2E676C79706869636F6E2D73656E643A6265666F72657B636F6E74656E743A225C6531';
wwv_flow_api.g_varchar2_table(93) := '3731227D2E676C79706869636F6E2D666C6F7070792D6469736B3A6265666F72657B636F6E74656E743A225C65313732227D2E676C79706869636F6E2D666C6F7070792D73617665643A6265666F72657B636F6E74656E743A225C65313733227D2E676C';
wwv_flow_api.g_varchar2_table(94) := '79706869636F6E2D666C6F7070792D72656D6F76653A6265666F72657B636F6E74656E743A225C65313734227D2E676C79706869636F6E2D666C6F7070792D736176653A6265666F72657B636F6E74656E743A225C65313735227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(95) := '6E2D666C6F7070792D6F70656E3A6265666F72657B636F6E74656E743A225C65313736227D2E676C79706869636F6E2D6372656469742D636172643A6265666F72657B636F6E74656E743A225C65313737227D2E676C79706869636F6E2D7472616E7366';
wwv_flow_api.g_varchar2_table(96) := '65723A6265666F72657B636F6E74656E743A225C65313738227D2E676C79706869636F6E2D6375746C6572793A6265666F72657B636F6E74656E743A225C65313739227D2E676C79706869636F6E2D6865616465723A6265666F72657B636F6E74656E74';
wwv_flow_api.g_varchar2_table(97) := '3A225C65313830227D2E676C79706869636F6E2D636F6D707265737365643A6265666F72657B636F6E74656E743A225C65313831227D2E676C79706869636F6E2D65617270686F6E653A6265666F72657B636F6E74656E743A225C65313832227D2E676C';
wwv_flow_api.g_varchar2_table(98) := '79706869636F6E2D70686F6E652D616C743A6265666F72657B636F6E74656E743A225C65313833227D2E676C79706869636F6E2D746F7765723A6265666F72657B636F6E74656E743A225C65313834227D2E676C79706869636F6E2D73746174733A6265';
wwv_flow_api.g_varchar2_table(99) := '666F72657B636F6E74656E743A225C65313835227D2E676C79706869636F6E2D73642D766964656F3A6265666F72657B636F6E74656E743A225C65313836227D2E676C79706869636F6E2D68642D766964656F3A6265666F72657B636F6E74656E743A22';
wwv_flow_api.g_varchar2_table(100) := '5C65313837227D2E676C79706869636F6E2D7375627469746C65733A6265666F72657B636F6E74656E743A225C65313838227D2E676C79706869636F6E2D736F756E642D73746572656F3A6265666F72657B636F6E74656E743A225C65313839227D2E67';
wwv_flow_api.g_varchar2_table(101) := '6C79706869636F6E2D736F756E642D646F6C62793A6265666F72657B636F6E74656E743A225C65313930227D2E676C79706869636F6E2D736F756E642D352D313A6265666F72657B636F6E74656E743A225C65313931227D2E676C79706869636F6E2D73';
wwv_flow_api.g_varchar2_table(102) := '6F756E642D362D313A6265666F72657B636F6E74656E743A225C65313932227D2E676C79706869636F6E2D736F756E642D372D313A6265666F72657B636F6E74656E743A225C65313933227D2E676C79706869636F6E2D636F707972696768742D6D6172';
wwv_flow_api.g_varchar2_table(103) := '6B3A6265666F72657B636F6E74656E743A225C65313934227D2E676C79706869636F6E2D726567697374726174696F6E2D6D61726B3A6265666F72657B636F6E74656E743A225C65313935227D2E676C79706869636F6E2D636C6F75642D646F776E6C6F';
wwv_flow_api.g_varchar2_table(104) := '61643A6265666F72657B636F6E74656E743A225C65313937227D2E676C79706869636F6E2D636C6F75642D75706C6F61643A6265666F72657B636F6E74656E743A225C65313938227D2E676C79706869636F6E2D747265652D636F6E696665723A626566';
wwv_flow_api.g_varchar2_table(105) := '6F72657B636F6E74656E743A225C65313939227D2E676C79706869636F6E2D747265652D6465636964756F75733A6265666F72657B636F6E74656E743A225C65323030227D2E676C79706869636F6E2D63643A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(106) := '65323031227D2E676C79706869636F6E2D736176652D66696C653A6265666F72657B636F6E74656E743A225C65323032227D2E676C79706869636F6E2D6F70656E2D66696C653A6265666F72657B636F6E74656E743A225C65323033227D2E676C797068';
wwv_flow_api.g_varchar2_table(107) := '69636F6E2D6C6576656C2D75703A6265666F72657B636F6E74656E743A225C65323034227D2E676C79706869636F6E2D636F70793A6265666F72657B636F6E74656E743A225C65323035227D2E676C79706869636F6E2D70617374653A6265666F72657B';
wwv_flow_api.g_varchar2_table(108) := '636F6E74656E743A225C65323036227D2E676C79706869636F6E2D616C6572743A6265666F72657B636F6E74656E743A225C65323039227D2E676C79706869636F6E2D657175616C697A65723A6265666F72657B636F6E74656E743A225C65323130227D';
wwv_flow_api.g_varchar2_table(109) := '2E676C79706869636F6E2D6B696E673A6265666F72657B636F6E74656E743A225C65323131227D2E676C79706869636F6E2D717565656E3A6265666F72657B636F6E74656E743A225C65323132227D2E676C79706869636F6E2D7061776E3A6265666F72';
wwv_flow_api.g_varchar2_table(110) := '657B636F6E74656E743A225C65323133227D2E676C79706869636F6E2D626973686F703A6265666F72657B636F6E74656E743A225C65323134227D2E676C79706869636F6E2D6B6E696768743A6265666F72657B636F6E74656E743A225C65323135227D';
wwv_flow_api.g_varchar2_table(111) := '2E676C79706869636F6E2D626162792D666F726D756C613A6265666F72657B636F6E74656E743A225C65323136227D2E676C79706869636F6E2D74656E743A6265666F72657B636F6E74656E743A225C32366661227D2E676C79706869636F6E2D626C61';
wwv_flow_api.g_varchar2_table(112) := '636B626F6172643A6265666F72657B636F6E74656E743A225C65323138227D2E676C79706869636F6E2D6265643A6265666F72657B636F6E74656E743A225C65323139227D2E676C79706869636F6E2D6170706C653A6265666F72657B636F6E74656E74';
wwv_flow_api.g_varchar2_table(113) := '3A225C66386666227D2E676C79706869636F6E2D65726173653A6265666F72657B636F6E74656E743A225C65323231227D2E676C79706869636F6E2D686F7572676C6173733A6265666F72657B636F6E74656E743A225C32333162227D2E676C79706869';
wwv_flow_api.g_varchar2_table(114) := '636F6E2D6C616D703A6265666F72657B636F6E74656E743A225C65323233227D2E676C79706869636F6E2D6475706C69636174653A6265666F72657B636F6E74656E743A225C65323234227D2E676C79706869636F6E2D70696767792D62616E6B3A6265';
wwv_flow_api.g_varchar2_table(115) := '666F72657B636F6E74656E743A225C65323235227D2E676C79706869636F6E2D73636973736F72733A6265666F72657B636F6E74656E743A225C65323236227D2E676C79706869636F6E2D626974636F696E3A6265666F72657B636F6E74656E743A225C';
wwv_flow_api.g_varchar2_table(116) := '65323237227D2E676C79706869636F6E2D6274633A6265666F72657B636F6E74656E743A225C65323237227D2E676C79706869636F6E2D7862743A6265666F72657B636F6E74656E743A225C65323237227D2E676C79706869636F6E2D79656E3A626566';
wwv_flow_api.g_varchar2_table(117) := '6F72657B636F6E74656E743A225C30306135227D2E676C79706869636F6E2D6A70793A6265666F72657B636F6E74656E743A225C30306135227D2E676C79706869636F6E2D7275626C653A6265666F72657B636F6E74656E743A225C32306264227D2E67';
wwv_flow_api.g_varchar2_table(118) := '6C79706869636F6E2D7275623A6265666F72657B636F6E74656E743A225C32306264227D2E676C79706869636F6E2D7363616C653A6265666F72657B636F6E74656E743A225C65323330227D2E676C79706869636F6E2D6963652D6C6F6C6C793A626566';
wwv_flow_api.g_varchar2_table(119) := '6F72657B636F6E74656E743A225C65323331227D2E676C79706869636F6E2D6963652D6C6F6C6C792D7461737465643A6265666F72657B636F6E74656E743A225C65323332227D2E676C79706869636F6E2D656475636174696F6E3A6265666F72657B63';
wwv_flow_api.g_varchar2_table(120) := '6F6E74656E743A225C65323333227D2E676C79706869636F6E2D6F7074696F6E2D686F72697A6F6E74616C3A6265666F72657B636F6E74656E743A225C65323334227D2E676C79706869636F6E2D6F7074696F6E2D766572746963616C3A6265666F7265';
wwv_flow_api.g_varchar2_table(121) := '7B636F6E74656E743A225C65323335227D2E676C79706869636F6E2D6D656E752D68616D6275726765723A6265666F72657B636F6E74656E743A225C65323336227D2E676C79706869636F6E2D6D6F64616C2D77696E646F773A6265666F72657B636F6E';
wwv_flow_api.g_varchar2_table(122) := '74656E743A225C65323337227D2E676C79706869636F6E2D6F696C3A6265666F72657B636F6E74656E743A225C65323338227D2E676C79706869636F6E2D677261696E3A6265666F72657B636F6E74656E743A225C65323339227D2E676C79706869636F';
wwv_flow_api.g_varchar2_table(123) := '6E2D73756E676C61737365733A6265666F72657B636F6E74656E743A225C65323430227D2E676C79706869636F6E2D746578742D73697A653A6265666F72657B636F6E74656E743A225C65323431227D2E676C79706869636F6E2D746578742D636F6C6F';
wwv_flow_api.g_varchar2_table(124) := '723A6265666F72657B636F6E74656E743A225C65323432227D2E676C79706869636F6E2D746578742D6261636B67726F756E643A6265666F72657B636F6E74656E743A225C65323433227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D74';
wwv_flow_api.g_varchar2_table(125) := '6F703A6265666F72657B636F6E74656E743A225C65323434227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D626F74746F6D3A6265666F72657B636F6E74656E743A225C65323435227D2E676C79706869636F6E2D6F626A6563742D616C';
wwv_flow_api.g_varchar2_table(126) := '69676E2D686F72697A6F6E74616C3A6265666F72657B636F6E74656E743A225C65323436227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D6C6566743A6265666F72657B636F6E74656E743A225C65323437227D2E676C79706869636F6E';
wwv_flow_api.g_varchar2_table(127) := '2D6F626A6563742D616C69676E2D766572746963616C3A6265666F72657B636F6E74656E743A225C65323438227D2E676C79706869636F6E2D6F626A6563742D616C69676E2D72696768743A6265666F72657B636F6E74656E743A225C65323439227D2E';
wwv_flow_api.g_varchar2_table(128) := '676C79706869636F6E2D747269616E676C652D72696768743A6265666F72657B636F6E74656E743A225C65323530227D2E676C79706869636F6E2D747269616E676C652D6C6566743A6265666F72657B636F6E74656E743A225C65323531227D2E676C79';
wwv_flow_api.g_varchar2_table(129) := '706869636F6E2D747269616E676C652D626F74746F6D3A6265666F72657B636F6E74656E743A225C65323532227D2E676C79706869636F6E2D747269616E676C652D746F703A6265666F72657B636F6E74656E743A225C65323533227D2E676C79706869';
wwv_flow_api.g_varchar2_table(130) := '636F6E2D636F6E736F6C653A6265666F72657B636F6E74656E743A225C65323534227D2E676C79706869636F6E2D73757065727363726970743A6265666F72657B636F6E74656E743A225C65323535227D2E676C79706869636F6E2D7375627363726970';
wwv_flow_api.g_varchar2_table(131) := '743A6265666F72657B636F6E74656E743A225C65323536227D2E676C79706869636F6E2D6D656E752D6C6566743A6265666F72657B636F6E74656E743A225C65323537227D2E676C79706869636F6E2D6D656E752D72696768743A6265666F72657B636F';
wwv_flow_api.g_varchar2_table(132) := '6E74656E743A225C65323538227D2E676C79706869636F6E2D6D656E752D646F776E3A6265666F72657B636F6E74656E743A225C65323539227D2E676C79706869636F6E2D6D656E752D75703A6265666F72657B636F6E74656E743A225C65323630227D';
wwv_flow_api.g_varchar2_table(133) := '2E62746E7B646973706C61793A696E6C696E652D626C6F636B3B6D617267696E2D626F74746F6D3A303B666F6E742D7765696768743A6E6F726D616C3B746578742D616C69676E3A63656E7465723B766572746963616C2D616C69676E3A6D6964646C65';
wwv_flow_api.g_varchar2_table(134) := '3B746F7563682D616374696F6E3A6D616E6970756C6174696F6E3B637572736F723A706F696E7465723B6261636B67726F756E642D696D6167653A6E6F6E653B626F726465723A31707820736F6C6964207472616E73706172656E743B77686974652D73';
wwv_flow_api.g_varchar2_table(135) := '706163653A6E6F777261703B70616464696E673A36707820313270783B666F6E742D73697A653A313470783B6C696E652D6865696768743A312E34323835373134333B626F726465722D7261646975733A3470783B2D7765626B69742D757365722D7365';
wwv_flow_api.g_varchar2_table(136) := '6C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E657D2E62746E3A666F6375732C2E62746E3A6163746976653A666F6375732C2E';
wwv_flow_api.g_varchar2_table(137) := '62746E2E6163746976653A666F6375732C2E62746E2E666F6375732C2E62746E3A6163746976652E666F6375732C2E62746E2E6163746976652E666F6375737B6F75746C696E653A7468696E20646F747465643B6F75746C696E653A357078206175746F';
wwv_flow_api.g_varchar2_table(138) := '202D7765626B69742D666F6375732D72696E672D636F6C6F723B6F75746C696E652D6F66667365743A2D3270787D2E62746E3A686F7665722C2E62746E3A666F6375732C2E62746E2E666F6375737B636F6C6F723A233333333B746578742D6465636F72';
wwv_flow_api.g_varchar2_table(139) := '6174696F6E3A6E6F6E657D2E62746E3A6163746976652C2E62746E2E6163746976657B6F75746C696E653A303B6261636B67726F756E642D696D6167653A6E6F6E653B2D7765626B69742D626F782D736861646F773A696E736574203020337078203570';
wwv_flow_api.g_varchar2_table(140) := '78207267626128302C302C302C302E313235293B626F782D736861646F773A696E73657420302033707820357078207267626128302C302C302C302E313235297D2E62746E2E64697361626C65642C2E62746E5B64697361626C65645D2C6669656C6473';
wwv_flow_api.g_varchar2_table(141) := '65745B64697361626C65645D202E62746E7B637572736F723A6E6F742D616C6C6F7765643B6F7061636974793A2E36353B66696C7465723A616C706861286F7061636974793D3635293B2D7765626B69742D626F782D736861646F773A6E6F6E653B626F';
wwv_flow_api.g_varchar2_table(142) := '782D736861646F773A6E6F6E657D612E62746E2E64697361626C65642C6669656C647365745B64697361626C65645D20612E62746E7B706F696E7465722D6576656E74733A6E6F6E657D2E62746E2D64656661756C747B636F6C6F723A233333333B6261';
wwv_flow_api.g_varchar2_table(143) := '636B67726F756E642D636F6C6F723A236666663B626F726465722D636F6C6F723A236363637D2E62746E2D64656661756C743A666F6375732C2E62746E2D64656661756C742E666F6375737B636F6C6F723A233333333B6261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(144) := '6C6F723A236536653665363B626F726465722D636F6C6F723A233863386338637D2E62746E2D64656661756C743A686F7665727B636F6C6F723A233333333B6261636B67726F756E642D636F6C6F723A236536653665363B626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(145) := '3A236164616461647D2E62746E2D64656661756C743A6163746976652C2E62746E2D64656661756C742E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64656661756C747B636F6C6F723A233333333B6261636B67';
wwv_flow_api.g_varchar2_table(146) := '726F756E642D636F6C6F723A236536653665363B626F726465722D636F6C6F723A236164616461647D2E62746E2D64656661756C743A6163746976653A686F7665722C2E62746E2D64656661756C742E6163746976653A686F7665722C2E6F70656E3E2E';
wwv_flow_api.g_varchar2_table(147) := '64726F70646F776E2D746F67676C652E62746E2D64656661756C743A686F7665722C2E62746E2D64656661756C743A6163746976653A666F6375732C2E62746E2D64656661756C742E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F77';
wwv_flow_api.g_varchar2_table(148) := '6E2D746F67676C652E62746E2D64656661756C743A666F6375732C2E62746E2D64656661756C743A6163746976652E666F6375732C2E62746E2D64656661756C742E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C';
wwv_flow_api.g_varchar2_table(149) := '652E62746E2D64656661756C742E666F6375737B636F6C6F723A233333333B6261636B67726F756E642D636F6C6F723A236434643464343B626F726465722D636F6C6F723A233863386338637D2E62746E2D64656661756C743A6163746976652C2E6274';
wwv_flow_api.g_varchar2_table(150) := '6E2D64656661756C742E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64656661756C747B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D64656661756C742E64697361626C65643A686F7665';
wwv_flow_api.g_varchar2_table(151) := '722C2E62746E2D64656661756C745B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D64656661756C743A686F7665722C2E62746E2D64656661756C742E64697361626C65643A666F6375732C2E6274';
wwv_flow_api.g_varchar2_table(152) := '6E2D64656661756C745B64697361626C65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64656661756C743A666F6375732C2E62746E2D64656661756C742E64697361626C65642E666F6375732C2E62746E2D646566';
wwv_flow_api.g_varchar2_table(153) := '61756C745B64697361626C65645D2E666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64656661756C742E666F6375737B6261636B67726F756E642D636F6C6F723A236666663B626F726465722D636F6C6F723A236363637D2E';
wwv_flow_api.g_varchar2_table(154) := '62746E2D64656661756C74202E62616467657B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233333337D2E62746E2D7072696D6172797B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A23333337616237';
wwv_flow_api.g_varchar2_table(155) := '3B626F726465722D636F6C6F723A233265366461347D2E62746E2D7072696D6172793A666F6375732C2E62746E2D7072696D6172792E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233238363039303B626F7264';
wwv_flow_api.g_varchar2_table(156) := '65722D636F6C6F723A233132326234307D2E62746E2D7072696D6172793A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233238363039303B626F726465722D636F6C6F723A233230346437347D2E62746E2D7072';
wwv_flow_api.g_varchar2_table(157) := '696D6172793A6163746976652C2E62746E2D7072696D6172792E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7072696D6172797B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A23323836';
wwv_flow_api.g_varchar2_table(158) := '3039303B626F726465722D636F6C6F723A233230346437347D2E62746E2D7072696D6172793A6163746976653A686F7665722C2E62746E2D7072696D6172792E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E';
wwv_flow_api.g_varchar2_table(159) := '62746E2D7072696D6172793A686F7665722C2E62746E2D7072696D6172793A6163746976653A666F6375732C2E62746E2D7072696D6172792E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D707269';
wwv_flow_api.g_varchar2_table(160) := '6D6172793A666F6375732C2E62746E2D7072696D6172793A6163746976652E666F6375732C2E62746E2D7072696D6172792E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7072696D6172792E666F';
wwv_flow_api.g_varchar2_table(161) := '6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233230346437343B626F726465722D636F6C6F723A233132326234307D2E62746E2D7072696D6172793A6163746976652C2E62746E2D7072696D6172792E616374697665';
wwv_flow_api.g_varchar2_table(162) := '2C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7072696D6172797B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D7072696D6172792E64697361626C65643A686F7665722C2E62746E2D7072696D6172795B64';
wwv_flow_api.g_varchar2_table(163) := '697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D7072696D6172793A686F7665722C2E62746E2D7072696D6172792E64697361626C65643A666F6375732C2E62746E2D7072696D6172795B64697361626C';
wwv_flow_api.g_varchar2_table(164) := '65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D7072696D6172793A666F6375732C2E62746E2D7072696D6172792E64697361626C65642E666F6375732C2E62746E2D7072696D6172795B64697361626C65645D2E66';
wwv_flow_api.g_varchar2_table(165) := '6F6375732C6669656C647365745B64697361626C65645D202E62746E2D7072696D6172792E666F6375737B6261636B67726F756E642D636F6C6F723A233333376162373B626F726465722D636F6C6F723A233265366461347D2E62746E2D7072696D6172';
wwv_flow_api.g_varchar2_table(166) := '79202E62616467657B636F6C6F723A233333376162373B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D737563636573737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233563623835633B626F72646572';
wwv_flow_api.g_varchar2_table(167) := '2D636F6C6F723A233463616534637D2E62746E2D737563636573733A666F6375732C2E62746E2D737563636573732E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233434396434343B626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(168) := '723A233235353632357D2E62746E2D737563636573733A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233434396434343B626F726465722D636F6C6F723A233339383433397D2E62746E2D737563636573733A61';
wwv_flow_api.g_varchar2_table(169) := '63746976652C2E62746E2D737563636573732E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563636573737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233434396434343B626F72';
wwv_flow_api.g_varchar2_table(170) := '6465722D636F6C6F723A233339383433397D2E62746E2D737563636573733A6163746976653A686F7665722C2E62746E2D737563636573732E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563';
wwv_flow_api.g_varchar2_table(171) := '636573733A686F7665722C2E62746E2D737563636573733A6163746976653A666F6375732C2E62746E2D737563636573732E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563636573733A666F';
wwv_flow_api.g_varchar2_table(172) := '6375732C2E62746E2D737563636573733A6163746976652E666F6375732C2E62746E2D737563636573732E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D737563636573732E666F6375737B636F6C';
wwv_flow_api.g_varchar2_table(173) := '6F723A236666663B6261636B67726F756E642D636F6C6F723A233339383433393B626F726465722D636F6C6F723A233235353632357D2E62746E2D737563636573733A6163746976652C2E62746E2D737563636573732E6163746976652C2E6F70656E3E';
wwv_flow_api.g_varchar2_table(174) := '2E64726F70646F776E2D746F67676C652E62746E2D737563636573737B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D737563636573732E64697361626C65643A686F7665722C2E62746E2D737563636573735B64697361626C6564';
wwv_flow_api.g_varchar2_table(175) := '5D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D737563636573733A686F7665722C2E62746E2D737563636573732E64697361626C65643A666F6375732C2E62746E2D737563636573735B64697361626C65645D3A666F63';
wwv_flow_api.g_varchar2_table(176) := '75732C6669656C647365745B64697361626C65645D202E62746E2D737563636573733A666F6375732C2E62746E2D737563636573732E64697361626C65642E666F6375732C2E62746E2D737563636573735B64697361626C65645D2E666F6375732C6669';
wwv_flow_api.g_varchar2_table(177) := '656C647365745B64697361626C65645D202E62746E2D737563636573732E666F6375737B6261636B67726F756E642D636F6C6F723A233563623835633B626F726465722D636F6C6F723A233463616534637D2E62746E2D73756363657373202E62616467';
wwv_flow_api.g_varchar2_table(178) := '657B636F6C6F723A233563623835633B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D696E666F7B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233562633064653B626F726465722D636F6C6F723A233436';
wwv_flow_api.g_varchar2_table(179) := '623864617D2E62746E2D696E666F3A666F6375732C2E62746E2D696E666F2E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233331623064353B626F726465722D636F6C6F723A233162366438357D2E62746E2D69';
wwv_flow_api.g_varchar2_table(180) := '6E666F3A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233331623064353B626F726465722D636F6C6F723A233236396162637D2E62746E2D696E666F3A6163746976652C2E62746E2D696E666F2E616374697665';
wwv_flow_api.g_varchar2_table(181) := '2C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F7B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233331623064353B626F726465722D636F6C6F723A233236396162637D2E62746E2D696E666F3A';
wwv_flow_api.g_varchar2_table(182) := '6163746976653A686F7665722C2E62746E2D696E666F2E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F3A686F7665722C2E62746E2D696E666F3A6163746976653A666F6375732C2E6274';
wwv_flow_api.g_varchar2_table(183) := '6E2D696E666F2E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F3A666F6375732C2E62746E2D696E666F3A6163746976652E666F6375732C2E62746E2D696E666F2E6163746976652E666F';
wwv_flow_api.g_varchar2_table(184) := '6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F2E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A233236396162633B626F726465722D636F6C6F723A233162366438357D2E';
wwv_flow_api.g_varchar2_table(185) := '62746E2D696E666F3A6163746976652C2E62746E2D696E666F2E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D696E666F7B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D696E666F2E646973';
wwv_flow_api.g_varchar2_table(186) := '61626C65643A686F7665722C2E62746E2D696E666F5B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D696E666F3A686F7665722C2E62746E2D696E666F2E64697361626C65643A666F6375732C2E62';
wwv_flow_api.g_varchar2_table(187) := '746E2D696E666F5B64697361626C65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D696E666F3A666F6375732C2E62746E2D696E666F2E64697361626C65642E666F6375732C2E62746E2D696E666F5B64697361626C';
wwv_flow_api.g_varchar2_table(188) := '65645D2E666F6375732C6669656C647365745B64697361626C65645D202E62746E2D696E666F2E666F6375737B6261636B67726F756E642D636F6C6F723A233562633064653B626F726465722D636F6C6F723A233436623864617D2E62746E2D696E666F';
wwv_flow_api.g_varchar2_table(189) := '202E62616467657B636F6C6F723A233562633064653B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D7761726E696E677B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236630616434653B626F726465722D';
wwv_flow_api.g_varchar2_table(190) := '636F6C6F723A236565613233367D2E62746E2D7761726E696E673A666F6375732C2E62746E2D7761726E696E672E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236563393731663B626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(191) := '3A233938356630647D2E62746E2D7761726E696E673A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236563393731663B626F726465722D636F6C6F723A236435383531327D2E62746E2D7761726E696E673A6163';
wwv_flow_api.g_varchar2_table(192) := '746976652C2E62746E2D7761726E696E672E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E696E677B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236563393731663B626F7264';
wwv_flow_api.g_varchar2_table(193) := '65722D636F6C6F723A236435383531327D2E62746E2D7761726E696E673A6163746976653A686F7665722C2E62746E2D7761726E696E672E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E';
wwv_flow_api.g_varchar2_table(194) := '696E673A686F7665722C2E62746E2D7761726E696E673A6163746976653A666F6375732C2E62746E2D7761726E696E672E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E696E673A666F63';
wwv_flow_api.g_varchar2_table(195) := '75732C2E62746E2D7761726E696E673A6163746976652E666F6375732C2E62746E2D7761726E696E672E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D7761726E696E672E666F6375737B636F6C6F';
wwv_flow_api.g_varchar2_table(196) := '723A236666663B6261636B67726F756E642D636F6C6F723A236435383531323B626F726465722D636F6C6F723A233938356630647D2E62746E2D7761726E696E673A6163746976652C2E62746E2D7761726E696E672E6163746976652C2E6F70656E3E2E';
wwv_flow_api.g_varchar2_table(197) := '64726F70646F776E2D746F67676C652E62746E2D7761726E696E677B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D7761726E696E672E64697361626C65643A686F7665722C2E62746E2D7761726E696E675B64697361626C65645D';
wwv_flow_api.g_varchar2_table(198) := '3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D7761726E696E673A686F7665722C2E62746E2D7761726E696E672E64697361626C65643A666F6375732C2E62746E2D7761726E696E675B64697361626C65645D3A666F6375';
wwv_flow_api.g_varchar2_table(199) := '732C6669656C647365745B64697361626C65645D202E62746E2D7761726E696E673A666F6375732C2E62746E2D7761726E696E672E64697361626C65642E666F6375732C2E62746E2D7761726E696E675B64697361626C65645D2E666F6375732C666965';
wwv_flow_api.g_varchar2_table(200) := '6C647365745B64697361626C65645D202E62746E2D7761726E696E672E666F6375737B6261636B67726F756E642D636F6C6F723A236630616434653B626F726465722D636F6C6F723A236565613233367D2E62746E2D7761726E696E67202E6261646765';
wwv_flow_api.g_varchar2_table(201) := '7B636F6C6F723A236630616434653B6261636B67726F756E642D636F6C6F723A236666667D2E62746E2D64616E6765727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236439353334663B626F726465722D636F6C6F723A2364';
wwv_flow_api.g_varchar2_table(202) := '34336633617D2E62746E2D64616E6765723A666F6375732C2E62746E2D64616E6765722E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236339333032633B626F726465722D636F6C6F723A233736316331397D2E';
wwv_flow_api.g_varchar2_table(203) := '62746E2D64616E6765723A686F7665727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236339333032633B626F726465722D636F6C6F723A236163323932357D2E62746E2D64616E6765723A6163746976652C2E62746E2D6461';
wwv_flow_api.g_varchar2_table(204) := '6E6765722E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765727B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F723A236339333032633B626F726465722D636F6C6F723A2361633239';
wwv_flow_api.g_varchar2_table(205) := '32357D2E62746E2D64616E6765723A6163746976653A686F7665722C2E62746E2D64616E6765722E6163746976653A686F7665722C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765723A686F7665722C2E62746E2D6461';
wwv_flow_api.g_varchar2_table(206) := '6E6765723A6163746976653A666F6375732C2E62746E2D64616E6765722E6163746976653A666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765723A666F6375732C2E62746E2D64616E6765723A6163746976';
wwv_flow_api.g_varchar2_table(207) := '652E666F6375732C2E62746E2D64616E6765722E6163746976652E666F6375732C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765722E666F6375737B636F6C6F723A236666663B6261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(208) := '3A236163323932353B626F726465722D636F6C6F723A233736316331397D2E62746E2D64616E6765723A6163746976652C2E62746E2D64616E6765722E6163746976652C2E6F70656E3E2E64726F70646F776E2D746F67676C652E62746E2D64616E6765';
wwv_flow_api.g_varchar2_table(209) := '727B6261636B67726F756E642D696D6167653A6E6F6E657D2E62746E2D64616E6765722E64697361626C65643A686F7665722C2E62746E2D64616E6765725B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62';
wwv_flow_api.g_varchar2_table(210) := '746E2D64616E6765723A686F7665722C2E62746E2D64616E6765722E64697361626C65643A666F6375732C2E62746E2D64616E6765725B64697361626C65645D3A666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64616E6765';
wwv_flow_api.g_varchar2_table(211) := '723A666F6375732C2E62746E2D64616E6765722E64697361626C65642E666F6375732C2E62746E2D64616E6765725B64697361626C65645D2E666F6375732C6669656C647365745B64697361626C65645D202E62746E2D64616E6765722E666F6375737B';
wwv_flow_api.g_varchar2_table(212) := '6261636B67726F756E642D636F6C6F723A236439353334663B626F726465722D636F6C6F723A236434336633617D2E62746E2D64616E676572202E62616467657B636F6C6F723A236439353334663B6261636B67726F756E642D636F6C6F723A23666666';
wwv_flow_api.g_varchar2_table(213) := '7D2E62746E2D6C696E6B7B636F6C6F723A233333376162373B666F6E742D7765696768743A6E6F726D616C3B626F726465722D7261646975733A307D2E62746E2D6C696E6B2C2E62746E2D6C696E6B3A6163746976652C2E62746E2D6C696E6B2E616374';
wwv_flow_api.g_varchar2_table(214) := '6976652C2E62746E2D6C696E6B5B64697361626C65645D2C6669656C647365745B64697361626C65645D202E62746E2D6C696E6B7B6261636B67726F756E642D636F6C6F723A7472616E73706172656E743B2D7765626B69742D626F782D736861646F77';
wwv_flow_api.g_varchar2_table(215) := '3A6E6F6E653B626F782D736861646F773A6E6F6E657D2E62746E2D6C696E6B2C2E62746E2D6C696E6B3A686F7665722C2E62746E2D6C696E6B3A666F6375732C2E62746E2D6C696E6B3A6163746976657B626F726465722D636F6C6F723A7472616E7370';
wwv_flow_api.g_varchar2_table(216) := '6172656E747D2E62746E2D6C696E6B3A686F7665722C2E62746E2D6C696E6B3A666F6375737B636F6C6F723A233233353237633B746578742D6465636F726174696F6E3A756E6465726C696E653B6261636B67726F756E642D636F6C6F723A7472616E73';
wwv_flow_api.g_varchar2_table(217) := '706172656E747D2E62746E2D6C696E6B5B64697361626C65645D3A686F7665722C6669656C647365745B64697361626C65645D202E62746E2D6C696E6B3A686F7665722C2E62746E2D6C696E6B5B64697361626C65645D3A666F6375732C6669656C6473';
wwv_flow_api.g_varchar2_table(218) := '65745B64697361626C65645D202E62746E2D6C696E6B3A666F6375737B636F6C6F723A233737373B746578742D6465636F726174696F6E3A6E6F6E657D2E62746E2D6C677B70616464696E673A3130707820313670783B666F6E742D73697A653A313870';
wwv_flow_api.g_varchar2_table(219) := '783B6C696E652D6865696768743A312E333333333333333B626F726465722D7261646975733A3670787D2E62746E2D736D7B70616464696E673A35707820313070783B666F6E742D73697A653A313270783B6C696E652D6865696768743A312E353B626F';
wwv_flow_api.g_varchar2_table(220) := '726465722D7261646975733A3370787D2E62746E2D78737B70616464696E673A317078203570783B666F6E742D73697A653A313270783B6C696E652D6865696768743A312E353B626F726465722D7261646975733A3370787D2E62746E2D626C6F636B7B';
wwv_flow_api.g_varchar2_table(221) := '646973706C61793A626C6F636B3B77696474683A313030257D2E62746E2D626C6F636B2B2E62746E2D626C6F636B7B6D617267696E2D746F703A3570787D696E7075745B747970653D227375626D6974225D2E62746E2D626C6F636B2C696E7075745B74';
wwv_flow_api.g_varchar2_table(222) := '7970653D227265736574225D2E62746E2D626C6F636B2C696E7075745B747970653D22627574746F6E225D2E62746E2D626C6F636B7B77696474683A313030257D2E746F6F6C7469707B706F736974696F6E3A6162736F6C7574653B7A2D696E6465783A';
wwv_flow_api.g_varchar2_table(223) := '313037303B646973706C61793A626C6F636B3B666F6E742D66616D696C793A2248656C766574696361204E657565222C48656C7665746963612C417269616C2C73616E732D73657269663B666F6E742D7374796C653A6E6F726D616C3B666F6E742D7765';
wwv_flow_api.g_varchar2_table(224) := '696768743A6E6F726D616C3B6C65747465722D73706163696E673A6E6F726D616C3B6C696E652D627265616B3A6175746F3B6C696E652D6865696768743A312E34323835373134333B746578742D616C69676E3A6C6566743B746578742D616C69676E3A';
wwv_flow_api.g_varchar2_table(225) := '73746172743B746578742D6465636F726174696F6E3A6E6F6E653B746578742D736861646F773A6E6F6E653B746578742D7472616E73666F726D3A6E6F6E653B77686974652D73706163653A6E6F726D616C3B776F72642D627265616B3A6E6F726D616C';
wwv_flow_api.g_varchar2_table(226) := '3B776F72642D73706163696E673A6E6F726D616C3B776F72642D777261703A6E6F726D616C3B666F6E742D73697A653A313270783B6F7061636974793A303B66696C7465723A616C706861286F7061636974793D30297D2E746F6F6C7469702E696E7B6F';
wwv_flow_api.g_varchar2_table(227) := '7061636974793A2E393B66696C7465723A616C706861286F7061636974793D3930297D2E746F6F6C7469702E746F707B6D617267696E2D746F703A2D3370783B70616464696E673A35707820307D2E746F6F6C7469702E72696768747B6D617267696E2D';
wwv_flow_api.g_varchar2_table(228) := '6C6566743A3370783B70616464696E673A30203570787D2E746F6F6C7469702E626F74746F6D7B6D617267696E2D746F703A3370783B70616464696E673A35707820307D2E746F6F6C7469702E6C6566747B6D617267696E2D6C6566743A2D3370783B70';
wwv_flow_api.g_varchar2_table(229) := '616464696E673A30203570787D2E746F6F6C7469702D696E6E65727B6D61782D77696474683A32303070783B70616464696E673A337078203870783B636F6C6F723A236666663B746578742D616C69676E3A63656E7465723B6261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(230) := '636F6C6F723A233030303B626F726465722D7261646975733A3470787D2E746F6F6C7469702D6172726F777B706F736974696F6E3A6162736F6C7574653B77696474683A303B6865696768743A303B626F726465722D636F6C6F723A7472616E73706172';
wwv_flow_api.g_varchar2_table(231) := '656E743B626F726465722D7374796C653A736F6C69647D2E746F6F6C7469702E746F70202E746F6F6C7469702D6172726F777B626F74746F6D3A303B6C6566743A3530253B6D617267696E2D6C6566743A2D3570783B626F726465722D77696474683A35';
wwv_flow_api.g_varchar2_table(232) := '70782035707820303B626F726465722D746F702D636F6C6F723A233030307D2E746F6F6C7469702E746F702D6C656674202E746F6F6C7469702D6172726F777B626F74746F6D3A303B72696768743A3570783B6D617267696E2D626F74746F6D3A2D3570';
wwv_flow_api.g_varchar2_table(233) := '783B626F726465722D77696474683A3570782035707820303B626F726465722D746F702D636F6C6F723A233030307D2E746F6F6C7469702E746F702D7269676874202E746F6F6C7469702D6172726F777B626F74746F6D3A303B6C6566743A3570783B6D';
wwv_flow_api.g_varchar2_table(234) := '617267696E2D626F74746F6D3A2D3570783B626F726465722D77696474683A3570782035707820303B626F726465722D746F702D636F6C6F723A233030307D2E746F6F6C7469702E7269676874202E746F6F6C7469702D6172726F777B746F703A353025';
wwv_flow_api.g_varchar2_table(235) := '3B6C6566743A303B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A357078203570782035707820303B626F726465722D72696768742D636F6C6F723A233030307D2E746F6F6C7469702E6C656674202E746F6F6C7469702D6172';
wwv_flow_api.g_varchar2_table(236) := '726F777B746F703A3530253B72696768743A303B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A357078203020357078203570783B626F726465722D6C6566742D636F6C6F723A233030307D2E746F6F6C7469702E626F74746F';
wwv_flow_api.g_varchar2_table(237) := '6D202E746F6F6C7469702D6172726F777B746F703A303B6C6566743A3530253B6D617267696E2D6C6566743A2D3570783B626F726465722D77696474683A3020357078203570783B626F726465722D626F74746F6D2D636F6C6F723A233030307D2E746F';
wwv_flow_api.g_varchar2_table(238) := '6F6C7469702E626F74746F6D2D6C656674202E746F6F6C7469702D6172726F777B746F703A303B72696768743A3570783B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A3020357078203570783B626F726465722D626F74746F';
wwv_flow_api.g_varchar2_table(239) := '6D2D636F6C6F723A233030307D2E746F6F6C7469702E626F74746F6D2D7269676874202E746F6F6C7469702D6172726F777B746F703A303B6C6566743A3570783B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A302035707820';
wwv_flow_api.g_varchar2_table(240) := '3570783B626F726465722D626F74746F6D2D636F6C6F723A233030307D2E706F706F7665727B706F736974696F6E3A6162736F6C7574653B746F703A303B6C6566743A303B7A2D696E6465783A313036303B646973706C61793A6E6F6E653B6D61782D77';
wwv_flow_api.g_varchar2_table(241) := '696474683A32373670783B70616464696E673A3170783B666F6E742D66616D696C793A2248656C766574696361204E657565222C48656C7665746963612C417269616C2C73616E732D73657269663B666F6E742D7374796C653A6E6F726D616C3B666F6E';
wwv_flow_api.g_varchar2_table(242) := '742D7765696768743A6E6F726D616C3B6C65747465722D73706163696E673A6E6F726D616C3B6C696E652D627265616B3A6175746F3B6C696E652D6865696768743A312E34323835373134333B746578742D616C69676E3A6C6566743B746578742D616C';
wwv_flow_api.g_varchar2_table(243) := '69676E3A73746172743B746578742D6465636F726174696F6E3A6E6F6E653B746578742D736861646F773A6E6F6E653B746578742D7472616E73666F726D3A6E6F6E653B77686974652D73706163653A6E6F726D616C3B776F72642D627265616B3A6E6F';
wwv_flow_api.g_varchar2_table(244) := '726D616C3B776F72642D73706163696E673A6E6F726D616C3B776F72642D777261703A6E6F726D616C3B666F6E742D73697A653A313470783B6261636B67726F756E642D636F6C6F723A236666663B6261636B67726F756E642D636C69703A7061646469';
wwv_flow_api.g_varchar2_table(245) := '6E672D626F783B626F726465723A31707820736F6C696420236363633B626F726465723A31707820736F6C6964207267626128302C302C302C302E32293B626F726465722D7261646975733A3670783B2D7765626B69742D626F782D736861646F773A30';
wwv_flow_api.g_varchar2_table(246) := '203570782031307078207267626128302C302C302C302E32293B626F782D736861646F773A30203570782031307078207267626128302C302C302C302E32297D2E706F706F7665722E746F707B6D617267696E2D746F703A2D313070787D2E706F706F76';
wwv_flow_api.g_varchar2_table(247) := '65722E72696768747B6D617267696E2D6C6566743A313070787D2E706F706F7665722E626F74746F6D7B6D617267696E2D746F703A313070787D2E706F706F7665722E6C6566747B6D617267696E2D6C6566743A2D313070787D2E706F706F7665722D74';
wwv_flow_api.g_varchar2_table(248) := '69746C657B6D617267696E3A303B70616464696E673A38707820313470783B666F6E742D73697A653A313470783B6261636B67726F756E642D636F6C6F723A236637663766373B626F726465722D626F74746F6D3A31707820736F6C6964202365626562';
wwv_flow_api.g_varchar2_table(249) := '65623B626F726465722D7261646975733A35707820357078203020307D2E706F706F7665722D636F6E74656E747B70616464696E673A39707820313470787D2E706F706F7665723E2E6172726F772C2E706F706F7665723E2E6172726F773A6166746572';
wwv_flow_api.g_varchar2_table(250) := '7B706F736974696F6E3A6162736F6C7574653B646973706C61793A626C6F636B3B77696474683A303B6865696768743A303B626F726465722D636F6C6F723A7472616E73706172656E743B626F726465722D7374796C653A736F6C69647D2E706F706F76';
wwv_flow_api.g_varchar2_table(251) := '65723E2E6172726F777B626F726465722D77696474683A313170787D2E706F706F7665723E2E6172726F773A61667465727B626F726465722D77696474683A313070783B636F6E74656E743A22227D2E706F706F7665722E746F703E2E6172726F777B6C';
wwv_flow_api.g_varchar2_table(252) := '6566743A3530253B6D617267696E2D6C6566743A2D313170783B626F726465722D626F74746F6D2D77696474683A303B626F726465722D746F702D636F6C6F723A233939393B626F726465722D746F702D636F6C6F723A7267626128302C302C302C302E';
wwv_flow_api.g_varchar2_table(253) := '3235293B626F74746F6D3A2D313170787D2E706F706F7665722E746F703E2E6172726F773A61667465727B636F6E74656E743A2220223B626F74746F6D3A3170783B6D617267696E2D6C6566743A2D313070783B626F726465722D626F74746F6D2D7769';
wwv_flow_api.g_varchar2_table(254) := '6474683A303B626F726465722D746F702D636F6C6F723A236666667D2E706F706F7665722E72696768743E2E6172726F777B746F703A3530253B6C6566743A2D313170783B6D617267696E2D746F703A2D313170783B626F726465722D6C6566742D7769';
wwv_flow_api.g_varchar2_table(255) := '6474683A303B626F726465722D72696768742D636F6C6F723A233939393B626F726465722D72696768742D636F6C6F723A7267626128302C302C302C302E3235297D2E706F706F7665722E72696768743E2E6172726F773A61667465727B636F6E74656E';
wwv_flow_api.g_varchar2_table(256) := '743A2220223B6C6566743A3170783B626F74746F6D3A2D313070783B626F726465722D6C6566742D77696474683A303B626F726465722D72696768742D636F6C6F723A236666667D2E706F706F7665722E626F74746F6D3E2E6172726F777B6C6566743A';
wwv_flow_api.g_varchar2_table(257) := '3530253B6D617267696E2D6C6566743A2D313170783B626F726465722D746F702D77696474683A303B626F726465722D626F74746F6D2D636F6C6F723A233939393B626F726465722D626F74746F6D2D636F6C6F723A7267626128302C302C302C302E32';
wwv_flow_api.g_varchar2_table(258) := '35293B746F703A2D313170787D2E706F706F7665722E626F74746F6D3E2E6172726F773A61667465727B636F6E74656E743A2220223B746F703A3170783B6D617267696E2D6C6566743A2D313070783B626F726465722D746F702D77696474683A303B62';
wwv_flow_api.g_varchar2_table(259) := '6F726465722D626F74746F6D2D636F6C6F723A236666667D2E706F706F7665722E6C6566743E2E6172726F777B746F703A3530253B72696768743A2D313170783B6D617267696E2D746F703A2D313170783B626F726465722D72696768742D7769647468';
wwv_flow_api.g_varchar2_table(260) := '3A303B626F726465722D6C6566742D636F6C6F723A233939393B626F726465722D6C6566742D636F6C6F723A7267626128302C302C302C302E3235297D2E706F706F7665722E6C6566743E2E6172726F773A61667465727B636F6E74656E743A2220223B';
wwv_flow_api.g_varchar2_table(261) := '72696768743A3170783B626F726465722D72696768742D77696474683A303B626F726465722D6C6566742D636F6C6F723A236666663B626F74746F6D3A2D313070787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121153448164127221)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'css/bootstrap.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A210A202A20436C6F636B5069636B65722076302E302E3720666F7220426F6F7473747261702028687474703A2F2F77656172656F75746D616E2E6769746875622E696F2F636C6F636B7069636B65722F290A202A20436F7079726967687420323031';
wwv_flow_api.g_varchar2_table(2) := '342057616E67205368656E7765692E0A202A204C6963656E73656420756E646572204D4954202868747470733A2F2F6769746875622E636F6D2F77656172656F75746D616E2F636C6F636B7069636B65722F626C6F622F67682D70616765732F4C494345';
wwv_flow_api.g_varchar2_table(3) := '4E5345290A202A2F2E636C6F636B7069636B6572202E696E7075742D67726F75702D6164646F6E7B637572736F723A706F696E7465727D2E636C6F636B7069636B65722D6D6F76696E677B637572736F723A6D6F76657D2E636C6F636B7069636B65722D';
wwv_flow_api.g_varchar2_table(4) := '616C69676E2D6C6566742E706F706F7665723E2E6172726F777B6C6566743A323570787D2E636C6F636B7069636B65722D616C69676E2D746F702E706F706F7665723E2E6172726F777B746F703A313770787D2E636C6F636B7069636B65722D616C6967';
wwv_flow_api.g_varchar2_table(5) := '6E2D72696768742E706F706F7665723E2E6172726F777B6C6566743A6175746F3B72696768743A323570787D2E636C6F636B7069636B65722D616C69676E2D626F74746F6D2E706F706F7665723E2E6172726F777B746F703A6175746F3B626F74746F6D';
wwv_flow_api.g_varchar2_table(6) := '3A3670787D2E636C6F636B7069636B65722D706F706F766572202E706F706F7665722D7469746C657B6261636B67726F756E642D636F6C6F723A236666663B636F6C6F723A233939393B666F6E742D73697A653A323470783B666F6E742D776569676874';
wwv_flow_api.g_varchar2_table(7) := '3A3730303B6C696E652D6865696768743A333070783B746578742D616C69676E3A63656E7465727D2E636C6F636B7069636B65722D706F706F766572202E706F706F7665722D7469746C65207370616E7B637572736F723A706F696E7465727D2E636C6F';
wwv_flow_api.g_varchar2_table(8) := '636B7069636B65722D706F706F766572202E706F706F7665722D636F6E74656E747B6261636B67726F756E642D636F6C6F723A236638663866383B70616464696E673A313270787D2E706F706F7665722D636F6E74656E743A6C6173742D6368696C647B';
wwv_flow_api.g_varchar2_table(9) := '626F726465722D626F74746F6D2D6C6566742D7261646975733A3570783B626F726465722D626F74746F6D2D72696768742D7261646975733A3570787D2E636C6F636B7069636B65722D706C6174657B6261636B67726F756E642D636F6C6F723A236666';
wwv_flow_api.g_varchar2_table(10) := '663B626F726465723A31707820736F6C696420236363633B626F726465722D7261646975733A3530253B77696474683A32303070783B6865696768743A32303070783B6F766572666C6F773A76697369626C653B706F736974696F6E3A72656C61746976';
wwv_flow_api.g_varchar2_table(11) := '653B2D7765626B69742D746F7563682D63616C6C6F75743A6E6F6E653B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6B68746D6C2D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E653B';
wwv_flow_api.g_varchar2_table(12) := '2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E657D2E636C6F636B7069636B65722D63616E7661732C2E636C6F636B7069636B65722D6469616C7B77696474683A32303070783B6865696768743A3230307078';
wwv_flow_api.g_varchar2_table(13) := '3B706F736974696F6E3A6162736F6C7574653B6C6566743A2D3170783B746F703A2D3170787D2E636C6F636B7069636B65722D6D696E757465737B7669736962696C6974793A68696464656E7D2E636C6F636B7069636B65722D7469636B7B626F726465';
wwv_flow_api.g_varchar2_table(14) := '722D7261646975733A3530253B636F6C6F723A233636363B6C696E652D6865696768743A323670783B746578742D616C69676E3A63656E7465723B77696474683A323670783B6865696768743A323670783B706F736974696F6E3A6162736F6C7574653B';
wwv_flow_api.g_varchar2_table(15) := '637572736F723A706F696E7465727D2E636C6F636B7069636B65722D7469636B2E6163746976652C2E636C6F636B7069636B65722D7469636B3A686F7665727B6261636B67726F756E642D636F6C6F723A236330653566373B6261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(16) := '636F6C6F723A7267626128302C3134392C3232312C2E3235297D2E636C6F636B7069636B65722D627574746F6E7B6261636B67726F756E642D696D6167653A6E6F6E653B6261636B67726F756E642D636F6C6F723A236666663B626F726465722D776964';
wwv_flow_api.g_varchar2_table(17) := '74683A317078203020303B626F726465722D746F702D6C6566742D7261646975733A303B626F726465722D746F702D72696768742D7261646975733A303B6D617267696E3A303B70616464696E673A3130707820307D2E636C6F636B7069636B65722D62';
wwv_flow_api.g_varchar2_table(18) := '7574746F6E3A686F7665727B6261636B67726F756E642D696D6167653A6E6F6E653B6261636B67726F756E642D636F6C6F723A236562656265627D2E636C6F636B7069636B65722D627574746F6E3A666F6375737B6F75746C696E653A3021696D706F72';
wwv_flow_api.g_varchar2_table(19) := '74616E747D2E636C6F636B7069636B65722D6469616C7B2D7765626B69742D7472616E736974696F6E3A2D7765626B69742D7472616E73666F726D203335306D732C6F706163697479203335306D733B2D6D6F7A2D7472616E736974696F6E3A2D6D6F7A';
wwv_flow_api.g_varchar2_table(20) := '2D7472616E73666F726D203335306D732C6F706163697479203335306D733B2D6D732D7472616E736974696F6E3A2D6D732D7472616E73666F726D203335306D732C6F706163697479203335306D733B2D6F2D7472616E736974696F6E3A2D6F2D747261';
wwv_flow_api.g_varchar2_table(21) := '6E73666F726D203335306D732C6F706163697479203335306D733B7472616E736974696F6E3A7472616E73666F726D203335306D732C6F706163697479203335306D737D2E636C6F636B7069636B65722D6469616C2D6F75747B6F7061636974793A307D';
wwv_flow_api.g_varchar2_table(22) := '2E636C6F636B7069636B65722D686F7572732E636C6F636B7069636B65722D6469616C2D6F75747B2D7765626B69742D7472616E73666F726D3A7363616C6528312E322C312E32293B2D6D6F7A2D7472616E73666F726D3A7363616C6528312E322C312E';
wwv_flow_api.g_varchar2_table(23) := '32293B2D6D732D7472616E73666F726D3A7363616C6528312E322C312E32293B2D6F2D7472616E73666F726D3A7363616C6528312E322C312E32293B7472616E73666F726D3A7363616C6528312E322C312E32297D2E636C6F636B7069636B65722D6D69';
wwv_flow_api.g_varchar2_table(24) := '6E757465732E636C6F636B7069636B65722D6469616C2D6F75747B2D7765626B69742D7472616E73666F726D3A7363616C65282E382C2E38293B2D6D6F7A2D7472616E73666F726D3A7363616C65282E382C2E38293B2D6D732D7472616E73666F726D3A';
wwv_flow_api.g_varchar2_table(25) := '7363616C65282E382C2E38293B2D6F2D7472616E73666F726D3A7363616C65282E382C2E38293B7472616E73666F726D3A7363616C65282E382C2E38297D2E636C6F636B7069636B65722D63616E7661737B2D7765626B69742D7472616E736974696F6E';
wwv_flow_api.g_varchar2_table(26) := '3A6F706163697479203137356D733B2D6D6F7A2D7472616E736974696F6E3A6F706163697479203137356D733B2D6D732D7472616E736974696F6E3A6F706163697479203137356D733B2D6F2D7472616E736974696F6E3A6F706163697479203137356D';
wwv_flow_api.g_varchar2_table(27) := '733B7472616E736974696F6E3A6F706163697479203137356D737D2E636C6F636B7069636B65722D63616E7661732D6F75747B6F7061636974793A2E32357D2E636C6F636B7069636B65722D63616E7661732D62656172696E672C2E636C6F636B706963';
wwv_flow_api.g_varchar2_table(28) := '6B65722D63616E7661732D66677B7374726F6B653A6E6F6E653B66696C6C3A233030393564647D2E636C6F636B7069636B65722D63616E7661732D62677B7374726F6B653A6E6F6E653B66696C6C3A236330653566377D2E636C6F636B7069636B65722D';
wwv_flow_api.g_varchar2_table(29) := '63616E7661732D62672D7472616E737B66696C6C3A7267626128302C3134392C3232312C2E3235297D2E636C6F636B7069636B65722D63616E766173206C696E657B7374726F6B653A233030393564643B7374726F6B652D77696474683A313B7374726F';
wwv_flow_api.g_varchar2_table(30) := '6B652D6C696E656361703A726F756E647D2E636C6F636B7069636B65722D627574746F6E2E616D2D627574746F6E7B6D617267696E3A3170783B70616464696E673A3570783B626F726465723A31707820736F6C6964207267626128302C302C302C2E32';
wwv_flow_api.g_varchar2_table(31) := '293B626F726465722D7261646975733A3470787D2E636C6F636B7069636B65722D627574746F6E2E706D2D627574746F6E7B6D617267696E3A31707820317078203170782031333670783B70616464696E673A3570783B626F726465723A31707820736F';
wwv_flow_api.g_varchar2_table(32) := '6C6964207267626128302C302C302C2E32293B626F726465722D7261646975733A3470787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(121153955824135726)
,p_plugin_id=>wwv_flow_api.id(11281921034772539271)
,p_file_name=>'css/bootstrap-clockpicker.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/item_type/com_oracle_apex_simple_checkbox_2
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(17232453020663365698)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'COM.ORACLE.APEX.SIMPLE_CHECKBOX_2'
,p_display_name=>'Simple Checkbox 2 (With Switch Support)'
,p_supported_ui_types=>'DESKTOP'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_ITEMS'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('ITEM TYPE','COM.ORACLE.APEX.SIMPLE_CHECKBOX_2'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--===============================================================================',
'-- Renders the Simple Checkbox item type based on the configuration of the page item.',
'--===============================================================================',
'function render_simple_checkbox (',
'    p_item                in apex_plugin.t_page_item,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_value               in varchar2,',
'    p_is_readonly         in boolean,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_page_item_render_result',
'is',
'    -- Use named variables instead of the generic attribute variables',
'    l_checked_value    varchar2(255)  := nvl(p_item.attribute_01, ''Y'');',
'    l_unchecked_value  varchar2(255)  := p_item.attribute_02;',
'    l_checked_label    varchar2(4000) := p_item.attribute_03;',
'    l_bootstrap_switch varchar2(10)   := p_item.attribute_04;',
'    l_on_colour        varchar2(30)   := p_item.attribute_05;',
'    l_off_colour       varchar2(30)   := p_item.attribute_06;',
'    l_on_text          varchar2(20)   := p_item.attribute_07;',
'    l_off_text         varchar2(20)   := p_item.attribute_08;',
'    l_size             varchar2(20)   := p_item.attribute_09;',
'',
'    l_name             varchar2(30);',
'    l_value            varchar2(255);',
'    l_checkbox_postfix varchar2(8);',
'    ',
'    v_html             varchar2(4000); -- Used for temp HTML/JS',
'    l_result           apex_plugin.t_page_item_render_result;',
'begin',
'    -- if the current value doesn''t match our checked and unchecked value',
'    -- we fallback to the unchecked value ',
'    if p_value in (l_checked_value, l_unchecked_value) then',
'        l_value := p_value;',
'    else',
'        l_value := l_unchecked_value;',
'    end if;',
'',
'    if p_is_readonly or p_is_printer_friendly then',
'        -- if the checkbox is readonly we will still render a hidden field with',
'        -- the value so that it can be used when the page gets submitted',
'        wwv_flow_plugin_util.print_hidden_if_readonly (',
'            p_item_name           => p_item.name,',
'            p_value               => p_value,',
'            p_is_readonly         => p_is_readonly,',
'            p_is_printer_friendly => p_is_printer_friendly );',
'        l_checkbox_postfix := ''_DISPLAY'';',
'',
'        -- Tell APEX that this field is NOT navigable',
'        l_result.is_navigable := false;',
'    else',
'        -- If a page item saves state, we have to call the get_input_name_for_page_item',
'        -- to render the internal hidden p_arg_names field. It will also return the',
'        -- HTML field name which we have to use when we render the HTML input field.',
'        l_name := wwv_flow_plugin.get_input_name_for_page_item(false);',
'',
'        -- render the hidden field which actually stores the checkbox value',
'        sys.htp.prn (',
'            ''<input type="hidden" id="''||p_item.name||''_HIDDEN" name="''||l_name||''" ''||',
'            ''value="''||l_value||''" />'');',
'',
'        -- Add the JavaScript library and the call to initialize the widget',
'        apex_javascript.add_library (',
'            p_name      => ''com_oracle_apex_simple_checkbox.min'',',
'            p_directory => p_plugin.file_prefix,',
'            p_version   => null );',
'',
'        apex_javascript.add_onload_code (',
'            p_code => ''com_oracle_apex_simple_checkbox(''||',
'                      apex_javascript.add_value(p_item.name)||',
'                      ''{''||',
'                      apex_javascript.add_attribute(''unchecked'', l_unchecked_value, false)||',
'                      apex_javascript.add_attribute(''checked'',   l_checked_value, false, false)||',
'                      ''});'' );',
'        ',
'        -- Add the Bootstrap Switch JavasScript library',
'        apex_javascript.add_library (',
'            p_name      => ''bootstrap-switch.min'',',
'            p_directory => p_plugin.file_prefix,',
'            p_version   => null );',
'        -- Add the required css files for Bootstrap Switch',
'        apex_css.add_file(',
'         p_name      => ''bootstrap-switch.min'',',
'         p_directory => p_plugin.file_prefix,',
'         p_version   => null );',
'',
'        -- Tell APEX that this field is navigable',
'        l_result.is_navigable := true;',
'    end if;',
'    -- render the checkbox widget',
'    sys.htp.prn (',
'        ''<input type="checkbox" style="display: none;" id="''||p_item.name||l_checkbox_postfix||''" ''||',
'        ''value="''||l_value||''" ''||',
'        case when l_value = l_checked_value then ''checked="checked" '' end||',
'        case when p_is_readonly or p_is_printer_friendly then ''disabled="disabled" '' end||',
'        coalesce(p_item.element_attributes, ''class="simple_checkbox"'')||'' />'');',
'',
'    -- print label after checkbox',
'    if l_checked_label is not null then',
'        sys.htp.prn(''<label for="''||p_item.name||l_checkbox_postfix||''">''||l_checked_label||''</label>'');',
'    end if;',
'    ',
'    -- If Bootstrap Switch is set to Yes then render it, else render the normal plugin',
'    if l_bootstrap_switch = ''Y'' then',
'        v_html := ''$("#%ID%").bootstrapSwitch();'';',
'        v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'        apex_javascript.add_onload_code (p_code => v_html);',
'        ',
'            -- Setting the onColour Option',
'        if l_on_colour is not null then',
'            v_html := ''$("#%ID%").bootstrapSwitch("onColor", "%ONCOLOR%");'';',
'            v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'            v_html := REPLACE(v_html, ''%ONCOLOR%'', l_on_colour);',
'            apex_javascript.add_onload_code (p_code => v_html);',
'        end if;',
'',
'        -- Setting the offColour Option',
'        if l_off_colour is not null then',
'            v_html := ''$("#%ID%").bootstrapSwitch("offColor", "%OFFCOLOR%");'';',
'            v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'            v_html := REPLACE(v_html, ''%OFFCOLOR%'', l_off_colour);',
'            apex_javascript.add_onload_code (p_code => v_html);',
'        end if;',
'',
'        -- Setting onText Option',
'        if l_on_text is not null then',
'            v_html := ''$("#%ID%").bootstrapSwitch("onText", "%ONTEXT%");'';',
'            v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'            v_html := REPLACE(v_html, ''%ONTEXT%'', l_on_text);',
'            apex_javascript.add_onload_code (p_code => v_html);',
'        end if;',
'',
'        -- Setting offText Option',
'        if l_off_text is not null then',
'            v_html := ''$("#%ID%").bootstrapSwitch("offText", "%OFFTEXT%");'';',
'            v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'            v_html := REPLACE(v_html, ''%OFFTEXT%'', l_off_text);',
'            apex_javascript.add_onload_code (p_code => v_html);',
'        end if;',
'',
'        -- Setting Size Option',
'        if l_size is not null then',
'            v_html := ''$("#%ID%").bootstrapSwitch("size", "%SIZE%");'';',
'            v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'            v_html := REPLACE(v_html, ''%SIZE%'', l_size);',
'            apex_javascript.add_onload_code (p_code => v_html);',
'        end if;',
'        v_html := ''$("#%ID%").on(''''switchChange.bootstrapSwitch'''', function(event, state) {',
'                 apex.event.trigger($(this), ''''switchchange'''');',
'                });'';',
'        v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'        apex_javascript.add_onload_code (p_code => v_html);',
'    else',
'        v_html := ''$("#%ID%").removeAttr("style");'';',
'        v_html := REPLACE(v_html, ''%ID%'', p_item.name);',
'        apex_javascript.add_onload_code (p_code => v_html);',
'    end if;',
'    return l_result;',
'end render_simple_checkbox;',
'',
'--==============================================================================',
'-- Validates the submitted "Simple Checkbox" value against the configuration to',
'-- make sure that invalid values submitted by hackers are detected.',
'--==============================================================================',
'function validate_simple_checkbox (',
'    p_item   in apex_plugin.t_page_item,',
'    p_plugin in apex_plugin.t_plugin,',
'    p_value  in varchar2 )',
'    return apex_plugin.t_page_item_validation_result',
'is',
'    l_checked_value   varchar2(255) := nvl(p_item.attribute_01, ''Y'');',
'    l_unchecked_value varchar2(255) := p_item.attribute_02;',
'',
'    l_result          apex_plugin.t_page_item_validation_result;',
'begin',
'    if not (   p_value in (l_checked_value, l_unchecked_value)',
'            or (p_value is null and l_unchecked_value is null)',
'           )',
'    then',
'        l_result.message := ''Checkbox contains invalid value!'';',
'    end if;',
'    return l_result;',
'end validate_simple_checkbox;',
''))
,p_api_version=>1
,p_render_function=>'render_simple_checkbox'
,p_validation_function=>'validate_simple_checkbox'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE:ELEMENT:ENCRYPT'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'	This item type plug-in displays a single checkbox but allows you to set 2 values (one for checked and another for unchecked). It&#39;s perfect for Y(es)/N(o) type checkboxes.</p>',
'<p>',
'	Without this plug-in, you would need to write a custom computation to get the same functionality.</p>'))
,p_version_identifier=>'1.3'
,p_about_url=>'https://github.com/farzadso/Simple-Checkbox-2--With-Bootstrap-Switch-'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17232497917902440507)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Checked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_default_value=>'Y'
,p_display_length=>10
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>'Value stored if the checkbox is checked.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17233049121850643884)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Unchecked Value'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>10
,p_max_length=>255
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Value stored if the checkbox is unchecked. This attribute can also be left blank if you want to store NULL when the checkbox is left unchecked.</p>',
'',
'<p>Note: This value will also be used if the page item is populated with a value which doesn''t match the "Checked Value" or "Unchecked Value".</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(17233048616656642387)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Checkbox Label'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>40
,p_is_translatable=>true
,p_help_text=>'Label to be displayed after the checkbox. If you set this optional attribute, you should remove the text in the label attribute of the page item.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(419739122520182509)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Bootstrap Switch'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
,p_help_text=>'This is defaulted to "Yes", select "No" if you want the item to render as a default Simple Checkbox item (no pill functionality).'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(419743987445582090)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'"On" Colour'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(419739122520182509)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419744603192583290)
,p_plugin_attribute_id=>wwv_flow_api.id(419743987445582090)
,p_display_sequence=>10
,p_display_value=>'primary'
,p_return_value=>'primary'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419744959757584135)
,p_plugin_attribute_id=>wwv_flow_api.id(419743987445582090)
,p_display_sequence=>20
,p_display_value=>'info'
,p_return_value=>'info'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419745388775584673)
,p_plugin_attribute_id=>wwv_flow_api.id(419743987445582090)
,p_display_sequence=>30
,p_display_value=>'success'
,p_return_value=>'success'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419745718041585620)
,p_plugin_attribute_id=>wwv_flow_api.id(419743987445582090)
,p_display_sequence=>40
,p_display_value=>'warning'
,p_return_value=>'warning'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419746111580586131)
,p_plugin_attribute_id=>wwv_flow_api.id(419743987445582090)
,p_display_sequence=>50
,p_display_value=>'danger'
,p_return_value=>'danger'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419746565012587648)
,p_plugin_attribute_id=>wwv_flow_api.id(419743987445582090)
,p_display_sequence=>60
,p_display_value=>'default'
,p_return_value=>'default'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(419748871203677012)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'"Off" Colour'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(419739122520182509)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419749502484677831)
,p_plugin_attribute_id=>wwv_flow_api.id(419748871203677012)
,p_display_sequence=>10
,p_display_value=>'primary'
,p_return_value=>'primary'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419749859925678420)
,p_plugin_attribute_id=>wwv_flow_api.id(419748871203677012)
,p_display_sequence=>20
,p_display_value=>'info'
,p_return_value=>'info'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419750304199679030)
,p_plugin_attribute_id=>wwv_flow_api.id(419748871203677012)
,p_display_sequence=>30
,p_display_value=>'success'
,p_return_value=>'success'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419750684558679652)
,p_plugin_attribute_id=>wwv_flow_api.id(419748871203677012)
,p_display_sequence=>40
,p_display_value=>'warning'
,p_return_value=>'warning'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419751021052680428)
,p_plugin_attribute_id=>wwv_flow_api.id(419748871203677012)
,p_display_sequence=>50
,p_display_value=>'danger'
,p_return_value=>'danger'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419751424430681224)
,p_plugin_attribute_id=>wwv_flow_api.id(419748871203677012)
,p_display_sequence=>60
,p_display_value=>'default'
,p_return_value=>'default'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(419752648699721314)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'"On" Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(419739122520182509)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(419753261642722149)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'"Off" Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(419739122520182509)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(419755097308733721)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(419739122520182509)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_lov_type=>'STATIC'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419755698712734563)
,p_plugin_attribute_id=>wwv_flow_api.id(419755097308733721)
,p_display_sequence=>10
,p_display_value=>'Mini'
,p_return_value=>'mini'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419756100987735294)
,p_plugin_attribute_id=>wwv_flow_api.id(419755097308733721)
,p_display_sequence=>20
,p_display_value=>'Small'
,p_return_value=>'small'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419756486476736262)
,p_plugin_attribute_id=>wwv_flow_api.id(419755097308733721)
,p_display_sequence=>30
,p_display_value=>'Normal'
,p_return_value=>'normal'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(419757202935736988)
,p_plugin_attribute_id=>wwv_flow_api.id(419755097308733721)
,p_display_sequence=>40
,p_display_value=>'Large'
,p_return_value=>'large'
,p_is_quick_pick=>true
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(271253903762834541)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_name=>'switchchange'
,p_display_name=>'Switch Changed'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A20626F6F7473747261702D737769746368202D207633';
wwv_flow_api.g_varchar2_table(2) := '2E332E320A202A20687474703A2F2F7777772E626F6F7473747261702D7377697463682E6F72670A202A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(3) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A20436F7079726967687420323031322D32303133204D6174746961204C6172656E7469730A202A0A202A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(4) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A204C6963656E73656420756E6465722074686520417061636865204C6963656E73652C2056657273696F6E20322E30202874686520224C6963656E736522293B';
wwv_flow_api.g_varchar2_table(5) := '0A202A20796F75206D6179206E6F742075736520746869732066696C652065786365707420696E20636F6D706C69616E6365207769746820746865204C6963656E73652E0A202A20596F75206D6179206F627461696E206120636F7079206F6620746865';
wwv_flow_api.g_varchar2_table(6) := '204C6963656E73652061740A202A0A202A2020202020687474703A2F2F7777772E6170616368652E6F72672F6C6963656E7365732F4C4943454E53452D322E300A202A0A202A20556E6C657373207265717569726564206279206170706C696361626C65';
wwv_flow_api.g_varchar2_table(7) := '206C6177206F722061677265656420746F20696E2077726974696E672C20736F6674776172650A202A20646973747269627574656420756E64657220746865204C6963656E7365206973206469737472696275746564206F6E20616E2022415320495322';
wwv_flow_api.g_varchar2_table(8) := '2042415349532C0A202A20574954484F55542057415252414E54494553204F5220434F4E444954494F4E53204F4620414E59204B494E442C206569746865722065787072657373206F7220696D706C6965642E0A202A2053656520746865204C6963656E';
wwv_flow_api.g_varchar2_table(9) := '736520666F7220746865207370656369666963206C616E677561676520676F7665726E696E67207065726D697373696F6E7320616E640A202A206C696D69746174696F6E7320756E64657220746865204C6963656E73652E0A202A203D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(10) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A2F0A0A2E626F6F7473747261702D7377697463687B646973706C61793A696E6C69';
wwv_flow_api.g_varchar2_table(11) := '6E652D626C6F636B3B646972656374696F6E3A6C74723B637572736F723A706F696E7465723B626F726465722D7261646975733A3470783B626F726465723A31707820736F6C696420236363633B706F736974696F6E3A72656C61746976653B74657874';
wwv_flow_api.g_varchar2_table(12) := '2D616C69676E3A6C6566743B6F766572666C6F773A68696464656E3B6C696E652D6865696768743A3870783B7A2D696E6465783A303B2D7765626B69742D757365722D73656C6563743A6E6F6E653B2D6D6F7A2D757365722D73656C6563743A6E6F6E65';
wwv_flow_api.g_varchar2_table(13) := '3B2D6D732D757365722D73656C6563743A6E6F6E653B757365722D73656C6563743A6E6F6E653B766572746963616C2D616C69676E3A6D6964646C653B2D7765626B69742D7472616E736974696F6E3A626F726465722D636F6C6F7220656173652D696E';
wwv_flow_api.g_varchar2_table(14) := '2D6F7574202E3135732C626F782D736861646F7720656173652D696E2D6F7574202E3135733B2D6F2D7472616E736974696F6E3A626F726465722D636F6C6F7220656173652D696E2D6F7574202E3135732C626F782D736861646F7720656173652D696E';
wwv_flow_api.g_varchar2_table(15) := '2D6F7574202E3135733B7472616E736974696F6E3A626F726465722D636F6C6F7220656173652D696E2D6F7574202E3135732C626F782D736861646F7720656173652D696E2D6F7574202E3135737D2E626F6F7473747261702D737769746368202E626F';
wwv_flow_api.g_varchar2_table(16) := '6F7473747261702D7377697463682D636F6E7461696E65727B646973706C61793A696E6C696E652D626C6F636B3B746F703A303B626F726465722D7261646975733A3470783B2D7765626B69742D7472616E73666F726D3A7472616E736C617465336428';
wwv_flow_api.g_varchar2_table(17) := '302C302C30293B7472616E73666F726D3A7472616E736C617465336428302C302C30297D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F66662C2E626F6F7473747261702D737769746368';
wwv_flow_api.g_varchar2_table(18) := '202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D6C6162656C7B2D7765626B69742D626F782D73697A696E673A626F726465722D626F78';
wwv_flow_api.g_varchar2_table(19) := '3B2D6D6F7A2D626F782D73697A696E673A626F726465722D626F783B626F782D73697A696E673A626F726465722D626F783B637572736F723A706F696E7465723B646973706C61793A696E6C696E652D626C6F636B21696D706F7274616E743B68656967';
wwv_flow_api.g_varchar2_table(20) := '68743A313030253B70616464696E673A36707820313270783B666F6E742D73697A653A313470783B6C696E652D6865696768743A323070787D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D';
wwv_flow_api.g_varchar2_table(21) := '6F66662C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E7B746578742D616C69676E3A63656E7465723B7A2D696E6465783A317D2E626F6F7473747261702D737769746368202E626F6F';
wwv_flow_api.g_varchar2_table(22) := '7473747261702D7377697463682D68616E646C652D6F66662E626F6F7473747261702D7377697463682D7072696D6172792C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2E626F6F74';
wwv_flow_api.g_varchar2_table(23) := '73747261702D7377697463682D7072696D6172797B636F6C6F723A236666663B6261636B67726F756E643A233333376162377D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F66662E626F';
wwv_flow_api.g_varchar2_table(24) := '6F7473747261702D7377697463682D696E666F2C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2E626F6F7473747261702D7377697463682D696E666F7B636F6C6F723A236666663B62';
wwv_flow_api.g_varchar2_table(25) := '61636B67726F756E643A233562633064657D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F66662E626F6F7473747261702D7377697463682D737563636573732C2E626F6F747374726170';
wwv_flow_api.g_varchar2_table(26) := '2D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2E626F6F7473747261702D7377697463682D737563636573737B636F6C6F723A236666663B6261636B67726F756E643A233563623835637D2E626F6F7473747261';
wwv_flow_api.g_varchar2_table(27) := '702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F66662E626F6F7473747261702D7377697463682D7761726E696E672C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68';
wwv_flow_api.g_varchar2_table(28) := '616E646C652D6F6E2E626F6F7473747261702D7377697463682D7761726E696E677B6261636B67726F756E643A236630616434653B636F6C6F723A236666667D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D';
wwv_flow_api.g_varchar2_table(29) := '68616E646C652D6F66662E626F6F7473747261702D7377697463682D64616E6765722C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2E626F6F7473747261702D7377697463682D6461';
wwv_flow_api.g_varchar2_table(30) := '6E6765727B636F6C6F723A236666663B6261636B67726F756E643A236439353334667D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F66662E626F6F7473747261702D7377697463682D64';
wwv_flow_api.g_varchar2_table(31) := '656661756C742C2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2E626F6F7473747261702D7377697463682D64656661756C747B636F6C6F723A233030303B6261636B67726F756E643A';
wwv_flow_api.g_varchar2_table(32) := '236565657D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D6C6162656C7B746578742D616C69676E3A63656E7465723B6D617267696E2D746F703A2D3170783B6D617267696E2D626F74746F6D3A2D3170783B';
wwv_flow_api.g_varchar2_table(33) := '7A2D696E6465783A3130303B636F6C6F723A233333333B6261636B67726F756E643A236666667D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F6E7B626F726465722D626F74746F6D2D6C';
wwv_flow_api.g_varchar2_table(34) := '6566742D7261646975733A3370783B626F726465722D746F702D6C6566742D7261646975733A3370787D2E626F6F7473747261702D737769746368202E626F6F7473747261702D7377697463682D68616E646C652D6F66667B626F726465722D626F7474';
wwv_flow_api.g_varchar2_table(35) := '6F6D2D72696768742D7261646975733A3370783B626F726465722D746F702D72696768742D7261646975733A3370787D2E626F6F7473747261702D73776974636820696E7075745B747970653D726164696F5D2C2E626F6F7473747261702D7377697463';
wwv_flow_api.g_varchar2_table(36) := '6820696E7075745B747970653D636865636B626F785D7B706F736974696F6E3A6162736F6C75746521696D706F7274616E743B746F703A303B6C6566743A303B6D617267696E3A303B7A2D696E6465783A2D313B6F7061636974793A303B66696C746572';
wwv_flow_api.g_varchar2_table(37) := '3A616C706861286F7061636974793D30297D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D6D696E69202E626F6F7473747261702D7377697463682D68616E646C652D6F66662C2E626F6F7473747261702D7377';
wwv_flow_api.g_varchar2_table(38) := '697463682E626F6F7473747261702D7377697463682D6D696E69202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D6D696E69202E626F6F74';
wwv_flow_api.g_varchar2_table(39) := '73747261702D7377697463682D6C6162656C7B70616464696E673A317078203570783B666F6E742D73697A653A313270783B6C696E652D6865696768743A312E357D2E626F6F7473747261702D7377697463682E626F6F7473747261702D737769746368';
wwv_flow_api.g_varchar2_table(40) := '2D736D616C6C202E626F6F7473747261702D7377697463682D68616E646C652D6F66662C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D736D616C6C202E626F6F7473747261702D7377697463682D68616E646C';
wwv_flow_api.g_varchar2_table(41) := '652D6F6E2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D736D616C6C202E626F6F7473747261702D7377697463682D6C6162656C7B70616464696E673A35707820313070783B666F6E742D73697A653A313270';
wwv_flow_api.g_varchar2_table(42) := '783B6C696E652D6865696768743A312E357D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D6C61726765202E626F6F7473747261702D7377697463682D68616E646C652D6F66662C2E626F6F7473747261702D73';
wwv_flow_api.g_varchar2_table(43) := '77697463682E626F6F7473747261702D7377697463682D6C61726765202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D6C61726765202E62';
wwv_flow_api.g_varchar2_table(44) := '6F6F7473747261702D7377697463682D6C6162656C7B70616464696E673A36707820313670783B666F6E742D73697A653A313870783B6C696E652D6865696768743A312E333333333333337D2E626F6F7473747261702D7377697463682E626F6F747374';
wwv_flow_api.g_varchar2_table(45) := '7261702D7377697463682D64697361626C65642C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E64657465726D696E6174652C2E626F6F7473747261702D7377697463682E626F6F7473747261702D737769';
wwv_flow_api.g_varchar2_table(46) := '7463682D726561646F6E6C797B637572736F723A64656661756C7421696D706F7274616E747D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D64697361626C6564202E626F6F7473747261702D7377697463682D';
wwv_flow_api.g_varchar2_table(47) := '68616E646C652D6F66662C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D64697361626C6564202E626F6F7473747261702D7377697463682D68616E646C652D6F6E2C2E626F6F7473747261702D737769746368';
wwv_flow_api.g_varchar2_table(48) := '2E626F6F7473747261702D7377697463682D64697361626C6564202E626F6F7473747261702D7377697463682D6C6162656C2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E64657465726D696E61746520';
wwv_flow_api.g_varchar2_table(49) := '2E626F6F7473747261702D7377697463682D68616E646C652D6F66662C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E64657465726D696E617465202E626F6F7473747261702D7377697463682D68616E64';
wwv_flow_api.g_varchar2_table(50) := '6C652D6F6E2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E64657465726D696E617465202E626F6F7473747261702D7377697463682D6C6162656C2C2E626F6F7473747261702D7377697463682E626F6F';
wwv_flow_api.g_varchar2_table(51) := '7473747261702D7377697463682D726561646F6E6C79202E626F6F7473747261702D7377697463682D68616E646C652D6F66662C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D726561646F6E6C79202E626F6F';
wwv_flow_api.g_varchar2_table(52) := '7473747261702D7377697463682D68616E646C652D6F6E2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D726561646F6E6C79202E626F6F7473747261702D7377697463682D6C6162656C7B6F7061636974793A';
wwv_flow_api.g_varchar2_table(53) := '2E353B66696C7465723A616C706861286F7061636974793D3530293B637572736F723A64656661756C7421696D706F7274616E747D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D616E696D617465202E626F6F';
wwv_flow_api.g_varchar2_table(54) := '7473747261702D7377697463682D636F6E7461696E65727B2D7765626B69742D7472616E736974696F6E3A6D617267696E2D6C656674202E35733B2D6F2D7472616E736974696F6E3A6D617267696E2D6C656674202E35733B7472616E736974696F6E3A';
wwv_flow_api.g_varchar2_table(55) := '6D617267696E2D6C656674202E35737D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E7665727365202E626F6F7473747261702D7377697463682D68616E646C652D6F6E7B626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(56) := '3A30203370782033707820307D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E7665727365202E626F6F7473747261702D7377697463682D68616E646C652D6F66667B626F726465722D7261646975733A33';
wwv_flow_api.g_varchar2_table(57) := '707820302030203370787D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D666F63757365647B626F726465722D636F6C6F723A233636616665393B6F75746C696E653A303B2D7765626B69742D626F782D736861';
wwv_flow_api.g_varchar2_table(58) := '646F773A696E73657420302031707820317078207267626128302C302C302C2E303735292C302030203870782072676261283130322C3137352C3233332C2E36293B626F782D736861646F773A696E73657420302031707820317078207267626128302C';
wwv_flow_api.g_varchar2_table(59) := '302C302C2E303735292C302030203870782072676261283130322C3137352C3233332C2E36297D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E76657273652E626F6F7473747261702D7377697463682D6F';
wwv_flow_api.g_varchar2_table(60) := '6666202E626F6F7473747261702D7377697463682D6C6162656C2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D6F6E202E626F6F7473747261702D7377697463682D6C6162656C7B626F726465722D626F7474';
wwv_flow_api.g_varchar2_table(61) := '6F6D2D72696768742D7261646975733A3370783B626F726465722D746F702D72696768742D7261646975733A3370787D2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D696E76657273652E626F6F747374726170';
wwv_flow_api.g_varchar2_table(62) := '2D7377697463682D6F6E202E626F6F7473747261702D7377697463682D6C6162656C2C2E626F6F7473747261702D7377697463682E626F6F7473747261702D7377697463682D6F6666202E626F6F7473747261702D7377697463682D6C6162656C7B626F';
wwv_flow_api.g_varchar2_table(63) := '726465722D626F74746F6D2D6C6566742D7261646975733A3370783B626F726465722D746F702D6C6566742D7261646975733A3370787D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(419737051136144492)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_file_name=>'bootstrap-switch.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A20626F6F7473747261702D737769746368202D207633';
wwv_flow_api.g_varchar2_table(2) := '2E332E320A202A20687474703A2F2F7777772E626F6F7473747261702D7377697463682E6F72670A202A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(3) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A20436F7079726967687420323031322D32303133204D6174746961204C6172656E7469730A202A0A202A203D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(4) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A204C6963656E73656420756E6465722074686520417061636865204C6963656E73652C2056657273696F6E20322E30202874686520224C6963656E736522293B';
wwv_flow_api.g_varchar2_table(5) := '0A202A20796F75206D6179206E6F742075736520746869732066696C652065786365707420696E20636F6D706C69616E6365207769746820746865204C6963656E73652E0A202A20596F75206D6179206F627461696E206120636F7079206F6620746865';
wwv_flow_api.g_varchar2_table(6) := '204C6963656E73652061740A202A0A202A2020202020687474703A2F2F7777772E6170616368652E6F72672F6C6963656E7365732F4C4943454E53452D322E300A202A0A202A20556E6C657373207265717569726564206279206170706C696361626C65';
wwv_flow_api.g_varchar2_table(7) := '206C6177206F722061677265656420746F20696E2077726974696E672C20736F6674776172650A202A20646973747269627574656420756E64657220746865204C6963656E7365206973206469737472696275746564206F6E20616E2022415320495322';
wwv_flow_api.g_varchar2_table(8) := '2042415349532C0A202A20574954484F55542057415252414E54494553204F5220434F4E444954494F4E53204F4620414E59204B494E442C206569746865722065787072657373206F7220696D706C6965642E0A202A2053656520746865204C6963656E';
wwv_flow_api.g_varchar2_table(9) := '736520666F7220746865207370656369666963206C616E677561676520676F7665726E696E67207065726D697373696F6E7320616E640A202A206C696D69746174696F6E7320756E64657220746865204C6963656E73652E0A202A203D3D3D3D3D3D3D3D';
wwv_flow_api.g_varchar2_table(10) := '3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D0A202A2F0A0A2866756E6374696F6E28297B76617220743D5B5D2E736C6963653B216675';
wwv_flow_api.g_varchar2_table(11) := '6E6374696F6E28652C69297B2275736520737472696374223B766172206E3B72657475726E206E3D66756E6374696F6E28297B66756E6374696F6E207428742C69297B6E756C6C3D3D69262628693D7B7D292C746869732E24656C656D656E743D652874';
wwv_flow_api.g_varchar2_table(12) := '292C746869732E6F7074696F6E733D652E657874656E64287B7D2C652E666E2E626F6F7473747261705377697463682E64656661756C74732C7B73746174653A746869732E24656C656D656E742E697328223A636865636B656422292C73697A653A7468';
wwv_flow_api.g_varchar2_table(13) := '69732E24656C656D656E742E64617461282273697A6522292C616E696D6174653A746869732E24656C656D656E742E646174612822616E696D61746522292C64697361626C65643A746869732E24656C656D656E742E697328223A64697361626C656422';
wwv_flow_api.g_varchar2_table(14) := '292C726561646F6E6C793A746869732E24656C656D656E742E697328225B726561646F6E6C795D22292C696E64657465726D696E6174653A746869732E24656C656D656E742E646174612822696E64657465726D696E61746522292C696E76657273653A';
wwv_flow_api.g_varchar2_table(15) := '746869732E24656C656D656E742E646174612822696E766572736522292C726164696F416C6C4F66663A746869732E24656C656D656E742E646174612822726164696F2D616C6C2D6F666622292C6F6E436F6C6F723A746869732E24656C656D656E742E';
wwv_flow_api.g_varchar2_table(16) := '6461746128226F6E2D636F6C6F7222292C6F6666436F6C6F723A746869732E24656C656D656E742E6461746128226F66662D636F6C6F7222292C6F6E546578743A746869732E24656C656D656E742E6461746128226F6E2D7465787422292C6F66665465';
wwv_flow_api.g_varchar2_table(17) := '78743A746869732E24656C656D656E742E6461746128226F66662D7465787422292C6C6162656C546578743A746869732E24656C656D656E742E6461746128226C6162656C2D7465787422292C68616E646C6557696474683A746869732E24656C656D65';
wwv_flow_api.g_varchar2_table(18) := '6E742E64617461282268616E646C652D776964746822292C6C6162656C57696474683A746869732E24656C656D656E742E6461746128226C6162656C2D776964746822292C62617365436C6173733A746869732E24656C656D656E742E64617461282262';
wwv_flow_api.g_varchar2_table(19) := '6173652D636C61737322292C77726170706572436C6173733A746869732E24656C656D656E742E646174612822777261707065722D636C61737322297D2C69292C746869732E707265764F7074696F6E733D7B7D2C746869732E24777261707065723D65';
wwv_flow_api.g_varchar2_table(20) := '28223C6469763E222C7B22636C617373223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E28297B76617220653B72657475726E20653D5B22222B742E6F7074696F6E732E62617365436C6173735D2E636F6E63617428742E5F6765';
wwv_flow_api.g_varchar2_table(21) := '74436C617373657328742E6F7074696F6E732E77726170706572436C61737329292C652E7075736828742E6F7074696F6E732E73746174653F742E6F7074696F6E732E62617365436C6173732B222D6F6E223A742E6F7074696F6E732E62617365436C61';
wwv_flow_api.g_varchar2_table(22) := '73732B222D6F666622292C6E756C6C213D742E6F7074696F6E732E73697A652626652E7075736828742E6F7074696F6E732E62617365436C6173732B222D222B742E6F7074696F6E732E73697A65292C742E6F7074696F6E732E64697361626C65642626';
wwv_flow_api.g_varchar2_table(23) := '652E7075736828742E6F7074696F6E732E62617365436C6173732B222D64697361626C656422292C742E6F7074696F6E732E726561646F6E6C792626652E7075736828742E6F7074696F6E732E62617365436C6173732B222D726561646F6E6C7922292C';
wwv_flow_api.g_varchar2_table(24) := '742E6F7074696F6E732E696E64657465726D696E6174652626652E7075736828742E6F7074696F6E732E62617365436C6173732B222D696E64657465726D696E61746522292C742E6F7074696F6E732E696E76657273652626652E7075736828742E6F70';
wwv_flow_api.g_varchar2_table(25) := '74696F6E732E62617365436C6173732B222D696E766572736522292C742E24656C656D656E742E617474722822696422292626652E7075736828742E6F7074696F6E732E62617365436C6173732B222D69642D222B742E24656C656D656E742E61747472';
wwv_flow_api.g_varchar2_table(26) := '282269642229292C652E6A6F696E28222022297D7D28746869732928297D292C746869732E24636F6E7461696E65723D6528223C6469763E222C7B22636C617373223A746869732E6F7074696F6E732E62617365436C6173732B222D636F6E7461696E65';
wwv_flow_api.g_varchar2_table(27) := '72227D292C746869732E246F6E3D6528223C7370616E3E222C7B68746D6C3A746869732E6F7074696F6E732E6F6E546578742C22636C617373223A746869732E6F7074696F6E732E62617365436C6173732B222D68616E646C652D6F6E20222B74686973';
wwv_flow_api.g_varchar2_table(28) := '2E6F7074696F6E732E62617365436C6173732B222D222B746869732E6F7074696F6E732E6F6E436F6C6F727D292C746869732E246F66663D6528223C7370616E3E222C7B68746D6C3A746869732E6F7074696F6E732E6F6666546578742C22636C617373';
wwv_flow_api.g_varchar2_table(29) := '223A746869732E6F7074696F6E732E62617365436C6173732B222D68616E646C652D6F666620222B746869732E6F7074696F6E732E62617365436C6173732B222D222B746869732E6F7074696F6E732E6F6666436F6C6F727D292C746869732E246C6162';
wwv_flow_api.g_varchar2_table(30) := '656C3D6528223C7370616E3E222C7B68746D6C3A746869732E6F7074696F6E732E6C6162656C546578742C22636C617373223A746869732E6F7074696F6E732E62617365436C6173732B222D6C6162656C227D292C746869732E24656C656D656E742E6F';
wwv_flow_api.g_varchar2_table(31) := '6E2822696E69742E626F6F747374726170537769746368222C66756E6374696F6E2865297B72657475726E2066756E6374696F6E28297B72657475726E20652E6F7074696F6E732E6F6E496E69742E6170706C7928742C617267756D656E7473297D7D28';
wwv_flow_api.g_varchar2_table(32) := '7468697329292C746869732E24656C656D656E742E6F6E28227377697463684368616E67652E626F6F747374726170537769746368222C66756E6374696F6E2869297B72657475726E2066756E6374696F6E286E297B72657475726E21313D3D3D692E6F';
wwv_flow_api.g_varchar2_table(33) := '7074696F6E732E6F6E5377697463684368616E67652E6170706C7928742C617267756D656E7473293F692E24656C656D656E742E697328223A726164696F22293F6528225B6E616D653D27222B692E24656C656D656E742E6174747228226E616D652229';
wwv_flow_api.g_varchar2_table(34) := '2B22275D22292E74726967676572282270726576696F757353746174652E626F6F747374726170537769746368222C2130293A692E24656C656D656E742E74726967676572282270726576696F757353746174652E626F6F747374726170537769746368';
wwv_flow_api.g_varchar2_table(35) := '222C2130293A766F696420307D7D287468697329292C746869732E24636F6E7461696E65723D746869732E24656C656D656E742E7772617028746869732E24636F6E7461696E6572292E706172656E7428292C746869732E24777261707065723D746869';
wwv_flow_api.g_varchar2_table(36) := '732E24636F6E7461696E65722E7772617028746869732E2477726170706572292E706172656E7428292C746869732E24656C656D656E742E6265666F726528746869732E6F7074696F6E732E696E76657273653F746869732E246F66663A746869732E24';
wwv_flow_api.g_varchar2_table(37) := '6F6E292E6265666F726528746869732E246C6162656C292E6265666F726528746869732E6F7074696F6E732E696E76657273653F746869732E246F6E3A746869732E246F6666292C746869732E6F7074696F6E732E696E64657465726D696E6174652626';
wwv_flow_api.g_varchar2_table(38) := '746869732E24656C656D656E742E70726F702822696E64657465726D696E617465222C2130292C746869732E5F696E697428292C746869732E5F656C656D656E7448616E646C65727328292C746869732E5F68616E646C6548616E646C65727328292C74';
wwv_flow_api.g_varchar2_table(39) := '6869732E5F6C6162656C48616E646C65727328292C746869732E5F666F726D48616E646C657228292C746869732E5F65787465726E616C4C6162656C48616E646C657228292C746869732E24656C656D656E742E747269676765722822696E69742E626F';
wwv_flow_api.g_varchar2_table(40) := '6F747374726170537769746368222C746869732E6F7074696F6E732E7374617465297D72657475726E20742E70726F746F747970652E5F636F6E7374727563746F723D742C742E70726F746F747970652E736574507265764F7074696F6E733D66756E63';
wwv_flow_api.g_varchar2_table(41) := '74696F6E28297B72657475726E20746869732E707265764F7074696F6E733D652E657874656E642821302C7B7D2C746869732E6F7074696F6E73297D2C742E70726F746F747970652E73746174653D66756E6374696F6E28742C69297B72657475726E22';
wwv_flow_api.g_varchar2_table(42) := '756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E73746174653A746869732E6F7074696F6E732E64697361626C65647C7C746869732E6F7074696F6E732E726561646F6E6C793F746869732E24656C656D656E743A74';
wwv_flow_api.g_varchar2_table(43) := '6869732E6F7074696F6E732E7374617465262621746869732E6F7074696F6E732E726164696F416C6C4F66662626746869732E24656C656D656E742E697328223A726164696F22293F746869732E24656C656D656E743A28746869732E24656C656D656E';
wwv_flow_api.g_varchar2_table(44) := '742E697328223A726164696F22293F6528225B6E616D653D27222B746869732E24656C656D656E742E6174747228226E616D6522292B22275D22292E74726967676572282273657450726576696F75734F7074696F6E732E626F6F747374726170537769';
wwv_flow_api.g_varchar2_table(45) := '74636822293A746869732E24656C656D656E742E74726967676572282273657450726576696F75734F7074696F6E732E626F6F74737472617053776974636822292C746869732E6F7074696F6E732E696E64657465726D696E6174652626746869732E69';
wwv_flow_api.g_varchar2_table(46) := '6E64657465726D696E617465282131292C743D2121742C746869732E24656C656D656E742E70726F702822636865636B6564222C74292E7472696767657228226368616E67652E626F6F747374726170537769746368222C69292C746869732E24656C65';
wwv_flow_api.g_varchar2_table(47) := '6D656E74297D2C742E70726F746F747970652E746F67676C6553746174653D66756E6374696F6E2874297B72657475726E20746869732E6F7074696F6E732E64697361626C65647C7C746869732E6F7074696F6E732E726561646F6E6C793F746869732E';
wwv_flow_api.g_varchar2_table(48) := '24656C656D656E743A746869732E6F7074696F6E732E696E64657465726D696E6174653F28746869732E696E64657465726D696E617465282131292C746869732E737461746528213029293A746869732E24656C656D656E742E70726F70282263686563';
wwv_flow_api.g_varchar2_table(49) := '6B6564222C21746869732E6F7074696F6E732E7374617465292E7472696767657228226368616E67652E626F6F747374726170537769746368222C74297D2C742E70726F746F747970652E73697A653D66756E6374696F6E2874297B72657475726E2275';
wwv_flow_api.g_varchar2_table(50) := '6E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E73697A653A286E756C6C213D746869732E6F7074696F6E732E73697A652626746869732E24777261707065722E72656D6F7665436C61737328746869732E6F7074696F';
wwv_flow_api.g_varchar2_table(51) := '6E732E62617365436C6173732B222D222B746869732E6F7074696F6E732E73697A65292C742626746869732E24777261707065722E616464436C61737328746869732E6F7074696F6E732E62617365436C6173732B222D222B74292C746869732E5F7769';
wwv_flow_api.g_varchar2_table(52) := '64746828292C746869732E5F636F6E7461696E6572506F736974696F6E28292C746869732E6F7074696F6E732E73697A653D742C746869732E24656C656D656E74297D2C742E70726F746F747970652E616E696D6174653D66756E6374696F6E2874297B';
wwv_flow_api.g_varchar2_table(53) := '72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E616E696D6174653A28743D2121742C743D3D3D746869732E6F7074696F6E732E616E696D6174653F746869732E24656C656D656E743A746869732E';
wwv_flow_api.g_varchar2_table(54) := '746F67676C65416E696D6174652829297D2C742E70726F746F747970652E746F67676C65416E696D6174653D66756E6374696F6E28297B72657475726E20746869732E6F7074696F6E732E616E696D6174653D21746869732E6F7074696F6E732E616E69';
wwv_flow_api.g_varchar2_table(55) := '6D6174652C746869732E24777261707065722E746F67676C65436C61737328746869732E6F7074696F6E732E62617365436C6173732B222D616E696D61746522292C746869732E24656C656D656E747D2C742E70726F746F747970652E64697361626C65';
wwv_flow_api.g_varchar2_table(56) := '643D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E64697361626C65643A28743D2121742C743D3D3D746869732E6F7074696F6E732E64697361626C65643F746869';
wwv_flow_api.g_varchar2_table(57) := '732E24656C656D656E743A746869732E746F67676C6544697361626C65642829297D2C742E70726F746F747970652E746F67676C6544697361626C65643D66756E6374696F6E28297B72657475726E20746869732E6F7074696F6E732E64697361626C65';
wwv_flow_api.g_varchar2_table(58) := '643D21746869732E6F7074696F6E732E64697361626C65642C746869732E24656C656D656E742E70726F70282264697361626C6564222C746869732E6F7074696F6E732E64697361626C6564292C746869732E24777261707065722E746F67676C65436C';
wwv_flow_api.g_varchar2_table(59) := '61737328746869732E6F7074696F6E732E62617365436C6173732B222D64697361626C656422292C746869732E24656C656D656E747D2C742E70726F746F747970652E726561646F6E6C793D66756E6374696F6E2874297B72657475726E22756E646566';
wwv_flow_api.g_varchar2_table(60) := '696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E726561646F6E6C793A28743D2121742C743D3D3D746869732E6F7074696F6E732E726561646F6E6C793F746869732E24656C656D656E743A746869732E746F67676C6552656164';
wwv_flow_api.g_varchar2_table(61) := '6F6E6C792829297D2C742E70726F746F747970652E746F67676C65526561646F6E6C793D66756E6374696F6E28297B72657475726E20746869732E6F7074696F6E732E726561646F6E6C793D21746869732E6F7074696F6E732E726561646F6E6C792C74';
wwv_flow_api.g_varchar2_table(62) := '6869732E24656C656D656E742E70726F702822726561646F6E6C79222C746869732E6F7074696F6E732E726561646F6E6C79292C746869732E24777261707065722E746F67676C65436C61737328746869732E6F7074696F6E732E62617365436C617373';
wwv_flow_api.g_varchar2_table(63) := '2B222D726561646F6E6C7922292C746869732E24656C656D656E747D2C742E70726F746F747970652E696E64657465726D696E6174653D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E';
wwv_flow_api.g_varchar2_table(64) := '6F7074696F6E732E696E64657465726D696E6174653A28743D2121742C743D3D3D746869732E6F7074696F6E732E696E64657465726D696E6174653F746869732E24656C656D656E743A746869732E746F67676C65496E64657465726D696E6174652829';
wwv_flow_api.g_varchar2_table(65) := '297D2C742E70726F746F747970652E746F67676C65496E64657465726D696E6174653D66756E6374696F6E28297B72657475726E20746869732E6F7074696F6E732E696E64657465726D696E6174653D21746869732E6F7074696F6E732E696E64657465';
wwv_flow_api.g_varchar2_table(66) := '726D696E6174652C746869732E24656C656D656E742E70726F702822696E64657465726D696E617465222C746869732E6F7074696F6E732E696E64657465726D696E617465292C746869732E24777261707065722E746F67676C65436C61737328746869';
wwv_flow_api.g_varchar2_table(67) := '732E6F7074696F6E732E62617365436C6173732B222D696E64657465726D696E61746522292C746869732E5F636F6E7461696E6572506F736974696F6E28292C746869732E24656C656D656E747D2C742E70726F746F747970652E696E76657273653D66';
wwv_flow_api.g_varchar2_table(68) := '756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E696E76657273653A28743D2121742C743D3D3D746869732E6F7074696F6E732E696E76657273653F746869732E24656C';
wwv_flow_api.g_varchar2_table(69) := '656D656E743A746869732E746F67676C65496E76657273652829297D2C742E70726F746F747970652E746F67676C65496E76657273653D66756E6374696F6E28297B76617220742C653B72657475726E20746869732E24777261707065722E746F67676C';
wwv_flow_api.g_varchar2_table(70) := '65436C61737328746869732E6F7074696F6E732E62617365436C6173732B222D696E766572736522292C653D746869732E246F6E2E636C6F6E65282130292C743D746869732E246F66662E636C6F6E65282130292C746869732E246F6E2E7265706C6163';
wwv_flow_api.g_varchar2_table(71) := '65576974682874292C746869732E246F66662E7265706C616365576974682865292C746869732E246F6E3D742C746869732E246F66663D652C746869732E6F7074696F6E732E696E76657273653D21746869732E6F7074696F6E732E696E76657273652C';
wwv_flow_api.g_varchar2_table(72) := '746869732E24656C656D656E747D2C742E70726F746F747970652E6F6E436F6C6F723D66756E6374696F6E2874297B76617220653B72657475726E20653D746869732E6F7074696F6E732E6F6E436F6C6F722C22756E646566696E6564223D3D74797065';
wwv_flow_api.g_varchar2_table(73) := '6F6620743F653A286E756C6C213D652626746869732E246F6E2E72656D6F7665436C61737328746869732E6F7074696F6E732E62617365436C6173732B222D222B65292C746869732E246F6E2E616464436C61737328746869732E6F7074696F6E732E62';
wwv_flow_api.g_varchar2_table(74) := '617365436C6173732B222D222B74292C746869732E6F7074696F6E732E6F6E436F6C6F723D742C746869732E24656C656D656E74297D2C742E70726F746F747970652E6F6666436F6C6F723D66756E6374696F6E2874297B76617220653B72657475726E';
wwv_flow_api.g_varchar2_table(75) := '20653D746869732E6F7074696F6E732E6F6666436F6C6F722C22756E646566696E6564223D3D747970656F6620743F653A286E756C6C213D652626746869732E246F66662E72656D6F7665436C61737328746869732E6F7074696F6E732E62617365436C';
wwv_flow_api.g_varchar2_table(76) := '6173732B222D222B65292C746869732E246F66662E616464436C61737328746869732E6F7074696F6E732E62617365436C6173732B222D222B74292C746869732E6F7074696F6E732E6F6666436F6C6F723D742C746869732E24656C656D656E74297D2C';
wwv_flow_api.g_varchar2_table(77) := '742E70726F746F747970652E6F6E546578743D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E6F6E546578743A28746869732E246F6E2E68746D6C2874292C746869';
wwv_flow_api.g_varchar2_table(78) := '732E5F776964746828292C746869732E5F636F6E7461696E6572506F736974696F6E28292C746869732E6F7074696F6E732E6F6E546578743D742C746869732E24656C656D656E74297D2C742E70726F746F747970652E6F6666546578743D66756E6374';
wwv_flow_api.g_varchar2_table(79) := '696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E6F6666546578743A28746869732E246F66662E68746D6C2874292C746869732E5F776964746828292C746869732E5F636F6E7461';
wwv_flow_api.g_varchar2_table(80) := '696E6572506F736974696F6E28292C746869732E6F7074696F6E732E6F6666546578743D742C746869732E24656C656D656E74297D2C742E70726F746F747970652E6C6162656C546578743D66756E6374696F6E2874297B72657475726E22756E646566';
wwv_flow_api.g_varchar2_table(81) := '696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E6C6162656C546578743A28746869732E246C6162656C2E68746D6C2874292C746869732E5F776964746828292C746869732E6F7074696F6E732E6C6162656C546578743D742C74';
wwv_flow_api.g_varchar2_table(82) := '6869732E24656C656D656E74297D2C742E70726F746F747970652E68616E646C6557696474683D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E68616E646C655769';
wwv_flow_api.g_varchar2_table(83) := '6474683A28746869732E6F7074696F6E732E68616E646C6557696474683D742C746869732E5F776964746828292C746869732E5F636F6E7461696E6572506F736974696F6E28292C746869732E24656C656D656E74297D2C742E70726F746F747970652E';
wwv_flow_api.g_varchar2_table(84) := '6C6162656C57696474683D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E6C6162656C57696474683A28746869732E6F7074696F6E732E6C6162656C57696474683D';
wwv_flow_api.g_varchar2_table(85) := '742C746869732E5F776964746828292C746869732E5F636F6E7461696E6572506F736974696F6E28292C746869732E24656C656D656E74297D2C742E70726F746F747970652E62617365436C6173733D66756E6374696F6E2874297B72657475726E2074';
wwv_flow_api.g_varchar2_table(86) := '6869732E6F7074696F6E732E62617365436C6173737D2C742E70726F746F747970652E77726170706572436C6173733D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E73';
wwv_flow_api.g_varchar2_table(87) := '2E77726170706572436C6173733A28747C7C28743D652E666E2E626F6F7473747261705377697463682E64656661756C74732E77726170706572436C617373292C746869732E24777261707065722E72656D6F7665436C61737328746869732E5F676574';
wwv_flow_api.g_varchar2_table(88) := '436C617373657328746869732E6F7074696F6E732E77726170706572436C617373292E6A6F696E2822202229292C746869732E24777261707065722E616464436C61737328746869732E5F676574436C61737365732874292E6A6F696E2822202229292C';
wwv_flow_api.g_varchar2_table(89) := '746869732E6F7074696F6E732E77726170706572436C6173733D742C746869732E24656C656D656E74297D2C742E70726F746F747970652E726164696F416C6C4F66663D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D74';
wwv_flow_api.g_varchar2_table(90) := '7970656F6620743F746869732E6F7074696F6E732E726164696F416C6C4F66663A28743D2121742C743D3D3D746869732E6F7074696F6E732E726164696F416C6C4F66663F746869732E24656C656D656E743A28746869732E6F7074696F6E732E726164';
wwv_flow_api.g_varchar2_table(91) := '696F416C6C4F66663D742C746869732E24656C656D656E7429297D2C742E70726F746F747970652E6F6E496E69743D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(92) := '6F6E496E69743A28747C7C28743D652E666E2E626F6F7473747261705377697463682E64656661756C74732E6F6E496E6974292C746869732E6F7074696F6E732E6F6E496E69743D742C746869732E24656C656D656E74297D2C742E70726F746F747970';
wwv_flow_api.g_varchar2_table(93) := '652E6F6E5377697463684368616E67653D66756E6374696F6E2874297B72657475726E22756E646566696E6564223D3D747970656F6620743F746869732E6F7074696F6E732E6F6E5377697463684368616E67653A28747C7C28743D652E666E2E626F6F';
wwv_flow_api.g_varchar2_table(94) := '7473747261705377697463682E64656661756C74732E6F6E5377697463684368616E6765292C746869732E6F7074696F6E732E6F6E5377697463684368616E67653D742C746869732E24656C656D656E74297D2C742E70726F746F747970652E64657374';
wwv_flow_api.g_varchar2_table(95) := '726F793D66756E6374696F6E28297B76617220743B72657475726E20743D746869732E24656C656D656E742E636C6F736573742822666F726D22292C742E6C656E6774682626742E6F6666282272657365742E626F6F7473747261705377697463682229';
wwv_flow_api.g_varchar2_table(96) := '2E72656D6F7665446174612822626F6F7473747261702D73776974636822292C746869732E24636F6E7461696E65722E6368696C6472656E28292E6E6F7428746869732E24656C656D656E74292E72656D6F766528292C746869732E24656C656D656E74';
wwv_flow_api.g_varchar2_table(97) := '2E756E7772617028292E756E7772617028292E6F666628222E626F6F74737472617053776974636822292E72656D6F7665446174612822626F6F7473747261702D73776974636822292C746869732E24656C656D656E747D2C742E70726F746F74797065';
wwv_flow_api.g_varchar2_table(98) := '2E5F77696474683D66756E6374696F6E28297B76617220742C653B72657475726E20743D746869732E246F6E2E61646428746869732E246F6666292C742E61646428746869732E246C6162656C292E63737328227769647468222C2222292C653D226175';
wwv_flow_api.g_varchar2_table(99) := '746F223D3D3D746869732E6F7074696F6E732E68616E646C6557696474683F4D6174682E6D617828746869732E246F6E2E776964746828292C746869732E246F66662E77696474682829293A746869732E6F7074696F6E732E68616E646C655769647468';
wwv_flow_api.g_varchar2_table(100) := '2C742E77696474682865292C746869732E246C6162656C2E77696474682866756E6374696F6E2874297B72657475726E2066756E6374696F6E28692C6E297B72657475726E226175746F22213D3D742E6F7074696F6E732E6C6162656C57696474683F74';
wwv_flow_api.g_varchar2_table(101) := '2E6F7074696F6E732E6C6162656C57696474683A653E6E3F653A6E7D7D287468697329292C746869732E5F68616E646C6557696474683D746869732E246F6E2E6F75746572576964746828292C746869732E5F6C6162656C57696474683D746869732E24';
wwv_flow_api.g_varchar2_table(102) := '6C6162656C2E6F75746572576964746828292C746869732E24636F6E7461696E65722E776964746828322A746869732E5F68616E646C6557696474682B746869732E5F6C6162656C5769647468292C746869732E24777261707065722E77696474682874';
wwv_flow_api.g_varchar2_table(103) := '6869732E5F68616E646C6557696474682B746869732E5F6C6162656C5769647468297D2C742E70726F746F747970652E5F636F6E7461696E6572506F736974696F6E3D66756E6374696F6E28742C65297B72657475726E206E756C6C3D3D74262628743D';
wwv_flow_api.g_varchar2_table(104) := '746869732E6F7074696F6E732E7374617465292C746869732E24636F6E7461696E65722E63737328226D617267696E2D6C656674222C66756E6374696F6E2865297B72657475726E2066756E6374696F6E28297B76617220693B72657475726E20693D5B';
wwv_flow_api.g_varchar2_table(105) := '302C222D222B652E5F68616E646C6557696474682B227078225D2C652E6F7074696F6E732E696E64657465726D696E6174653F222D222B652E5F68616E646C6557696474682F322B227078223A743F652E6F7074696F6E732E696E76657273653F695B31';
wwv_flow_api.g_varchar2_table(106) := '5D3A695B305D3A652E6F7074696F6E732E696E76657273653F695B305D3A695B315D7D7D287468697329292C653F73657454696D656F75742866756E6374696F6E28297B72657475726E206528297D2C3530293A766F696420307D2C742E70726F746F74';
wwv_flow_api.g_varchar2_table(107) := '7970652E5F696E69743D66756E6374696F6E28297B76617220742C653B72657475726E20743D66756E6374696F6E2874297B72657475726E2066756E6374696F6E28297B72657475726E20742E736574507265764F7074696F6E7328292C742E5F776964';
wwv_flow_api.g_varchar2_table(108) := '746828292C742E5F636F6E7461696E6572506F736974696F6E286E756C6C2C66756E6374696F6E28297B72657475726E20742E6F7074696F6E732E616E696D6174653F742E24777261707065722E616464436C61737328742E6F7074696F6E732E626173';
wwv_flow_api.g_varchar2_table(109) := '65436C6173732B222D616E696D61746522293A766F696420307D297D7D2874686973292C746869732E24777261707065722E697328223A76697369626C6522293F7428293A653D692E736574496E74657276616C2866756E6374696F6E286E297B726574';
wwv_flow_api.g_varchar2_table(110) := '75726E2066756E6374696F6E28297B72657475726E206E2E24777261707065722E697328223A76697369626C6522293F287428292C692E636C656172496E74657276616C286529293A766F696420307D7D2874686973292C3530297D2C742E70726F746F';
wwv_flow_api.g_varchar2_table(111) := '747970652E5F656C656D656E7448616E646C6572733D66756E6374696F6E28297B72657475726E20746869732E24656C656D656E742E6F6E287B2273657450726576696F75734F7074696F6E732E626F6F747374726170537769746368223A66756E6374';
wwv_flow_api.g_varchar2_table(112) := '696F6E2874297B72657475726E2066756E6374696F6E2865297B72657475726E20742E736574507265764F7074696F6E7328297D7D2874686973292C2270726576696F757353746174652E626F6F747374726170537769746368223A66756E6374696F6E';
wwv_flow_api.g_varchar2_table(113) := '2874297B72657475726E2066756E6374696F6E2865297B72657475726E20742E6F7074696F6E733D742E707265764F7074696F6E732C742E6F7074696F6E732E696E64657465726D696E6174652626742E24777261707065722E616464436C6173732874';
wwv_flow_api.g_varchar2_table(114) := '2E6F7074696F6E732E62617365436C6173732B222D696E64657465726D696E61746522292C742E24656C656D656E742E70726F702822636865636B6564222C742E6F7074696F6E732E7374617465292E7472696767657228226368616E67652E626F6F74';
wwv_flow_api.g_varchar2_table(115) := '7374726170537769746368222C2130297D7D2874686973292C226368616E67652E626F6F747374726170537769746368223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E28692C6E297B766172206F3B72657475726E20692E7072';
wwv_flow_api.g_varchar2_table(116) := '6576656E7444656661756C7428292C692E73746F70496D6D65646961746550726F7061676174696F6E28292C6F3D742E24656C656D656E742E697328223A636865636B656422292C742E5F636F6E7461696E6572506F736974696F6E286F292C6F213D3D';
wwv_flow_api.g_varchar2_table(117) := '742E6F7074696F6E732E73746174653F28742E6F7074696F6E732E73746174653D6F2C742E24777261707065722E746F67676C65436C61737328742E6F7074696F6E732E62617365436C6173732B222D6F666622292E746F67676C65436C61737328742E';
wwv_flow_api.g_varchar2_table(118) := '6F7074696F6E732E62617365436C6173732B222D6F6E22292C6E3F766F696420303A28742E24656C656D656E742E697328223A726164696F222926266528225B6E616D653D27222B742E24656C656D656E742E6174747228226E616D6522292B22275D22';
wwv_flow_api.g_varchar2_table(119) := '292E6E6F7428742E24656C656D656E74292E70726F702822636865636B6564222C2131292E7472696767657228226368616E67652E626F6F747374726170537769746368222C2130292C742E24656C656D656E742E747269676765722822737769746368';
wwv_flow_api.g_varchar2_table(120) := '4368616E67652E626F6F747374726170537769746368222C5B6F5D2929293A766F696420307D7D2874686973292C22666F6375732E626F6F747374726170537769746368223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E286529';
wwv_flow_api.g_varchar2_table(121) := '7B72657475726E20652E70726576656E7444656661756C7428292C742E24777261707065722E616464436C61737328742E6F7074696F6E732E62617365436C6173732B222D666F637573656422297D7D2874686973292C22626C75722E626F6F74737472';
wwv_flow_api.g_varchar2_table(122) := '6170537769746368223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E2865297B72657475726E20652E70726576656E7444656661756C7428292C742E24777261707065722E72656D6F7665436C61737328742E6F7074696F6E732E';
wwv_flow_api.g_varchar2_table(123) := '62617365436C6173732B222D666F637573656422297D7D2874686973292C226B6579646F776E2E626F6F747374726170537769746368223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E2865297B696628652E7768696368262621';
wwv_flow_api.g_varchar2_table(124) := '742E6F7074696F6E732E64697361626C6564262621742E6F7074696F6E732E726561646F6E6C792973776974636828652E7768696368297B636173652033373A72657475726E20652E70726576656E7444656661756C7428292C652E73746F70496D6D65';
wwv_flow_api.g_varchar2_table(125) := '646961746550726F7061676174696F6E28292C742E7374617465282131293B636173652033393A72657475726E20652E70726576656E7444656661756C7428292C652E73746F70496D6D65646961746550726F7061676174696F6E28292C742E73746174';
wwv_flow_api.g_varchar2_table(126) := '65282130297D7D7D2874686973297D297D2C742E70726F746F747970652E5F68616E646C6548616E646C6572733D66756E6374696F6E28297B72657475726E20746869732E246F6E2E6F6E2822636C69636B2E626F6F747374726170537769746368222C';
wwv_flow_api.g_varchar2_table(127) := '66756E6374696F6E2874297B72657475726E2066756E6374696F6E2865297B72657475726E20652E70726576656E7444656661756C7428292C652E73746F7050726F7061676174696F6E28292C742E7374617465282131292C742E24656C656D656E742E';
wwv_flow_api.g_varchar2_table(128) := '747269676765722822666F6375732E626F6F74737472617053776974636822297D7D287468697329292C746869732E246F66662E6F6E2822636C69636B2E626F6F747374726170537769746368222C66756E6374696F6E2874297B72657475726E206675';
wwv_flow_api.g_varchar2_table(129) := '6E6374696F6E2865297B72657475726E20652E70726576656E7444656661756C7428292C652E73746F7050726F7061676174696F6E28292C742E7374617465282130292C742E24656C656D656E742E747269676765722822666F6375732E626F6F747374';
wwv_flow_api.g_varchar2_table(130) := '72617053776974636822297D7D287468697329297D2C742E70726F746F747970652E5F6C6162656C48616E646C6572733D66756E6374696F6E28297B72657475726E20746869732E246C6162656C2E6F6E287B636C69636B3A66756E6374696F6E287429';
wwv_flow_api.g_varchar2_table(131) := '7B72657475726E20742E73746F7050726F7061676174696F6E28297D2C226D6F757365646F776E2E626F6F74737472617053776974636820746F75636873746172742E626F6F747374726170537769746368223A66756E6374696F6E2874297B72657475';
wwv_flow_api.g_varchar2_table(132) := '726E2066756E6374696F6E2865297B72657475726E20742E5F6472616753746172747C7C742E6F7074696F6E732E64697361626C65647C7C742E6F7074696F6E732E726561646F6E6C793F766F696420303A28652E70726576656E7444656661756C7428';
wwv_flow_api.g_varchar2_table(133) := '292C652E73746F7050726F7061676174696F6E28292C742E5F6472616753746172743D28652E70616765587C7C652E6F726967696E616C4576656E742E746F75636865735B305D2E7061676558292D7061727365496E7428742E24636F6E7461696E6572';
wwv_flow_api.g_varchar2_table(134) := '2E63737328226D617267696E2D6C65667422292C3130292C742E6F7074696F6E732E616E696D6174652626742E24777261707065722E72656D6F7665436C61737328742E6F7074696F6E732E62617365436C6173732B222D616E696D61746522292C742E';
wwv_flow_api.g_varchar2_table(135) := '24656C656D656E742E747269676765722822666F6375732E626F6F7473747261705377697463682229297D7D2874686973292C226D6F7573656D6F76652E626F6F74737472617053776974636820746F7563686D6F76652E626F6F747374726170537769';
wwv_flow_api.g_varchar2_table(136) := '746368223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E2865297B76617220693B6966286E756C6C213D742E5F647261675374617274262628652E70726576656E7444656661756C7428292C693D28652E70616765587C7C652E6F';
wwv_flow_api.g_varchar2_table(137) := '726967696E616C4576656E742E746F75636865735B305D2E7061676558292D742E5F6472616753746172742C2128693C2D742E5F68616E646C6557696474687C7C693E3029292972657475726E20742E5F64726167456E643D692C742E24636F6E746169';
wwv_flow_api.g_varchar2_table(138) := '6E65722E63737328226D617267696E2D6C656674222C742E5F64726167456E642B22707822297D7D2874686973292C226D6F75736575702E626F6F74737472617053776974636820746F756368656E642E626F6F747374726170537769746368223A6675';
wwv_flow_api.g_varchar2_table(139) := '6E6374696F6E2874297B72657475726E2066756E6374696F6E2865297B76617220693B696628742E5F6472616753746172742972657475726E20652E70726576656E7444656661756C7428292C742E6F7074696F6E732E616E696D6174652626742E2477';
wwv_flow_api.g_varchar2_table(140) := '7261707065722E616464436C61737328742E6F7074696F6E732E62617365436C6173732B222D616E696D61746522292C742E5F64726167456E643F28693D742E5F64726167456E643E2D28742E5F68616E646C6557696474682F32292C742E5F64726167';
wwv_flow_api.g_varchar2_table(141) := '456E643D21312C742E737461746528742E6F7074696F6E732E696E76657273653F21693A6929293A742E73746174652821742E6F7074696F6E732E7374617465292C742E5F6472616753746172743D21317D7D2874686973292C226D6F7573656C656176';
wwv_flow_api.g_varchar2_table(142) := '652E626F6F747374726170537769746368223A66756E6374696F6E2874297B72657475726E2066756E6374696F6E2865297B72657475726E20742E246C6162656C2E7472696767657228226D6F75736575702E626F6F7473747261705377697463682229';
wwv_flow_api.g_varchar2_table(143) := '7D7D2874686973297D297D2C742E70726F746F747970652E5F65787465726E616C4C6162656C48616E646C65723D66756E6374696F6E28297B76617220743B72657475726E20743D746869732E24656C656D656E742E636C6F7365737428226C6162656C';
wwv_flow_api.g_varchar2_table(144) := '22292C742E6F6E2822636C69636B222C66756E6374696F6E2865297B72657475726E2066756E6374696F6E2869297B72657475726E20692E70726576656E7444656661756C7428292C692E73746F70496D6D65646961746550726F7061676174696F6E28';
wwv_flow_api.g_varchar2_table(145) := '292C692E7461726765743D3D3D745B305D3F652E746F67676C65537461746528293A766F696420307D7D287468697329297D2C742E70726F746F747970652E5F666F726D48616E646C65723D66756E6374696F6E28297B76617220743B72657475726E20';
wwv_flow_api.g_varchar2_table(146) := '743D746869732E24656C656D656E742E636C6F736573742822666F726D22292C742E646174612822626F6F7473747261702D73776974636822293F766F696420303A742E6F6E282272657365742E626F6F747374726170537769746368222C66756E6374';
wwv_flow_api.g_varchar2_table(147) := '696F6E28297B72657475726E20692E73657454696D656F75742866756E6374696F6E28297B72657475726E20742E66696E642822696E70757422292E66696C7465722866756E6374696F6E28297B72657475726E20652874686973292E64617461282262';
wwv_flow_api.g_varchar2_table(148) := '6F6F7473747261702D73776974636822297D292E656163682866756E6374696F6E28297B72657475726E20652874686973292E626F6F74737472617053776974636828227374617465222C746869732E636865636B6564297D297D2C31297D292E646174';
wwv_flow_api.g_varchar2_table(149) := '612822626F6F7473747261702D737769746368222C2130297D2C742E70726F746F747970652E5F676574436C61737365733D66756E6374696F6E2874297B76617220692C6E2C6F2C733B69662821652E697341727261792874292972657475726E5B7468';
wwv_flow_api.g_varchar2_table(150) := '69732E6F7074696F6E732E62617365436C6173732B222D222B745D3B666F72286E3D5B5D2C6F3D302C733D742E6C656E6774683B733E6F3B6F2B2B29693D745B6F5D2C6E2E7075736828746869732E6F7074696F6E732E62617365436C6173732B222D22';
wwv_flow_api.g_varchar2_table(151) := '2B69293B72657475726E206E7D2C747D28292C652E666E2E626F6F7473747261705377697463683D66756E6374696F6E28297B76617220692C6F2C733B72657475726E206F3D617267756D656E74735B305D2C693D323C3D617267756D656E74732E6C65';
wwv_flow_api.g_varchar2_table(152) := '6E6774683F742E63616C6C28617267756D656E74732C31293A5B5D2C733D746869732C746869732E656163682866756E6374696F6E28297B76617220742C613B72657475726E20743D652874686973292C613D742E646174612822626F6F747374726170';
wwv_flow_api.g_varchar2_table(153) := '2D73776974636822292C617C7C742E646174612822626F6F7473747261702D737769746368222C613D6E6577206E28746869732C6F29292C22737472696E67223D3D747970656F66206F3F733D615B6F5D2E6170706C7928612C69293A766F696420307D';
wwv_flow_api.g_varchar2_table(154) := '292C737D2C652E666E2E626F6F7473747261705377697463682E436F6E7374727563746F723D6E2C652E666E2E626F6F7473747261705377697463682E64656661756C74733D7B73746174653A21302C73697A653A6E756C6C2C616E696D6174653A2130';
wwv_flow_api.g_varchar2_table(155) := '2C64697361626C65643A21312C726561646F6E6C793A21312C696E64657465726D696E6174653A21312C696E76657273653A21312C726164696F416C6C4F66663A21312C6F6E436F6C6F723A227072696D617279222C6F6666436F6C6F723A2264656661';
wwv_flow_api.g_varchar2_table(156) := '756C74222C6F6E546578743A224F4E222C6F6666546578743A224F4646222C6C6162656C546578743A22266E6273703B222C68616E646C6557696474683A226175746F222C6C6162656C57696474683A226175746F222C62617365436C6173733A22626F';
wwv_flow_api.g_varchar2_table(157) := '6F7473747261702D737769746368222C77726170706572436C6173733A2277726170706572222C6F6E496E69743A66756E6374696F6E28297B7D2C6F6E5377697463684368616E67653A66756E6374696F6E28297B7D7D7D2877696E646F772E6A517565';
wwv_flow_api.g_varchar2_table(158) := '72792C77696E646F77297D292E63616C6C2874686973293B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(419737468203145191)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_file_name=>'bootstrap-switch.min.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '66756E6374696F6E20636F6D5F6F7261636C655F617065785F73696D706C655F636865636B626F7828652C63297B76617220623D617065782E6A5175657279282223222B65292C613D617065782E6A5175657279282223222B652B225F48494444454E22';
wwv_flow_api.g_varchar2_table(2) := '293B66756E6374696F6E206428297B612E76616C2828622E697328223A636865636B656422293D3D3D74727565293F632E636865636B65643A632E756E636865636B6564297D617065782E6A5175657279282223222B65292E6368616E67652864293B61';
wwv_flow_api.g_varchar2_table(3) := '7065782E6A517565727928646F63756D656E74292E62696E642822617065786265666F7265706167657375626D6974222C64293B617065782E7769646765742E696E6974506167654974656D28652C7B73657456616C75653A66756E6374696F6E286629';
wwv_flow_api.g_varchar2_table(4) := '7B622E617474722822636865636B6564222C28663D3D3D632E636865636B656429293B6428297D2C67657456616C75653A66756E6374696F6E28297B72657475726E20612E76616C28297D7D297D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(15447061520502604927)
,p_plugin_id=>wwv_flow_api.id(17232453020663365698)
,p_file_name=>'com_oracle_apex_simple_checkbox.min.js'
,p_mime_type=>'application/x-javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/item_type/oracoolapex_timedropper
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69968106203266021669)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69968220530509015796)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69969488029631047330)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69969562134591053141)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69970647469736062536)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69970682816350049661)
,p_plugin_attribute_id=>wwv_flow_api.id(69970647469736062536)
,p_display_sequence=>10
,p_display_value=>'Fade In'
,p_return_value=>'fadeIn'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69970684857743050490)
,p_plugin_attribute_id=>wwv_flow_api.id(69970647469736062536)
,p_display_sequence=>20
,p_display_value=>'Drop Down'
,p_return_value=>'dropDown'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69971524599675088063)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(69971582562843089139)
,p_plugin_attribute_id=>wwv_flow_api.id(69971524599675088063)
,p_display_sequence=>10
,p_display_value=>'Vita'
,p_return_value=>'vita'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69971614237100076156)
,p_plugin_attribute_id=>wwv_flow_api.id(69971524599675088063)
,p_display_sequence=>20
,p_display_value=>'Vita-Dark'
,p_return_value=>'vita_dark'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69971614865824077139)
,p_plugin_attribute_id=>wwv_flow_api.id(69971524599675088063)
,p_display_sequence=>30
,p_display_value=>'Vita-Red'
,p_return_value=>'vita_red'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(69971620366406078021)
,p_plugin_attribute_id=>wwv_flow_api.id(69971524599675088063)
,p_display_sequence=>40
,p_display_value=>'Vita-Slate'
,p_return_value=>'vita_slate'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(69971020868356070872)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38831165544811040726)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832149563532841054)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832149813419841056)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832150213572841058)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832150598876841059)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832151006444841062)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832151445177841065)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832151859816841068)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(38832152196438841071)
,p_plugin_id=>wwv_flow_api.id(69764744084332802172)
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
 p_id=>wwv_flow_api.id(120888081155051175)
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
,p_navigation_list_id=>wwv_flow_api.id(120767767984050698)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(120859587497050957)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(120887767586051175)
,p_nav_bar_list_template_id=>wwv_flow_api.id(120859321849050957)
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
,p_user_interface_id=>wwv_flow_api.id(120888081155051175)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211015145431'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(120888081155051175)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Encuesta'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220323163800'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115554521319322944)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(120812732321050885)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select cdpiloto codigo, (select nombre_pila||'' ''|| primer_apellido||'' ''||segundo_apellido ',
'from v_piloto where empleado=a.cdpiloto ) empleado,nmnota nota , fecrea fecha,cdclase||''-''||correlativo unidad, dsrepara descripcion,',
'estado, observaciones,nmorden, decode(cddelegacion, ''02'', ''NORTE'', ''01'', ''SUR'') delegacion',
'from  tordenserv a where cdtiporden= 9 and taller in (20,21) and cod_cheklist=21 and estado=''A'' and cdclase not in (''PICK'')',
'',
''))
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
 p_id=>wwv_flow_api.id(115554652983322945)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:RP:NMNOTA,OT,CDPILOTO:#NOTA#,#NMORDEN#,#CODIGO#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'LP'
,p_internal_uid=>115554652983322945
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(120916913621598204)
,p_db_column_name=>'ESTADO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(120917074359598205)
,p_db_column_name=>'OBSERVACIONES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Observaciones'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122913422445251422)
,p_db_column_name=>'EMPLEADO'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Empleado'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122913631848251424)
,p_db_column_name=>'UNIDAD'
,p_display_order=>500
,p_column_identifier=>'AY'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122913703594251425)
,p_db_column_name=>'CODIGO'
,p_display_order=>510
,p_column_identifier=>'AZ'
,p_column_label=>'Codigo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122913862492251426)
,p_db_column_name=>'NOTA'
,p_display_order=>520
,p_column_identifier=>'BA'
,p_column_label=>'Nota'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122913907127251427)
,p_db_column_name=>'FECHA'
,p_display_order=>530
,p_column_identifier=>'BB'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(122914073123251428)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>540
,p_column_identifier=>'BC'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(128311016025822518)
,p_db_column_name=>'NMORDEN'
,p_display_order=>550
,p_column_identifier=>'BD'
,p_column_label=>'Nmorden'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14884890718426216)
,p_db_column_name=>'DELEGACION'
,p_display_order=>560
,p_column_identifier=>'BE'
,p_column_label=>'Delegacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(121100448700202278)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1211005'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLEADO:NMUNIDAD:ESTADO:OBSERVACIONES::CODIGO:NOTA:FECHA:DESCRIPCION:NMORDEN:DELEGACION'
,p_sort_column_1=>'CORRELATIVO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120898834307051542)
,p_plug_name=>'Encuesta'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(120809153997050882)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(120888081155051175)
,p_name=>'Encuesta'
,p_step_title=>'Encuesta'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211117150125'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120920927595598244)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(120813832866050887)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(121325946031851608)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(120813832866050887)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121326207273851611)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(120920927595598244)
,p_button_name=>'Guardar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(120866146022050985)
,p_button_image_alt=>'Guardar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(121326102002851610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(120920927595598244)
,p_button_name=>'Cancelar'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(120866146022050985)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(121327005552851619)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120921092545598245)
,p_name=>'P2_HORA_RETORNO'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'A que hora retorno del viaje Anterior?'
,p_format_mask=>'HH24:MI'
,p_display_as=>'PLUGIN_ORACOOLAPEX.TIMEDROPPER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120921384040598248)
,p_name=>'P2_FECHA_RETORNO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'Fecha Retorno'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120921421897598249)
,p_name=>'P2_HORA_DORMIR'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'A que hora se acosto a dormir?'
,p_format_mask=>'HH24:MI'
,p_display_as=>'PLUGIN_ORACOOLAPEX.TIMEDROPPER'
,p_cSize=>20
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120921578325598250)
,p_name=>'P2_DESCANSO_PREDIO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'Descanso Predio'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX_2'
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'primary'
,p_attribute_06=>'danger'
,p_attribute_07=>'SI'
,p_attribute_08=>'NO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121325207045851601)
,p_name=>'P2_HORAS_DESCANSO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'Horas Descanso'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:4;4,5;5,6;6,7;7,8;8,9;9,10;10,11;11,12;12,13;13,14;14,>14;15'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121325347033851602)
,p_name=>'P2_INTERRUMPIDO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>unistr('Alguna Interrupcion durante el proceso de realizar su descanso/sue\00F1o?')
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX_2'
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'primary'
,p_attribute_06=>'danger'
,p_attribute_07=>'SI'
,p_attribute_08=>'NO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121325422404851603)
,p_name=>'P2_FATIGA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'Conductor indica que presenta cuadro de fatiga?'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX_2'
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'primary'
,p_attribute_06=>'danger'
,p_attribute_07=>'SI'
,p_attribute_08=>'NO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121325503932851604)
,p_name=>'P2_CONDICIONES'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(120920927595598244)
,p_prompt=>'Se siente en condiciones de Viajar?'
,p_display_as=>'PLUGIN_COM.ORACLE.APEX.SIMPLE_CHECKBOX_2'
,p_field_template=>wwv_flow_api.id(120865545939050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_04=>'Y'
,p_attribute_05=>'primary'
,p_attribute_06=>'danger'
,p_attribute_07=>'SI'
,p_attribute_08=>'NO'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121326077920851609)
,p_name=>'NMSUPER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(121325946031851608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121326308799851612)
,p_name=>'OBSERVACIONES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(121325946031851608)
,p_prompt=>'Observaciones'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(120865664659050968)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121326432945851613)
,p_name=>'OT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(121325946031851608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121326679352851615)
,p_name=>'NMNOTA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(121325946031851608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(121326744985851616)
,p_name=>'CDPILOTO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(121325946031851608)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(121326970476851618)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'nmsuperv numeric;',
'empleado numeric;',
'delegacion varchar(3);',
'',
'BEGIN',
'select decode(cdestacion,''00'',''01'',''01'',''01'',''02'',''02'') into delegacion from PA_USUARIOS where lower(usuario) = lower(:APP_USER);',
'Select max(nmsuper)+1 INTO NMSUPERV from tsupervision where smant =1;',
'Select cod_emp into empleado from PA_Usuarios  where lower(usuario) = lower(:APP_USER);',
'',
'--inserta el encabezado de la supervision',
'insert into tsupervision (nmsuper,cdresponsable, comentario, cdpiloto, fecha,Evaluacion, fechacreado, smant,OT,CDESTACION,nmnota)',
' values(NMSUPERV, empleado, :observaciones,:CDPILOTO, sysdate(),21 , sysdate(),1,:OT,delegacion,:nmnota); ',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
'values (nmsuperv,1,''ENTREVISTA'',''A que hora retorno del viaje Anterior?'',''SI'',''SI'',:P2_HORA_RETORNO);',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
'values (nmsuperv,2,''ENTREVISTA'',''Fecha Retorno'',''SI'',''SI'',:P2_FECHA_RETORNO);',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
'values (nmsuperv,3,''ENTREVISTA'',''A que hora se acosto a dormir?'',''SI'',''SI'',:P2_HORA_DORMIR);',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
'values (nmsuperv,4,''ENTREVISTA'',''Descanso Predio?'',''SI'',''SI'',:P2_DESCANSO_PREDIO);',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
'values (nmsuperv,5,''ENTREVISTA'',''Horas Descanso?'',''SI'',''SI'',:P2_HORAS_DESCANSO);',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
'values (nmsuperv,6,''ENTREVISTA'',''Se siente en condiciones de Viajar?'',''SI'',''SI'',:P2_CONDICIONES);',
'',
'insert into tsupervision_det(nmsuper,item,tipo,descripcion, cumple, aplica,comentario)  ',
unistr('values (nmsuperv,7,''ENTREVISTA'',''Alguna Interrupcion durante el proceso de realizar su descanso/sue\00F1o?'',''SI'',''SI'',:P2_INTERRUMPIDO);'),
' ',
'update tordenserv set cdasignado= empleado, fecha_asignado= sysdate(), estado=''C'' ,fecha_cierre=sysdate() where nmorden=:ot;',
'',
'End;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(121326207273851611)
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(120888081155051175)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'Encuesta - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(120773995715050795)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211015145434'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120892188641051361)
,p_plug_name=>'Encuesta'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(120813346879050885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(120896727102051492)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(120892188641051361)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(120792394025050863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(120894880283051451)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(120892188641051361)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(120866146022050985)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120892546555051370)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(120892188641051361)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(120865331184050963)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120892941343051391)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(120892188641051361)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(120865331184050963)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(120893911239051425)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(120892188641051361)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(120893201854051391)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(120865331184050963)
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
 p_id=>wwv_flow_api.id(120895681991051490)
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
 p_id=>wwv_flow_api.id(120895239202051487)
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
 p_id=>wwv_flow_api.id(120896419068051492)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(120896050645051490)
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
wwv_flow_api.create_install(
 p_id=>wwv_flow_api.id(122195122329425754)
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
