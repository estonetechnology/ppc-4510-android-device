#!/system/bin/sh

UTC=`getprop ro.build.date.utc`

if [ ! -e /data/system.notfirstrun.$UTC ] ; then
       for file in /system/preinstall/*.apk
       do
               /system/bin/sh /system/bin/pm install -r -g -d $file
       done
       touch /data/system.notfirstrun.$UTC
        echo "preinstall ok"
else
        echo "do nothing"
fi
