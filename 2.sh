#echo $?
if `pwd > log.txt` 
then echo "complete"
else echo "failed"
fi
