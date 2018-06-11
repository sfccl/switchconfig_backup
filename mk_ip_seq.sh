var1=192.168.81.
var2=.cfg
for i in {1..254}
do 
 echo $var1$i" "$i$var2 >> ip.txt
done

