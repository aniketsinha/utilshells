#!/bin/sh
#Update jars with class files
#Here class files are present in $WORKSPACE/output which neeed to be updated in $BUILD_LIB_DIR/JarName.jar file

BUILD_LIB_DIR=/path/to/lib
WORKSPACE=/Users/aniket/Documents/workspace/project_name

cd $WORKSPACE/output
jar -uvf $BUILD_LIB_DIR/JarName.jar com/
