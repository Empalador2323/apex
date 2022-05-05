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
,p_default_application_id=>138
,p_default_owner=>'TRANSPORTE'
);
end;
/
 
prompt APPLICATION 138 - EDITAR
--
-- Application Export:
--   Application:     138
--   Name:            EDITAR
--   Date and Time:   12:13 Wednesday April 20, 2022
--   Exported By:     LP
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         18.2.0.00.12
--   Instance ID:     61909869285902
--

-- Application Statistics:
--   Pages:                     37
--     Items:                  134
--     Validations:              2
--     Processes:               43
--     Regions:                 95
--     Buttons:                 70
--     Dynamic Actions:         35
--   Shared Components:
--     Logic:
--       Data Loading:           1
--     Navigation:
--       Lists:                  7
--       Breadcrumbs:            2
--         Entries:              3
--     Security:
--       Authentication:         3
--       Authorization:          2
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
--       LOVs:                   4
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
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,138)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TRANSPORTE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'EDITAR')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'138')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'73BB87FA072D0B460B76DEBF6E2E13138EB636AA2987981E117DF58E5196A9F1'
,p_bookmark_checksum_function=>'SH1'
,p_compatibility_mode=>'5.1'
,p_flow_language=>'es-gt'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2021.04.09.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(74579396449836346)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:EDITAR'
,p_app_builder_icon_name=>'app-icon.svg'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'EDITAR'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220204201549'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(74224554165568887)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74514676604121638)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-university'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74480465014854516)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>'TCLIENTES'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74377711108578670)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'TARIFAS'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74913955797556682)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'REPORTE CAJA CHICA'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-notebook'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'7'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74926759901631349)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'CONTROL_PANEL'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8,9,12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75228470262522442)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'APROBAR_ORDEN'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-magic'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(88217318493642865)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'SUBIR TARIFAS'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-box-arrow-in-north'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'30'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(89056503228191305)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'EDITAR PRODUCTO'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-genderless'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'34,35'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(74344559837569024)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74584969701875298)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Inicio'
,p_list_item_link_target=>'f?p=112:1:&SESSION.::&DEBUG.'||wwv_flow.LF||
''
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74356599855569073)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74357064309569073)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(74356599855569073)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74357474424569073)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(74356599855569073)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/cards
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(74525997291157498)
,p_name=>'CARDS'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74526100171157498)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74526583319157500)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(74526100171157498)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74526983289157506)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(74526100171157498)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/card
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(74528111724162798)
,p_name=>'CARD'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74529165111162799)
,p_list_item_display_sequence=>5
,p_list_item_link_text=>'TCLIENTES'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,6'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74528745888162798)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'TARIFAS'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,3'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75285135095647773)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'REPORTE CAJA CHICA'
,p_list_item_link_target=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-notebook'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75285635504653272)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'CONTROL PANEL'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75286037320657257)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'APROBAR ORDEN'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-magic'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(88812659646297368)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'SUBIR TARIFAS'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-box-arrow-in-north'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(89072574993595232)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'EDITAR PRODUCTO'
,p_list_item_link_target=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/inicio
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(74581779016857077)
,p_name=>'Inicio'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74581908403857080)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'PIPASGT'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2,2'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(74582372564857083)
,p_list_item_display_sequence=>2
,p_list_item_link_text=>'PIPASCON'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,'
);
end;
/
prompt --application/shared_components/navigation/lists/control_panel
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(75083679831354470)
,p_name=>'CONTROL_PANEL'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75083886092354474)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'GENERAL'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-arrows-alt'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75213644712409543)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'ANALISIS'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-area-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75214545840412745)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'VIAJES'
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-truck'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75214845402413583)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'CARBON'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-ship'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75215181171414953)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'COSTO DEPARTAMENTOS'
,p_list_item_link_target=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-building-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75215441681415830)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'PLANILLA'
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75215789107417040)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'PRODUCTIVIDAD'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75216075437420081)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'EFICIENCIA DESCARGA'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-file-check'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75216389469422382)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('ANALISIS POR A\00D1O')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-edit'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(75216600752423352)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'KPI'
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-external-link'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/data_load_wizard_progress_subir_tarifas
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(88215088486642837)
,p_name=>'Data Load Wizard Progress - SUBIR_TARIFAS'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(88215438775642848)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Data Load Source'
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(88215868804642857)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Data / Table Mapping'
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(88216260887642857)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Data Validation'
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(88216630510642857)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Data Load Results'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
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
wwv_flow_api.g_varchar2_table(7) := '646566733E3C7469746C653E6261722D6C696E652D63686172743C2F7469746C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223454438313345222F3E3C672069643D2269636F6E73223E3C706174682063';
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
 p_id=>wwv_flow_api.id(74345889319569029)
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
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20234544383133453B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(74346164380569031)
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
 p_id=>wwv_flow_api.id(74221710421568882)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(74222071750568884)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(74222323631568884)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(74222694981568884)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(74222950661568884)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(74223204217568884)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(74223571298568884)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(74347439722569032)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/security/authorizations/copy_of_admin_only
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(74580333229848511)
,p_name=>'Copy of Admin_Only'
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
prompt --application/shared_components/user_interface/lovs/data_load_charset
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(88229829004642993)
,p_lov_name=>'DATA_LOAD_CHARSET'
,p_lov_query=>'.'||wwv_flow_api.id(88229829004642993)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88230273872643004)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Little Endian'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88230594874643004)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Big Endian'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88230917705643006)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88231306390643006)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic ISO-8859-6'
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88231796367643006)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic Windows 1256'
,p_lov_return_value=>'windows-1256'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88232180358643006)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese Big5'
,p_lov_return_value=>'big5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88232533909643006)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese GBK'
,p_lov_return_value=>'gbk'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88232934939643007)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic ISO-8859-5'
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88233396601643007)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-R'
,p_lov_return_value=>'koi8-r'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88233709620643007)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-U'
,p_lov_return_value=>'koi8-u'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88234154530643007)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic Windows 1251'
,p_lov_return_value=>'windows-1251'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88234587970643007)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European ISO-8859-2'
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88234900234643009)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European Windows 1250'
,p_lov_return_value=>'windows-1250'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88235327101643013)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek ISO-8859-7'
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88235752923643013)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek Windows 1253'
,p_lov_return_value=>'windows-1253'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88236124767643015)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew ISO-8859-8-i'
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88236542335643015)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew Windows 1255'
,p_lov_return_value=>'windows-1255'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88236994042643015)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese EUC'
,p_lov_return_value=>'euc-jp'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88237340007643015)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese Shift JIS'
,p_lov_return_value=>'shift_jis'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88237705604643015)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Korean EUC'
,p_lov_return_value=>'euc-kr'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88238114373643017)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European ISO-8859-4'
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88238509476643017)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European Windows 1257'
,p_lov_return_value=>'windows-1257'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88238932420643017)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Southern European ISO-8859-3'
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88239337206643017)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Thai TIS-620'
,p_lov_return_value=>'tis-620'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88239781829643017)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish ISO-8859-9'
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88240114699643018)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish Windows 1254'
,p_lov_return_value=>'windows-1254'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88240503187643018)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-8'
,p_lov_return_value=>'utf-8'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88240925844643018)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vietnamese Windows 1258'
,p_lov_return_value=>'windows-1258'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88241347976643018)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European ISO-8859-1'
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88241720095643018)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European Windows 1252'
,p_lov_return_value=>'windows-1252'
);
end;
/
prompt --application/shared_components/user_interface/lovs/data_load_option
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(88219330857642898)
,p_lov_name=>'DATA_LOAD_OPTION'
,p_lov_query=>'.'||wwv_flow_api.id(88219330857642898)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88219713081642914)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Upload file, comma separated (*.csv) or tab delimited'
,p_lov_return_value=>'UPLOAD'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88220030024642918)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Copy and Paste'
,p_lov_return_value=>'PASTE'
);
end;
/
prompt --application/shared_components/user_interface/lovs/date_format_opt
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(88227863439642988)
,p_lov_name=>'DATE_FORMAT_OPT'
,p_lov_query=>'.'||wwv_flow_api.id(88227863439642988)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88228256911642990)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Use application standard format masks'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(88228649137642990)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Provide custom formats for uploaded columns'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(74350162206569051)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(74350162206569051)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(74350597272569052)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(74348099452569038)
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
 p_id=>wwv_flow_api.id(74224112140568886)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(74224399571568887)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/general
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(75031006591040639)
,p_name=>'GENERAL'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75055210707051188)
,p_parent_id=>0
,p_short_name=>'GENERAL'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>13
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(75056062191057503)
,p_parent_id=>wwv_flow_api.id(75055210707051188)
,p_short_name=>'.'
,p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_page_id=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(74224854982568889)
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
 p_id=>wwv_flow_api.id(74225168338568889)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74225491571568889)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74225795694568889)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74226005710568889)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74226388547568889)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74226666739568890)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74226916048568890)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74227220247568890)
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
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
 p_id=>wwv_flow_api.id(74227677993568893)
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
 p_id=>wwv_flow_api.id(74227923190568893)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74228281201568893)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74228590512568893)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74228819692568895)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74229148629568895)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74229448121568895)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74229706514568895)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74230060583568895)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74230388450568895)
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
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
 p_id=>wwv_flow_api.id(74230746309568895)
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
 p_id=>wwv_flow_api.id(74231088983568895)
,p_page_template_id=>wwv_flow_api.id(74230746309568895)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74231389682568896)
,p_page_template_id=>wwv_flow_api.id(74230746309568895)
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
 p_id=>wwv_flow_api.id(74231557265568896)
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
 p_id=>wwv_flow_api.id(74231881544568898)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74232100223568898)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74232436855568898)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74232772967568898)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74233052743568898)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74233362231568900)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74233628436568900)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74233935839568900)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74234250365568900)
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
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
 p_id=>wwv_flow_api.id(74234653166568900)
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
 p_id=>wwv_flow_api.id(74234964009568904)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74235279744568904)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74235514617568906)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74235855220568906)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74236199162568906)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74236400859568906)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74236792873568906)
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
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
 p_id=>wwv_flow_api.id(74237108482568906)
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
 p_id=>wwv_flow_api.id(74237475686568906)
,p_page_template_id=>wwv_flow_api.id(74237108482568906)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74237712597568906)
,p_page_template_id=>wwv_flow_api.id(74237108482568906)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74238086304568907)
,p_page_template_id=>wwv_flow_api.id(74237108482568906)
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
 p_id=>wwv_flow_api.id(74238692432568907)
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
 p_id=>wwv_flow_api.id(74238934274568907)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74239245891568907)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74239530117568907)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74239891442568907)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74240189414568907)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74240417750568909)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74240784458568909)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74241062350568909)
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
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
 p_id=>wwv_flow_api.id(74241422349568909)
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
 p_id=>wwv_flow_api.id(74241730011568909)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74242084986568912)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74242391341568912)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74242691020568912)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74242962736568912)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74243215745568912)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74243519679568912)
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
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
 p_id=>wwv_flow_api.id(74243910436568914)
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
 p_id=>wwv_flow_api.id(74244259307568914)
,p_page_template_id=>wwv_flow_api.id(74243910436568914)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74244597602568914)
,p_page_template_id=>wwv_flow_api.id(74243910436568914)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(74244851643568914)
,p_page_template_id=>wwv_flow_api.id(74243910436568914)
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
 p_id=>wwv_flow_api.id(74322865508568995)
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
 p_id=>wwv_flow_api.id(74322980121568999)
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
 p_id=>wwv_flow_api.id(74323038949568999)
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
 p_id=>wwv_flow_api.id(74245499000568914)
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
 p_id=>wwv_flow_api.id(74245746974568914)
,p_plug_template_id=>wwv_flow_api.id(74245499000568914)
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
 p_id=>wwv_flow_api.id(74249187333568917)
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
 p_id=>wwv_flow_api.id(74249300338568917)
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
 p_id=>wwv_flow_api.id(74249667254568917)
,p_plug_template_id=>wwv_flow_api.id(74249300338568917)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(74249929449568917)
,p_plug_template_id=>wwv_flow_api.id(74249300338568917)
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
 p_id=>wwv_flow_api.id(74250185158568918)
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
 p_id=>wwv_flow_api.id(74250456309568918)
,p_plug_template_id=>wwv_flow_api.id(74250185158568918)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(74250752010568918)
,p_plug_template_id=>wwv_flow_api.id(74250185158568918)
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
 p_id=>wwv_flow_api.id(74252356879568918)
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
 p_id=>wwv_flow_api.id(74252600321568920)
,p_plug_template_id=>wwv_flow_api.id(74252356879568918)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(74252902205568920)
,p_plug_template_id=>wwv_flow_api.id(74252356879568918)
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
 p_id=>wwv_flow_api.id(74259564255568926)
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
 p_id=>wwv_flow_api.id(74259801780568926)
,p_plug_template_id=>wwv_flow_api.id(74259564255568926)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(74260143242568926)
,p_plug_template_id=>wwv_flow_api.id(74259564255568926)
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
 p_id=>wwv_flow_api.id(74264164347568928)
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
 p_id=>wwv_flow_api.id(74265963005568929)
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
 p_id=>wwv_flow_api.id(74266239959568929)
,p_plug_template_id=>wwv_flow_api.id(74265963005568929)
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
 p_id=>wwv_flow_api.id(74267464436568934)
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
 p_id=>wwv_flow_api.id(74267783284568934)
,p_plug_template_id=>wwv_flow_api.id(74267464436568934)
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
 p_id=>wwv_flow_api.id(74269559247568935)
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
 p_id=>wwv_flow_api.id(74270151957568935)
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
 p_id=>wwv_flow_api.id(74270476215568935)
,p_plug_template_id=>wwv_flow_api.id(74270151957568935)
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
 p_id=>wwv_flow_api.id(74270648744568935)
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
 p_id=>wwv_flow_api.id(74270920920568935)
,p_plug_template_id=>wwv_flow_api.id(74270648744568935)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(74271283032568937)
,p_plug_template_id=>wwv_flow_api.id(74270648744568935)
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
 p_id=>wwv_flow_api.id(74277405722568940)
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
 p_id=>wwv_flow_api.id(74277754003568940)
,p_plug_template_id=>wwv_flow_api.id(74277405722568940)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(74278090835568942)
,p_plug_template_id=>wwv_flow_api.id(74277405722568940)
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
 p_id=>wwv_flow_api.id(74280059028568942)
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
 p_id=>wwv_flow_api.id(74281022722568943)
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
 p_id=>wwv_flow_api.id(74281385328568943)
,p_plug_template_id=>wwv_flow_api.id(74281022722568943)
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
 p_id=>wwv_flow_api.id(74301722425568964)
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
 p_id=>wwv_flow_api.id(74305755287568968)
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
 p_id=>wwv_flow_api.id(74310763839568971)
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
 p_id=>wwv_flow_api.id(74312313873568973)
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
 p_id=>wwv_flow_api.id(74314770637568974)
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
 p_id=>wwv_flow_api.id(74315799285568976)
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
 p_id=>wwv_flow_api.id(74316178600568976)
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
 p_id=>wwv_flow_api.id(74316396795568976)
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
 p_id=>wwv_flow_api.id(74316725536568976)
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
 p_id=>wwv_flow_api.id(74318325000568978)
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
 p_id=>wwv_flow_api.id(74319385986568979)
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
 p_id=>wwv_flow_api.id(74320990925568979)
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
 p_id=>wwv_flow_api.id(74282318182568945)
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
 p_id=>wwv_flow_api.id(74282510136568946)
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
 p_id=>wwv_flow_api.id(74286540274568950)
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
 p_id=>wwv_flow_api.id(74291366212568953)
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
 p_id=>wwv_flow_api.id(74292159188568953)
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
 p_id=>wwv_flow_api.id(74294733321568954)
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
 p_id=>wwv_flow_api.id(74294927267568954)
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
 p_id=>wwv_flow_api.id(74294927267568954)
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
 p_id=>wwv_flow_api.id(74297538599568957)
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
 p_id=>wwv_flow_api.id(74297958999568957)
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
 p_id=>wwv_flow_api.id(74299912374568959)
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
 p_id=>wwv_flow_api.id(74322129419568981)
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
 p_id=>wwv_flow_api.id(74322206604568995)
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
 p_id=>wwv_flow_api.id(74322316638568995)
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
 p_id=>wwv_flow_api.id(74322440669568995)
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
 p_id=>wwv_flow_api.id(74322562949568995)
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
 p_id=>wwv_flow_api.id(74322618612568995)
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
 p_id=>wwv_flow_api.id(74322773937568995)
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
 p_id=>wwv_flow_api.id(74323798801568999)
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
 p_id=>wwv_flow_api.id(74323991050569003)
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
 p_id=>wwv_flow_api.id(74323825526569003)
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
 p_id=>wwv_flow_api.id(74325132700569007)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(74241422349568909)
,p_default_dialog_template=>wwv_flow_api.id(74237108482568906)
,p_error_template=>wwv_flow_api.id(74230746309568895)
,p_printer_friendly_template=>wwv_flow_api.id(74241422349568909)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(74230746309568895)
,p_default_button_template=>wwv_flow_api.id(74322980121568999)
,p_default_region_template=>wwv_flow_api.id(74270648744568935)
,p_default_chart_template=>wwv_flow_api.id(74270648744568935)
,p_default_form_template=>wwv_flow_api.id(74270648744568935)
,p_default_reportr_template=>wwv_flow_api.id(74270648744568935)
,p_default_tabform_template=>wwv_flow_api.id(74270648744568935)
,p_default_wizard_template=>wwv_flow_api.id(74270648744568935)
,p_default_menur_template=>wwv_flow_api.id(74280059028568942)
,p_default_listr_template=>wwv_flow_api.id(74270648744568935)
,p_default_irr_template=>wwv_flow_api.id(74269559247568935)
,p_default_report_template=>wwv_flow_api.id(74294927267568954)
,p_default_label_template=>wwv_flow_api.id(74322440669568995)
,p_default_menu_template=>wwv_flow_api.id(74323798801568999)
,p_default_calendar_template=>wwv_flow_api.id(74323825526569003)
,p_default_list_template=>wwv_flow_api.id(74310763839568971)
,p_default_nav_list_template=>wwv_flow_api.id(74318325000568978)
,p_default_top_nav_list_temp=>wwv_flow_api.id(74318325000568978)
,p_default_side_nav_list_temp=>wwv_flow_api.id(74316396795568976)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(74250185158568918)
,p_default_dialogr_template=>wwv_flow_api.id(74249187333568917)
,p_default_option_label=>wwv_flow_api.id(74322440669568995)
,p_default_required_label=>wwv_flow_api.id(74322773937568995)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(74316178600568976)
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
 p_id=>wwv_flow_api.id(74324137614569004)
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
 p_id=>wwv_flow_api.id(74324370210569006)
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
 p_id=>wwv_flow_api.id(74324554752569006)
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
 p_id=>wwv_flow_api.id(74324730526569006)
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
 p_id=>wwv_flow_api.id(74324924912569006)
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
 p_id=>wwv_flow_api.id(74246251237568915)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74246612076568915)
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
 p_id=>wwv_flow_api.id(74247243923568915)
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
 p_id=>wwv_flow_api.id(74247694667568917)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74251047364568918)
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
 p_id=>wwv_flow_api.id(74251468040568918)
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
 p_id=>wwv_flow_api.id(74253238598568920)
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
 p_id=>wwv_flow_api.id(74254033776568920)
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
 p_id=>wwv_flow_api.id(74255225926568921)
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
 p_id=>wwv_flow_api.id(74256477344568923)
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
 p_id=>wwv_flow_api.id(74256861528568923)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74258811711568925)
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
 p_id=>wwv_flow_api.id(74262215983568928)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74264692326568929)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74265490313568929)
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
 p_id=>wwv_flow_api.id(74266593145568931)
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
 p_id=>wwv_flow_api.id(74268402843568934)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74278303000568942)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74278731551568942)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74279514160568942)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74281614218568943)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74282873332568946)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74283270567568946)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74285263871568948)
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
 p_id=>wwv_flow_api.id(74287022379568950)
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
 p_id=>wwv_flow_api.id(74288858211568951)
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
 p_id=>wwv_flow_api.id(74289625122568951)
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
 p_id=>wwv_flow_api.id(74291655817568953)
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
 p_id=>wwv_flow_api.id(74293448148568954)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74295262698568956)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74295803958568956)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74296294530568956)
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
 p_id=>wwv_flow_api.id(74298258133568957)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74302099374568965)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74303214995568967)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74304494523568967)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74306229805568968)
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
 p_id=>wwv_flow_api.id(74308268677568970)
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
 p_id=>wwv_flow_api.id(74308896841568970)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74311812252568973)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74313684588568974)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74319643295568979)
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
 p_id=>wwv_flow_api.id(74320206926568979)
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
 p_id=>wwv_flow_api.id(74321269970568981)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74323262539568999)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74325364480569007)
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
 p_id=>wwv_flow_api.id(74325776795569009)
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
 p_id=>wwv_flow_api.id(74327301502569010)
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
 p_id=>wwv_flow_api.id(74327799140569010)
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
 p_id=>wwv_flow_api.id(74329344665569012)
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
 p_id=>wwv_flow_api.id(74329791569569012)
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
 p_id=>wwv_flow_api.id(74331388542569013)
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
 p_id=>wwv_flow_api.id(74331767872569013)
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
 p_id=>wwv_flow_api.id(74333399512569015)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74333789822569015)
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
 p_id=>wwv_flow_api.id(74334182803569015)
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
 p_id=>wwv_flow_api.id(74334572916569015)
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
 p_id=>wwv_flow_api.id(74334936530569015)
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
 p_id=>wwv_flow_api.id(74335324120569015)
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
 p_id=>wwv_flow_api.id(74335755615569017)
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
 p_id=>wwv_flow_api.id(74337180349569018)
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
 p_id=>wwv_flow_api.id(74338503685569018)
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
 p_id=>wwv_flow_api.id(74339510294569020)
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
 p_id=>wwv_flow_api.id(74339999260569020)
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
 p_id=>wwv_flow_api.id(74340344863569020)
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
 p_id=>wwv_flow_api.id(74340712289569021)
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
 p_id=>wwv_flow_api.id(74341354144569021)
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
 p_id=>wwv_flow_api.id(74341934297569021)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(74342300117569021)
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
 p_id=>wwv_flow_api.id(74342776146569021)
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
 p_id=>wwv_flow_api.id(74343151028569023)
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
 p_id=>wwv_flow_api.id(74343913350569023)
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
 p_id=>wwv_flow_api.id(74227509130568893)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(74224854982568889)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74230667286568895)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(74227677993568893)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74234534011568900)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(74231557265568896)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74237067635568906)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(74234653166568900)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74238363520568907)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(74237108482568906)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74238560803568907)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(74237108482568906)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74241347774568909)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(74238692432568907)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74243839000568912)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(74241422349568909)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74245158927568914)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(74243910436568914)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74245354041568914)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(74243910436568914)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74246096598568915)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74246461084568915)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(74246251237568915)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74246845794568915)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(74246612076568915)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74247017126568915)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(74246612076568915)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74247431862568915)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(74247243923568915)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74247811971568917)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(74247694667568917)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74248076949568917)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(74246251237568915)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74248202411568917)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(74247243923568915)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74248456703568917)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(74246251237568915)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74248619636568917)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(74247243923568915)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74248820270568917)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(74246251237568915)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74249007549568917)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74245499000568914)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(74247694667568917)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74251237107568918)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(74250185158568918)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74251699781568918)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(74250185158568918)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(74251468040568918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74251867241568918)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(74250185158568918)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74252062635568918)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(74250185158568918)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(74251468040568918)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74252255692568918)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74250185158568918)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74253475160568920)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(74253238598568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74253640959568920)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(74253238598568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74253816534568920)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(74253238598568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74254286439568921)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74254417354568921)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74254658751568921)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74254880496568921)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(74253238598568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74255005781568921)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74255409516568921)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74255631755568923)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74255836782568923)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74256059370568923)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74256269835568923)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74256619814568923)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(74256477344568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74257019211568923)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(74256861528568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74257200211568923)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(74256477344568923)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74257495300568923)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74257675082568923)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74257833836568923)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74258008522568923)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(74256861528568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74258247717568925)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74258454479568925)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74258667049568925)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74259028707568925)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(74258811711568925)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74259272788568925)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(74258811711568925)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74259415821568926)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74252356879568918)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74260441079568926)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74260614353568926)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74260824665568926)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74261024400568926)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74261215470568926)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74261499267568926)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74261693465568928)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74261813351568928)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74262059936568928)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74262409814568928)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(74262215983568928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74262641066568928)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(74262215983568928)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74262889675568928)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(74256861528568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74263084117568928)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74263217698568928)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74263423820568928)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74263620488568928)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74263815036568928)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(74256861528568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74264084992568928)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74259564255568926)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74264499340568929)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74264164347568928)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74264882392568929)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74264164347568928)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(74264692326568929)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74265090696568929)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74264164347568928)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(74264692326568929)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74265226882568929)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74264164347568928)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(74264692326568929)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74265605744568929)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74264164347568928)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(74265490313568929)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74265805730568929)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74264164347568928)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(74265490313568929)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74266794469568931)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74265963005568929)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(74266593145568931)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74266934983568931)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74265963005568929)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74267147075568934)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74265963005568929)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74267350096568934)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74265963005568929)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74268074878568934)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74268261272568934)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74268612438568934)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(74268402843568934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74268865128568934)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(74268402843568934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74269060158568934)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74269237153568935)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74269432831568935)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74267464436568934)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(74268402843568934)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74269882718568935)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74269559247568935)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74270046157568935)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74269559247568935)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74271529062568937)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74271796712568937)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74271936400568937)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74272195896568937)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(74254033776568920)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74272338339568937)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74272532826568937)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74272710067568937)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74272915827568937)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74273155253568937)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74273341130568937)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74273592807568939)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74273750190568939)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74273941574568939)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74274171477568939)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74274334816568939)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74274577373568939)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74274749193568939)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74274909460568939)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74275133983568939)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(74255225926568921)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74275318854568940)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(74256477344568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74275537235568940)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(74256861528568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74275746992568940)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(74256477344568923)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74275994323568940)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74276164197568940)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74276364470568940)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74276581985568940)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(74256861528568923)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74276796261568940)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74276979703568940)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74277143774568940)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74277317433568940)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(74270648744568935)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(74251047364568918)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74278558935568942)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74277405722568940)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(74278303000568942)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74278995432568942)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74277405722568940)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(74278731551568942)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74279113168568942)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74277405722568940)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74279326004568942)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74277405722568940)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(74278731551568942)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74279726120568942)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74277405722568940)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(74279514160568942)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74279921281568942)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74277405722568940)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(74279514160568942)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74280332327568943)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(74280059028568942)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(74264692326568929)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74280579737568943)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(74280059028568942)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74280770734568943)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(74280059028568942)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(74264692326568929)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74280945471568943)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74280059028568942)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74281828591568943)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(74281022722568943)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(74281614218568943)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74282015712568943)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74281022722568943)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(74281614218568943)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74282277945568945)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(74281022722568943)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74283067854568946)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(74282873332568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74283429211568948)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74283625059568948)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(74282873332568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74283808152568948)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74284004081568948)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(74282873332568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74284216632568948)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74284497631568948)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74284664140568948)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(74282873332568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74284867027568948)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(74282873332568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74285068572568948)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74285463698568948)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74285654729568948)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74285896565568948)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74286034187568950)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74286259737568950)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74286400019568950)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74282510136568946)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74286819091568950)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74287235714568950)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(74287022379568950)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74287416665568950)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74287633974568950)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(74287022379568950)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74287852202568950)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74288007323568950)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(74287022379568950)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74288274634568951)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74288426004568951)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74288687886568951)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74289040908568951)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(74288858211568951)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74289226515568951)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(74288858211568951)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74289424515568951)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74289851217568951)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(74289625122568951)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74290066596568951)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(74289625122568951)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74290257728568951)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74290495066568951)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74290658502568953)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74290806257568953)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(74287022379568950)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74291012463568953)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74291203252568953)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74286540274568950)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74291856972568953)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74291366212568953)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(74291655817568953)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74292001759568953)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74291366212568953)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(74291655817568953)
