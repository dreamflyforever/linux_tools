echo $1
while true
do
    ps -ef | grep -w $1 | grep -v "grep"
    if [ "$?" -eq 1 ]
        then
        $1 #start your application
        echo "process has been restarted!"
    else
        echo "process already started!"
    fi
    sleep 10
done
