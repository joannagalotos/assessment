Invalid Login Assessment
=============

This repository includes test cases for invalid login


Requirements
============

* Python>=2.7.10
* robotframework>=3.2.1
* robotframework-selenium2library>=3.0.0
* webdriver = chrome, ff, etc


Installation of requirements
============

pip install robotframework
pip install robotframework-selenium2library
Download the webdriver for the browser you want to use and paste it in the folder where other libraries are installed.

Note: Make sure that the installation path of all the scripts and libraries are included in environmental variables.


Steps on how to run all the test cases:

1.) Prepare the needed parameters to run the test cases, here are are the mandatory parameters needed:

BROWSER = e.g. chrome, firefox, IE11 but default is chrome
Output_path = output path where you want to see the results, log and output file e.g C:\Users\user\Documents\

2.) Go to command prompt and go to the location where you clone the repository, then type cd assessment\Testsuites.

robot -N assessment -v BROWSER:chrome -d C:\Users\user\Documents\ * 