,p_template_types=>'REPORT'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74292427030568953)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74292618124568953)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74292812559568954)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74293026703568954)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74293246468568954)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74293657504568954)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(74293448148568954)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74293852868568954)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74294019891568954)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74294244167568954)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74294496201568954)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74294608441568954)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(74292159188568953)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74295466478568956)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(74295262698568956)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74295676744568956)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(74295262698568956)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74296041575568956)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(74295803958568956)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74296471403568956)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(74296294530568956)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74296637703568956)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(74296294530568956)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74296886260568956)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(74296294530568956)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74297020466568956)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(74295803958568956)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74297267400568956)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74297450186568957)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74294927267568954)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(74296294530568956)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74297807404568957)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(74297538599568957)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(74285263871568948)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74298443224568957)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74298649161568959)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74298888705568959)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74299057947568959)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74299275706568959)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74299477007568959)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74299651896568959)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74299812540568959)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74297958999568957)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74300283696568960)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74300410629568960)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74300689367568960)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74300831453568962)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74301017224568962)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(74283270567568946)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74301288345568962)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74301420819568962)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74301665184568962)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(74299912374568959)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(74298258133568957)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74302245673568965)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74302408640568965)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74302638086568965)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74302843794568967)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74303068431568967)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74303433507568967)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74303640794568967)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74303868426568967)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74304018895568967)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74304277751568967)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74304666607568967)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(74304494523568967)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74304806912568967)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(74304494523568967)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74305080918568968)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(74304494523568967)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74305275155568968)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74305479425568968)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(74304494523568967)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74305675479568968)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(74301722425568964)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(74304494523568967)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74306052781568968)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74306441182568968)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(74306229805568968)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74306656781568968)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74306805908568968)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(74306229805568968)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74307080019568968)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74307299680568970)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(74306229805568968)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74307437650568970)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74307652104568970)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74307826081568970)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74308083393568970)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74308465350568970)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(74308268677568970)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74308612183568970)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74309087360568970)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(74308896841568970)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74309273153568970)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(74308896841568970)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74309481083568970)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74309654288568971)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74309853050568971)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74310092517568971)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(74306229805568968)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74310248929568971)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(74308268677568970)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74310405078568971)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74310677376568971)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74311027528568971)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74310763839568971)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74311210112568973)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74310763839568971)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74311438162568973)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74310763839568971)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74311668005568973)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74310763839568971)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74312041856568973)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74310763839568971)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(74311812252568973)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74312228064568973)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74310763839568971)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(74311812252568973)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74312625922568973)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74312868626568973)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74313046436568973)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74313287066568974)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74313490810568974)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74313891033568974)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(74313684588568974)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74314039911568974)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74314282856568974)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74314418612568974)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74314692127568974)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(74312313873568973)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74315006058568974)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74314770637568974)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74315241495568976)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74314770637568974)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74315424664568976)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74314770637568974)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74315689332568976)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74314770637568974)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74316038347568976)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74315799285568976)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74316679176568976)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74316396795568976)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74317093918568978)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(74308896841568970)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74317242402568978)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(74302099374568965)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74317454880568978)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(74308896841568970)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74317694514568978)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(74313684588568974)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74317823862568978)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74318050972568978)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(74303214995568967)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74318241922568978)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(74313684588568974)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74318657313568978)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(74318325000568978)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74318888433568978)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(74318325000568978)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74319025765568979)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(74318325000568978)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74319271859568979)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(74318325000568978)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74319815507568979)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(74319385986568979)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(74319643295568979)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74320079944568979)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(74319385986568979)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(74319643295568979)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74320467011568979)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74319385986568979)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(74320206926568979)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74320653418568979)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74319385986568979)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(74320206926568979)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74320886152568979)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74319385986568979)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(74320206926568979)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74321400042568981)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(74321269970568981)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74321654778568981)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(74321269970568981)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74321895317568981)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(74321269970568981)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74322086216568981)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74323430157568999)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(74323038949568999)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(74323262539568999)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74323660779568999)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(74323038949568999)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(74323262539568999)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74325517756569007)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(74325364480569007)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74325947453569009)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(74325776795569009)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74326186284569009)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(74325364480569007)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74326328060569009)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(74325776795569009)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74326522223569009)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(74325364480569007)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74326793223569010)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(74325776795569009)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74326956516569010)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(74325364480569007)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74327124456569010)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(74325776795569009)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74327524445569010)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(74327301502569010)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74327929625569010)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(74327799140569010)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74328139098569010)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(74327301502569010)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74328358820569010)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(74327799140569010)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74328571024569010)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(74327301502569010)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74328752251569012)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(74327799140569010)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74328998299569012)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(74327301502569010)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74329117512569012)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(74327799140569010)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74329568235569012)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(74329344665569012)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74329929897569012)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(74329791569569012)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74330133721569012)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(74329344665569012)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74330357243569012)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(74329791569569012)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74330517323569012)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(74329344665569012)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74330737677569012)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(74329791569569012)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74330929259569012)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(74329344665569012)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74331112916569013)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(74329791569569012)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74331514145569013)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(74331388542569013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74331920501569013)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(74331767872569013)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74332175681569013)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(74331388542569013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74332331770569013)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(74331767872569013)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74332509702569013)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(74331388542569013)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74332792416569013)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(74331767872569013)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74332936305569013)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(74331388542569013)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74333167066569013)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(74331767872569013)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74333534082569015)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(74333399512569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74333969363569015)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(74333789822569015)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74334367081569015)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(74334182803569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74334714405569015)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(74334572916569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74335166550569015)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(74334936530569015)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74335579278569015)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(74335324120569015)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74335901537569017)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(74335755615569017)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74336120881569017)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(74335755615569017)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74336383276569018)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(74333789822569015)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74336535088569018)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(74334182803569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74336732133569018)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(74334572916569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74336972739569018)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(74334936530569015)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74337343155569018)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(74337180349569018)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74337566917569018)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(74337180349569018)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74337730052569018)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(74337180349569018)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74337905591569018)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(74333399512569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74338184864569018)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(74335755615569017)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74338354619569018)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(74335324120569015)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74338709693569018)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(74338503685569018)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74338982497569020)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(74333399512569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74339125141569020)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(74335324120569015)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74339343219569020)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(74333399512569015)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74339740641569020)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(74339510294569020)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74340156158569020)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(74339999260569020)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74340528860569020)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(74340344863569020)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74340986175569021)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(74340712289569021)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74341198089569021)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(74340712289569021)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74341584709569021)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(74341354144569021)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74341729811569021)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(74339999260569020)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74342105533569021)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(74341934297569021)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74342525152569021)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(74342300117569021)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74342983866569023)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(74342776146569021)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74343343776569023)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(74343151028569023)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74343511688569023)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74343790933569023)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(74341934297569021)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(74344136163569023)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(74343913350569023)
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
 p_id=>wwv_flow_api.id(74347800467569035)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(74223885309568886)
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
 p_id=>wwv_flow_api.id(74579182516836341)
,p_name=>'Copy of Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'A2FCOOKIE'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/shared_components/security/authentications/copy_of_custom
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(74579396449836346)
,p_name=>'Copy of CUSTOM'
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
prompt --application/shared_components/plugins/region_type/com_oracle_apex_badge_list
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75229721679522601)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75230191266522608)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75230421223522608)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Percent'
,p_attribute_type=>'REGION SOURCE COLUMN'
,p_is_required=>false
,p_column_data_types=>'NUMBER'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(75238076732522620)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'PERCENT'
,p_help_text=>'Select the column from the region SQL Query that holds the percentage values for the badges. Percentages will be displayed together with the value within the badge.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75230811604522609)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75231261001522609)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75231653049522611)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>5
,p_display_value=>'Fit to Page'
,p_return_value=>'0'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Sizes the badges to stretch across the page. The width of each badge will be determined by the number of badges and the display width.</p>',
'<p>Note: Badges will not wrap when displayed on smaller devices.</p>'))
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75232123082522611)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>7
,p_display_value=>'Float to Left'
,p_return_value=>'F'
,p_help_text=>'<p>Sizes the badges based on the width of the label for each badge. All badges will be displayed to the left of the region.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75232696506522612)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>10
,p_display_value=>'1 column'
,p_return_value=>'1'
,p_help_text=>'Displays only one badge per row. Therefore, if there are three badges they are displayed on three rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75233166427522612)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>20
,p_display_value=>'2 columns'
,p_return_value=>'2'
,p_help_text=>'Displays only two badges per row. Therefore, if there are three badges they are displayed on two rows.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75233645354522612)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>30
,p_display_value=>'3 columns'
,p_return_value=>'3'
,p_help_text=>'<p>Displays a maximum of three badges per row. Therefore, if there are four badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75234132364522612)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>40
,p_display_value=>'4 columns'
,p_return_value=>'4'
,p_help_text=>'<p>Displays a maximum of four badges per row. Therefore, if there are six badges they are displayed on two rows.</p>'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75234663012522612)
,p_plugin_attribute_id=>wwv_flow_api.id(75231261001522609)
,p_display_sequence=>50
,p_display_value=>'5 columns'
,p_return_value=>'5'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Displays a maximum of fix badges per row. Therefore, if there are seven badges they are displayed on two rows.</p>',
'<p>Note: on smaller displays where the badges cannot be displayed appropriately, the responsive region will revert to less column and additional rows. For example, seven badges may be displayed as three columns on three rows, instead of five columns '
||'on two rows.</p>'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75235144501522617)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>70
,p_prompt=>'Badge Size'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_is_common=>false
,p_default_value=>'L'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(75238076732522620)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_EQUALS'
,p_depending_on_expression=>'BOX'
,p_lov_type=>'STATIC'
,p_help_text=>'Select the size of badge to display.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75235552973522617)
,p_plugin_attribute_id=>wwv_flow_api.id(75235144501522617)
,p_display_sequence=>0
,p_display_value=>'Small'
,p_return_value=>'S'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75236090821522617)
,p_plugin_attribute_id=>wwv_flow_api.id(75235144501522617)
,p_display_sequence=>10
,p_display_value=>'Medium'
,p_return_value=>'M'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75236502228522619)
,p_plugin_attribute_id=>wwv_flow_api.id(75235144501522617)
,p_display_sequence=>20
,p_display_value=>'Large'
,p_return_value=>'L'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75237041880522619)
,p_plugin_attribute_id=>wwv_flow_api.id(75235144501522617)
,p_display_sequence=>30
,p_display_value=>'Extra Large'
,p_return_value=>'B'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75237579628522620)
,p_plugin_attribute_id=>wwv_flow_api.id(75235144501522617)
,p_display_sequence=>40
,p_display_value=>'Extra Extra Large'
,p_return_value=>'XXL'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75238076732522620)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75238428302522620)
,p_plugin_attribute_id=>wwv_flow_api.id(75238076732522620)
,p_display_sequence=>10
,p_display_value=>'Default'
,p_return_value=>'BOX'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75238905562522620)
,p_plugin_attribute_id=>wwv_flow_api.id(75238076732522620)
,p_display_sequence=>15
,p_display_value=>'Default with Percent'
,p_return_value=>'PERCENT'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75239410635522620)
,p_plugin_attribute_id=>wwv_flow_api.id(75238076732522620)
,p_display_sequence=>20
,p_display_value=>'Circular'
,p_return_value=>'DOT'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75239958186522622)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75240394632522622)
,p_plugin_attribute_id=>wwv_flow_api.id(75239958186522622)
,p_display_sequence=>10
,p_display_value=>'Yes'
,p_return_value=>'Y'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(75240873449522622)
,p_plugin_attribute_id=>wwv_flow_api.id(75239958186522622)
,p_display_sequence=>20
,p_display_value=>'No'
,p_return_value=>'N'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(75241317824522622)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
 p_id=>wwv_flow_api.id(75242609827522636)
,p_plugin_id=>wwv_flow_api.id(75229569125522580)
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
prompt --application/shared_components/data_loading/tables/ttarifazonatemp
begin
wwv_flow_api.create_load_table(
 p_id=>wwv_flow_api.id(88214832653642712)
,p_name=>'SUBIR_TARIFAS'
,p_owner=>'#OWNER#'
,p_table_name=>'TTARIFAZONATEMP'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(74344860762569024)
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
,p_navigation_list_id=>wwv_flow_api.id(74224554165568887)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(74316396795568976)
,p_nav_list_template_options=>'#DEFAULT#'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(74344559837569024)
,p_nav_bar_list_template_id=>wwv_flow_api.id(74316178600568976)
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
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210409081413'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'EDITAR'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210409124607'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73582451630302936)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(74528111724162798)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74305755287568968)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74355923702569067)
,p_plug_name=>'EDITAR'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74265963005568929)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'TARIFAS'
,p_step_title=>'TARIFAS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210424094231'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73581707943302929)
,p_plug_name=>'--'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>5
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73583188202302943)
,p_plug_name=>'EDICION DE TARIFAS'
,p_parent_plug_id=>wwv_flow_api.id(73581707943302929)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74378428494578692)
,p_plug_name=>'Report 1'
,p_parent_plug_id=>wwv_flow_api.id(73583188202302943)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"CDZONA",',
'"CDTIPCOMB",',
'decode(CANT,1,''R2'',2,''RD'',4,''R3'',3,''POR TONELADA'') cant,',
'"TARIFA",',
'"CDORIGEN",',
'(select dscliente from tclientes where cdcliente = cdorigen) as DESCRIPCION_ORIGEN,',
'"CDEMPRESA",',
'"COMTOT",',
'"COMCARG",',
'"COMDESC",',
'"TARIFA_FIJA",',
'"USUARIOGRABA",',
'"USUARIOMODIF",',
'"TARIFA_OLD",',
'"TARIFA_PRECIO",',
'"DISTANCIA",',
'"USUARIO",',
'"FECHA",',
'"PRSPOT",',
'"PRECIO_SPOT"',
'from "#OWNER#"."TTARIFAZONA" WHERE CDZONA = :P2_ZONA',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74378784553578693)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::::P3_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'LP'
,p_internal_uid=>74378784553578693
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74378823830578715)
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74379245270578728)
,p_db_column_name=>'CDZONA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cdzona'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74379654640578729)
,p_db_column_name=>'CDTIPCOMB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Cdtipcomb'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74380883937578734)
,p_db_column_name=>'CDORIGEN'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Cdorigen'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74381250938578735)
,p_db_column_name=>'CDEMPRESA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cdempresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74381647735578737)
,p_db_column_name=>'COMTOT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Comtot'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74382057441578739)
,p_db_column_name=>'COMCARG'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Comcarg'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74382424356578740)
,p_db_column_name=>'COMDESC'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Comdesc'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74382830586578742)
,p_db_column_name=>'TARIFA_FIJA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Tarifa Fija'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74383284684578745)
,p_db_column_name=>'USUARIOGRABA'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Usuariograba'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74383666119578746)
,p_db_column_name=>'USUARIOMODIF'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Usuariomodif'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74384089181578748)
,p_db_column_name=>'TARIFA_OLD'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Tarifa Old'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74384461958578750)
,p_db_column_name=>'TARIFA_PRECIO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Tarifa Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74384802091578750)
,p_db_column_name=>'DISTANCIA'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Distancia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74385282472578751)
,p_db_column_name=>'USUARIO'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Usuario'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74385698565578756)
,p_db_column_name=>'FECHA'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74386049806578757)
,p_db_column_name=>'PRSPOT'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Prspot'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73582056324302932)
,p_db_column_name=>'PRECIO_SPOT'
,p_display_order=>29
,p_column_identifier=>'U'
,p_column_label=>'Precio Spot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(73582189107302933)
,p_db_column_name=>'DESCRIPCION_ORIGEN'
,p_display_order=>39
,p_column_identifier=>'V'
,p_column_label=>'Descripcion Origen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75923132969660424)
,p_db_column_name=>'CANT'
,p_display_order=>49
,p_column_identifier=>'X'
,p_column_label=>'Cant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75923282125660425)
,p_db_column_name=>'TARIFA'
,p_display_order=>59
,p_column_identifier=>'Y'
,p_column_label=>'Tarifa'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74389195206580054)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'743892'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CDZONA:CDTIPCOMB:CANT:CDORIGEN:DESCRIPCION_ORIGEN:TARIFA:TARIFA_PRECIO:COMCARG:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75923375522660426)
,p_plug_name=>'Descripcion'
,p_parent_plug_id=>wwv_flow_api.id(73583188202302943)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'RD --> Articulado <br>',
'R3 --> Rigido 3k<br>',
'R2 --> Rigido 4k<br>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73582971792302941)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(73581707943302929)
,p_button_name=>'EDITAR_ZONA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--stretch:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Editar Zona'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:RP:P11_CDZONATAR:&P2_ZONA.'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73582899702302940)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(73581707943302929)
,p_button_name=>'CREAR_ZONA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--pillEnd:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Crear Zona'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(73581966333302931)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(73581707943302929)
,p_button_name=>'BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Buscar'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_column_span=>5
,p_grid_column=>6
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74387776624578760)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74378428494578692)
,p_button_name=>'CREAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:3:P4_CDZONA:&P2_ZONA.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(73581806114302930)
,p_name=>'P2_ZONA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73581707943302929)
,p_prompt=>'Zona'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT cdzonatar||'' ''||dszonatar as zonas,cdzonatar  FROM TZONATAR'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74386839578578759)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(74378428494578692)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74387362848578760)
,p_event_id=>wwv_flow_api.id(74386839578578759)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74378428494578692)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74388155169578765)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74387776624578760)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74388632505578765)
,p_event_id=>wwv_flow_api.id(74388155169578765)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74378428494578692)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'EDITAR TARIFAS'
,p_page_mode=>'MODAL'
,p_step_title=>'EDITAR TARIFAS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210424094537'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74358288759578620)
,p_plug_name=>'Form on TTARIFAZONA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74358998139578620)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74250185158568918)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74359382591578620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74358998139578620)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74358884403578620)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74358998139578620)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74358741016578620)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74358998139578620)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74358603813578620)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74358998139578620)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P3_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74361741861578633)
,p_name=>'P3_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74362167603578645)
,p_name=>'P3_CDZONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ZONA'
,p_source=>'CDZONA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74362508092578645)
,p_name=>'P3_CDTIPCOMB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'TIPO COMBUSTIBLE'
,p_source=>'CDTIPCOMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select cdtipcomb||'' ''||dstipcomb as combustible,cdtipcomb from ttipcomb'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74362925753578645)
,p_name=>'P3_CANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CANTIDAD'
,p_source=>'CANT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:R3;4,R2;1,RD;2,POR TONELADA;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74363367955578647)
,p_name=>'P3_TARIFA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tarifa'
,p_source=>'TARIFA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74363770392578648)
,p_name=>'P3_CDORIGEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ORIGEN'
,p_source=>'CDORIGEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select cdcliente||'' ''||dscliente as cliente, cdcliente from tclientes'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74364123272578648)
,p_name=>'P3_CDEMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_item_default=>'01'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74364549409578653)
,p_name=>'P3_COMTOT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comision Total'
,p_source=>'COMTOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74364975198578653)
,p_name=>'P3_COMCARG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comision Carga'
,p_source=>'COMCARG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74365395640578654)
,p_name=>'P3_COMDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comision Descarga'
,p_source=>'COMDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74365773548578656)
,p_name=>'P3_TARIFA_FIJA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tarifa Fija'
,p_source=>'TARIFA_FIJA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;S,NO;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74366111720578657)
,p_name=>'P3_USUARIOGRABA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_source=>'USUARIOGRABA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74366508943578657)
,p_name=>'P3_USUARIOMODIF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_source=>'USUARIOMODIF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74366912777578657)
,p_name=>'P3_TARIFA_OLD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_source=>'TARIFA_OLD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74367306137578659)
,p_name=>'P3_TARIFA_PRECIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tarifa Precio'
,p_source=>'TARIFA_PRECIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74367734231578659)
,p_name=>'P3_DISTANCIA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Distancia'
,p_source=>'DISTANCIA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74368153511578659)
,p_name=>'P3_USUARIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_source=>'USUARIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74368520975578659)
,p_name=>'P3_FECHA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74368986149578661)
,p_name=>'P3_PRSPOT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prspot'
,p_source=>'PRSPOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74369328014578661)
,p_name=>'P3_PRECIO_SPOT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(74358288759578620)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio Spot'
,p_source=>'PRECIO_SPOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74359459946578620)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74359382591578620)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74360257262578626)
,p_event_id=>wwv_flow_api.id(74359459946578620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74375800699578667)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TTARIFAZONA'
,p_attribute_02=>'TTARIFAZONA'
,p_attribute_03=>'P3_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74376262347578667)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TTARIFAZONA'
,p_attribute_02=>'TTARIFAZONA'
,p_attribute_03=>'P3_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74376622768578668)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74358884403578620)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74377099387578668)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_api.create_page(
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'CREAR TARIFA'
,p_page_mode=>'MODAL'
,p_step_title=>'CREAR TARIFA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210424094338'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74404975609822529)
,p_plug_name=>'CREAR TARIFA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74405631087822531)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74250185158568918)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74406065921822531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74405631087822531)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74405524065822531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74405631087822531)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74405485382822531)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74405631087822531)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74405320660822531)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74405631087822531)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74408406746822535)
,p_name=>'P4_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74408853898822537)
,p_name=>'P4_CDZONA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ZONA'
,p_source=>'CDZONA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74409221722822537)
,p_name=>'P4_CDTIPCOMB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo Combustible'
,p_source=>'CDTIPCOMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT CDTIPCOMB||'' ''||DSTIPCOMB AS TIPO, CDTIPCOMB from TTIPCOMB'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74409685515822537)
,p_name=>'P4_CANT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantidad'
,p_source=>'CANT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:R2;1,R3;4,RD;2,POR TONELADA;3'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74410091126822537)
,p_name=>'P4_TARIFA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tarifa'
,p_source=>'TARIFA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74410495415822539)
,p_name=>'P4_CDORIGEN'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Origen'
,p_source=>'CDORIGEN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select cdcliente||'' ''||dscliente as cliente, cdcliente from tclientes'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74410862419822539)
,p_name=>'P4_CDEMPRESA'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_item_default=>'01'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74411209201822539)
,p_name=>'P4_COMTOT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comision Total'
,p_source=>'COMTOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74411699317822539)
,p_name=>'P4_COMCARG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comision de Carga'
,p_source=>'COMCARG'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74412004222822540)
,p_name=>'P4_COMDESC'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Comision de Descarga'
,p_source=>'COMDESC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74412416164822542)
,p_name=>'P4_TARIFA_FIJA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tarifa Fija'
,p_source=>'TARIFA_FIJA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SI;S,NO;N'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74412802800822542)
,p_name=>'P4_USUARIOGRABA'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_source=>'USUARIOGRABA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74413255905822542)
,p_name=>'P4_USUARIOMODIF'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_source=>'USUARIOMODIF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74413638386822542)
,p_name=>'P4_TARIFA_OLD'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'TARIFA_OLD'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74414042894822543)
,p_name=>'P4_TARIFA_PRECIO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tarifa Precio'
,p_source=>'TARIFA_PRECIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74414449360822543)
,p_name=>'P4_DISTANCIA'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Distancia'
,p_source=>'DISTANCIA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74414890810822543)
,p_name=>'P4_USUARIO'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_source=>'USUARIO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74415288374822545)
,p_name=>'P4_FECHA'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha'
,p_source=>'FECHA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74415607853822545)
,p_name=>'P4_PRSPOT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prspot'
,p_source=>'PRSPOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74416020800822545)
,p_name=>'P4_PRECIO_SPOT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(74404975609822529)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio Spot'
,p_source=>'PRECIO_SPOT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>22
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74406160941822531)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74406065921822531)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74406985737822532)
,p_event_id=>wwv_flow_api.id(74406160941822531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74422565335822551)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TTARIFAZONA'
,p_attribute_02=>'TTARIFAZONA'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74422995924822553)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TTARIFAZONA'
,p_attribute_02=>'TTARIFAZONA'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74423360135822553)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74405524065822531)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74423798465822553)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'TCLIENTES'
,p_step_title=>'TCLIENTES'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210421165956'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(73582265287302934)
,p_plug_name=>'TCLIENTES'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74481118864854541)
,p_plug_name=>'Informe 1'
,p_parent_plug_id=>wwv_flow_api.id(73582265287302934)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"CDCLIENTE",',
'"DSCLIENTE",',
'"DIRECCION",',
'"TELEFONO",',
'"CONTACTO",',
'"PAIS",',
'"CDEMPRESA",',
'"CDZONA",',
'"CDTIPCLIENTE",',
'"TARIFA",',
'"CDCLIENTEP",',
'"CDZONATAR",',
'"HOINI",',
'"HOFIN",',
'"TIEMPO_PREVISTO",',
'"DISTANCIA",',
'"NOMBRE_CORTO",',
'"CDDELEGACION",',
'"NIT",',
'"RESTRICCION",',
'"ACCESO",',
'"ACCESORIOS",',
'"USRGRAB",',
'"USRMODIF",',
'"CONSUMO_ARTICULADO",',
'"CONSUMO_RIGIDO",',
'"FECHA_MODI",',
'"COSTOSEGURO"',
'from tclientes WHERE CDTIPCLIENTE= decode(:P5_TIPO,''0'',CDTIPCLIENTE,:P5_TIPO)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P5_TIPO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(74481512420854541)
,p_name=>'Informe 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>unistr('El recuento m\00E1ximo de filas de este informe es #MAX_ROW_COUNT# filas. Aplique un filtro para reducir el n\00FAmero de registros de la consulta.')
,p_no_data_found_message=>unistr('No se ha encontrado ning\00FAn dato.')
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:6:&APP_SESSION.::::P6_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Editar">'
,p_owner=>'LP'
,p_internal_uid=>74481512420854541
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74481698876854546)
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74482048558854549)
,p_db_column_name=>'CDCLIENTE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cdcliente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74482444875854551)
,p_db_column_name=>'DSCLIENTE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dscliente'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74482818278854554)
,p_db_column_name=>'DIRECCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Direccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74483254328854557)
,p_db_column_name=>'TELEFONO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Telefono'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74483661503854558)
,p_db_column_name=>'CONTACTO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Contacto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74484009920854560)
,p_db_column_name=>'PAIS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Pais'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74484443247854562)
,p_db_column_name=>'CDEMPRESA'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cdempresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74484897127854563)
,p_db_column_name=>'CDZONA'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cdzona'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74485290164854565)
,p_db_column_name=>'CDTIPCLIENTE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cdtipcliente'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74485696907854566)
,p_db_column_name=>'TARIFA'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Tarifa'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74486055510854568)
,p_db_column_name=>'CDCLIENTEP'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Cdclientep'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74486408433854571)
,p_db_column_name=>'CDZONATAR'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Cdzonatar'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74486876475854572)
,p_db_column_name=>'HOINI'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Hoini'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74487262845854574)
,p_db_column_name=>'HOFIN'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Hofin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74487629490854576)
,p_db_column_name=>'TIEMPO_PREVISTO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Tiempo Previsto'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74488018059854577)
,p_db_column_name=>'DISTANCIA'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Distancia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74488419717854579)
,p_db_column_name=>'NOMBRE_CORTO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Nombre Corto'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74488867952854580)
,p_db_column_name=>'CDDELEGACION'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Cddelegacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74489219460854583)
,p_db_column_name=>'NIT'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74489614683854585)
,p_db_column_name=>'RESTRICCION'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Restriccion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490099544854588)
,p_db_column_name=>'ACCESO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Acceso'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490488615854591)
,p_db_column_name=>'ACCESORIOS'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Accesorios'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74490876977854593)
,p_db_column_name=>'USRGRAB'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Usrgrab'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74491204951854594)
,p_db_column_name=>'USRMODIF'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Usrmodif'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74491676504854596)
,p_db_column_name=>'CONSUMO_ARTICULADO'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Consumo Articulado'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74492032824854597)
,p_db_column_name=>'CONSUMO_RIGIDO'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Consumo Rigido'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74492463451854599)
,p_db_column_name=>'FECHA_MODI'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Fecha Modi'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74492880203854602)
,p_db_column_name=>'COSTOSEGURO'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Costoseguro'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(74495668424855409)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'744957'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:CDCLIENTE:DSCLIENTE:DIRECCION:TELEFONO:CONTACTO:PAIS:CDEMPRESA:CDZONA:CDTIPCLIENTE:TARIFA:CDCLIENTEP:CDZONATAR:HOINI:HOFIN:TIEMPO_PREVISTO:DISTANCIA:NOMBRE_CORTO:CDDELEGACION:NIT:RESTRICCION:ACCESO:ACCESORIOS:USRGRAB:USRMODIF:CONSUMO_ARTICULADO'
||':CONSUMO_RIGIDO:FECHA_MODI:COSTOSEGURO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74932137384633649)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(73582265287302934)
,p_button_name=>'BUSCAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--pillEnd:t-Button--stretch:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Buscar'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>5
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74494189705854604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74481118864854541)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:6'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74932067800633648)
,p_name=>'P5_TIPO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(73582265287302934)
,p_prompt=>'Tipo'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR(cdtipcliente)||'' ''||dstipcliente tipo_cliente, TO_CHAR(cdtipcliente) from ttipcliente',
'UNION',
'SELECT ''0 TODOS'' tipo_cliente, ''0'' cdtipcliente',
'FROM DUAL'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>7
,p_grid_column=>3
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74493280852854602)
,p_name=>unistr('Editar Informe: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(74481118864854541)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74493717805854604)
,p_event_id=>wwv_flow_api.id(74493280852854602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74481118864854541)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74494521774854604)
,p_name=>unistr('Crear Bot\00F3n: Cuadro de Di\00E1logo Cerrado')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74494189705854604)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74495038894854605)
,p_event_id=>wwv_flow_api.id(74494521774854604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(74481118864854541)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'CLIENTE'
,p_page_mode=>'MODAL'
,p_step_title=>'CLIENTE'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210705143531'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74454640605854420)
,p_plug_name=>'Pantalla Basada en TCLIENTES'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74455366406854421)
,p_plug_name=>'Botones'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74250185158568918)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74455777215854421)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74455366406854421)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Cancelar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74455207566854421)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74455366406854421)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Suprimir'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P6_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74455105433854421)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74455366406854421)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Aplicar Cambios'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P6_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74455077808854421)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74455366406854421)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Crear'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P6_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74458118467854437)
,p_name=>'P6_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74458580346854449)
,p_name=>'P6_CDCLIENTE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdcliente'
,p_source=>'CDCLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322773937568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74458908640854484)
,p_name=>'P6_DSCLIENTE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NOMBRE'
,p_source=>'DSCLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>150
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74459336179854484)
,p_name=>'P6_DIRECCION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Direccion'
,p_source=>'DIRECCION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74459720115854484)
,p_name=>'P6_TELEFONO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'TELEFONO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74460172174854485)
,p_name=>'P6_CONTACTO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'CONTACTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74460561955854485)
,p_name=>'P6_PAIS'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pais'
,p_source=>'PAIS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Guatemala;Guatemala,El Salvador;El Salvador,Honduras;Honduras,Nicaragua;Nicaragua,Costa Rica;Costa Rica,Panama;Panama,Mexico;Mexico'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74460909565854485)
,p_name=>'P6_CDEMPRESA'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'01'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74461311260854487)
,p_name=>'P6_CDZONA'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ZONA GEOGRAFICA'
,p_source=>'CDZONA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'Select dszona, cdzona from  tzonas'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74461793322854488)
,p_name=>'P6_CDTIPCLIENTE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'TIPO CLIENTE'
,p_source=>'CDTIPCLIENTE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select dstipcliente, cdtipcliente from  ttipcliente'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74462143376854488)
,p_name=>'P6_TARIFA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'TARIFA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74462508702854490)
,p_name=>'P6_CDCLIENTEP'
,p_item_sequence=>105
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'CLIENTE PADRE'
,p_source=>'CDCLIENTEP'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select cdcliente||'' - ''|| dscliente, cdcliente from  tclientes where cdclientep is null'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74462918945854490)
,p_name=>'P6_CDZONATAR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ZONA TARIFARIA'
,p_source=>'CDZONATAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'Select cdzonatar||''-''||dszonatar, cdzonatar from  tzonatar'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74463391349854490)
,p_name=>'P6_HOINI'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'HOINI'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74463724570854491)
,p_name=>'P6_HOFIN'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'HOFIN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74464153555854491)
,p_name=>'P6_TIEMPO_PREVISTO'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'TIEMPO_PREVISTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74464564004854491)
,p_name=>'P6_DISTANCIA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'DISTANCIA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74464960160854491)
,p_name=>'P6_NOMBRE_CORTO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'NOMBRE_CORTO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74465373456854493)
,p_name=>'P6_CDDELEGACION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cddelegacion'
,p_source=>'CDDELEGACION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NORTE;02,SUR;01'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74465735668854493)
,p_name=>'P6_NIT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'NIT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74466167303854493)
,p_name=>'P6_RESTRICCION'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Restriccion'
,p_source=>'RESTRICCION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>3000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74466552148854494)
,p_name=>'P6_ACCESO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Acceso'
,p_source=>'ACCESO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>3000
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74466920285854494)
,p_name=>'P6_ACCESORIOS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Accesorios'
,p_source=>'ACCESORIOS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74467358351854498)
,p_name=>'P6_USRGRAB'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'USRGRAB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74467748334854498)
,p_name=>'P6_USRMODIF'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_source=>'USRMODIF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74468182143854499)
,p_name=>'P6_CONSUMO_ARTICULADO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'CONSUMO_ARTICULADO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74468572385854499)
,p_name=>'P6_CONSUMO_RIGIDO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'CONSUMO_RIGIDO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74468960750854499)
,p_name=>'P6_FECHA_MODI'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'sysdate();'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_source=>'FECHA_MODI'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74469351812854505)
,p_name=>'P6_COSTOSEGURO'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(74454640605854420)
,p_use_cache_before_default=>'NO'
,p_item_default=>'.05'
,p_source=>'COSTOSEGURO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74455844976854421)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74455777215854421)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74456639267854427)
,p_event_id=>wwv_flow_api.id(74455844976854421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74478563072854515)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TCLIENTES'
,p_attribute_02=>'TCLIENTES'
,p_attribute_03=>'P6_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74478963172854516)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TCLIENTES'
,p_attribute_02=>'TCLIENTES'
,p_attribute_03=>'P6_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('Acci\00F3n procesada.')
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74479374442854516)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74455207566854421)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74479756629854516)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_api.create_page(
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Reporte Caja chica'
,p_step_title=>'Reporte Caja chica'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Reporte Caja chica'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413092530'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183799558963653429)
,p_plug_name=>'DETALLE'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74245499000568914)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        select',
'       A.FECHA_EMISION,',
'       A.CAJA_CHICA,',
'       A.DEPARTAMENTO ID_DEPARTAMENTO,',
'       D.DESCRIPCION AS DEPARTAMENTO,',
'       A.VALE,',
'       A.CONCEPTO_VALE,',
'       B.DETALLE,',
'       TO_NUMBER(A.BENEFICIARIO) AS ID_BENEFICIARIO,',
'       C.NOMBRE_PILA||'' ''||C.PRIMER_APELLIDO||'' ''||C.SEGUNDO_APELLIDO AS ',
'       BENEFICIARIO,',
'       A.MONTO_VALE,',
'       A.ESTADO',
'    from vale@SOFTLAND A',
'    INNER JOIN DOCS_SOPORTE@SOFTLAND B ON A.CONSECUTIVO= B.VALE',
'    INNER JOIN EMPLEADO@SOFTLAND C ON A.BENEFICIARIO = C.EMPLEADO',
'    INNER JOIN DEPARTAMENTO@SOFTLAND D ON A.DEPARTAMENTO= D.DEPARTAMENTO',
'   -- INNER JOIN  v_docs_soporte@softland E ON B.VALE = E.VALE',
'    WHERE  A.FECHA_EMISION >= TO_DATE (:P7_FECHA_INICIO,''DD/MM/YYYY'') AND ',
'    A.FECHA_EMISION <= TO_DATE(:P7_FECHA_FIN,''DD/MM/YYYY'') ',
'    AND A.CAJA_CHICA = :P7_CAJA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P7_CAJA'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(183799661112653429)
,p_name=>'DETALLE'
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
,p_owner=>'1462'
,p_internal_uid=>183799661112653429
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74914639435556696)
,p_db_column_name=>'FECHA_EMISION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fecha Emision'
,p_allow_pivot=>'N'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FECHA_EMISION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74915023194556699)
,p_db_column_name=>'ID_DEPARTAMENTO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Id Departamento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ID_DEPARTAMENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74915447975556701)
,p_db_column_name=>'VALE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Vale'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VALE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74915820824556701)
,p_db_column_name=>'CONCEPTO_VALE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Concepto Vale'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CONCEPTO_VALE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74916220694556701)
,p_db_column_name=>'BENEFICIARIO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Beneficiario'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFICIARIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74916652715556701)
,p_db_column_name=>'MONTO_VALE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Monto Vale'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MONTO_VALE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74917089630556702)
,p_db_column_name=>'ESTADO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Estado'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ESTADO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74917496956556702)
,p_db_column_name=>'CAJA_CHICA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Caja Chica'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CAJA_CHICA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74917818793556702)
,p_db_column_name=>'ID_BENEFICIARIO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Id Beneficiario'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID_BENEFICIARIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74918226748556702)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Departamento'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTAMENTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(74918674078556704)
,p_db_column_name=>'DETALLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Detalle'
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
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_tz_dependent=>'N'
,p_static_id=>'DETALLE'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(183800860695653883)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'749190'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CAJA_CHICA:FECHA_EMISION:VALE:ID_DEPARTAMENTO:DEPARTAMENTO:CONCEPTO_VALE:MONTO_VALE:ESTADO:ID_BENEFICIARIO:BENEFICIARIO:DETALLE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183802182297669649)
,p_plug_name=>'DATOS'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>30
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
 p_id=>wwv_flow_api.id(74919792776556710)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(183802182297669649)
