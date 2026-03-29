#!/usr/bin/env sh
# /.../${project.artifactId}/java.sh
SELF=$(readlink -f $0)
export JAVA_HOME=$(dirname $SELF)
if [ -x "$JAVA_HOME/bin/$1" ]; then
  CMD=$1
  shift
  exec $JAVA_HOME/bin/$CMD "$@"
else
  exec $JAVA_HOME/bin/java "$@"
fi