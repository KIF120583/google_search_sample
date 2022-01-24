*** Setting ***
Documentation	this is a sample to google ruckus wireless keyword
Library    SeleniumLibrary
Test Setup	build_test_env
Test Teardown	clear_test_env
Suite Setup	build_suite_env
Suite Teardown	clear_suite_env
*** Variable ***
${search_site}    ruckus wireless
${GOOGLEURL}      https://www.google.com.tw
${SEARCH_INPUT_FIELD}    //*[(@class="gLFyf gsfi")]
*** Test Cases ***
sample_001
    Open_Browser_Google_Search
    Input Text    ${SEARCH_INPUT_FIELD}    ${search_site}
    Press Keys  None  ENTER
    Click element    //*/h3[text()="Ruckus - CommScope"]
	Title Should Be    RUCKUS® | CommScope
	Capture Page Screenshot    capture.png
*** Keyword ***
build_suite_env
	[Documentation]	build test suite env
	Log    build_suite_env
clear_suite_env
	[Documentation]	clear test suite env
	Log    clear_suite_env
build_test_env
	[Documentation]	buile test env
	Log    build_test_env
clear_test_env
	[Documentation]	clear test env
	Log    clear_test_env
	Close Browser
Open_Browser_Google_Search
    [Documentation]    Open browser and go to search page
    Create Webdriver  Chrome  chrome  executable_path=chromedriver.exe
    Go To     ${GOOGLEURL}
    Title Should Be    Google