,p_button_name=>'P7_ACTUALIZAR'
,p_button_static_id=>'P1_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322865508568995)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74920193002556715)
,p_name=>'P7_CAJA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183802182297669649)
,p_prompt=>'Caja'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT caja_chica||'' ''||descripcion caja,caja_chica FROM CAJA_CHICA@SOFTLAND'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322129419568981)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NOT_ENTERABLE'
,p_attribute_02=>'FIRST_ROWSET'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74920517540556716)
,p_name=>'P7_FECHA_INICIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(183802182297669649)
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322129419568981)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74920905939556718)
,p_name=>'P7_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(183802182297669649)
,p_prompt=>'Fecha Fin'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322129419568981)
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
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'CONTROL_PANEL'
,p_step_title=>'CONTROL_PANEL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(74241422349568909)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413135836'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74929689457633624)
,p_plug_name=>'CONTROL_PANEL'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'cabezales'
,p_page_mode=>'MODAL'
,p_step_title=>'cabezales'
,p_step_sub_title=>'cabezales'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210423170222'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77100302116363870)
,p_plug_name=>'cabezales'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select   distinct(a.cdclaseuni||''-''||a.correlativouni) as unidad, ''CABEZAL'' as  tipo from  tnotaviaje  a inner join tactivos b on  a.cdclaseuni=b.cdclase  and a.correlativOuni=b.correlativo',
'  inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=1 AND grupo in(:grupo) and',
'a.cddelegacion in (:delegacion) and',
'extract( year from a.fechasale) =:anio'))
,p_query_owner=>'PIPASGT'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(77100495589363870)
,p_name=>'cabezales'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>77100495589363870
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77100810403363954)
,p_db_column_name=>'UNIDAD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77101119473363982)
,p_db_column_name=>'TIPO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77101752810373351)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'771018'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIDAD:TIPO'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'EDITAR_ZONA'
,p_page_mode=>'MODAL'
,p_step_title=>'EDITAR_ZONA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210409130405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74537094979264294)
,p_plug_name=>'EDITAR_ZONA'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74537733934264297)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74250185158568918)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74538189087264297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74537733934264297)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74537602051264297)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74537733934264297)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74537554849264297)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74537733934264297)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74537458398264297)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74537733934264297)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74540512752264309)
,p_name=>'P10_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74540990760264312)
,p_name=>'P10_CDZONATAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID ZONA'
,p_source=>'CDZONATAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74541330744264312)
,p_name=>'P10_DSZONATAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'DESCRIPCION ZONA'
,p_source=>'DSZONATAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74541758367264314)
,p_name=>'P10_OTSA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Otsa'
,p_source=>'OTSA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74542159961264314)
,p_name=>'P10_TASA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tasa'
,p_source=>'TASA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74542594959264314)
,p_name=>'P10_CDEMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_item_default=>'01'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74542926074264315)
,p_name=>'P10_CDDELEGACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74537094979264294)
,p_use_cache_before_default=>'NO'
,p_prompt=>'DELEGACION'
,p_source=>'CDDELEGACION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SUR;01,NORTE;02'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74538262988264297)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74538189087264297)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74539033452264303)
,p_event_id=>wwv_flow_api.id(74538262988264297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74545525383264318)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TZONATAR'
,p_attribute_02=>'TZONATAR'
,p_attribute_03=>'P10_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74545934821264320)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TZONATAR'
,p_attribute_02=>'TZONATAR'
,p_attribute_03=>'P10_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74546321026264320)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74537602051264297)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74546785341264320)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'EDITAR_ZONA_2'
,p_page_mode=>'MODAL'
,p_step_title=>'EDITAR_ZONA_2'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210409145324'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74551649582367001)
,p_plug_name=>'EDITAR_ZONA_2'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74552312834367001)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74250185158568918)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74552762022367003)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(74552312834367001)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74552210314367001)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(74552312834367001)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P11_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74552146357367001)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(74552312834367001)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P11_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74552064955367001)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74552312834367001)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P11_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74555101547367006)
,p_name=>'P11_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74555568380367017)
,p_name=>'P11_CDZONATAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_use_cache_before_default=>'NO'
,p_prompt=>'ID ZONA'
,p_source=>'CDZONATAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74555929319367017)
,p_name=>'P11_DSZONATAR'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_prompt=>'DESCRIPCION DE ZONA'
,p_source=>'SELECT dszonatar FROM TZONATAR WHERE CDZONATAR = :P11_CDZONATAR'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>100
,p_cHeight=>4
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74556301766367019)
,p_name=>'P11_OTSA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_prompt=>'Otsa'
,p_source=>'SELECT OTSA FROM TZONATAR WHERE CDZONATAR = :P11_CDZONATAR'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74556758994367019)
,p_name=>'P11_TASA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_prompt=>'Tasa'
,p_source=>'SELECT TASA FROM TZONATAR WHERE CDZONATAR = :P11_CDZONATAR'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74557199755367019)
,p_name=>'P11_CDEMPRESA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_use_cache_before_default=>'NO'
,p_item_default=>'01'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74557537912367019)
,p_name=>'P11_CDDELEGACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(74551649582367001)
,p_prompt=>'DELEGACION'
,p_source=>'SELECT CDDELEGACION FROM TZONATAR WHERE CDZONATAR = :P11_CDZONATAR'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SUR;01,NORTE;02'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(74552861429367003)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(74552762022367003)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(74553681443367003)
,p_event_id=>wwv_flow_api.id(74552861429367003)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74560182025367023)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TZONATAR'
,p_attribute_02=>'TZONATAR'
,p_attribute_03=>'P11_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74560555943367023)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TZONATAR'
,p_attribute_02=>'TZONATAR'
,p_attribute_03=>'P11_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'U'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74560976776367025)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74552210314367001)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74561360967367025)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(73583060129302942)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_ZONA'
,p_process_sql_clob=>'update tzonatar set cdzonatar = :P11_CDZONATAR , DSZONATAR =:P11_DSZONATAR, OTSA = :P11_OTSA, TASA=:P11_TASA , CDEMPRESA = :P11_CDEMPRESA, CDDELEGACION=:P11_CDDELEGACION WHERE CDZONATAR =:P11_CDZONATAR;'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(74552064955367001)
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Rigidos'
,p_page_mode=>'MODAL'
,p_step_title=>'Rigidos'
,p_step_sub_title=>'Rigidos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210423171144'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154205302704790744)
,p_plug_name=>'Rigidos'
,p_region_name=>'Rigidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select   distinct(a.cdclaseuni||''-''||a.correlativouni) as unidad, ''Rigido'' as  tipo from  tnotaviaje  a inner join tactivos b on  a.cdclaseuni=b.cdclase  and a.correlativOuni=b.correlativo',
'  inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=5 AND grupo in(:grupo) and',
'a.cddelegacion in (:delegacion) and',
'extract( year from a.fechasale) =:anio'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(154205496177790744)
,p_name=>'cabezales'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>154205496177790744
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77105777895426936)
,p_db_column_name=>'UNIDAD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77106034172426939)
,p_db_column_name=>'TIPO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(154206753398800225)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'771064'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIDAD:TIPO'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'GENERAL'
,p_step_title=>'GENERAL'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'GENERAL'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413123146'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74929787032633625)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(99904300602047479)
,p_plug_name=>'Generales'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_plug_query_row_template=>wwv_flow_api.id(74294927267568954)
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(99894590391732279)
,p_name=>'Galones Transportados del Dia'
,p_parent_plug_id=>wwv_flow_api.id(99904300602047479)
,p_template=>wwv_flow_api.id(74269559247568935)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cddelegacion,c.dstipcomb, sum(galones) from tnotaviaje a, tdetnota b ',
',ttipcomb c ',
'where a.nmnota=b.nmnota and  a.cdtipcomb=c.cdtipcomb  and',
'a.fechasale= :P13_FECHA',
'group by a.cddelegacion,c.dstipcomb'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
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
 p_id=>wwv_flow_api.id(75033137440044500)
,p_query_column_id=>1
,p_column_alias=>'CDDELEGACION'
,p_column_display_sequence=>1
,p_column_heading=>'CDDELEGACION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75033554427044500)
,p_query_column_id=>2
,p_column_alias=>'DSTIPCOMB'
,p_column_display_sequence=>2
,p_column_heading=>'DSTIPCOMB'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75033995055044500)
,p_query_column_id=>3
,p_column_alias=>'SUM(GALONES)'
,p_column_display_sequence=>3
,p_column_heading=>'SUM(GALONES)'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(99901596568980114)
,p_name=>'OT del Dia'
,p_parent_plug_id=>wwv_flow_api.id(99904300602047479)
,p_template=>wwv_flow_api.id(74269559247568935)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select  cddelegacion, estado, count(nmorden)  from tordenserv where fecrea=:P13_FECHA_OT  group by  cddelegacion, estado'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(75035005577044502)
,p_query_column_id=>1
,p_column_alias=>'CDDELEGACION'
,p_column_display_sequence=>1
,p_column_heading=>'CDDELEGACION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75035493505044504)
,p_query_column_id=>2
,p_column_alias=>'ESTADO'
,p_column_display_sequence=>2
,p_column_heading=>'ESTADO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75035827499044504)
,p_query_column_id=>3
,p_column_alias=>'COUNT(NMORDEN)'
,p_column_display_sequence=>3
,p_column_heading=>'COUNT(NMORDEN)'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(99908597504197984)
,p_name=>'Kilometros'
,p_parent_plug_id=>wwv_flow_api.id(99904300602047479)
,p_template=>wwv_flow_api.id(74269559247568935)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select cddelegacion as "Delegacion" , sum(recorrido) as "KMS", sum(CANTDESPACHA) as "Galones", sum(recorrido)/sum(CANTDESPACHA)as "KMS*G" from tvales where fecha = :P13_KMS_DATE group by cddelegacion'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(75036821198044505)
,p_query_column_id=>1
,p_column_alias=>'Delegacion'
,p_column_display_sequence=>1
,p_column_heading=>'Delegacion'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75037217134044505)
,p_query_column_id=>2
,p_column_alias=>'KMS'
,p_column_display_sequence=>2
,p_column_heading=>'KMS'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75037632196044505)
,p_query_column_id=>3
,p_column_alias=>'Galones'
,p_column_display_sequence=>3
,p_column_heading=>'Galones'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75038040112044507)
,p_query_column_id=>4
,p_column_alias=>'KMS*G'
,p_column_display_sequence=>4
,p_column_heading=>'KMS*G'
,p_use_as_row_header=>'N'
,p_column_format=>'S999G999G999G999G990D00'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(100081981552441281)
,p_name=>'Gastos '
,p_parent_plug_id=>wwv_flow_api.id(99904300602047479)
,p_template=>wwv_flow_api.id(74269559247568935)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.cod_sucursal ,  sum (round(c.cantidad*c.costo_unit,2)) costo_total,  i.tipo_ot',
'  FROM INV_MOVM a, inv_detm c, productos e, agencias f, bodegas g, bodegas h, tordenserv i, tactivos j,  empleados b, empleados d',
'  WHERE a.cod_cia      = ''01''',
'    AND a.cod_doctoi   IN (16)',
'    and trunc(a.fecha_docto) between to_date(:P13_FECHA_INICIO,''dd/mm/yyyy'') and to_date(:P13_FECHA_FIN,''dd/mm/yyyy'')',
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
'    and REPLACE(i.cdclase(+)||''-''||i.correlativo(+),'''','' '') = a.cod_obra',
'    group by  a.Cod_sucursal,  tipo_ot',
'    order by cod_sucursal, tipo_ot'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13_FECHA_INICIO,P13_FECHA_FIN'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(75039164429044508)
,p_query_column_id=>1
,p_column_alias=>'COD_SUCURSAL'
,p_column_display_sequence=>1
,p_column_heading=>'COD_SUCURSAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75039512039044510)
,p_query_column_id=>2
,p_column_alias=>'COSTO_TOTAL'
,p_column_display_sequence=>2
,p_column_heading=>'COSTO_TOTAL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75039966801044510)
,p_query_column_id=>3
,p_column_alias=>'TIPO_OT'
,p_column_display_sequence=>3
,p_column_heading=>'TIPO_OT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(100126895196630920)
,p_name=>'Reporte OT'
,p_template=>wwv_flow_api.id(74269559247568935)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select  extract ( month from fecrea) mes , description, count (nmorden) cantidad from tordenserv a inner join tbl_taller b on a.taller=b.id where estado=''A'' and cddelegacion=:P13_ESTACION group by extract ( month from fecrea) ,description order by ex'
||'tract  ( month from fecrea)'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
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
 p_id=>wwv_flow_api.id(75041873603044514)
,p_query_column_id=>1
,p_column_alias=>'MES'
,p_column_display_sequence=>1
,p_column_heading=>'MES'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75042255502044514)
,p_query_column_id=>2
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>2
,p_column_heading=>'DESCRIPTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75042601277044514)
,p_query_column_id=>3
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>3
,p_column_heading=>'Cantidad'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75034348482044502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(99894590391732279)
,p_button_name=>'P13_ACTUALIZAR'
,p_button_static_id=>'P1_ACTUALIZAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75038414723044507)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(99908597504197984)
,p_button_name=>'P13_KMS'
,p_button_static_id=>'P1_KMS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Kms'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75036208949044504)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(99901596568980114)
,p_button_name=>'P13_UPDATE_OT'
,p_button_static_id=>'P1_UPDATE_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualiza '
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75040332190044510)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_api.id(100081981552441281)
,p_button_name=>'P13_ACTUALIZAR_GASTOS'
,p_button_static_id=>'P1_ACTUALIZAR_GASTOS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar Gastos'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75043049293044516)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_api.id(100126895196630920)
,p_button_name=>'P13_ACTUALIZAR_OT'
,p_button_static_id=>'P1_ACTUALIZAR_OT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar OT'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column=>2
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75040750111044510)
,p_name=>'P13_FECHA_INICIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(100081981552441281)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Inicio'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75041112182044511)
,p_name=>'P13_FECHA_FIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(100081981552441281)
,p_item_default=>'sysdate'
,p_item_default_type=>'PLSQL_EXPRESSION'
,p_prompt=>'Fin'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_cMaxlength=>4000
,p_cHeight=>1
,p_grid_column=>3
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75043780069044516)
,p_name=>'update'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24867508068781498)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75044279706044518)
,p_event_id=>wwv_flow_api.id(75043780069044516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(99894590391732279)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75044621705044518)
,p_name=>'Update_ot'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24871616230973137)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75045163565044518)
,p_event_id=>wwv_flow_api.id(75044621705044518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(99901596568980114)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75045569068044518)
,p_name=>'Update_KM'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(24877431186157225)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75046060180044519)
,p_event_id=>wwv_flow_api.id(75045569068044518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(99908597504197984)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75046401878044519)
,p_name=>'update_gastos'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(25050730126404776)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75046919076044519)
,p_event_id=>wwv_flow_api.id(75046401878044519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(100081981552441281)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75047350743044519)
,p_name=>'Update_rep_OT'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75043049293044516)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75047831250044519)
,p_event_id=>wwv_flow_api.id(75047350743044519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(100126895196630920)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Pipas'
,p_page_mode=>'MODAL'
,p_step_title=>'Pipas'
,p_step_sub_title=>'Pipas'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210423171626'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(154208884060812851)
,p_plug_name=>'PIPAS'
,p_region_name=>'Pipas'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select   distinct(a.cdclasecomp||''-''||correlativocomp) as unidad, ''Pipa'' as  tipo from  tnotaviaje  a inner join tactivos b on  a.cdclaseCOMP=b.cdclase  and a.correlativOCOMP=b.correlativo',
' inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=3  AND grupo in(:grupo) and',
'extract( year from a.fechasale) =:anio',
'and a.cddelegacion in (:delegacion) '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(154209077533812851)
,p_name=>'cabezales'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>154209077533812851
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77109276196448984)
,p_db_column_name=>'UNIDAD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77109629770448990)
,p_db_column_name=>'TIPO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(154210334754822332)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'771100'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIDAD:TIPO'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'ANALISIS'
,p_step_title=>'ANALISIS'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'ANALISIS'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210503114138'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74929875251633626)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75923635628660429)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>15
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
'        WHERE  A.FECHA >= to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'')',
'    and A.FECHA <=to_date(:p15_fecha_fin,''dd/mm/yyyy'')',
'   group by  descripcion , substr(a.centro_costo,1,1) ',
'    union all ',
'      select proyecto,  nvl( sum(total_compra),0)  costo_total, ''Caja_chica'' Origen, C.cddelegacion from Mov_caja a inner join tactivos b on ',
'   a.proyecto=b.cdclase||''-''||b.correlativo',
'   INNER JOIN CXP.CAJA_CHICA C ON A.COD_CAJA=C.COD_CAJA',
'where fec_docto>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and fec_docto<=to_date(:p15_fecha_fin,''dd/mm/yyyy'')',
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
'                     AND TRUNC (a.fecha_docto) BETWEEN to_date(:p15_fecha_inicio,''dd/mm/yyyy'') ',
'                                                   AND  to_date(:p15_fecha_fin,''dd/mm/yyyy'') ',
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
'where trunc(fecha) >=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and  trunc(fecha)<= to_date(:p15_fecha_fin,''dd/mm/yyyy'') ',
'group by d.descripcion,bodega',
')',
' group by  proyecto ,origen, delegacion ',
'  --combustible',
' union all  ',
'select cdclasact||''-''|| corract proyecto , (nvl((sum (cantdespacha)),0))*c.preciocompra costo_total, ''Combustible'', b.cddelegacion  from tvales a  inner join ',
'tactivos b on  a.cdclasact||''-''|| a.corract= b.cdclase||''-''||b.correlativo',
'inner join tcompracomb c on a.nmordenc=c.nmordenc',
'  where  fecha>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and fecha<=to_date(:p15_fecha_fin,''dd/mm/yyyy'')',
'    group by   cdclasact||''-''|| corract, b.cddelegacion ,c.preciocompra',
'     --kilometros',
' union all ',
'  select cdclasact||''-''|| corract proyecto , nvl((sum (a.recorrido)),0) costo_total, ''KM'' , a.cddelegacion  from tvales a  inner join ',
'tactivos b on  a.cdclasact||''-''|| a.corract= b.cdclase||''-''||b.correlativo',
'  where  fecha>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and fecha<=to_date(:p15_fecha_fin,''dd/mm/yyyy'')',
'  group by   cdclasact||''-''|| corract, a.cddelegacion',
'  --COMISION ',
'   UNION ALL',
'     Select CDCLASEUNI||''-''||CORRELATIVOUNI PROYECTO ,ROUND (SUM(COMISION+COMISION_EXTRA),2) COSTO_TOTAL , ''COMISION'' origen,CDDELEGACION delegacion  ',
'    from  TCOMIEMP A INNER JOIN TNOTAVIAJE B ON A.NMNOTA=B.NMNOTA',
'WHERE a.fecha>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and a.fecha<=to_date(:P15_FECHA_FIN,''dd/mm/yyyy'')',
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
'  and b.fecha between to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') AND to_date(:p15_fecha_fin,''dd/mm/yyyy'')',
'  AND b.cod_cia = ''01''',
'  and c.cod_cia(+) = b.cod_cia',
'  and c.cod_agencia(+) = b.cod_sucursal ',
' union all',
'select b.descripcion,sum( debito_local) COSTO_TOTAL, ''Exterior'' origen,decode( substr(b.centro_costo,1,1),1,''01'',2,''02'') delegacion',
'from pipasgt.mayor a ',
'inner join pipasgt.centro_costo b on a.centro_costo=b.centro_costo ',
'where tipo_asiento=''CP'' and a.centro_costo not in (''0.00.00.0000'') and a.fecha>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and a.fecha<=to_date(:P15_FECHA_FIN,''dd/mm/yyyy'')',
'group by b.descripcion, b.centro_costo',
'--ingresos',
'union all ',
'Select cdclaseuni||''-''||correlativouni proyecto , sum(galones* b.tarifa ) costo_totla, ''ingresos'', a.cddelegacion delegacion from  tnotaviaje a inner join tdetnota b on a.nmnota=b.nmnota where ',
'a.fechasale>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and a.fechasale<=to_date(:P15_FECHA_FIN,''dd/mm/yyyy'')',
'group by cdclaseuni||''-''||correlativouni, a.cddelegacion',
'union all',
'--galones_transportados',
'Select cdclaseuni||''-''||correlativouni proyecto , sum(galones ) costo_total, ''Galones_Transportados'', a.cddelegacion delegacion from  tnotaviaje a inner join tdetnota b on a.nmnota=b.nmnota where ',
'a.fechasale>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and a.fechasale<=to_date(:P15_FECHA_FIN,''dd/mm/yyyy'')',
'group by cdclaseuni||''-''||correlativouni, a.cddelegacion',
'union all',
'--salario',
'select cdclasact||''-''|| corract proyecto,',
'(to_date(:P15_FECHA_FIN,''dd/mm/yyyy'') -to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') ) * dia + (to_date(:P15_FECHA_FIN,''dd/mm/yyyy'') -to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') )*bono_dia  salario,',
' ''Salario'' origen, ',
' b.cddelegacion',
'from tvales a  inner join ',
'tactivos b on  a.cdclasact||''-''|| a.corract= b.cdclase||''-''||b.correlativo',
'inner join tcompracomb c on a.nmordenc=c.nmordenc',
'inner join salarios d on d.anio=extract(year from fecha )',
'where  fecha>=to_date(:P15_FECHA_INICIO,''dd/mm/yyyy'') and fecha<=to_date(:P15_FECHA_FIN,''dd/mm/yyyy'')',
'group by   cdclasact||''-''|| corract, b.cddelegacion , dia, bono_dia',
')',
') j',
'inner join pipasgt.centro_costo k on j.proyecto=k.descripcion',
')',
'pivot ',
'(',
'   sum(costo_total)',
'   for  origen in (''COMISION'' Comision,''Caja_chica'' caja_chica,''Bodega''Bodega,''Combustible''Combustible,''Exterior''Exterior,''KM''KM,''ingresos'' ingresos, ''Galones_Transportados'' Galones_Transportados,''Salario'' salario)',
') ',
'order by proyecto',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P15_FECHA_INICIO,P15_FECHA_FIN'
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
 p_id=>wwv_flow_api.id(75923776395660430)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>75923776395660430
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75923897896660431)
,p_db_column_name=>'PROYECTO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Proyecto'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75923990232660432)
,p_db_column_name=>'DELEGACION'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Delegacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924016118660433)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924158693660434)
,p_db_column_name=>'FLOTA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Flota'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924271180660435)
,p_db_column_name=>'COMISION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Comision'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924317867660436)
,p_db_column_name=>'CAJA_CHICA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Caja Chica'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924458177660437)
,p_db_column_name=>'BODEGA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Bodega'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924588697660438)
,p_db_column_name=>'COMBUSTIBLE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Combustible'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924621195660439)
,p_db_column_name=>'EXTERIOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Exterior'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75924788179660440)
,p_db_column_name=>'KM'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369322009705739)
,p_db_column_name=>'INGRESOS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Ingresos'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369458130705740)
,p_db_column_name=>'GALONES_TRANSPORTADOS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Galones Transportados'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369581032705741)
,p_db_column_name=>'SALARIO'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Salario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(76406107496239324)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'764062'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PROYECTO:DELEGACION:DESCRIPCION:FLOTA:COMISION:CAJA_CHICA:BODEGA:COMBUSTIBLE:EXTERIOR:KM:INGRESOS:GALONES_TRANSPORTADOS:SALARIO:APXWS_CC_001:'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(78269983075611923)
,p_report_id=>wwv_flow_api.id(76406107496239324)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'nvl(l,0)-(nvl( E,0)+nvl( F,0)+nvl( G,0)+nvl( H,0)+nvl( I,0))'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'Margen'
,p_report_label=>'Margen'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(108741870774178532)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
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
 p_id=>wwv_flow_api.id(75095534120370617)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(108741870774178532)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75095958999370619)
