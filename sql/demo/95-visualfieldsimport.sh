#!/bin/bash -l

## NOTE: This script assumes it is in protected/modules/sample/sql/demo. If you move it then relative paths will not work!

# Find fuill folder path where this script is located, then find root folder
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
# Determine root folder for site - all relative paths will be built from here
SCRIPTDIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
WROOT="$( cd -P "$SCRIPTDIR/../../../../../" && pwd )"
MODULEROOT=$WROOT/protected/modules

rm -rf $WROOT/protected/runtime/fields

mkdir $WROOT/protected/runtime/fields
mkdir $WROOT/protected/runtime/fields/legacy
mkdir $WROOT/protected/runtime/fields/out
mkdir $WROOT/protected/runtime/fields/err
mkdir $WROOT/protected/runtime/fields/dups

cp $MODULEROOT/OphInVisualfields/tests/fields/legacy/* $WROOT/protected/runtime/fields/legacy/

php $WROOT/protected/yiic importlegacyvf import --importDir=$WROOT/protected/runtime/fields/legacy --archiveDir=$WROOT/protected/runtime/fields/out --errorDir=$WROOT/protected/runtime/fields/err --dupDir=$WROOT/protected/runtime/fields/dups

chown -R www-data:www-data $WROOT/protected/runtime/fields
chmod -R 774 $WROOT/protected/runtime/fields
