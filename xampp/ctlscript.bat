@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist C:\Users\Mely Mel\Desktop\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\server\hsql-sample-database\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\ingres\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\mysql\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\postgresql\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\apache\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\apache\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\openoffice\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\apache-tomcat\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\resin\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\resin\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\jetty\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist C:\Users\Mely Mel\Desktop\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\lucene\scripts\ctl.bat START)
if exist C:\Users\Mely Mel\Desktop\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist C:\Users\Mely Mel\Desktop\xampp\third_application\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\third_application\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\lucene\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist C:\Users\Mely Mel\Desktop\xampp\subversion\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\subversion\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\jetty\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\jetty\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\hypersonic\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\resin\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\resin\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT C:\Users\Mely Mel\Desktop\xampp\apache-tomcat\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\openoffice\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\openoffice\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\apache\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\apache\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\ingres\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\ingres\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\mysql\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\mysql\scripts\ctl.bat STOP)
if exist C:\Users\Mely Mel\Desktop\xampp\postgresql\scripts\ctl.bat (start /MIN /B C:\Users\Mely Mel\Desktop\xampp\postgresql\scripts\ctl.bat STOP)

:end

