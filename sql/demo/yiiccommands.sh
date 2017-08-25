#!/bin/bash
dir=$PWD

cd /var/www/openeyes/protected

echo "  - Generating Unique Codes..."
php ./yiic generateuniquecode

echo "  - Generating Operation Booking Sessions"
php ./yiic generatesessions

cd "$dir"
