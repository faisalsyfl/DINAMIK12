Description of Zend framework 1.10.6 import into Moodle
Please note the zend framework is severly crippled - everything not needed in /webservice/* is removed.

Do not use outside of our /webservice/* or mnet !!


Changes:
* lots of files removed
* small fix to error reporting in reflection (MDL-21460, ZF-8980)
* SOAP and XMLRPC servers overwrite the fault() functions
* synced and renamed file to version in ZF 1.10.6 (MDL-30603, ZF-11080)
* import security patch (MDL-34284, ZF2012-01, ZF-12293)
