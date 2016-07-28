ZOTERO_PATH=~/.mozilla/firefox/n8vlun98.default/zotero/storage/
#ZOTERO_LAST_PATH=`ls $ZOTERO_PATH -t|sed -n '1p'`
ZOTERO_HTML_FILE=`find $ZOTERO_PATH -size +1000c|grep "htm.$"`
ZOTERO_HTML_FILE_TIME=`ls -t $ZOTERO_HTML_FILE`
w3m $ZOTERO_HTML_FILE_TIME