,p_name=>'P15_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(108741870774178532)
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75096343882370622)
,p_name=>'P15_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(108741870774178532)
,p_prompt=>'Fecha Fin'
,p_format_mask=>'DD/MM/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'VIAJES'
,p_step_title=>'VIAJES'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'VIAJES'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210909162347'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75473248532799046)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75661016803174128)
,p_plug_name=>'Zonas'
,p_parent_plug_id=>wwv_flow_api.id(75473248532799046)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(75661145869174129)
,p_region_id=>wwv_flow_api.id(75661016803174128)
,p_chart_type=>'combo'
,p_title=>'Productividad Zona'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75661260302174130)
,p_chart_id=>wwv_flow_api.id(75661145869174129)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('   Select c.cdzonatar ||''-''||c.dszonatar,  count(a.nmnota), sum(cantrans), extract (YEAR FROM FECHASALE) a\00F1o from  tnotaviaje a inner join tclientes  b on a.cddestino =b.cdcliente'),
'      inner join tzonatar c on b.cdzonatar=c.cdzonatar',
'           inner join ttipcomb e on a.cdtipcomb=e.cdtipcomb',
'      where grupo in(1)    ',
'            and cdclientev in (5050,1000)',
'           and c.cdzonatar in (Select cdzonatar from (   ',
'Select cdzonatar,sum(cantrans) from  tnotaviaje a inner join tclientes  b on a.cddestino =b.cdcliente',
'group by cdzonatar order by 2 desc',
') where rownum<=10 ',
')',
'            and extract(year from fechasale)>=2016',
'      group by c.cdzonatar, dszonatar,extract (YEAR FROM FECHASALE)',
'      order by 3 desc '))
,p_series_type=>'bar'
,p_items_value_column_name=>'SUM(CANTRANS)'
,p_items_label_column_name=>'C.CDZONATAR||''-''||C.DSZONATAR'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75661311585174131)
,p_chart_id=>wwv_flow_api.id(75661145869174129)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75661409841174132)
,p_chart_id=>wwv_flow_api.id(75661145869174129)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113622029184299995)
,p_plug_name=>'Chart'
,p_region_name=>'dualChart'
,p_parent_plug_id=>wwv_flow_api.id(75473248532799046)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(75471360571799027)
,p_region_id=>wwv_flow_api.id(113622029184299995)
,p_chart_type=>'bar'
,p_title=>'Galones Transportados'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75471756826799031)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>2
,p_name=>'2017 sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2017) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75471480178799028)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>4
,p_name=>'2018 sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2018) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75471867719799032)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>6
,p_name=>'2019 sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2019) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75471940934799033)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>8
,p_name=>'2020 sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2020) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75472029119799034)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>10
,p_name=>'2021 sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2021) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75472163299799035)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>15
,p_name=>'2017 norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2017) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75472201456799036)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>35
,p_name=>'2018 norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2018) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75472326552799037)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>55
,p_name=>'2019 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2019) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75472482715799038)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>75
,p_name=>'2020 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2020) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75472505079799039)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_seq=>95
,p_name=>'2021 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,sum(galones)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2021) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75471527774799029)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75471680076799030)
,p_chart_id=>wwv_flow_api.id(75471360571799027)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113694818834997032)
,p_plug_name=>'Comparativo viajes'
,p_parent_plug_id=>wwv_flow_api.id(75473248532799046)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(115551609049322915)
,p_region_id=>wwv_flow_api.id(113694818834997032)
,p_chart_type=>'bar'
,p_title=>'Comparativo viajes'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551781383322916)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>10
,p_name=>'2017 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--sur',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2017_sur'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2017) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2017_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552430948322923)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>20
,p_name=>'2018 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--sur',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2018_sur'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2018) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552319862322922)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>30
,p_name=>'2019 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--sur',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2019_sur'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2019) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2019_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552247350322921)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>40
,p_name=>'2020 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--sur',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2020_sur'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2020) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2020_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552145130322920)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>50
,p_name=>'2021 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--sur',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2021_sur'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2021) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2021_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552049623322919)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>60
,p_name=>'2017 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--norte',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2017_norte'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2017) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2017_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552830442322927)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>70
,p_name=>'2018 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--norte',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2018_norte'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2018) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552740103322926)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>80
,p_name=>'2019 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--norte',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2019_norte'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2019) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2019_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552649725322925)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>90
,p_name=>'2020 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--norte',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2020_norte'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2020) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2020_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115552546345322924)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_seq=>100
,p_name=>'2021 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--norte',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  a\00F1o_2021_norte'),
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2021) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_items_value_column_name=>unistr('A\00D1O_2021_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(115551959671322918)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(115551894248322917)
,p_chart_id=>wwv_flow_api.id(115551609049322915)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113700330619076215)
,p_plug_name=>'Comparativo Entregas'
,p_parent_plug_id=>wwv_flow_api.id(75473248532799046)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(115550334682322902)
,p_region_id=>wwv_flow_api.id(113700330619076215)
,p_chart_type=>'bar'
,p_title=>'Comparativo de Entregas'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withoutRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
end;
/
begin
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115550424675322903)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>10
,p_name=>'2017 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2017_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2017) ',
'order by  EXTRACT(Year FROM fechaentrega);',
''))
,p_items_value_column_name=>unistr('A\00D1O_2017_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551189378322910)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>20
,p_name=>'2018 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2018_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2018) ',
'order by  EXTRACT(Year FROM fechaentrega);',
''))
,p_items_value_column_name=>unistr('A\00D1O_2018_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551037603322909)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>30
,p_name=>'2019 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2019_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2019) ',
'order by  EXTRACT(Year FROM fechaentrega);',
''))
,p_items_value_column_name=>unistr('A\00D1O_2019_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115550906406322908)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>40
,p_name=>'2020 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2020_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2020) ',
'order by  EXTRACT(Year FROM fechaentrega);',
''))
,p_items_value_column_name=>unistr('A\00D1O_2020_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115550814839322907)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>50
,p_name=>'2021 Sur'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2021_sur'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2021) ',
'order by  EXTRACT(Year FROM fechaentrega);',
''))
,p_items_value_column_name=>unistr('A\00D1O_2021_SUR')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115550785011322906)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>60
,p_name=>'2017 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2017_norte'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2017) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2017_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551526075322914)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>70
,p_name=>'2018 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2018_norte'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2018) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2018_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551493742322913)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>80
,p_name=>'2019 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2019_norte'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2019) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2019_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551399330322912)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>90
,p_name=>'2020 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2020_norte'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2020) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2020_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115551238113322911)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_seq=>100
,p_name=>'2021 Norte'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  EXTRACT(Year FROM fechaentrega) a\00F1o , decode ( EXTRACT(MONTH FROM fechaentrega),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechaentrega))mes,count(nmnota)  a\00F1o_2021_norte'),
' from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''02''',
'group by  EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega)',
'having EXTRACT(Year FROM fechaentrega) in (2021) ',
'order by  EXTRACT(Year FROM fechaentrega);'))
,p_items_value_column_name=>unistr('A\00D1O_2021_NORTE')
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(115550564572322904)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(115550648980322905)
,p_chart_id=>wwv_flow_api.id(115550334682322902)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(125996432293575842)
,p_plug_name=>'Viajes '
,p_region_name=>'Viajes_chart'
,p_parent_plug_id=>wwv_flow_api.id(75473248532799046)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(95381478918343933)
,p_region_id=>wwv_flow_api.id(125996432293575842)
,p_chart_type=>'bar'
,p_title=>'VIAJES'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95381576546343934)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>10
,p_name=>'viajes_2017'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--viajes',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  Viajes_2017',
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2017) ',
'order by  EXTRACT(Year FROM fechasale);',
''))
,p_items_value_column_name=>'VIAJES_2017'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382121600343940)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>20
,p_name=>'viajes_2018'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--viajes',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  Viajes_2018',
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2018) ',
'order by  EXTRACT(Year FROM fechasale);',
''))
,p_items_value_column_name=>'VIAJES_2018'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382643222343945)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>30
,p_name=>'viajes_2019'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--viajes',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  Viajes_2019',
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2019) ',
'order by  EXTRACT(Year FROM fechasale);',
''))
,p_items_value_column_name=>'VIAJES_2019'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382546690343944)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>40
,p_name=>'viajes_2020'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--viajes',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  Viajes_2020',
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2020) ',
'order by  EXTRACT(Year FROM fechasale);',
''))
,p_items_value_column_name=>'VIAJES_2020'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382457586343943)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>50
,p_name=>'viajes_2021'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--viajes',
unistr('select  EXTRACT(Year FROM fechasale) a\00F1o , decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,count(nmnota)  Viajes_2021',
' from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2021) ',
'order by  EXTRACT(Year FROM fechasale);',
''))
,p_items_value_column_name=>'VIAJES_2021'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95381915136343938)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>60
,p_name=>'Entregas_2017'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,count(nota)  Entrega_2017',
' from (select EXTRACT(MONTH FROM fechaentrega)mes,count(nmnota)nota , EXTRACT(Year FROM fechaentrega)anio',
'from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega) ,nmnota, cdclientedest ',
'having EXTRACT(Year FROM fechaentrega) in (2017) )',
'group by anio,mes',
'having anio in (2017) ',
'order by anio;'))
,p_items_value_column_name=>'ENTREGA_2017'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382299340343941)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>70
,p_name=>'Entregas_2018'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,count(nota)  Entrega_2018',
' from (select EXTRACT(MONTH FROM fechaentrega)mes,count(nmnota)nota , EXTRACT(Year FROM fechaentrega)anio',
'from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega) ,nmnota, cdclientedest ',
'having EXTRACT(Year FROM fechaentrega) in (2018) )',
'group by anio,mes',
'having anio in (2018) ',
'order by anio;'))
,p_items_value_column_name=>'ENTREGA_2018'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382961478343948)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>80
,p_name=>'Entregas_2019'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,count(nota)  Entrega_2019',
' from (select EXTRACT(MONTH FROM fechaentrega)mes,count(nmnota)nota , EXTRACT(Year FROM fechaentrega)anio',
'from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega) ,nmnota, cdclientedest ',
'having EXTRACT(Year FROM fechaentrega) in (2019) )',
'group by anio,mes',
'having anio in (2019) ',
'order by anio;'))
,p_items_value_column_name=>'ENTREGA_2019'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382897822343947)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>90
,p_name=>'Entregas_2020'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,count(nota)  Entrega_2020',
' from (select EXTRACT(MONTH FROM fechaentrega)mes,count(nmnota)nota , EXTRACT(Year FROM fechaentrega)anio',
'from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega) ,nmnota, cdclientedest ',
'having EXTRACT(Year FROM fechaentrega) in (2020) )',
'group by anio,mes',
'having anio in (2020) ',
'order by anio;'))
,p_items_value_column_name=>'ENTREGA_2020'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382774113343946)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>100
,p_name=>'Entregas_2021'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,count(nota)  Entrega_2021',
' from (select EXTRACT(MONTH FROM fechaentrega)mes,count(nmnota)nota , EXTRACT(Year FROM fechaentrega)anio',
'from tdetnota a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechaentrega),EXTRACT(MONTH FROM fechaentrega) ,nmnota, cdclientedest ',
'having EXTRACT(Year FROM fechaentrega) in (2021) )',
'group by anio,mes',
'having anio in (2021) ',
'order by anio;'))
,p_items_value_column_name=>'ENTREGA_2021'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382058530343939)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>110
,p_name=>'Unidades_2017'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,unidades  Unidades_2017',
' from (select EXTRACT(MONTH FROM fechasale)mes,count (distinct(cdclaseuni||''-''|| correlativouni ) )unidades  , EXTRACT(Year FROM fechasale)anio',
'from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale) ',
'having EXTRACT(Year FROM fechasale) in (2017) )',
'group by anio,mes,unidades',
'having anio in (2017) ',
'order by anio;'))
,p_items_value_column_name=>'UNIDADES_2017'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95382368714343942)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>120
,p_name=>'Unidades_2018'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,unidades  Unidades_2018',
' from (select EXTRACT(MONTH FROM fechasale)mes,count (distinct(cdclaseuni||''-''|| correlativouni ) )unidades  , EXTRACT(Year FROM fechasale)anio',
'from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale) ',
'having EXTRACT(Year FROM fechasale) in (2018) )',
'group by anio,mes,unidades',
'having anio in (2018) ',
'order by anio;'))
,p_items_value_column_name=>'UNIDADES_2018'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(115550204701322901)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>130
,p_name=>'Unidades_2019'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,unidades  Unidades_2018',
' from (select EXTRACT(MONTH FROM fechasale)mes,count (distinct(cdclaseuni||''-''|| correlativouni ) )unidades  , EXTRACT(Year FROM fechasale)anio',
'from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale) ',
'having EXTRACT(Year FROM fechasale) in (2019) )',
'group by anio,mes,unidades',
'having anio in (2019) ',
'order by anio;'))
,p_items_value_column_name=>'UNIDADES_2018'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95383175624343950)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>140
,p_name=>'Unidades_2020'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,unidades  Unidades_2020',
' from (select EXTRACT(MONTH FROM fechasale)mes,count (distinct(cdclaseuni||''-''|| correlativouni ) )unidades  , EXTRACT(Year FROM fechasale)anio',
'from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale) ',
'having EXTRACT(Year FROM fechasale) in (2020) )',
'group by anio,mes,unidades',
'having anio in (2020) ',
'order by anio;'))
,p_items_value_column_name=>'UNIDADES_2020'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(95383075003343949)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_seq=>150
,p_name=>'Unidades_2021'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  anio as a\00F1o , decode ( mes,''1'',''Enero'','),
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes,unidades  Unidades_2018',
' from (select EXTRACT(MONTH FROM fechasale)mes,count (distinct(cdclaseuni||''-''|| correlativouni ) )unidades  , EXTRACT(Year FROM fechasale)anio',
'from tnotaviaje a inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=1 and a.cddelegacion =''01''  group by    EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale) ',
'having EXTRACT(Year FROM fechasale) in (2021) )',
'group by anio,mes,unidades',
'having anio in (2021) ',
'order by anio;'))
,p_items_value_column_name=>'UNIDADES_2018'
,p_items_label_column_name=>'MES'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(95381649111343935)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(95381736402343936)
,p_chart_id=>wwv_flow_api.id(95381478918343933)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116048949995594045)
,p_plug_name=>'Por tipo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dstipcomb,cddelegacion, enero, febrero,marzo, abril, mayo, junio, julio, agosto, septiembre, octubre, noviembre, diciembre from ( select to_char(fechasale, ''MM'')mes,  c.cdtipcomb,nvl(sum(galones),0)galones ',
' from tnotaviaje c inner join tdetnota a on c.nmnota=a.nmnota  ',
'where   to_char(fechasale, ''yyyy'')= :P16_ANIO',
'group by to_char(fechasale, ''MM''), c.cdtipcomb ) comb inner join ttipcomb b on comb.cdtipcomb=b.cdtipcomb',
'pivot ( sum(nvl(galones,0))',
'for mes in (''01''Enero,''02''Febrero,''03''Marzo,''04''Abril,''05''Mayo,''06''Junio,''07''Julio,''08''Agosto,''09''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
') '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P16_ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
end;
/
begin
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(116049041573594076)
,p_name=>'Por tipo'
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
,p_internal_uid=>116049041573594076
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75110761830374840)
,p_db_column_name=>'DSTIPCOMB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dstipcomb'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DSTIPCOMB'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75113519423374845)
,p_db_column_name=>'CDDELEGACION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cddelegacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CDDELEGACION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75113906878374845)
,p_db_column_name=>'ENERO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Enero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'ENERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75114352988374847)
,p_db_column_name=>'FEBRERO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Febrero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'FEBRERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75114752893374847)
,p_db_column_name=>'MARZO'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Marzo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MARZO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75115168625374847)
,p_db_column_name=>'ABRIL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Abril'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ABRIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75115527040374847)
,p_db_column_name=>'MAYO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Mayo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAYO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75115916799374847)
,p_db_column_name=>'JUNIO'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Junio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JUNIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75116388438374848)
,p_db_column_name=>'JULIO'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Julio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JULIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75116780794374848)
,p_db_column_name=>'AGOSTO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Agosto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AGOSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75117150452374848)
,p_db_column_name=>'SEPTIEMBRE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Septiembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEPTIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75117539101374848)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Octubre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OCTUBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75117995966374848)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Noviembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOVIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75118369332374851)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Diciembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DICIEMBRE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(116049618959594535)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'751187'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DSTIPCOMB:ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE::APXWS_CC_001'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(75119121379374853)
,p_report_id=>wwv_flow_api.id(116049618959594535)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'K+L+M+N+O+P+Q+R+S+T+U+V'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'TOTAL ACUMULADO'
,p_report_label=>'TOTAL ACUMULADO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75472694035799040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(113622029184299995)
,p_button_name=>'Agrupar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Agrupar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75472751764799041)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(113622029184299995)
,p_button_name=>'Desagrupar'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Desagrupar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(115552927429322928)
,p_name=>'P16_ANIO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(116048949995594045)
,p_prompt=>'Anio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:2017;2017,2018;2018,2019;2019,2020;2020,2021;2021,2022;2022'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75124291320374862)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P16_ANIO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75124745120374862)
,p_event_id=>wwv_flow_api.id(75124291320374862)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(116048949995594045)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75472812797799042)
,p_name=>'STACK'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75472694035799040)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75472912742799043)
,p_event_id=>wwv_flow_api.id(75472812797799042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("dualChart").widget().ojChart({stack: ''on''});'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75473020892799044)
,p_name=>'unstak'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75472751764799041)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75473108108799045)
,p_event_id=>wwv_flow_api.id(75473020892799044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("dualChart").widget().ojChart({stack: ''off''});'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00017
begin
wwv_flow_api.create_page(
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'CARBON'
,p_step_title=>'CARBON'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'CARBON'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413123353'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930031090633628)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(113814869880439334)
,p_plug_name=>'Transportado'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(75128070093378885)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'Transportado'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_38687726015060454'
,p_chart_width=>1200
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:Right::V:Y:Circle:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_title=>'Meses'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Toneladas'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75128412516378887)
,p_chart_id=>wwv_flow_api.id(75128070093378885)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   2018, decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,sum(galones)  a\00F1o_2018_sur'),
' from tnotaviaje c inner join tdetnota a on c.nmnota=a.nmnota  inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=2 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2018) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75128827250378887)
,p_chart_id=>wwv_flow_api.id(75128070093378885)
,p_series_seq=>20
,p_series_name=>'2019'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   2019, decode ( EXTRACT(MONTH FROM fechasale),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
unistr('9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'',EXTRACT(MONTH FROM fechasale))mes,sum(galones)  a\00F1o_2019_sur'),
' from tnotaviaje c inner join tdetnota a on c.nmnota=a.nmnota  inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'where b.grupo=2 and a.cddelegacion =''01''',
'group by  EXTRACT(Year FROM fechasale),EXTRACT(MONTH FROM fechasale)',
'having EXTRACT(Year FROM fechasale) in (2019) ',
'order by  EXTRACT(Year FROM fechasale);'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00018
begin
wwv_flow_api.create_page(
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Costos Departamentos'
,p_step_title=>'Costos Departamentos'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Costos Departamentos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413123423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930181965633629)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114234415237191616)
,p_plug_name=>'Costos por Talleres Sur'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(75130803132382266)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Costos Talleres Sur'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_39104416959809350'
,p_chart_width=>1200
,p_chart_height=>500
,p_chart_animation=>'Appear'
,p_display_attr=>':H:N:V:X::Right::V:Y:Circle:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_title=>'MES'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Costo'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75131235783382268)
,p_chart_id=>wwv_flow_api.id(75130803132382266)
,p_series_seq=>10
,p_series_name=>'Teller Mecanico'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Taller_Mecanico',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-1%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75131614045382269)
,p_chart_id=>wwv_flow_api.id(75130803132382266)
,p_series_seq=>20
,p_series_name=>'Taller_Electromecanico'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Taller_Electromecanico',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-13%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75132032472382271)
,p_chart_id=>wwv_flow_api.id(75130803132382266)
,p_series_seq=>30
,p_series_name=>'Taller_Metalurgia_2'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Taller_Metalurgia_2',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-8%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75132403395382271)
,p_chart_id=>wwv_flow_api.id(75130803132382266)
,p_series_seq=>40
,p_series_name=>'Taller_Pintura'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Taller_Pintura',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-12%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114352904536377362)
,p_plug_name=>' Costos Norte'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(75133136156382272)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Costos Norte'
,p_chart_rendering=>'SVG_ONLY'
,p_chart_name=>'chart_39222930931995154'
,p_chart_width=>1200
,p_chart_height=>500
,p_chart_animation=>'Appear'
,p_display_attr=>':H:N:V:X::Right::V:Y:None:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'1'
,p_x_axis_title=>'Mes'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Costo'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75133575227382272)
,p_chart_id=>wwv_flow_api.id(75133136156382272)
,p_series_seq=>20
,p_series_name=>'Operaciones_Norte'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Operacion_Norte',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-11%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by   EXTRACT(MONTH FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75133989070382272)
,p_chart_id=>wwv_flow_api.id(75133136156382272)
,p_series_seq=>30
,p_series_name=>'Oficinas_Norte'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Oficina_Norte',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-7%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by   EXTRACT(MONTH FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75134391535382274)
,p_chart_id=>wwv_flow_api.id(75133136156382272)
,p_series_seq=>40
,p_series_name=>'Predio_Norte'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Predio_Norte',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-9%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by   EXTRACT(MONTH FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75134766755382274)
,p_chart_id=>wwv_flow_api.id(75133136156382272)
,p_series_seq=>50
,p_series_name=>'Taller_norte'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Taller_Mec_Norte',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-10%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by   EXTRACT(MONTH FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114366687845593180)
,p_plug_name=>'Costos por Departamento'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>15
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(75135404494382275)
,p_default_chart_type=>'3DColumn'
,p_chart_title=>'Costos por Departamento'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_39236711269210918'
,p_chart_width=>1200
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:Right::V:Y:Circle:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'2'
,p_x_axis_title=>'MES'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Costo'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75136626736382277)
,p_chart_id=>wwv_flow_api.id(75135404494382275)
,p_series_seq=>10
,p_series_name=>'Bodega'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Bodega',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-3%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75137015979382277)
,p_chart_id=>wwv_flow_api.id(75135404494382275)
,p_series_seq=>20
,p_series_name=>'Edificio'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Edificio',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-5%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75137450546382278)
,p_chart_id=>wwv_flow_api.id(75135404494382275)
,p_series_seq=>30
,p_series_name=>'Predio 2'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Predio_2',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-4%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75135829234382275)
,p_chart_id=>wwv_flow_api.id(75135404494382275)
,p_series_seq=>40
,p_series_name=>'Pipas_SA'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as PIPAS_SA',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-6%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75136218424382277)
,p_chart_id=>wwv_flow_api.id(75135404494382275)
,p_series_seq=>50
,p_series_name=>'Oficinas_centrales'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 2018, decode ( EXTRACT(MONTH FROM fecha),''1'',''Enero'',',
'2,''Febrero'',3,''Marzo'',4,''Abril'',',
'5,''Mayo'',6,''Junio'',7,''Julio'',8,''Agosto'',',
'9,''Septiembre'',10,''Octubre'',11,''Noviembre'',12,''Diciembre'') mes, sum(costo_total)as Oficinas_Centrales',
' from (',
'select proyecto, nvl( sum(total_compra),0)  costo_total, fec_docto fecha from Mov_caja',
'group by proyecto,  fec_docto',
'union all ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,   fecha_docto',
'from  INV_MOVM a, inv_detm c  ',
'where a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
' AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra,   fecha_docto',
'  ) where proyecto like (''%9000-2%'')',
'  group by  EXTRACT(Year FROM fecha),EXTRACT(MONTH FROM fecha)',
'having EXTRACT(Year FROM fecha) in (2018) ',
'order by  EXTRACT(Year FROM fecha);'))
,p_series_type=>'Bar'
,p_series_query_type=>'SQL_QUERY'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_row_count_max=>15
,p_show_action_link=>'N'
);
end;
/
prompt --application/pages/page_00019
begin
wwv_flow_api.create_page(
 p_id=>19
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'PLANILLA'
,p_step_title=>'PLANILLA'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'PLANILLA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210427133117'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930243573633630)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(77367594855705721)
,p_plug_name=>'Planilla'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  to_char(a.anio), to_char(mes), num_planilla,a.cod_emp, nombres||'' ''|| apellidos nombre, nom_depto, nom_puesto, prestaciones, deducciones, comisiones, sueldo_base, a.bonificacion, tot_debenga, liq_recibir , a.cod_sucursal,''Infos''',
'from  planilla a inner join empleados b on a.cod_emp=b.cod_emp',
'inner join rh_humanos.departamentos c on b.COD_DEPTO = c.COD_DEPTO',
'inner join rh_humanos.puestos d on b.cod_puesto=d.cod_puesto',
'where a.anio >=2017 ',
'union all',
'Select to_char(fecha,''YYYY'') anio, to_char(fecha,''MM''), 0,cod_empleado,nombre||'' ''||apellidos,dsdepto,dspuesto,0,a.igss+descuentos+desc_telefono, a.comisiones,sueldo_minimo,a.bonificacion,a.sueldo_base+a.bonificacion+comisiones-igss-descuentos-desc_t'
||'elefono,a.sueldo_base+a.bonificacion+comisiones-igss-descuentos-desc_telefono ,b.cddelegacion,''LPSYS'' ',
' from  tbldetplla a inner join ',
'templeados b on a.cod_empleado=b.cdempleado',
'inner join tdepartamentos c on a.depto= c.cddepto',
'inner join tpuestos d on  a.puesto= d.cdpuesto'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_api.id(77367609281705722)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>77367609281705722
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367751553705723)
,p_db_column_name=>'TO_CHAR(A.ANIO)'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'To Char(a.anio)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367811236705724)
,p_db_column_name=>'TO_CHAR(MES)'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'To Char(mes)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77367902436705725)
,p_db_column_name=>'NUM_PLANILLA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Num Planilla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368043833705726)
,p_db_column_name=>'COD_EMP'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Cod Emp'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368186577705727)
,p_db_column_name=>'NOMBRE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368297274705728)
,p_db_column_name=>'NOM_DEPTO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nom Depto'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368358359705729)
,p_db_column_name=>'NOM_PUESTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nom Puesto'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368440903705730)
,p_db_column_name=>'PRESTACIONES'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Prestaciones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368597402705731)
,p_db_column_name=>'DEDUCCIONES'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Deducciones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368631957705732)
,p_db_column_name=>'COMISIONES'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Comisiones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368745191705733)
,p_db_column_name=>'SUELDO_BASE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Sueldo Base'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368868017705734)
,p_db_column_name=>'BONIFICACION'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Bonificacion'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77368949548705735)
,p_db_column_name=>'TOT_DEBENGA'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Tot Debenga'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369021363705736)
,p_db_column_name=>'LIQ_RECIBIR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Liq Recibir'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369129481705737)
,p_db_column_name=>'COD_SUCURSAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Cod Sucursal'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77369248700705738)
,p_db_column_name=>'''INFOS'''
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Origen'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(77452107857657476)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'774522'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TO_CHAR(A.ANIO):TO_CHAR(MES):NUM_PLANILLA:COD_EMP:NOMBRE:NOM_DEPTO:NOM_PUESTO:PRESTACIONES:DEDUCCIONES:COMISIONES:SUELDO_BASE:BONIFICACION:TOT_DEBENGA:LIQ_RECIBIR:COD_SUCURSAL:''INFOS'''
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(115706846356701145)
,p_plug_name=>'Planilla'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select * from  (',
'select c.descripcion puesto,ubicacion, sum(neto)neto,to_char(f.fecha_pago, ''MM'') mes',
' from pipasgt.empleado_nomi_neto a',
'  inner join pipasgt.empleado b on a.EMPLEADO=b.EMPLEADO',
'   inner join pipasgt.departamento c on b.departamento=c.departamento ',
'   inner join pipasgt.puesto e on b.puesto=e.puesto ',
'inner join pipasgt.nomina_historico f on a.numero_nomina=f.numero_nomina    ',
' where fecha_aprobacion is not null and to_char (f.fecha_pago, ''YYYY'')=:P19_ANIO group by c.descripcion, ubicacion, fecha_pago )',
'pivot ( sum(neto)',
'for mes in (''01''Enero,''02''Febrero,''03''Marzo,''04''Abril,''05''Mayo,''06''Junio,''07''Julio,''08''Agosto,''09''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
') order by ubicacion desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(115706943027701145)
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
,p_download_formats=>'CSV:HTML:EMAIL'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'LP'
,p_internal_uid=>115706943027701145
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75139658146384768)
,p_db_column_name=>'ENERO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Enero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'ENERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75140085162384770)
,p_db_column_name=>'FEBRERO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Febrero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'FEBRERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75140450142384771)
,p_db_column_name=>'MARZO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Marzo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'MARZO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75140812794384771)
,p_db_column_name=>'ABRIL'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Abril'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'ABRIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75141281994384771)
,p_db_column_name=>'MAYO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mayo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'MAYO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75141662662384771)
,p_db_column_name=>'JUNIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Junio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'JUNIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75142008723384773)
,p_db_column_name=>'JULIO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Julio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'JULIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75142452924384773)
,p_db_column_name=>'AGOSTO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Agosto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'AGOSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75142870776384773)
,p_db_column_name=>'SEPTIEMBRE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Septiembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'SEPTIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75143217166384773)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Octubre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'OCTUBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75143661117384774)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Noviembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'NOVIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75144070357384774)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Diciembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_static_id=>'DICIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75144428999384774)
,p_db_column_name=>'PUESTO'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Puesto'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PUESTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75144818400384774)
,p_db_column_name=>'UBICACION'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Ubicacion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UBICACION'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(115708533234701329)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'751452'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'PUESTO:UBICACION:ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE::APXWS_CC_001'
,p_break_on=>'UBICACION:0:0:0:0:0'
,p_break_enabled_on=>'UBICACION:0:0:0:0:0'
,p_sum_columns_on_break=>'JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE:ENERO:FEBRERO:MARZO:MAYO:ABRIL:APXWS_CC_001'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(75145686199384778)
,p_report_id=>wwv_flow_api.id(115708533234701329)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'nvl(C,0)  + nvl(D,0) + nvl(E,0) + nvl(F,0) + nvl(G,0) + nvl(H,0) + nvl(I,0) + nvl(J,0) + nvl(K,0) + nvl(L,0) +nvl(M,0) +nvl( N,0)'
,p_format_mask=>'999G999G999G999G990D00'
,p_column_type=>'NUMBER'
,p_column_label=>'TOTAL'
,p_report_label=>'TOTAL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(122313732843960060)
,p_plug_name=>unistr('A\00D1O')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>5
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75146322358384781)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(122313732843960060)
,p_button_name=>'P19_ACTUALIZAR'
,p_button_static_id=>'P6_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75146799606384782)
,p_name=>'P19_ANIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(122313732843960060)
,p_prompt=>unistr('A\00D1O')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:2018,2019,2020,2021'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_api.create_page(
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Productividad Pilotos'
,p_step_title=>'Productividad Pilotos'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Productividad Pilotos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210423172005'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930306985633631)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75473377579799047)
,p_plug_name=>'UNIDADES'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>40
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from ( ',
' select cdclaseuni||''-''||correlativouni unidad, a.cddelegacion estacion ,',
'  nmnota notas, EXTRACT(MONTH FROM fechasale) mes',
'  from tnotaviaje a ',
'  inner join ttipcomb b on a.cdtipcomb=b.cdtipcomb',
'  where',
'a.cddelegacion in (:delegacion) ',
'and grupo  in (:grupo) and',
' extract (YEAR FROM FECHASALE) = :anio   ',
')',
'pivot (',
'count(notas)',
' for  mes in (''1''Enero,''2''Febrero,''3''Marzo,''4''Abril,''5''Mayo,''6''Junio,''7''Julio,''8''Agosto,''9''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
'  )  ',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'DELEGACION,GRUPO,ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(75473476527799048)
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
,p_internal_uid=>75473476527799048
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75473501140799049)
,p_db_column_name=>'ENERO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Enero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ENERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75473634960799050)
,p_db_column_name=>'FEBRERO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Febrero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'FEBRERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658354367174101)
,p_db_column_name=>'MARZO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Marzo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MARZO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658479783174102)
,p_db_column_name=>'ABRIL'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Abril'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ABRIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658537930174103)
,p_db_column_name=>'MAYO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mayo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MAYO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658659351174104)
,p_db_column_name=>'JUNIO'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Junio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'JUNIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658741075174105)
,p_db_column_name=>'JULIO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Julio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'JULIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658826659174106)
,p_db_column_name=>'AGOSTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Agosto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'AGOSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75658986345174107)
,p_db_column_name=>'SEPTIEMBRE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Septiembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'SEPTIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75659078509174108)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Octubre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'OCTUBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75659176814174109)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Noviembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'NOVIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75659222754174110)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Diciembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'DICIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75659608268174114)
,p_db_column_name=>'ESTACION'
,p_display_order=>160
,p_column_identifier=>'M'
,p_column_label=>'Estacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75660199792174119)
,p_db_column_name=>'UNIDAD'
,p_display_order=>170
,p_column_identifier=>'N'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75670197610200654)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'756702'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIDAD:ESTACION:ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE::APXWS_CC_001'
,p_sort_column_1=>'APXWS_CC_001'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_worksheet_computation(
 p_id=>wwv_flow_api.id(75715355131698174)
,p_report_id=>wwv_flow_api.id(75670197610200654)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'a+b+c+d+e+f+g+h+i+j+k+l'
,p_column_type=>'NUMBER'
,p_column_label=>'Total'
,p_report_label=>'Total'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75659789864174115)
,p_plug_name=>'FIltros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75764081093498807)
,p_plug_name=>'Analisis Zona'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>50
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(75764134436498808)
,p_region_id=>wwv_flow_api.id(75764081093498807)
,p_chart_type=>'combo'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75764262912498809)
,p_chart_id=>wwv_flow_api.id(75764134436498808)
,p_seq=>10
,p_name=>'Analisis zona'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('   Select c.cdzonatar ||''-''||c.dszonatar,  count(a.nmnota), sum(cantrans), extract (YEAR FROM FECHASALE) a\00F1o from  tnotaviaje a inner join tclientes  b on a.cddestino =b.cdcliente'),
'      inner join tzonatar c on b.cdzonatar=c.cdzonatar',
'           inner join ttipcomb e on a.cdtipcomb=e.cdtipcomb',
'      where grupo in(:grupo)    ',
'            and cdclientev in (5050,1000)',
'           and c.cdzonatar in (Select cdzonatar from (   ',
'Select cdzonatar,sum(cantrans) from  tnotaviaje a inner join tclientes  b on a.cddestino =b.cdcliente',
'group by cdzonatar order by 2 desc',
') where rownum<=10 ',
')',
'            and extract(year from fechasale)>=2016',
'      group by c.cdzonatar, dszonatar,extract (YEAR FROM FECHASALE)',
'      order by 3 desc ',
'  '))
,p_series_type=>'bar'
,p_series_name_column_name=>'C.CDZONATAR||''-''||C.DSZONATAR'
,p_items_value_column_name=>'SUM(CANTRANS)'
,p_items_label_column_name=>unistr('A\00D1O')
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75764327240498810)
,p_chart_id=>wwv_flow_api.id(75764134436498808)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75764454562498811)
,p_chart_id=>wwv_flow_api.id(75764134436498808)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75767056328498837)
,p_plug_name=>'Productividad'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('Select cantrans galones,cdclaseuni||''-''||correlativouni unidad ,  cdclasecomp||''-''||correlativocomp complemento, nmnota viaje ,  b.recorrido km ,extract(month from fechasale)mes, extract(year from fechasale ) a\00F1o, tipoactivo'),
'from  tnotaviaje a',
'left join tvales b on a.nmnota=b.notaviaje',
'inner join ttipcomb f on a.cdtipcomb=f.cdtipcomb',
'inner join tactivos g on a.cdclaseuni=g.cdclase and a.correlativouni=g.correlativo',
'where',
'a.cddelegacion in (:delegacion) ',
'and grupo  in (:grupo) and',
'extract (YEAR FROM FECHASALE) = :anio ',
'and vehiculo=''S'' ',
'and g.spot=''N''',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'DELEGACION,GRUPO,ANIO'
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
 p_id=>wwv_flow_api.id(75767153734498838)
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
,p_internal_uid=>75767153734498838
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767201280498839)
,p_db_column_name=>'GALONES'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Galones'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767353792498840)
,p_db_column_name=>'UNIDAD'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767450582498841)
,p_db_column_name=>'VIAJE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Viaje'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767597633498842)
,p_db_column_name=>'KM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Km'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767675136498843)
,p_db_column_name=>'MES'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Mes'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767715331498844)
,p_db_column_name=>unistr('A\00D1O')
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('A\00F1o')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767803886498845)
,p_db_column_name=>'COMPLEMENTO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Complemento'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75767909246498846)
,p_db_column_name=>'TIPOACTIVO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Tipoactivo'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75871959375727922)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'758720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('GALONES:UNIDAD:VIAJE:KM:MES:A\00D1O:COMPLEMENTO:TIPOACTIVO')
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(76531829242119195)
,p_report_id=>wwv_flow_api.id(75871959375727922)
,p_pivot_columns=>unistr('A\00D1O:MES')
,p_row_columns=>'UNIDAD'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(76532256834119195)
,p_pivot_id=>wwv_flow_api.id(76531829242119195)
,p_display_seq=>1
,p_function_name=>'COUNT'
,p_column_name=>'VIAJE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Viajes'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(76533044377119197)
,p_pivot_id=>wwv_flow_api.id(76531829242119195)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'KM'
,p_db_column_name=>'PFC2'
,p_column_label=>'KMS'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(76532653363119195)
,p_pivot_id=>wwv_flow_api.id(76531829242119195)
,p_display_seq=>3
,p_function_name=>'SUM'
,p_column_name=>'GALONES'
,p_db_column_name=>'PFC3'
,p_column_label=>'Galones'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75895154139161940)
,p_application_user=>'LP'
,p_name=>'Articulado'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'758985'
,p_status=>'PUBLIC'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('GALONES:UNIDAD:VIAJE:KM:MES:A\00D1O:COMPLEMENTO:TIPOACTIVO')
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(75898886267203480)
,p_report_id=>wwv_flow_api.id(75895154139161940)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'TIPOACTIVO'
,p_operator=>'='
,p_expr=>'1'
,p_condition_sql=>'"TIPOACTIVO" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(75899251272203482)
,p_report_id=>wwv_flow_api.id(75895154139161940)
,p_pivot_columns=>unistr('A\00D1O:MES')
,p_row_columns=>'COMPLEMENTO'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75899632243203482)
,p_pivot_id=>wwv_flow_api.id(75899251272203482)
,p_display_seq=>1
,p_function_name=>'COUNT_DISTINCT'
,p_column_name=>'VIAJE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Viajes'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75900485807203489)
,p_pivot_id=>wwv_flow_api.id(75899251272203482)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'KM'
,p_db_column_name=>'PFC2'
,p_column_label=>'KM'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75900070205203482)
,p_pivot_id=>wwv_flow_api.id(75899251272203482)
,p_display_seq=>3
,p_function_name=>'SUM'
,p_column_name=>'GALONES'
,p_db_column_name=>'PFC3'
,p_column_label=>'Galones'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75901117644210227)
,p_application_user=>'LP'
,p_name=>'RIGIDAS'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'759012'
,p_status=>'PUBLIC'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('GALONES:UNIDAD:VIAJE:KM:MES:A\00D1O:COMPLEMENTO:TIPOACTIVO')
);
wwv_flow_api.create_worksheet_condition(
 p_id=>wwv_flow_api.id(75901594981210227)
,p_report_id=>wwv_flow_api.id(75901117644210227)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'TIPOACTIVO'
,p_operator=>'='
,p_expr=>'5'
,p_condition_sql=>'"TIPOACTIVO" = to_number(#APXWS_EXPR#)'
,p_condition_display=>'#APXWS_COL_NAME# = #APXWS_EXPR_NUMBER#  '
,p_enabled=>'Y'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(75901929110210229)
,p_report_id=>wwv_flow_api.id(75901117644210227)
,p_pivot_columns=>unistr('A\00D1O:MES')
,p_row_columns=>'UNIDAD'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75902347591210229)
,p_pivot_id=>wwv_flow_api.id(75901929110210229)
,p_display_seq=>1
,p_function_name=>'COUNT_DISTINCT'
,p_column_name=>'VIAJE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Viajes'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75903158682210235)
,p_pivot_id=>wwv_flow_api.id(75901929110210229)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'KM'
,p_db_column_name=>'PFC2'
,p_column_label=>'KM'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75902775828210230)
,p_pivot_id=>wwv_flow_api.id(75901929110210229)
,p_display_seq=>3
,p_function_name=>'SUM'
,p_column_name=>'GALONES'
,p_db_column_name=>'PFC3'
,p_column_label=>'Galones'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(75904714086230743)
,p_application_user=>'LP'
,p_name=>'GENERAL'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'759048'
,p_status=>'PUBLIC'
,p_view_mode=>'REPORT'
,p_report_columns=>unistr('GALONES:UNIDAD:VIAJE:KM:MES:A\00D1O:COMPLEMENTO:TIPOACTIVO')
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(75905142616230743)
,p_report_id=>wwv_flow_api.id(75904714086230743)
,p_pivot_columns=>unistr('A\00D1O:MES')
,p_row_columns=>'UNIDAD:COMPLEMENTO'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75905548163230743)
,p_pivot_id=>wwv_flow_api.id(75905142616230743)
,p_display_seq=>1
,p_function_name=>'COUNT_DISTINCT'
,p_column_name=>'VIAJE'
,p_db_column_name=>'PFC1'
,p_column_label=>'Viajes'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75906362609230744)
,p_pivot_id=>wwv_flow_api.id(75905142616230743)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'KM'
,p_db_column_name=>'PFC2'
,p_column_label=>'KM'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(75905972955230744)
,p_pivot_id=>wwv_flow_api.id(75905142616230743)
,p_display_seq=>3
,p_function_name=>'SUM'
,p_column_name=>'GALONES'
,p_db_column_name=>'PFC3'
,p_column_label=>'Galones'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(75925687069660449)
,p_plug_name=>'UNIDADES UTILIZADAS'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select * from  (',
' Select ''Cabezales''   LABEl,count(distinct(a.cdclaseuni||''-''||correlativouni)) VALUE,',
'apex_util.prepare_url( ''f?p=''||:APP_ID||'':9:''||:APP_SESSION||''::NO:::'') as url  ',
' from  tnotaviaje  a inner join tactivos b on  a.cdclaseuni=b.cdclase  and a.correlativOuni=b.correlativo',
'  inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=1 AND grupo in(:grupo) and',
'a.cddelegacion in (:delegacion) and',
'extract( year from a.fechasale) =:anio',
'union all',
'Select ''Rigidos'',count(distinct(a.cdclaseuni||''-''||correlativouni))cantidad  ,',
'apex_util.prepare_url( ''f?p=''||:APP_ID||'':12:''||:APP_SESSION||''::NO:::'') as url  ',
'from  tnotaviaje  a inner join tactivos b on  a.cdclaseuni=b.cdclase  and a.correlativouni=b.correlativo',
'inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=5 and  grupo in(:grupo) and',
'extract( year from a.fechasale) =:anio',
'and a.cddelegacion in (:delegacion) ',
'union all ',
' Select ''Pipas'' ,count(distinct(a.cdclasecomp||''-''||correlativocomp))cantidad,',
'apex_util.prepare_url( ''f?p=''||:APP_ID||'':14:''||:APP_SESSION||''::NO:::'') as url   ',
' from  tnotaviaje  a inner join tactivos b on  a.cdclaseCOMP=b.cdclase  and a.correlativOCOMP=b.correlativo',
' inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=3  AND grupo in(:grupo) and',
'extract( year from a.fechasale) =:anio',
'and a.cddelegacion in (:delegacion) ',
'union all ',
' Select ''Complementos'',count(distinct(a.cdclasecomp||''-''||correlativocomp))cantidad ,',
' apex_util.prepare_url( ''f?p=''||:APP_ID||'':24:''||:APP_SESSION||''::NO:::'') as url  ',
' from  tnotaviaje  a inner join tactivos b on  a.cdclaseCOMP=b.cdclase  and a.correlativOCOMP=b.correlativo',
' inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=2  AND grupo in(:grupo) and',
'extract( year from a.fechasale) =:anio',
'and a.cddelegacion in (:delegacion) ',
')'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'DELEGACION,GRUPO,ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'0'
,p_attribute_06=>'L'
,p_attribute_07=>'DOT'
,p_attribute_08=>'Y'
,p_attribute_09=>'LABEL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(116886285253198272)
,p_plug_name=>'PILOTOS'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select * from ( ',
' select  pilotodes codigo, nombre_pila||'' '' || primer_apellido nombre, ubicacion estacion ,descripcion seccion ,',
'  nmnota notas, EXTRACT(MONTH FROM fechasale) mes',
'  from tnotaviaje a inner join pipasgt.empleado b on a.pilotodes=to_char(empleado) ',
'  inner join centro_costo c on b.centro_costo =c.centro_costo',
'  inner join ttipcomb f on a.cdtipcomb=f.cdtipcomb',
'  where',
' extract (YEAR FROM FECHASALE) = :anio and puesto=12',
' and grupo  in (:grupo)',
' and a.cddelegacion=:delegacion ',
')',
'pivot (',
'count(notas)',
' for  mes in (''1''Enero,''2''Febrero,''3''Marzo,''4''Abril,''5''Mayo,''6''Junio,''7''Julio,''8''Agosto,''9''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
'  )  ',
'  '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'ANIO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(116886386885198272)
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
,p_internal_uid=>116886386885198272
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75149242220387930)
,p_db_column_name=>'ENERO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Enero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ENERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75149619535387930)
,p_db_column_name=>'FEBRERO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Febrero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FEBRERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75150028281387930)
,p_db_column_name=>'MARZO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Marzo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MARZO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75150492002387932)
,p_db_column_name=>'ABRIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Abril'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ABRIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75150829730387932)
,p_db_column_name=>'MAYO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mayo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAYO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75151217882387932)
,p_db_column_name=>'JUNIO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Junio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JUNIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75151636175387932)
,p_db_column_name=>'JULIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Julio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JULIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75152089869387937)
,p_db_column_name=>'AGOSTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Agosto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AGOSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75152443825387938)
,p_db_column_name=>'SEPTIEMBRE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Septiembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEPTIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75152811548387938)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Octubre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OCTUBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75153226008387938)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Noviembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOVIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75153607191387938)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Diciembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DICIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75154090902387940)
,p_db_column_name=>'CODIGO'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Codigo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'CODIGO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75154435691387940)
,p_db_column_name=>'NOMBRE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Nombre'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NOMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75154829767387940)
,p_db_column_name=>'SECCION'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Seccion'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SECCION'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75155240413387946)
,p_db_column_name=>'ESTACION'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Estacion'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(116887907374198450)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'751556'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'CODIGO:NOMBRE:SECCION:ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE'
);
end;
/
begin
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75660233151174120)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(75659789864174115)
,p_button_name=>'Actualizar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75659875899174116)
,p_name=>'DELEGACION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(75659789864174115)
,p_prompt=>'Delegacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SUR;01,NORTE;02'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75659986244174117)
,p_name=>'GRUPO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(75659789864174115)
,p_prompt=>'grupo'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Combustibles;1,Graneles;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75660094808174118)
,p_name=>'ANIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(75659789864174115)
,p_prompt=>unistr('A\00F1o')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:2017;2017,2018;2018,2019;2019,2020;2020,2021;2021,2022;2022'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Eficiencia Descarga'
,p_step_title=>'Eficiencia Descarga'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'Eficiencia Descarga'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413123546'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930463140633632)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130376735872393486)
,p_plug_name=>'Cantidad'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(75157112739394124)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'viajes'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_55220516308999364'
,p_chart_width=>900
,p_chart_height=>500
,p_chart_animation=>'SideFromLeft'
,p_display_attr=>':H:N:V:N:N:N::V:Y:Circle:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'5'
,p_x_axis_title=>'Horas'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Viajes'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75157582520394125)
,p_chart_id=>wwv_flow_api.id(75157112739394124)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   NULL LINK,to_char(fecha_hora,''hh24''), count(*) from jaguar a  where fecha_hora>=:P21_INI  and fecha_hora<=:P21_FIN ',
'group by  to_char(fecha_hora, ''hh24'') order by  to_char(fecha_hora, ''hh24'')'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P21_INI,P21_FIN'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>24
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130378937350450711)
,p_plug_name=>'s'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(130381144154518909)
,p_plug_name=>'Toneladas'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_FLASH_CHART5'
);
wwv_flow_api.create_flash_chart5(
 p_id=>wwv_flow_api.id(75159700415394133)
,p_default_chart_type=>'2DLine'
,p_chart_title=>'Toneladas'
,p_chart_rendering=>'FLASH_PREFERRED'
,p_chart_name=>'chart_55224925837124789'
,p_chart_width=>900
,p_chart_height=>500
,p_chart_animation=>'N'
,p_display_attr=>':H:N:V:X:N:N::V:Y:Circle:::N:::Default:::S'
,p_dial_tick_attr=>':::::::::::'
,p_gantt_attr=>'Y:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:Rhomb:Rhomb:Full:30:15:5:Y:I:N:S:E::'
,p_pie_attr=>'Outside:::'
,p_map_attr=>'Orthographic:RegionBounds:REGION_NAME'
,p_map_source=>'%'
,p_margins=>':::'
, p_omit_label_interval=> null
,p_bgtype=>'Trans'
,p_color_scheme=>'6'
,p_x_axis_title=>'Horas'
,p_x_axis_label_font=>'Tahoma:10:#000000'
,p_y_axis_title=>'Toneladas'
,p_y_axis_label_font=>'Tahoma:10:#000000'
,p_async_update=>'N'
, p_names_font=> null
, p_names_rotation=> null
,p_values_font=>'Tahoma:10:#000000'
,p_hints_font=>'Tahoma:10:#000000'
,p_legend_font=>'Tahoma:10:#000000'
,p_grid_labels_font=>'Tahoma:10:#000000'
,p_chart_title_font=>'Tahoma:14:#000000'
,p_x_axis_title_font=>'Tahoma:14:#000000'
,p_y_axis_title_font=>'Tahoma:14:#000000'
,p_gauge_labels_font=>'Tahoma:10:#000000'
,p_use_chart_xml=>'N'
);
wwv_flow_api.create_flash_chart5_series(
 p_id=>wwv_flow_api.id(75160152946394133)
,p_chart_id=>wwv_flow_api.id(75159700415394133)
,p_series_seq=>10
,p_series_name=>'Series 1'
,p_series_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  NULL, to_char(fecha_hora, ''hh24''),sum(TM) from jaguar a  where fecha_hora>=:P21_INI  and fecha_hora<=:p21_fin',
'group by  to_char(fecha_hora, ''hh24'') order by  to_char(fecha_hora, ''hh24'')'))
,p_series_type=>'Line'
,p_series_query_type=>'SQL_QUERY'
,p_series_ajax_items_to_submit=>'P21_FIN,P21_FIN'
,p_series_query_parse_opt=>'PARSE_CHART_QUERY'
,p_series_query_no_data_found=>'No data found.'
,p_series_query_row_count_max=>25
,p_show_action_link=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75158230533394128)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(130378937350450711)
,p_button_name=>'P21_ACTUALIZAR'
,p_button_static_id=>'P10_ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'BODY'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75158686235394128)
,p_name=>'P21_INI'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(130378937350450711)
,p_prompt=>'Ini'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75159058685394133)
,p_name=>'P21_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(130378937350450711)
,p_prompt=>'Fin'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'both'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>unistr('ANALISIS POR A\00D1O')
,p_step_title=>unistr('ANALISIS POR A\00D1O')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>unistr('ANALISIS POR A\00D1O')
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413123619'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930599729633633)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(141130894287483524)
,p_plug_name=>'Caja Chica'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select  proyecto, nvl( sum(total_compra),0)  costo_total, EXTRACT(month FROM fec_docto) fecha',
'from Mov_caja    where  EXTRACT(Year FROM fec_docto) =:P22_ANIO',
'group by proyecto, fec_docto) ',
'pivot (',
' sum(costo_total) for   fecha in (''1''Enero,''2''Febrero,''3''Marzo,''4''Abril,''5''Mayo,''6''Junio,''7''Julio,''8''Agosto,''9''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P22_ANIO'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(141130970606483524)
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
,p_internal_uid=>141130970606483524
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75163535279399194)
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
 p_id=>wwv_flow_api.id(75163949868399195)
