*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
*** Test Cases ***
regTest
    open browser    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html  chrome
    drag and drop  id:box6  id:box106
    Sleep   3
    close browser