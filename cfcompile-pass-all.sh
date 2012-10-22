#  Bradley Wayne Moore
#	bwmoore@orangexception.com
#	orangexception.com
#	@orangexception

echo	".,;:=/|\=:;,."
echo	"  cfcompile  "
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."

#	Arguments
#	1.	CFUSION_HOME
#	2.	J2EEJAR
#	3.	WEBINF
#	4.	WWWROOT
#	5.	APP
#	6.	APP_COMPILED
#	7.	JAVA_HOME
echo	".,;:=/|\=:;,."
echo	"  Arguments  "
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."

CFUSION_HOME=$1
J2EEJAR=$2
WEBINF=$3
WWWROOT=$4
APP=$5
APP_COMPILED=$6
JAVA_HOME=$7

echo	"CFUSION_HOME:" $CFUSION_HOME
echo	"J2EEJAR:" $J2EEJAR
echo	"WEBINF:" $WEBINF
echo	"WWWROOT:" $WWWROOT
echo	"APP:" $APP
echo	"APP_COMPILED:" $APP_COMPILED
echo	"JAVA_HOME:" $JAVA_HOME

#	Compile ColdFusion into Java ByteCode
echo	".,;:=/|\=:;,."
echo	"   Compile   "
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."
_JAVACMD=$JAVA_HOME
${_JAVACMD} -cp "$J2EEJAR:$WEBINF/lib/cfmx_bootstrap.jar:$WEBINF/lib/cfx.jar" -Dcoldfusion.classPath=$CFUSION_HOME/lib/updates,$CFUSION_HOME/lib -Dcoldfusion.libPath=$CFUSION_HOME/lib coldfusion.tools.CommandLineInvoker Compiler -deploy -webinf $WEBINF -webroot $WWWROOT -cfroot $CFUSION_HOME -srcdir $APP -deploydir $APP_COMPILED

echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."
echo	".,;:=/|\=:;,."

exit 0