,p_db_column_name=>'ENERO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Enero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ENERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75164325087399195)
,p_db_column_name=>'FEBRERO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Febrero'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FEBRERO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75164784586399195)
,p_db_column_name=>'MARZO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Marzo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MARZO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75165194806399198)
,p_db_column_name=>'ABRIL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Abril'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ABRIL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75165595808399198)
,p_db_column_name=>'MAYO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mayo'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAYO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75165945538399198)
,p_db_column_name=>'JUNIO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Junio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JUNIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75166349185399200)
,p_db_column_name=>'JULIO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Julio'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'JULIO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75166784925399200)
,p_db_column_name=>'AGOSTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Agosto'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'AGOSTO'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75167118488399200)
,p_db_column_name=>'SEPTIEMBRE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Septiembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'SEPTIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75167527228399200)
,p_db_column_name=>'OCTUBRE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Octubre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'OCTUBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75167918482399201)
,p_db_column_name=>'NOVIEMBRE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Noviembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NOVIEMBRE'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75168303848399201)
,p_db_column_name=>'DICIEMBRE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Diciembre'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'DICIEMBRE'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(141132475569483932)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'751687'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'PROYECTO:ENERO:FEBRERO:MARZO:ABRIL:MAYO:JUNIO:JULIO:AGOSTO:SEPTIEMBRE:OCTUBRE:NOVIEMBRE:DICIEMBRE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(141132891845488717)
,p_plug_name=>'Datos'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
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
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(141136083131732209)
,p_name=>'Bodega'
,p_template=>wwv_flow_api.id(74259564255568926)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (  ',
'Select a.cod_obra proyecto, nvl( sum(round(c.cantidad*c.costo_unit,2)),0)  costo_total,',
'EXTRACT(month FROM a.fecha_docto) fecha',
' from  INV_MOVM a, inv_detm c  where ',
'  EXTRACT(Year FROM fecha_docto) =:P22_ANIO and',
'a.cod_cia      = ''01''',
'AND a.cod_doctoi   IN (16)',
'--and trunc(a.fecha_docto) between to_date(:p2_fecha_inicio,''dd/mm/yyyy'') and to_date(:p2_fecha_fin,''dd/mm/yyyy'')',
'AND a.doc_stat not in (''A'', ''P'')',
' and c.cod_cia = a.cod_cia',
'    and c.cod_bodega = a.cod_bodega',
'    and c.cod_doctoi = a.cod_doctoi',
'    and c.num_docto = a.num_docto',
' group by a.cod_obra, fecha_docto )',
' pivot (',
' sum(costo_total) for   fecha in (''1''Enero,''2''Febrero,''3''Marzo,''4''Abril,''5''Mayo,''6''Junio,''7''Julio,''8''Agosto,''9''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
') order by proyecto asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P22_ANIO'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
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
 p_id=>wwv_flow_api.id(75170580096399205)
,p_query_column_id=>1
,p_column_alias=>'PROYECTO'
,p_column_display_sequence=>1
,p_column_heading=>'PROYECTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75170958746399206)
,p_query_column_id=>2
,p_column_alias=>'ENERO'
,p_column_display_sequence=>2
,p_column_heading=>'ENERO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75171253628399208)
,p_query_column_id=>3
,p_column_alias=>'FEBRERO'
,p_column_display_sequence=>3
,p_column_heading=>'FEBRERO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75171626434399208)
,p_query_column_id=>4
,p_column_alias=>'MARZO'
,p_column_display_sequence=>4
,p_column_heading=>'MARZO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75172050669399208)
,p_query_column_id=>5
,p_column_alias=>'ABRIL'
,p_column_display_sequence=>5
,p_column_heading=>'ABRIL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75172443205399208)
,p_query_column_id=>6
,p_column_alias=>'MAYO'
,p_column_display_sequence=>6
,p_column_heading=>'MAYO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75172857055399209)
,p_query_column_id=>7
,p_column_alias=>'JUNIO'
,p_column_display_sequence=>7
,p_column_heading=>'JUNIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75173252399399209)
,p_query_column_id=>8
,p_column_alias=>'JULIO'
,p_column_display_sequence=>8
,p_column_heading=>'JULIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75173697026399209)
,p_query_column_id=>9
,p_column_alias=>'AGOSTO'
,p_column_display_sequence=>9
,p_column_heading=>'AGOSTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75174058178399209)
,p_query_column_id=>10
,p_column_alias=>'SEPTIEMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'SEPTIEMBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75174416135399211)
,p_query_column_id=>11
,p_column_alias=>'OCTUBRE'
,p_column_display_sequence=>11
,p_column_heading=>'OCTUBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75174812565399211)
,p_query_column_id=>12
,p_column_alias=>'NOVIEMBRE'
,p_column_display_sequence=>12
,p_column_heading=>'NOVIEMBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75175297494399211)
,p_query_column_id=>13
,p_column_alias=>'DICIEMBRE'
,p_column_display_sequence=>13
,p_column_heading=>'DICIEMBRE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(141141498424840707)
,p_name=>'Comision_extra'
,p_template=>wwv_flow_api.id(74259564255568926)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select cdclaseuni||''-''|| correlativouni proyecto ,nvl(sum (comision_extra),0) comision, EXTRACT(month FROM fecha) fecha  from tcomiemp a inner join tnotaviaje b  on a.nmnota= b.nmnota ',
' where  EXTRACT(Year FROM fecha) =:P22_ANIO group by   cdclaseuni||''-''|| correlativouni , fecha)pivot (',
' sum(comision) for   fecha in (''1''Enero,''2''Febrero,''3''Marzo,''4''Abril,''5''Mayo,''6''Junio,''7''Julio,''8''Agosto,''9''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
')order by proyecto asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P22_ANIO'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
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
 p_id=>wwv_flow_api.id(75176301884399214)
