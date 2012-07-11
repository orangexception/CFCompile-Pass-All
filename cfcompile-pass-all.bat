@echo	off
echo	".,;:=/|\=:;,."
echo	"  cfcompile  "
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."

@rem	#	Arguments
@rem	1.	CFUSION_HOME
@rem	2.	J2EEJAR
@rem	3.	WEBINF
@rem	4.	WWWROOT
@rem	5.	APP
@rem	6.	APP_COMPILED

set	CFUSION_HOME=%1
set	J2EEJAR=%2
set	WEBINF=%3
set	WWWROOT=%4
set	APP=%5
set	APP_COMPILED=%6

echo	"CFUSION_HOME: %CFUSION_HOME%"
echo	"J2EEJAR: %J2EEJAR%"
echo	"WEBINF: %WEBINF%"
echo	"WWWROOT: %WWWROOT%"
echo	"APP: %APP%"
echo	"APP_COMPILED: %APP_COMPILED%"

@rem	Find Java
echo	".,;:=/|\=:;,."
echo	"  Find Java  "
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."
CALL %CFUSION_HOME%\bin\findjava.bat

@rem	Compile ColdFusion into Java ByteCode
echo	".,;:=/|\=:;,."
echo	"   Compile   "
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."
%JAVACMD% -cp "%J2EEJAR%;%WEBINF%\lib\cfmx_bootstrap.jar;%WEBINF%\lib\cfx.jar" -Dcoldfusion.classPath=%CFUSION_HOME%/lib/updates,%CFUSION_HOME%/lib -Dcoldfusion.libPath=%CFUSION_HOME%/lib coldfusion.tools.CommandLineInvoker Compiler -webinf %WEBINF% -webroot %WWWROOT% -cfroot %CFUSION_HOME% -d -srcdir %APP% -deploydir %APP_COMPILED%

echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."
