#VSN=`grep -oe 'vsn,\s*\"\(.*\)\"' ../ktuo/ebin/ktuo.app | sed -r 's|[^\"]*\"(.\..\..)\..\"|\1|'`
VSN=`grep -oe 'vsn,\s*\"\(.*\)\"' ../ktuo/ebin/ktuo.app | sed -r 's|[^\"]*\"([^\"]*)\"|\1|'`
echo -n $VSN

