#!/bin/bash
cd "$(dirname $0)"
./render book

## Hack to localize the \\cxxx links text since I (Pandark) don't know haskell :o)
for chapter_name in chapter1 chapter2 chapter3 chapter4 chapter5 \
	chapter6 chapter7 chapter8 chapter9 chapter10 \
	chapter11 chapter12 chapter13 chapter14 \
	appendix1 appendix2 ; do
sed -e 's/\([Cc]\)hapter \([0-9]\{1,2\}\)/\1hapitre \2/g' \
	-i "web/$chapter_name.html"
done
## End of the hack

cp book web/book.txt
if [ -f "web/Eloquent JavaScript.zip" ] ; then
	rm "web/Eloquent JavaScript.zip"
fi
cp -r "web" "Eloquent JavaScript"
zip -qr "web/Eloquent JavaScript.zip" "Eloquent JavaScript" -x "Eloquent JavaScript/.htaccess"
rm -Rf "Eloquent JavaScript"