,p_query_column_id=>1
,p_column_alias=>'PROYECTO'
,p_column_display_sequence=>1
,p_column_heading=>'PROYECTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75176763210399214)
,p_query_column_id=>2
,p_column_alias=>'ENERO'
,p_column_display_sequence=>2
,p_column_heading=>'ENERO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75177179344399217)
,p_query_column_id=>3
,p_column_alias=>'FEBRERO'
,p_column_display_sequence=>3
,p_column_heading=>'FEBRERO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75177502554399219)
,p_query_column_id=>4
,p_column_alias=>'MARZO'
,p_column_display_sequence=>4
,p_column_heading=>'MARZO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75177976899399219)
,p_query_column_id=>5
,p_column_alias=>'ABRIL'
,p_column_display_sequence=>5
,p_column_heading=>'ABRIL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75178347689399219)
,p_query_column_id=>6
,p_column_alias=>'MAYO'
,p_column_display_sequence=>6
,p_column_heading=>'MAYO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75181162979399225)
,p_query_column_id=>7
,p_column_alias=>'JUNIO'
,p_column_display_sequence=>7
,p_column_heading=>'JUNIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75178736993399219)
,p_query_column_id=>8
,p_column_alias=>'JULIO'
,p_column_display_sequence=>8
,p_column_heading=>'JULIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75179158346399220)
,p_query_column_id=>9
,p_column_alias=>'AGOSTO'
,p_column_display_sequence=>9
,p_column_heading=>'AGOSTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75179520238399220)
,p_query_column_id=>10
,p_column_alias=>'SEPTIEMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'SEPTIEMBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75179959119399220)
,p_query_column_id=>11
,p_column_alias=>'OCTUBRE'
,p_column_display_sequence=>11
,p_column_heading=>'OCTUBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75180372827399220)
,p_query_column_id=>12
,p_column_alias=>'NOVIEMBRE'
,p_column_display_sequence=>12
,p_column_heading=>'NOVIEMBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75180764657399222)
,p_query_column_id=>13
,p_column_alias=>'DICIEMBRE'
,p_column_display_sequence=>13
,p_column_heading=>'DICIEMBRE'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(141145477393891345)
,p_name=>'Comision '
,p_template=>wwv_flow_api.id(74259564255568926)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY_3'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from (',
'select cdclaseuni||''-''|| correlativouni proyecto ,nvl(sum (comision),0) comision, EXTRACT(month FROM fecha) fecha  from tcomiemp a inner join tnotaviaje b  on a.nmnota= b.nmnota ',
' where  EXTRACT(Year FROM fecha) =:P22_ANIO group by   cdclaseuni||''-''|| correlativouni , fecha)pivot (',
' sum(comision) for   fecha in (''1''Enero,''2''Febrero,''3''Marzo,''4''Abril,''5''Mayo,''6''Junio,''7''Julio,''8''Agosto,''9''Septiembre,''10''Octubre,''11''Noviembre,''12''Diciembre)',
')order by proyecto asc'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P22_ANIO'
,p_query_row_template=>wwv_flow_api.id(74294927267568954)
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
 p_id=>wwv_flow_api.id(75182225893399226)
,p_query_column_id=>1
,p_column_alias=>'PROYECTO'
,p_column_display_sequence=>1
,p_column_heading=>'PROYECTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75182691700399226)
,p_query_column_id=>2
,p_column_alias=>'ENERO'
,p_column_display_sequence=>2
,p_column_heading=>'ENERO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75183047079399226)
,p_query_column_id=>3
,p_column_alias=>'FEBRERO'
,p_column_display_sequence=>3
,p_column_heading=>'FEBRERO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75183453269399228)
,p_query_column_id=>4
,p_column_alias=>'MARZO'
,p_column_display_sequence=>4
,p_column_heading=>'MARZO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75183889922399228)
,p_query_column_id=>5
,p_column_alias=>'ABRIL'
,p_column_display_sequence=>5
,p_column_heading=>'ABRIL'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75184277005399228)
,p_query_column_id=>6
,p_column_alias=>'MAYO'
,p_column_display_sequence=>6
,p_column_heading=>'MAYO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75184635536399228)
,p_query_column_id=>7
,p_column_alias=>'JUNIO'
,p_column_display_sequence=>7
,p_column_heading=>'JUNIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75185085708399230)
,p_query_column_id=>8
,p_column_alias=>'JULIO'
,p_column_display_sequence=>8
,p_column_heading=>'JULIO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75185458587399231)
,p_query_column_id=>9
,p_column_alias=>'AGOSTO'
,p_column_display_sequence=>9
,p_column_heading=>'AGOSTO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75185873515399231)
,p_query_column_id=>10
,p_column_alias=>'SEPTIEMBRE'
,p_column_display_sequence=>10
,p_column_heading=>'SEPTIEMBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75186236319399231)
,p_query_column_id=>11
,p_column_alias=>'OCTUBRE'
,p_column_display_sequence=>11
,p_column_heading=>'OCTUBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75186621652399233)
,p_query_column_id=>12
,p_column_alias=>'NOVIEMBRE'
,p_column_display_sequence=>12
,p_column_heading=>'NOVIEMBRE'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(75187017059399233)
,p_query_column_id=>13
,p_column_alias=>'DICIEMBRE'
,p_column_display_sequence=>13
,p_column_heading=>'DICIEMBRE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75169105214399203)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(141130894287483524)
,p_button_name=>'Actualizar_CAJA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75175670129399211)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(141136083131732209)
,p_button_name=>'ACTUALIZAR_BODEGA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75181596807399225)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(141141498424840707)
,p_button_name=>'Extra'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar Comision'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75187464685399233)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(141145477393891345)
,p_button_name=>'Comision'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Actualizar'
,p_button_position=>'TOP'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75169814420399203)
,p_name=>'P22_ANIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(141132891845488717)
,p_prompt=>'Anio'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:2018,2019,2020,2021'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75187817398399234)
,p_name=>'ACTUALIZAR CAJA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65970204145093801)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75188326539399234)
,p_event_id=>wwv_flow_api.id(75187817398399234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(141130894287483524)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75188705521399236)
,p_name=>'Actualizar Bodega'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65974808244340940)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75189273000399236)
,p_event_id=>wwv_flow_api.id(75188705521399236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(141136083131732209)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75189641252399237)
,p_name=>'Actualiza_Comision_extra'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(65980213841446637)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75190159883399237)
,p_event_id=>wwv_flow_api.id(75189641252399237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(141141498424840707)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75190525885399237)
,p_name=>'Comision'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75187464685399233)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75191036635399237)
,p_event_id=>wwv_flow_api.id(75190525885399237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(141145477393891345)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'KPI '
,p_step_title=>'KPI '
,p_step_sub_title=>'KPI '
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210709170232'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74930692417633634)
,p_plug_name=>'Nuevo'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--inlineIcons'
,p_plug_template=>wwv_flow_api.id(74280059028568942)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(75083679831354470)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74316725536568976)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138267769358680438)
,p_plug_name=>'Filtros'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144862375790912998)
,p_plug_name=>'KPI '
,p_region_name=>'dualChart'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Select * from  (',
'--unidades disponibles',
'(',
'Select  ''Total Unidades'' estado ,decode(viaje_a,1000,''SHELL'',5050,''UNOPETROL'') viaje_A, count(*) unidades,  c.tipo from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)',
'union all',
'--puede viajar',
'(',
'Select  ''Disponible'' estado ,decode(viaje_a,1000,''SHELL'',5050,''UNOPETROL'') viaje_A, count(*) unidades,  c.tipo from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and  disponible  in (''Puede viajar'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)',
'union all ',
'--unidades viajando y taller',
'(',
'Select disponible,decode(viaje_a,1000,''SHELL'',5050,''UNOPETROL'') viaje_A, count(*) unidades,c.tipo   from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'')  and disponible in(''Viajando / cargada'',''Taller'')',
'and    instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo, disponible)',
'union all',
'--otros estados no disponibles',
'(',
'Select ''Otros no Disponible'',decode(viaje_a,1000,''SHELL'',5050,''UNOPETROL'') viaje_A, count(*) unidades, c.tipo  from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:Fecha2,''dd/mm/yyyy'')  and disponible not in (''Viajando / cargada'',''Taller'')',
'and  instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)',
'union all',
'--pilotos utilizados ',
'(',
'Select ''No. conductores'',decode(dscliente,''UNO GUATEMALA S.A.'',''SHELL'',''UNOPETROL S.A.'',''UNOPETROL''), count(distinct(pilotodes)) pilotos,d.tipo',
'from  tnotaviaje a inner join tclientes b on a.cdclientev=cdcliente',
'inner join tactivos  c on a.cdclaseuni=c.cdclase and a.correlativouni=c.correlativo',
'inner join tipoactivo d on c.tipoactivo=d.codigo',
'where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and     instr('':''||nvl(:tipo,d.codigo)||'':'','':''||d.codigo||'':'')>0 ',
'and  instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,cddelegacion)||'':'','':''||cddelegacion||'':'')>0',
'group by dscliente,d.tipo)',
'union all',
'--cantidad de viajes',
'(',
'Select ''No. viajes'',decode(dscliente,''UNO GUATEMALA S.A.'',''SHELL'',''UNOPETROL S.A.'',''UNOPETROL''), count(nmnota) notas,d.tipo',
' from  tnotaviaje a inner join tclientes b on a.cdclientev=cdcliente ',
' inner join tactivos  c on a.cdclaseuni=c.cdclase and a.correlativouni=c.correlativo',
' inner join tipoactivo d on c.tipoactivo=d.codigo',
' where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and     d.codigo=5',
'and  instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,cddelegacion)||'':'','':''||cddelegacion||'':'')>0',
'    and estorden not in (''X'')',
'group by dscliente,d.tipo',
')',
'union all',
'--galones transportados',
'(',
' Select ''Galones transportados'', decode(dscliente,''UNO GUATEMALA S.A.'',''SHELL'',''UNOPETROL S.A.'',''UNOPETROL'') dscliente,sum(galones), f.tipo  from  tdetnota a ',
'inner join tnotaviaje c on a.nmnota=c.nmnota',
'inner join tclientes b on c.cdclientev=b.cdcliente',
'inner join tactivos e on c.cdclaseuni=e.cdclase and c.correlativouni=e.correlativo',
'inner join tipoactivo f on e.tipoactivo=f.codigo',
' where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and  instr('':''||nvl(:cliente,cdclientev)||'':'','':''||cdclientev||'':'')>0',
'and estorden not in (''X'')',
'and   instr('':''||nvl(:tipo,f.codigo)||'':'','':''||f.codigo||'':'')>0 ',
'and instr('':''||nvl(:Estacion,c.cddelegacion)||'':'','':''||c.cddelegacion||'':'')>0',
'group by dscliente , cdclientev,f.tipo)',
'union all ',
'--kilometros recorridos',
'(',
'Select ''kilometros Recorridos'', decode(dscliente,''UNO GUATEMALA S.A.'',''SHELL'',''UNOPETROL S.A.'',''UNOPETROL'') dscliente,sum(b.recorrido),f.tipo',
' from  tnotaviaje a ',
' inner join tvales b on a.nmnota=b.notaviaje',
'   inner join tclientes c on a.cdclientev=c.cdcliente',
'   inner join tactivos e on a.cdclaseuni=e.cdclase and a.correlativouni=e.correlativo',
'inner join tipoactivo f on e.tipoactivo=f.codigo',
'   where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and    instr('':''||nvl(:tipo,f.codigo)||'':'','':''||f.codigo||'':'')>0 ',
'and  instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'and estorden not in (''X'')',
'group by dscliente , cdclientev,f.tipo)',
'union all',
'--viajes programados',
'(',
'Select ''viajes_programados'', decode(dscliente,''UNO GUATEMALA S.A.'',''SHELL'',''UNOPETROL S.A.'',''UNOPETROL'') dscliente,count(a.nmnota),f.tipo',
' from  tnotaviaje a ',
'    inner join tclientes c on a.cdclientev=c.cdcliente',
'   inner join tactivos e on a.cdclaseuni=e.cdclase and a.correlativouni=e.correlativo',
'inner join tipoactivo f on e.tipoactivo=f.codigo',
'   where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and   instr('':''||nvl(:tipo,f.codigo)||'':'','':''||f.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'and estorden not in (''X'')',
'group by dscliente , cdclientev,f.tipo)',
'union all',
'--unidades no programadas',
'(',
'select ''unidades_no_programadas'',''SHELL'' dscliente,',
'(Select  count(*) unidades  from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and  disponible  in (''Puede viajar'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)-(',
'Select count(a.nmnota)',
' from  tnotaviaje a ',
'    inner join tclientes c on a.cdclientev=c.cdcliente',
'   inner join tactivos e on a.cdclaseuni=e.cdclase and a.correlativouni=e.correlativo',
'inner join tipoactivo f on e.tipoactivo=f.codigo',
'   where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and  instr('':''||nvl(:tipo,f.codigo)||'':'','':''||f.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'and estorden not in (''X'')',
'group by dscliente , cdclientev,f.tipo) diferencia ,  ''RIGIDO''',
'from Dual)',
'union all',
'--% unidades Disponibles',
'(',
'select ''% unidades disponibles'', ''SHELL'' dscliente,(',
'--disponibles',
'Select  count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and  disponible  in (''Puede viajar'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)/(',
'--total unidades',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and   instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo) *100  as "%disponible", ''RIGIDO'' from dual )',
'union all',
'--% unidades Viajando',
'(',
'select ''% unidades Viajando'', ''SHELL'' dscliente,(',
'--disponibles',
'Select  count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and  disponible  in (''Viajando / cargada'')',
'and    instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)/(',
'--total unidades',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and   instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo) *100  as "%viajando", ''RIGIDO'' from dual )',
'union all',
' --% unidades Taller',
'(',
'select ''% unidades Taller'', ''SHELL'' dscliente,(',
'--disponibles',
'Select  count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and  disponible  in (''Taller'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)/(',
'--total unidades',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and  instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo) *100  as "%Taller", ''RIGIDO'' from dual )',
'union all ',
'--%otros estados',
'(',
'select ''% otros estados'', ''SHELL'' dscliente,(',
'--disponibles',
'Select  count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and disponible not in (''Viajando / cargada'',''Taller'',''Puede viajar'')',
'and instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)/(',
'--total unidades',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo) *100  as "Otros", ''RIGIDO'' from dual )',
' --Promedio de viajes',
' union all ',
' ( ',
' select ''Promedio Viajes'', ''SHELL'' dscliente,(',
'--cantidad viajes',
'Select  count(nmnota) notas',
' from  tnotaviaje a inner join tclientes b on a.cdclientev=cdcliente ',
' inner join tactivos  c on a.cdclaseuni=c.cdclase and a.correlativouni=c.correlativo',
' inner join tipoactivo d on c.tipoactivo=d.codigo',
' where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and     instr('':''||nvl(:tipo,d.codigo)||'':'','':''||d.codigo||'':'')>0 ',
'and  instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,cddelegacion)||'':'','':''||cddelegacion||'':'')>0',
'    and estorden not in (''X'')',
'group by dscliente,d.tipo',
')',
'/(',
'--unidades disponibles',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo) promedio, ''RIGIDO'' from dual',
' )',
'   union all',
'   --unidades disponibles programadas',
' ( ',
'  select ''% unidades Disponibles Programdas'', ''SHELL'' dscliente,(',
'Select count(a.nmnota)',
' from  tnotaviaje a ',
'    inner join tclientes c on a.cdclientev=c.cdcliente',
'   inner join tactivos e on a.cdclaseuni=e.cdclase and a.correlativouni=e.correlativo',
'inner join tipoactivo f on e.tipoactivo=f.codigo',
'   where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and     instr('':''||nvl(:tipo,f.codigo)||'':'','':''||f.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'and estorden not in (''X'')',
'group by dscliente , cdclientev,f.tipo)',
'/(',
'--unidades disponibles',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and    instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo) promedio, ''RIGIDO'' from dual',
')',
'union all',
'    --unidades disponibles no programadas',
' (',
'  select ''% unidades Disponibles Programdas'', ''SHELL'' dscliente,((',
'(Select  count(*) unidades  from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') and  disponible  in (''Puede viajar'')',
'and   instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)-(',
'Select count(a.nmnota)',
' from  tnotaviaje a ',
'    inner join tclientes c on a.cdclientev=c.cdcliente',
'   inner join tactivos e on a.cdclaseuni=e.cdclase and a.correlativouni=e.correlativo',
'inner join tipoactivo f on e.tipoactivo=f.codigo',
'   where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and    instr('':''||nvl(:tipo,f.codigo)||'':'','':''||f.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'and estorden not in (''X'')',
'group by dscliente , cdclientev,f.tipo) ',
')',
'/(',
'--unidades disponibles',
'Select   count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)',
') promedio, ''RIGIDO'' from dual',
')',
' union all',
'     --%utilizacion',
' (',
'  select ''% de utilizacion'', ''SHELL'' dscliente,(',
'  Select  count(*) unidades from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and    instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by viaje_a, c.tipo)/(select count(nmnota)  from  tnotaviaje a inner join tclientes b on a.cdclientev=cdcliente ',
' inner join tactivos  c on a.cdclaseuni=c.cdclase and a.correlativouni=c.correlativo',
' inner join tipoactivo d on c.tipoactivo=d.codigo',
' where fechasale>=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')',
'and     instr('':''||nvl(:tipo,d.codigo)||'':'','':''||d.codigo||'':'')>0 ',
'and  instr('':''||nvl(:cliente,cdcliente)||'':'','':''||cdcliente||'':'')>0',
'and instr('':''||nvl(:Estacion,cddelegacion)||'':'','':''||cddelegacion||'':'')>0',
'    and estorden not in (''X'')',
'group by dscliente,d.tipo) utilizacion, ''RIGIDO''',
' from dual',
' )',
')   order by 1,2,4 desc;',
' ',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'FECHA1,FECHA2,TIPO,CLIENTE,ESTACION'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(144862496179912998)
,p_name=>'KPI '
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>144862496179912998
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75205906699402554)
,p_db_column_name=>'TIPO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75206356857402557)
,p_db_column_name=>'VIAJE_A'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Viaje A'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75206736491402559)
,p_db_column_name=>'UNIDADES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Unidades'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75207116679402562)
,p_db_column_name=>'ESTADO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(144864369977913768)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'752075'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIPO:VIAJE_A:UNIDADES:ESTADO'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148656737925013416)
,p_plug_name=>'Disponibilidad'
,p_region_name=>'dualChart'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(75196496797402521)
,p_region_id=>wwv_flow_api.id(148656737925013416)
,p_chart_type=>'combo'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withoutRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75198192491402534)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_seq=>10
,p_name=>'Disponibilizado'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ''Disponible'' estado , count(*) unidades,to_char(fecha,''dd/mm/yyyy'') fecha from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by fecha',
'order by fecha asc'))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,TIPO,CLIENTE,ESTACION'
,p_series_type=>'line'
,p_items_value_column_name=>'UNIDADES'
,p_items_label_column_name=>'FECHA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75198705598402535)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_seq=>20
,p_name=>'Viajando'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select disponible, count(*) unidades,to_char(fecha,''dd/mm/yyyy'')fecha  from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'')  and disponible in(''Viajando / cargada'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by   disponible,fecha',
'order by fecha asc'))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,TIPO,CLIENTE,ESTACION'
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES'
,p_items_label_column_name=>'FECHA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:white;'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75199359483402537)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_seq=>30
,p_name=>'Taller'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select disponible, count(*) unidades,to_char(fecha,''dd/mm/yyyy'')fecha  from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'')  and disponible in(''Taller'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by   disponible,fecha',
'order by fecha asc'))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,TIPO,CLIENTE,ESTACION'
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES'
,p_items_label_column_name=>'FECHA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:white;'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75199920195402538)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_seq=>40
,p_name=>'OTROS'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Otros no Disponible'', count(*) unidades,to_char(fecha,''dd/mm/yyyy'')fecha from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:Fecha2,''dd/mm/yyyy'')  and disponible not in (''Viajando / cargada'',''Taller'',''Puede viajar'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by fecha',
'order by fecha asc'))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,TIPO,CLIENTE,ESTACION'
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES'
,p_items_label_column_name=>'FECHA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:white;'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75200588263402540)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_seq=>50
,p_name=>'Puede Viajar'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select disponible, count(*) unidades,to_char(fecha,''dd/mm/yyyy'')fecha  from  tactivos a inner join disponibilidad b on  cdclase||''-''|| correlativo =b.unidad',
'inner join tipoactivo c on a.tipoactivo=codigo',
'where fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'')  and disponible in(''Puede viajar'')',
'and     instr('':''||nvl(:tipo,c.codigo)||'':'','':''||c.codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'group by  disponible,fecha',
'order by fecha asc'))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,TIPO,CLIENTE,ESTACION'
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES'
,p_items_label_column_name=>'FECHA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'insideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_items_label_css_classes=>'font-size:14px;color:white;'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75196999706402529)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75197596272402532)
,p_chart_id=>wwv_flow_api.id(75196496797402521)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
end;
/
begin
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(148659978399013448)
,p_plug_name=>'Comparativo'
,p_region_name=>'comparativo'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74259564255568926)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_jet_chart(
 p_id=>wwv_flow_api.id(75469237837799006)
,p_region_id=>wwv_flow_api.id(148659978399013448)
,p_chart_type=>'combo'
,p_title=>'Comparativo'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75469321074799007)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_seq=>10
,p_name=>'Viajes programado'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select to_char(fechasale,''dd/mm/yyyy'')  fechasale, count(nmnota) from    tnotaviaje a',
' inner join  tactivos c on cdclase||''-''||correlativo=a.cdclaseuni||''-''||a.correlativouni ',
' inner join tipoactivo b on c.tipoactivo=b.codigo',
'  where fechasale >=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')  ',
'   and     instr('':''||nvl(:tipo,codigo)||'':'','':''||b.codigo||'':'')>0 ',
'  and instr('':''||nvl(:cliente,cdclientev)||'':'','':''||a.cdclientev||'':'')>0',
'  and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'   and adicional=''N''   ',
'  group by fechasale '))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,CLIENTE,ESTACION'
,p_series_type=>'bar'
,p_items_value_column_name=>'COUNT(NMNOTA)'
,p_items_label_column_name=>'FECHASALE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75469648437799010)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_seq=>20
,p_name=>'Galones Programado'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  Select to_char(fechasale,''dd/mm/yyyy'') fechasale, sum(galones) from   tnotaviaje a',
'inner join tdetnota b on a.nmnota=b.nmnota',
'  where fechasale >=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')  ',
'    and instr('':''||nvl(:cliente,cdclientev)||'':'','':''||cdclientev||'':'')>0',
'  and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'   and adicional=''N'' ',
'  group by fechasale '))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,CLIENTE,ESTACION'
,p_series_type=>'line'
,p_items_value_column_name=>'SUM(GALONES)'
,p_items_label_column_name=>'FECHASALE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75469860347799012)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_seq=>30
,p_name=>'Galones Adicionales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   Select to_char(fechasale,''dd/mm/yyyy'')  fechasale, sum(galones) from   tnotaviaje a',
'inner join tdetnota b on a.nmnota=b.nmnota',
'  where fechasale >=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')  ',
'   and instr('':''||nvl(:cliente,cdclientev)||'':'','':''||cdclientev||'':'')>0',
'  and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'  and adicional=''S'' ',
'group by fechasale '))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,CLIENTE,ESTACION'
,p_series_type=>'line'
,p_items_value_column_name=>'SUM(GALONES)'
,p_items_label_column_name=>'FECHASALE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75469996636799013)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_seq=>40
,p_name=>'Viajes Adicionales'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select to_char(fechasale,''dd/mm/yyyy'')  fechasale, count(nmnota) from    tnotaviaje a',
'  where fechasale >=to_date(:fecha1,''dd/mm/yyyy'') and fechasale<= to_date(:fecha2,''dd/mm/yyyy'')  ',
' and instr('':''||nvl(:cliente,cdclientev)||'':'','':''||cdclientev||'':'')>0',
'  and instr('':''||nvl(:Estacion,a.cddelegacion)||'':'','':''||a.cddelegacion||'':'')>0',
'  and adicional=''S''   ',
'  group by fechasale  '))
,p_ajax_items_to_submit=>'FECHA1,FECHA2,CLIENTE,ESTACION'
,p_series_type=>'bar'
,p_items_value_column_name=>'COUNT(NMNOTA)'
,p_items_label_column_name=>'FECHASALE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75470785741799021)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_seq=>50
,p_name=>'Galones Disponibilidad'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Select to_char(fecha,''dd/mm/yyyy'') dia, count(fecha) Unidades_d_shell,sum(capacidad_promedio) GALONES   from  disponibilidad  d',
' inner join  tactivos a on d.UNIDAD=a.cdclase||''-''||a.correlativo inner join tipoactivo b on a.tipoactivo=b.codigo',
'where   fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
' and     instr('':''||nvl(:tipo,codigo)||'':'','':''||codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'and disponible=''Puede viajar''   ',
'group by to_char(fecha,''dd/mm/yyyy'') '))
,p_series_type=>'line'
,p_items_value_column_name=>'GALONES'
,p_items_label_column_name=>'DIA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_series(
 p_id=>wwv_flow_api.id(75470802885799022)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_seq=>60
