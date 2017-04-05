#!/bin/sh
#Update jars with class files
#Here class files are present in $WORKSPACE/output which neeed to be updated in $BUILD_LIB_DIR/JarName.jar file
#EDIT: If only Conditional.jar needs to be updated, pass any param: eg. `sh updateJars.sh a`

BUILD_LIB_DIR=/path/to/lib
WORKSPACE=/Users/aniket/Documents/workspace/project_name

if [ $# != 0 ]
then
  echo Params received, updating only conditional jar: Conditional.jar

  cd $WORKSPACE/conditional
  jar -uvf $BUILD_LIB_DIR/Conditional.jar com/

else
 echo no params passed, updating all jars
 
 cd $WORKSPACE/output
 jar -uvf $BUILD_LIB_DIR/JarName.jar com/
 
 cd $WORKSPACE/conditional
 jar -uvf $BUILD_LIB_DIR/Conditional.jar com/
fi
