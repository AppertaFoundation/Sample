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

echo "  - Generating Unique Codes..."
php $WROOT/protected/yiic generateuniquecode

echo "  - Generating Operation Booking Sessions"
php $WROOT/protected/yiic generatesessions