,p_name=>'Unidades Disponibilidad'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select to_char(fecha,''dd/mm/yyyy'') dia, count(fecha) Unidades_d_shell,sum(capacidad_promedio) GALONES   from  disponibilidad  d',
' inner join  tactivos a on d.cabezal=a.cdclase||''-''||a.correlativo inner join tipoactivo b on a.tipoactivo=b.codigo',
'where   fecha>=to_date(:fecha1,''dd/mm/yyyy'')and  fecha<= to_date(:fecha2,''dd/mm/yyyy'') ',
' and     instr('':''||nvl(:tipo,codigo)||'':'','':''||codigo||'':'')>0 ',
'and instr('':''||nvl(:cliente,viaje_a)||'':'','':''||viaje_a||'':'')>0',
'and instr('':''||nvl(:Estacion,Estacion)||'':'','':''||estacion||'':'')>0',
'and disponible=''Puede viajar''   ',
'group by to_char(fecha,''dd/mm/yyyy'') '))
,p_series_type=>'bar'
,p_items_value_column_name=>'UNIDADES_D_SHELL'
,p_items_label_column_name=>'DIA'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75469404065799008)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75469503647799009)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_jet_chart_axis(
 p_id=>wwv_flow_api.id(75469732126799011)
,p_chart_id=>wwv_flow_api.id(75469237837799006)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75201136929402540)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(148656737925013416)
,p_button_name=>'AGRUPAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Agrupar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75202243203402543)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(138267769358680438)
,p_button_name=>'New'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'FILTRAR'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75470193087799015)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(148659978399013448)
,p_button_name=>'AGRUPAR_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Agrupar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75470217369799016)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(148659978399013448)
,p_button_name=>'DESAGRUPAR_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Desagrupar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75201520518402541)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(148656737925013416)
,p_button_name=>'DESAGRUPAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Desagrupar'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75202659601402543)
,p_name=>'FECHA1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(138267769358680438)
,p_prompt=>'Fecha1'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75203016672402543)
,p_name=>'FECHA2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(138267769358680438)
,p_prompt=>'Fecha2'
,p_format_mask=>'dd/mm/yyyy'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75203417722402543)
,p_name=>'TIPO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(138267769358680438)
,p_prompt=>'TIPO'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:RIGIDO;5,CABEZAL;1,COMPLEMENTO;2,PIPA;3,PICK-UP;4'
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75203871989402545)
,p_name=>'CLIENTE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(138267769358680438)
,p_prompt=>'Clientes'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Uno Petrol;5050,Uno Guatemala;1000'
,p_lov_display_null=>'YES'
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75470091553799014)
,p_name=>'ESTACION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(138267769358680438)
,p_prompt=>'Estacion'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SUR;01,Norte;02'
,p_lov_display_null=>'YES'
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75207913214402568)
,p_name=>'stak'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75201136929402540)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75208420037402568)
,p_event_id=>wwv_flow_api.id(75207913214402568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(144862375790912998)
,p_attribute_01=>'apex.region("dualChart").widget().ojChart({stack: ''on''});'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75470380873799017)
,p_name=>'stak_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75470193087799015)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75470494285799018)
,p_event_id=>wwv_flow_api.id(75470380873799017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(144862375790912998)
,p_attribute_01=>'apex.region("comparativo").widget().ojChart({stack: ''on''});'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75208867644402568)
,p_name=>'unstak'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75201520518402541)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75209336433402570)
,p_event_id=>wwv_flow_api.id(75208867644402568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(144862375790912998)
,p_attribute_01=>'apex.region("dualChart").widget().ojChart({stack: ''off''});'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75470547251799019)
,p_name=>'unstak_1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(75470217369799016)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75470657712799020)
,p_event_id=>wwv_flow_api.id(75470547251799019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(144862375790912998)
,p_attribute_01=>'apex.region("comparativo").widget().ojChart({stack: ''off''});'
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Complementos'
,p_page_mode=>'MODAL'
,p_step_title=>'Complementos'
,p_step_sub_title=>'Complementos'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210423171935'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(231321616369287545)
,p_plug_name=>'Complementos'
,p_region_name=>'Complementos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select   distinct(a.cdclasecomp||''-''||correlativocomp) as unidad, ''Complemento'' as  tipo from  tnotaviaje  a inner join tactivos b on  a.cdclaseCOMP=b.cdclase  and a.correlativOCOMP=b.correlativo',
' inner join ttipcomb c on a.cdtipcomb=c.cdtipcomb',
'where tipoactivo=2  AND grupo in(:grupo) and',
'extract( year from a.fechasale) =:anio',
'and a.cddelegacion in (:delegacion) '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(231321809842287545)
,p_name=>'cabezales'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>231321809842287545
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77113440693474699)
,p_db_column_name=>'UNIDAD'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Unidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(77113855867474707)
,p_db_column_name=>'TIPO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(231323067063297026)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'771141'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UNIDAD:TIPO'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'APROBAR_ORDEN'
,p_step_title=>'APROBAR_ORDEN'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title=>'APROBAR_ORDEN'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20211025154915'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136393995526959091)
,p_plug_name=>'ORDENES PENDIENTES DE APROBACION'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' Select ''ORDENES PIPAS'' as label, ',
' count(a.Orden_compra) as value ,',
'apex_util.prepare_url( ''f?p=''||:APP_ID||'':26:''||:APP_SESSION||''::NO:::'') as url ',
' from   PIPASGT.orden_compra a',
'inner join PipasGT.proveedor b on a.proveedor=b.proveedor ',
'where a.ESTADO= ''P''',
' union all ',
' Select ''Ordenes Consigna'' as label, count(Orden_compra) as value, ',
'apex_util.prepare_url( ''f?p=''||:APP_ID||'':28:''||:APP_SESSION||''::NO:::'') as url ',
' from   PIPASCON.orden_compra a',
'inner join pipascon.proveedor b on a.proveedor=b.proveedor ',
'where a.ESTADO= ''P'''))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'LABEL'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'&URL.'
,p_attribute_05=>'0'
,p_attribute_07=>'BOX'
,p_attribute_08=>'N'
);
end;
/
prompt --application/pages/page_00026
begin
wwv_flow_api.create_page(
 p_id=>26
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'PIPASGT'
,p_step_title=>'PIPASGT'
,p_step_sub_title=>'PIPASGT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413121045'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136352588110505631)
,p_plug_name=>'orden_compra'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ORDEN_COMPRA,a.PROVEEDOR,b.nombre Nombre_Proveedor,a.BODEGA,a.MONEDA,a.FECHA,a.TOTAL_MERCADERIA,',
'a.TOTAL_IMPUESTO1,a.TOTAL_A_COMPRAR,a.ESTADO,a.DEPARTAMENTO,a.CREATEDBY USUARIO_CREA',
'from PIPASGT.orden_compra a',
'inner join pipasGT.proveedor b on a.proveedor=b.proveedor',
' where a.ESTADO= ''P'' AND a.TOTAL_A_COMPRAR<=( Select max_auth from  pa_usuarios where usuario=:APP_USER) ',
' ',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(136352703081505631)
,p_name=>'orden_compra'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_search_button_label=>'orden compra'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>136352703081505631
);
wwv_flow_api.create_worksheet_col_group(
 p_id=>wwv_flow_api.id(136431732766117603)
,p_name=>'New'
,p_display_sequence=>10
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75245767792526625)
,p_db_column_name=>'ORDEN_COMPRA'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Orden Compra'
,p_column_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RP:P27_OC:#ORDEN_COMPRA#'
,p_column_linktext=>'#ORDEN_COMPRA#'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDEN_COMPRA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75246177590526626)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75246556565526628)
,p_db_column_name=>'BODEGA'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75246963103526628)
,p_db_column_name=>'MONEDA'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75247314020526629)
,p_db_column_name=>'FECHA'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75247798298526629)
,p_db_column_name=>'TOTAL_MERCADERIA'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Total Mercaderia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75248175586526629)
,p_db_column_name=>'ESTADO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75248577024526629)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75248912295526631)
,p_db_column_name=>'USUARIO_CREA'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Usuario Crea'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75249391038526632)
,p_db_column_name=>'TOTAL_IMPUESTO1'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Total Impuesto1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75249768911526632)
,p_db_column_name=>'TOTAL_A_COMPRAR'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Total A Comprar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75250187391526634)
,p_db_column_name=>'NOMBRE_PROVEEDOR'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Nombre Proveedor'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(136357054846509784)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'752505'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDEN_COMPRA:PROVEEDOR:NOMBRE_PROVEEDOR:BODEGA:MONEDA:FECHA:DEPARTAMENTO:TOTAL_MERCADERIA:TOTAL_IMPUESTO1:TOTAL_A_COMPRAR:USUARIO_CREA:ESTADO:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136431842810117604)
,p_plug_name=>'DESCRIPCION'
,p_region_name=>'DESCRIPCION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY_3'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75243927806526609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136431842810117604)
,p_button_name=>'APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Aprobar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75244329981526609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136431842810117604)
,p_button_name=>'NO_APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'No Aprobar'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75243602668526603)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136431842810117604)
,p_button_name=>'REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Regresar'
,p_button_position=>'TOP'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75244707755526609)
,p_name=>'P26_ORDEN_COMPRA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(136431842810117604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75250944706526648)
,p_name=>'DESCRIP'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'abrir'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75251438648526651)
,p_event_id=>wwv_flow_api.id(75250944706526648)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''DESCRIPCION'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75251919472526651)
,p_event_id=>wwv_flow_api.id(75250944706526648)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P26_ORDEN_COMPRA'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75252350348526651)
,p_name=>'RECARGAR_MODAL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P26_ORDEN_COMPRA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_api.create_page(
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'APROBAR GT'
,p_page_mode=>'MODAL'
,p_step_title=>'APROBAR GT'
,p_step_sub_title=>'APROBAR GT'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413120749'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136888925712332554)
,p_plug_name=>'APROBAR GT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.orden_compra,',
' a.articulo,',
' a.descripcion nombre_articulo,',
' a.bodega,',
' cantidad_ordenada cantidad,',
' precio_unitario,',
'  cantidad_ordenada*precio_unitario as precio_total_linea',
'  from pipasgt.orden_compra_linea a',
'  where orden_compra = :P27_OC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(136889076760332554)
,p_name=>'APROBAR GT'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>136889076760332554
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75257243478530604)
,p_db_column_name=>'ORDEN_COMPRA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Orden Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75257557896530606)
,p_db_column_name=>'BODEGA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75255155343530589)
,p_db_column_name=>'ARTICULO'
,p_display_order=>14
,p_column_identifier=>'R'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75255572119530590)
,p_db_column_name=>'NOMBRE_ARTICULO'
,p_display_order=>24
,p_column_identifier=>'S'
,p_column_label=>'Nombre Articulo'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75255981187530590)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>34
,p_column_identifier=>'T'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75256362445530590)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>44
,p_column_identifier=>'U'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75256701630530590)
,p_db_column_name=>'PRECIO_TOTAL_LINEA'
,p_display_order=>54
,p_column_identifier=>'V'
,p_column_label=>'Precio Total Linea'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(136980816302838408)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'752579'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDEN_COMPRA:BODEGA:ARTICULO:NOMBRE_ARTICULO:CANTIDAD:PRECIO_UNITARIO:PRECIO_TOTAL_LINEA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75258390061530607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136888925712332554)
,p_button_name=>'Aprobar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Aprobar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75258706948530620)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136888925712332554)
,p_button_name=>'No_aprobar'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'No Aprobar'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75259112897530620)
,p_name=>'P27_OC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(136888925712332554)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75261114491530648)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCEDIMIENTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'pipasgt.Actualiza_oc_softland(:P27_OC);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75258390061530607)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75260361129530646)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'aprobar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update pipasgt.orden_compra set estado=''E'', confirmada=''S'',',
'usuario_confirma=(Select u_softland from  pa_usuarios where usuario=:APP_USER),fecha_hora_confir = sysdate',
' where ORDEN_COMPRA =:P27_OC;',
'',
'update pipasgt.orden_compra_linea set estado= ''E'' where orden_compra = :P27_OC;',
'',
' UPDATE PIPASGT.orden_compra  ',
'SET	confirmada = ''S''         ,  ',
'	usuario_confirma = ''GGENERAL'' , ',
'	fecha_hora_confir = SYSDATE          ',
'WHERE  orden_compra = :P27_OC;',
'',
'INSERT INTO	PIPASGT.usuarios_aprob_oc (orden_compra, usuario, fecha_aprob) ',
'VALUES ( :P27_OC, ''GGENERAL'',sysdate) ;',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75258390061530607)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75260707771530646)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'No_aprobar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' update pipasgt.orden_compra set estado=''N'',confirmada=''N'',usuario_no_aprueba=(Select u_softland from  pa_usuarios where usuario=:APP_USER)',
'  where ORDEN_COMPRA =:P27_oc;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75258706948530620)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75259520967530621)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'New'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75258390061530607)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75259951078530646)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'New_1'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75258706948530620)
);
end;
/
prompt --application/pages/page_00028
begin
wwv_flow_api.create_page(
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'PIPASCON'
,p_step_title=>'PIPASCON'
,p_step_sub_title=>'PIPASCON'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210413121405'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136615233750728530)
,p_plug_name=>'PIPASCON'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ORDEN_COMPRA,a.PROVEEDOR,b.nombre Nombre_Proveedor,a.BODEGA,a.MONEDA,a.FECHA,a.TOTAL_MERCADERIA,',
'a.TOTAL_IMPUESTO1,a.TOTAL_A_COMPRAR,a.ESTADO,a.DEPARTAMENTO,a.CREATEDBY USUARIO_CREA',
'from PIPASCON.orden_compra a',
'inner join pipascon.proveedor b on a.proveedor=b.proveedor',
' where a.ESTADO= ''P'' AND a.TOTAL_A_COMPRAR<=( Select max_auth from  pa_usuarios where usuario=:APP_USER) ',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(136615263199728530)
,p_name=>'PIPASCON'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'1462'
,p_internal_uid=>136615263199728530
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75263242626533949)
,p_db_column_name=>'ORDEN_COMPRA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Orden Compra'
,p_column_link=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:RP:OC:#ORDEN_COMPRA#'
,p_column_linktext=>'#ORDEN_COMPRA#'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORDEN_COMPRA'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75263673545533949)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75264047102533969)
,p_db_column_name=>'BODEGA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75264477485533969)
,p_db_column_name=>'MONEDA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Moneda'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75264814532533971)
,p_db_column_name=>'FECHA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75265214350533971)
,p_db_column_name=>'TOTAL_MERCADERIA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Total Mercaderia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75265656339533971)
,p_db_column_name=>'ESTADO'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75266000083533972)
,p_db_column_name=>'DEPARTAMENTO'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Departamento'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75266429517533972)
,p_db_column_name=>'USUARIO_CREA'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Usuario Crea'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75266837869533972)
,p_db_column_name=>'NOMBRE_PROVEEDOR'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'Nombre Proveedor'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75267246800533972)
,p_db_column_name=>'TOTAL_IMPUESTO1'
,p_display_order=>30
,p_column_identifier=>'M'
,p_column_label=>'Total Impuesto1'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75267634601533974)
,p_db_column_name=>'TOTAL_A_COMPRAR'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Total A Comprar'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(136624204641791595)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'752680'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDEN_COMPRA:PROVEEDOR:BODEGA:MONEDA:FECHA:TOTAL_MERCADERIA:ESTADO:DEPARTAMENTO:USUARIO_CREA:NOMBRE_PROVEEDOR:TOTAL_IMPUESTO1:TOTAL_A_COMPRAR'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75268478593533974)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136615233750728530)
,p_button_name=>'REGRESAR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Regresar'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75268882247534011)
,p_name=>'DESCRIPCION'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'abrir'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75269207817534022)
,p_event_id=>wwv_flow_api.id(75268882247534011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''DESCRIPCION'');'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(75269706858534022)
,p_event_id=>wwv_flow_api.id(75268882247534011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_ORDEN_COMPRA'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'N'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(75270187626534024)
,p_name=>'RECARGAR_MODAL'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_ORDEN_COMPRA'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_api.create_page(
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'APROBAR CONSIGNA'
,p_page_mode=>'MODAL'
,p_step_title=>'APROBAR CONSIGNA'
,p_step_sub_title=>'APROBAR CONSIGNA'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210512122057'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(136909239403345678)
,p_plug_name=>'PIPASCON'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select a.orden_compra,',
' a.articulo,',
' a.descripcion nombre_articulo,',
' a.bodega,',
' cantidad_ordenada cantidad,',
' precio_unitario,',
'  cantidad_ordenada*precio_unitario as precio_total_linea',
'  from pipascon.orden_compra_linea a',
'  where orden_compra =:OC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(136909370028345678)
,p_name=>'PIPASCON'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_owner=>'LP'
,p_internal_uid=>136909370028345678
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75272041912537515)
,p_db_column_name=>'ORDEN_COMPRA'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Orden Compra'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75272487087537515)
,p_db_column_name=>'ARTICULO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75272836861537520)
,p_db_column_name=>'NOMBRE_ARTICULO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre Articulo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75273237452537520)
,p_db_column_name=>'BODEGA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bodega'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75273637419537520)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75274051853537521)
,p_db_column_name=>'PRECIO_UNITARIO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Precio Unitario'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(75274482299537521)
,p_db_column_name=>'PRECIO_TOTAL_LINEA'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Precio Total Linea'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(136912795756350879)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'752748'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORDEN_COMPRA:ARTICULO:NOMBRE_ARTICULO:BODEGA:CANTIDAD:PRECIO_UNITARIO:PRECIO_TOTAL_LINEA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75275285828537523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136909239403345678)
,p_button_name=>'APROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'APROBAR'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(75275647941537523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(136909239403345678)
,p_button_name=>'NOAPROBAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'NO APROBAR'
,p_button_position=>'BELOW_BOX'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(75276014295537523)
,p_name=>'OC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(136909239403345678)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75278024572537528)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PROCEDIMINENTO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'pipascon.Actualiza_oc_softland(:OC);',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75275285828537523)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75277260080537524)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NoAprobar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' update pipascon.orden_compra set estado=''N'',confirmada=''N'',usuario_no_aprueba=(Select u_softland from  pa_usuarios where usuario=:APP_USER)',
'  where ORDEN_COMPRA =:OC;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75275647941537523)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75277615959537524)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'aprobar'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update pipascon.orden_compra set estado=''E'', confirmada=''S'',',
'usuario_confirma=(Select u_softland from  pa_usuarios where usuario=:APP_USER),fecha_hora_confir = sysdate',
' where ORDEN_COMPRA =:OC;',
'',
'update pipascon.orden_compra_linea set estado= ''E'' where orden_compra = :OC;',
'',
' UPDATE pipascon.orden_compra  ',
'SET	confirmada = ''S''         ,  ',
'	usuario_confirma = ''GGENERAL'' , ',
'	fecha_hora_confir = SYSDATE          ',
'WHERE  orden_compra = :OC;',
'',
'INSERT INTO	pipascon.usuarios_aprob_oc (orden_compra, usuario, fecha_aprob) ',
'VALUES ( :OC, ''GGENERAL'',sysdate) ;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75275285828537523)
,p_process_success_message=>'Aprovado'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75276422648537524)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'New'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75275285828537523)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(75276834325537524)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'New_1'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(75275647941537523)
);
end;
/
prompt --application/pages/page_00030
begin
wwv_flow_api.create_page(
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Data Load Source'
,p_step_title=>'Data Load Source'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210712152111'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88217815790642875)
,p_plug_name=>'Data Load Wizard Progress'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(88215088486642837)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88218140118642881)
,p_plug_name=>'Data Load Source'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88218978711642895)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88218140118642881)
,p_button_name=>'NEXT'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SIGUIENTE'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'javascript:apex.widget.textareaClob.uploadNonEmpty(''P30_COPY_PASTE'', ''NEXT'');'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88218523848642882)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88218140118642881)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(88249935294643038)
,p_branch_action=>'f?p=&APP_ID.:31:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(88218978711642895)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88220481436642935)
,p_name=>'P30_IMPORT_FROM'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'PASTE'
,p_prompt=>'Import From'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATA_LOAD_OPTION'
,p_lov=>'.'||wwv_flow_api.id(88219330857642898)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88220754964642949)
,p_name=>'P30_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_prompt=>'File Name'
,p_display_as=>'NATIVE_FILE'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322773937568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Name of the file to upload'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'REQUEST'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88222046367642964)
,p_name=>'P30_COPY_PASTE'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_prompt=>'Copy and Paste Delimited Data'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cHeight=>10
,p_cAttributes=>'nowrap="nowrap"'
,p_tag_attributes=>'spellcheck="false"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322773937568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88222552184642965)
,p_name=>'P30_SEPARATOR'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'\t'
,p_prompt=>'Separator'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322773937568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Identify a column separator character. Use <code>\t</code> for tab separators.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88223416306642965)
,p_name=>'P30_ENCLOSED_BY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'"'
,p_prompt=>'Optionally Enclosed By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Enter a delimiter character. You can use this character to delineate the starting and ending boundary of a data value. If you specify a delimiter character, Data Workshop ignores whitespace occurring before the starting and ending boundary of a data '
||'value. You can also use this option to enclose a data value with the specified delimiter character.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88224344818642968)
,p_name=>'P30_FIRST_ROW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'Y'
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:First Row has Column Names;Y'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Select this box if your data contains column names in the first row.'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88225232889642968)
,p_name=>'P30_SHOW_ADV_SETTINGS'
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_prompt=>'&nbsp;'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Use Advanced Settings;Y'
,p_label_alignment=>'RIGHT'
,p_field_alignment=>'LEFT-CENTER'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Display advanced settings for data loading: Currency Symbol, Decimal Characters, File Encoding or Date Formats',
''))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88229071424642990)
,p_name=>'P30_APP_DATE_FORMAT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'Y'
,p_prompt=>'Date / Number Formats to use'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'DATE_FORMAT_OPT'
,p_lov=>'.'||wwv_flow_api.id(88227863439642988)||'.'
,p_label_alignment=>'RIGHT-TOP'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_escape_on_http_input=>'Y'
,p_help_text=>'Choose whether to provide custom or to use standard format masks'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88242103841643020)
,p_name=>'P30_CHAR_SET'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'UTF-8'
,p_prompt=>'File Character Set'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DATA_LOAD_CHARSET'
,p_lov=>'.'||wwv_flow_api.id(88229829004642993)||'.'
,p_cSize=>30
,p_cMaxlength=>2000
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'DATA_LOAD.CHAR_SET_ITEM_HELP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88243072678643021)
,p_name=>'P30_CURRENCY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_item_default=>'$'
,p_prompt=>'Currency Symbol'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value',
'  from nls_session_parameters',
' where parameter = ''NLS_CURRENCY'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>'If your data contains international currency symbol, enter it here. For example, if your data has "&euro;1,234.56" or "&yen;1,234.56", enter "&euro;" or "&yen;".  Otherwise the data will not load correctly.'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88243971108643023)
,p_name=>'P30_GROUP_SEPARATOR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_prompt=>'Group Separator'
,p_source=>'apex_application.get_nls_group_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A group separator is a character that separates integer groups, for example to show thousands and millions.</p>',
'<p>Any character can be the group separator. The character specified must be single-byte, and the group separator must be different from any other decimal character. The character can be a space, but cannot be a numeric character or any of the follow'
||'ing:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88244865865643023)
,p_name=>'P30_DECIMAL_CHARACTER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(88218140118642881)
,p_prompt=>'Decimal Character'
,p_source=>'apex_application.get_nls_decimal_separator'
,p_source_type=>'FUNCTION'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>2
,p_cMaxlength=>2
,p_cHeight=>1
,p_cAttributes=>'nowrap="nowrap"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The decimal character separates the integer and decimal parts of a number.</p>',
'<p> Any character can be the decimal character. The character specified must be single-byte, and the decimal character must be different from group separator. The character can be a space, but cannot be any numeric character or any of the following c'
||'haracters:</p>',
'<ul class="noIndent">',
'<li>plus (+)</li>',
'<li>hyphen (-)</li> ',
'<li>less than sign (<)</li>',
'<li>greater than sign (>)</li> ',
'</ul>'))
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(88221715597642957)
,p_validation_name=>'Filename is not null'
,p_validation_sequence=>10
,p_validation=>'P30_FILE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P30_IMPORT_FROM'
,p_validation_condition2=>'UPLOAD'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(88218978711642895)
,p_associated_item=>wwv_flow_api.id(88220754964642949)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(88226141716642970)
,p_validation_name=>'Uploaded data is not null'
,p_validation_sequence=>20
,p_validation=>'P30_COPY_PASTE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#LABEL# must have some value.'
,p_validation_condition=>'P30_IMPORT_FROM'
,p_validation_condition2=>'PASTE'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(88218978711642895)
,p_associated_item=>wwv_flow_api.id(88222046367642964)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(88226477923642970)
,p_name=>'Show/Hide Advanced Settings'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SHOW_ADV_SETTINGS'
,p_condition_element=>'P30_SHOW_ADV_SETTINGS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88226929474642979)
,p_event_id=>wwv_flow_api.id(88226477923642970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_CURRENCY,P30_GROUP_SEPARATOR,P30_DECIMAL_CHARACTER,P30_APP_DATE_FORMAT,P30_CHAR_SET'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88227493188642988)
,p_event_id=>wwv_flow_api.id(88226477923642970)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_CURRENCY,P30_GROUP_SEPARATOR,P30_DECIMAL_CHARACTER,P30_APP_DATE_FORMAT,P30_CHAR_SET'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(88245603638643024)
,p_name=>'Import From Copy and Paste'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_IMPORT_FROM'
,p_condition_element=>'P30_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'PASTE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88246180732643024)
,p_event_id=>wwv_flow_api.id(88245603638643024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88246687843643024)
,p_event_id=>wwv_flow_api.id(88245603638643024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'\t'
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88247124946643026)
,p_event_id=>wwv_flow_api.id(88245603638643024)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_COPY_PASTE'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(88247524944643027)
,p_name=>'Import from File'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_IMPORT_FROM'
,p_condition_element=>'P30_IMPORT_FROM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'UPLOAD'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88248070381643027)
,p_event_id=>wwv_flow_api.id(88247524944643027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88248559837643027)
,p_event_id=>wwv_flow_api.id(88247524944643027)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_SEPARATOR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>','
,p_stop_execution_on_error=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(88249003411643027)
,p_event_id=>wwv_flow_api.id(88247524944643027)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_FILE_NAME'
,p_attribute_01=>'Y'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88249547338643035)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PARSE_UPLOADED_DATA'
,p_process_name=>'Parse Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(88214832653642712)
,p_attribute_02=>'P30_IMPORT_FROM'
,p_attribute_03=>'P30_SEPARATOR'
,p_attribute_04=>'P30_ENCLOSED_BY'
,p_attribute_05=>'P30_FIRST_ROW'
,p_attribute_06=>'P30_CURRENCY'
,p_attribute_07=>'P30_GROUP_SEPARATOR'
,p_attribute_08=>'P30_DECIMAL_CHARACTER'
,p_attribute_09=>'P30_FILE_NAME'
,p_attribute_10=>'P30_COPY_PASTE'
,p_attribute_11=>'P30_CHAR_SET'
,p_attribute_12=>'P30_APP_DATE_FORMAT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88218978711642895)
);
end;
/
prompt --application/pages/page_00031
begin
wwv_flow_api.create_page(
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Data / Table Mapping'
,p_step_title=>'Data / Table Mapping'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.rc-content-main {height: 400px; overflow: auto !important;}'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210709163916'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88250748203643042)
,p_plug_name=>'Data Load Wizard Progress'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(88215088486642837)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88251066491643042)
,p_plug_name=>'Data / Table Mapping'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DATA_UPLOAD_COLUMN_MAPPING'
,p_attribute_01=>wwv_flow_api.id(88214832653642712)
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88252229860643043)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(88251066491643042)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'SIGUIENTE'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88251960123643043)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88251066491643042)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'PREVIO'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88251426752643043)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88251066491643042)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(88253129897643045)
,p_branch_action=>'f?p=&APP_ID.:32:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(88252229860643043)
,p_branch_sequence=>10
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''SUBIR_TARIFAS'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''N'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(88253586414643045)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(88252229860643043)
,p_branch_sequence=>20
,p_branch_condition_type=>'FUNCTION_BODY'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'                   begin',
'                            for c1 in (select skip_validation',
'                                      from apex_appl_load_tables',
'                                      where name = ''SUBIR_TARIFAS'' and application_id = apex_application.g_flow_id )',
'                            loop',
'                                if c1.skip_validation = ''Y'' then return true;',
'                                else return false;',
'                                end if;',
'                            end loop;',
'                        end;'))
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88252704219643043)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PREPARE_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(88214832653642712)
,p_attribute_02=>'P33_INSERT_COUNT'
,p_attribute_03=>'P33_UPDATE_COUNT'
,p_attribute_04=>'P33_ERROR_COUNT'
,p_attribute_05=>'P33_REVIEW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88252229860643043)
);
end;
/
prompt --application/pages/page_00032
begin
wwv_flow_api.create_page(
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Data Validation'
,p_step_title=>'Data Validation'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210707110352'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88254371330643046)
,p_plug_name=>'Data Load Wizard Progress'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(88215088486642837)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_translate_title=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(88254666231643046)
,p_name=>'Data Validation'
,p_template=>wwv_flow_api.id(74270648744568935)
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-validation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'', ''FAILED'')',
' order by seq_id'))
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32767);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88255345492643063)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88255775758643071)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88256172189643071)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88256593186643071)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88256974146643071)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88257399271643073)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88257717661643073)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88258184843643073)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88258597157643073)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88258901408643074)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88259346420643074)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88259724594643074)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88260117089643076)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88260549688643077)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88260969421643077)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88261335644643077)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88261708148643077)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88262186507643077)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88262558967643079)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88262914664643079)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88263337816643079)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88263725790643079)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88264198886643081)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88264546196643081)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88264956286643081)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88265374856643081)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88265711790643082)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88266188432643082)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88266593981643082)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88266958795643082)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88267392631643084)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88267755248643084)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88268138698643084)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88268568896643084)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88268956016643085)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88269355759643085)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88269752298643088)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88270193433643088)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88270510244643090)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88270930246643090)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88271328432643090)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88271739013643090)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88272197956643091)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88272522808643091)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88272934517643091)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88273378007643091)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88274524325643093)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(88254666231643046)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88274246544643093)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88254666231643046)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'PREVIO'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88273733588643093)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88254666231643046)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'CANCELAR'
,p_button_position=>'REGION_TEMPLATE_PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(88275490113643096)
,p_branch_action=>'f?p=&APP_ID.:33:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(88274524325643093)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88275031205643095)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_api.id(88214832653642712)
,p_attribute_02=>'P33_INSERT_COUNT'
,p_attribute_03=>'P33_UPDATE_COUNT'
,p_attribute_04=>'P33_ERROR_COUNT'
,p_attribute_05=>'P33_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88274524325643093)
);
end;
/
prompt --application/pages/page_00033
begin
wwv_flow_api.create_page(
 p_id=>33
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Data Load Results'
,p_step_title=>'Data Load Results'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210709170114'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88276243688643096)
,p_plug_name=>'Data Load Wizard Progress'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(88215088486642837)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(74320990925568979)
,p_translate_title=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88276507069643096)
,p_plug_name=>'Data Load Results'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_plug_template=>wwv_flow_api.id(74270648744568935)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(88278896177643116)
,p_name=>'Failed Records'
,p_template=>wwv_flow_api.id(74270648744568935)
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c047 in (''FAILED'') ',
' order by seq_id'))
,p_display_when_condition=>'P33_ERROR_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88279557746643123)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88279901317643123)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88280369593643124)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
,p_display_as=>'WITHOUT_MODIFICATION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88280717848643124)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88281149383643124)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88281557082643126)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88281933378643126)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88282381117643126)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88282788377643126)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88283182491643126)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88283595058643127)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88283905077643127)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88284327966643127)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88284733503643127)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88285173603643129)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88285538176643129)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88285993932643129)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88286386803643129)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88286736886643130)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88287176760643130)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88287551965643130)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88287939853643130)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88288368436643132)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88288710435643141)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88289116033643141)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88289550955643141)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88289965874643141)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88290386949643143)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88290767935643143)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88291176111643143)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88291539935643144)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88291934559643144)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88292340030643144)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88292791722643144)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88293143575643146)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88293549255643146)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88293904901643146)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88294332685643148)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88294789403643148)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88295196602643148)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88295598142643148)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88295978360643149)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88296306953643149)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88296702164643149)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88297115566643149)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88297557479643152)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88297936104643152)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(88298638213643154)
,p_name=>'Records Changed by Another User.'
,p_template=>wwv_flow_api.id(74270648744568935)
,p_display_sequence=>30
,p_region_css_classes=>'data-upload-result'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;" '
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       wwv_flow_lang.system_message( ''DATA_LOAD.'' || c049 ) as action,',
'       c048 as error,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''REVIEW'') ',
' order by seq_id'))
,p_display_when_condition=>'P33_REVIEW_COUNT'
,p_display_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32667);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    l_string := l_string ||'':''|| wwv_flow_lang.system_message(''ERROR'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88299306099643157)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88299763596643157)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88300199663643159)
,p_query_column_id=>3
,p_column_alias=>'ERROR'
,p_column_display_sequence=>3
,p_column_heading=>'ERROR'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88300533929643159)
,p_query_column_id=>4
,p_column_alias=>'C001'
,p_column_display_sequence=>4
,p_column_heading=>'C001'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88300961829643159)
,p_query_column_id=>5
,p_column_alias=>'C002'
,p_column_display_sequence=>5
,p_column_heading=>'C002'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88301351170643159)
,p_query_column_id=>6
,p_column_alias=>'C003'
,p_column_display_sequence=>6
,p_column_heading=>'C003'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88301779872643162)
,p_query_column_id=>7
,p_column_alias=>'C004'
,p_column_display_sequence=>7
,p_column_heading=>'C004'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88302135688643162)
,p_query_column_id=>8
,p_column_alias=>'C005'
,p_column_display_sequence=>8
,p_column_heading=>'C005'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88302549667643162)
,p_query_column_id=>9
,p_column_alias=>'C006'
,p_column_display_sequence=>9
,p_column_heading=>'C006'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88302983570643163)
,p_query_column_id=>10
,p_column_alias=>'C007'
,p_column_display_sequence=>10
,p_column_heading=>'C007'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88303395130643163)
,p_query_column_id=>11
,p_column_alias=>'C008'
,p_column_display_sequence=>11
,p_column_heading=>'C008'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88303738073643163)
,p_query_column_id=>12
,p_column_alias=>'C009'
,p_column_display_sequence=>12
,p_column_heading=>'C009'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88304145183643163)
,p_query_column_id=>13
,p_column_alias=>'C010'
,p_column_display_sequence=>13
,p_column_heading=>'C010'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88304551399643165)
,p_query_column_id=>14
,p_column_alias=>'C011'
,p_column_display_sequence=>14
,p_column_heading=>'C011'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88304927501643165)
,p_query_column_id=>15
,p_column_alias=>'C012'
,p_column_display_sequence=>15
,p_column_heading=>'C012'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88305323670643165)
,p_query_column_id=>16
,p_column_alias=>'C013'
,p_column_display_sequence=>16
,p_column_heading=>'C013'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88305754904643165)
,p_query_column_id=>17
,p_column_alias=>'C014'
,p_column_display_sequence=>17
,p_column_heading=>'C014'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88306183134643166)
,p_query_column_id=>18
,p_column_alias=>'C015'
,p_column_display_sequence=>18
,p_column_heading=>'C015'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88306542965643166)
,p_query_column_id=>19
,p_column_alias=>'C016'
,p_column_display_sequence=>19
,p_column_heading=>'C016'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88306995685643166)
,p_query_column_id=>20
,p_column_alias=>'C017'
,p_column_display_sequence=>20
,p_column_heading=>'C017'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88307378463643166)
,p_query_column_id=>21
,p_column_alias=>'C018'
,p_column_display_sequence=>21
,p_column_heading=>'C018'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88307752959643168)
,p_query_column_id=>22
,p_column_alias=>'C019'
,p_column_display_sequence=>22
,p_column_heading=>'C019'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88308143145643168)
,p_query_column_id=>23
,p_column_alias=>'C020'
,p_column_display_sequence=>23
,p_column_heading=>'C020'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88308538615643168)
,p_query_column_id=>24
,p_column_alias=>'C021'
,p_column_display_sequence=>24
,p_column_heading=>'C021'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88308918010643168)
,p_query_column_id=>25
,p_column_alias=>'C022'
,p_column_display_sequence=>25
,p_column_heading=>'C022'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88309389927643169)
,p_query_column_id=>26
,p_column_alias=>'C023'
,p_column_display_sequence=>26
,p_column_heading=>'C023'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88309726654643169)
,p_query_column_id=>27
,p_column_alias=>'C024'
,p_column_display_sequence=>27
,p_column_heading=>'C024'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88310153017643169)
,p_query_column_id=>28
,p_column_alias=>'C025'
,p_column_display_sequence=>28
,p_column_heading=>'C025'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88310546086643169)
,p_query_column_id=>29
,p_column_alias=>'C026'
,p_column_display_sequence=>29
,p_column_heading=>'C026'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88310957655643171)
,p_query_column_id=>30
,p_column_alias=>'C027'
,p_column_display_sequence=>30
,p_column_heading=>'C027'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88311303209643171)
,p_query_column_id=>31
,p_column_alias=>'C028'
,p_column_display_sequence=>31
,p_column_heading=>'C028'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88311744776643171)
,p_query_column_id=>32
,p_column_alias=>'C029'
,p_column_display_sequence=>32
,p_column_heading=>'C029'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88312165164643171)
,p_query_column_id=>33
,p_column_alias=>'C030'
,p_column_display_sequence=>33
,p_column_heading=>'C030'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88312547735643176)
,p_query_column_id=>34
,p_column_alias=>'C031'
,p_column_display_sequence=>34
,p_column_heading=>'C031'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88312931080643176)
,p_query_column_id=>35
,p_column_alias=>'C032'
,p_column_display_sequence=>35
,p_column_heading=>'C032'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88313392308643176)
,p_query_column_id=>36
,p_column_alias=>'C033'
,p_column_display_sequence=>36
,p_column_heading=>'C033'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88313773205643176)
,p_query_column_id=>37
,p_column_alias=>'C034'
,p_column_display_sequence=>37
,p_column_heading=>'C034'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88314198145643177)
,p_query_column_id=>38
,p_column_alias=>'C035'
,p_column_display_sequence=>38
,p_column_heading=>'C035'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88314562650643177)
,p_query_column_id=>39
,p_column_alias=>'C036'
,p_column_display_sequence=>39
,p_column_heading=>'C036'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88314911419643177)
,p_query_column_id=>40
,p_column_alias=>'C037'
,p_column_display_sequence=>40
,p_column_heading=>'C037'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88315324490643177)
,p_query_column_id=>41
,p_column_alias=>'C038'
,p_column_display_sequence=>41
,p_column_heading=>'C038'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88315712281643179)
,p_query_column_id=>42
,p_column_alias=>'C040'
,p_column_display_sequence=>42
,p_column_heading=>'C040'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88316108908643179)
,p_query_column_id=>43
,p_column_alias=>'C041'
,p_column_display_sequence=>43
,p_column_heading=>'C041'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88316568500643179)
,p_query_column_id=>44
,p_column_alias=>'C042'
,p_column_display_sequence=>44
,p_column_heading=>'C042'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88316969719643179)
,p_query_column_id=>45
,p_column_alias=>'C043'
,p_column_display_sequence=>45
,p_column_heading=>'C043'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88317317967643180)
,p_query_column_id=>46
,p_column_alias=>'C044'
,p_column_display_sequence=>46
,p_column_heading=>'C044'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(88317740179643180)
,p_query_column_id=>47
,p_column_alias=>'C045'
,p_column_display_sequence=>47
,p_column_heading=>'C045'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88058867777492109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88276507069643096)
,p_button_name=>'ACTUALIZAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Actualizar'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(88276973224643098)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88276507069643096)
,p_button_name=>'FINISH'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'TERMINAR'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88277400988643110)
,p_name=>'P33_INSERT_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88276507069643096)
,p_prompt=>'Inserted Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88277728938643113)
,p_name=>'P33_UPDATE_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(88276507069643096)
,p_prompt=>'Updated Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88278145534643113)
,p_name=>'P33_ERROR_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(88276507069643096)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Failed Row(s):'
,p_source=>'select count(*) c from apex_collections where collection_name = ''LOAD_CONTENT'' and c047 = ''FAILED'''
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(88278516618643116)
,p_name=>'P33_REVIEW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(88276507069643096)
,p_prompt=>'To be Reviewed Row(s):'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_input=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(88058622484492107)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'proceso'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE TTARIFAZONATEMP SET DEPOSIT =(SELECT CODIGO FROM CODIGO_PLANTA WHERE DEPOSIT=PLANTA), ',
'MODE_TRANSPORT = (SELECT CODIGO FROM TIPO_TRANSPORTE_TARIFA WHERE MODE_TRANSPORT =TIPO),',
'DISPATCH_GROUP =(SELECT CODIGO FROM TIPO_TRANSPORTADO WHERE DISPATCH_GROUP=TIPO);',
'commit;',
'begin',
'actualiza_tarifa;',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(88058867777492109)
);
end;
/
prompt --application/pages/page_00034
begin
wwv_flow_api.create_page(
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Tipos Producto'
,p_step_title=>'Tipos Producto'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210714092452'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89057298508191338)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74269559247568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ROWID", ',
'"CDTIPCOMB",',
'"DSTIPCOMB",',
'"AUX1",',
'"CDEMPRESA",',
'"GRUPO",',
'"CDDELEGACION"',
'from "#OWNER#"."TTIPCOMB" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(89057617172191339)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:35:&APP_SESSION.::::P35_ROWID:#ROWID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_owner=>'LP'
,p_internal_uid=>89057617172191339
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89057751195191352)
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
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89058043314191372)
,p_db_column_name=>'CDTIPCOMB'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Cdtipcomb'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89058416554191374)
,p_db_column_name=>'DSTIPCOMB'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Dstipcomb'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89058830774191380)
,p_db_column_name=>'AUX1'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Aux1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89059280676191381)
,p_db_column_name=>'CDEMPRESA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cdempresa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89059600847191383)
,p_db_column_name=>'GRUPO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Grupo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(89060037726191385)
,p_db_column_name=>'CDDELEGACION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Cddelegacion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(89062933764192322)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'890630'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:CDTIPCOMB:DSTIPCOMB:AUX1:CDEMPRESA:GRUPO:CDDELEGACION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(89061349120191388)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(89057298508191338)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:35'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(89060430381191386)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(89057298508191338)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(89060932937191388)
,p_event_id=>wwv_flow_api.id(89060430381191386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(89057298508191338)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(89061771837191389)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(89061349120191388)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(89062261496191389)
,p_event_id=>wwv_flow_api.id(89061771837191389)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(89057298508191338)
,p_stop_execution_on_error=>'Y'
);
end;
/
prompt --application/pages/page_00035
begin
wwv_flow_api.create_page(
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Crear'
,p_page_mode=>'MODAL'
,p_step_title=>'Crear'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20220204201549'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89047145888191197)
,p_plug_name=>'Form on TTIPCOMB'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(89047852720191210)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74250185158568918)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(89048249324191210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(89047852720191210)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(89047618226191210)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(89047852720191210)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P35_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_grid_new_grid=>false
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(89047535095191210)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(89047852720191210)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P35_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_grid_new_grid=>false
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89050680633191246)
,p_name=>'P35_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89051025307191269)
,p_name=>'P35_CDTIPCOMB'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cdtipcomb'
,p_source=>'CDTIPCOMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322773937568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89051307895191283)
,p_name=>'P35_DSTIPCOMB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Producto'
,p_source=>'DSTIPCOMB'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89051755930191283)
,p_name=>'P35_AUX1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('Descripci\00F3n Adicional')
,p_source=>'AUX1'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89052157530191285)
,p_name=>'P35_CDEMPRESA'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_item_default=>'01'
,p_source=>'CDEMPRESA'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89052502130191285)
,p_name=>'P35_GRUPO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Grupo'
,p_source=>'GRUPO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:LIMPIOS;1,GRANELES;2'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(89052992270191289)
,p_name=>'P35_CDDELEGACION'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(89047145888191197)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Delegacion'
,p_source=>'CDDELEGACION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:SUR;01,NORTE;02'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(74322440669568995)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(89048328952191210)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(89048249324191210)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(89049192950191236)
,p_event_id=>wwv_flow_api.id(89048328952191210)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(89054609076191294)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from TTIPCOMB'
,p_attribute_02=>'TTIPCOMB'
,p_attribute_03=>'P35_ROWID'
,p_attribute_04=>'ROWID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(89055074711191300)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of TTIPCOMB'
,p_attribute_02=>'TTIPCOMB'
,p_attribute_03=>'P35_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(89055419938191300)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(89055850373191303)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(74344860762569024)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'EDITAR_TARIFAS - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(74230746309568895)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'LP'
,p_last_upd_yyyymmddhh24miss=>'20210409081413'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74349083387569048)
,p_plug_name=>'EDITAR_TARIFAS'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(74270151957568935)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(74353799643569062)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(74349083387569048)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(74249187333568917)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(74351887176569057)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(74349083387569048)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(74322980121568999)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_grid=>false
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74349433886569051)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(74349083387569048)
,p_prompt=>'username'
,p_placeholder=>'username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322129419568981)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74349837564569051)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(74349083387569048)
,p_prompt=>'password'
,p_placeholder=>'password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322129419568981)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(74350965512569052)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(74349083387569048)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(74350162206569051)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(74322129419568981)
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
 p_id=>wwv_flow_api.id(74352617031569062)
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
 p_id=>wwv_flow_api.id(74352264089569059)
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
 p_id=>wwv_flow_api.id(74353414452569062)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(74353042887569062)
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
 p_id=>wwv_flow_api.id(75023942192001107)
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
