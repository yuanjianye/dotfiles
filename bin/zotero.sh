ZOTERO_PATH=$(find $HOME/.mozilla/firefox -maxdepth 2 -name "zotero")/storage
#ZOTERO_LAST_PATH=`ls $ZOTERO_PATH -t|sed -n '1p'`
ZOTERO_HTML_FILE=`find $ZOTERO_PATH -size +1000c|grep "htm.$"`
ZOTERO_HTML_FILE_TIME=`ls -t $ZOTERO_HTML_FILE`
w3m $ZOTERO_HTML_FILE_TIME

