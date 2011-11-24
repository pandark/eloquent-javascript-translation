#!/bin/bash
cd "$(dirname $0)"
./render book

cp book web/book.txt
if [ -f "web/Eloquent JavaScript.zip" ] ; then
	rm "web/Eloquent JavaScript.zip"
fi
cp -r "web" "Eloquent JavaScript"
zip -qr "web/Eloquent JavaScript.zip" "Eloquent JavaScript" -x "Eloquent JavaScript/.htaccess"
rm -Rf "Eloquent JavaScript"

