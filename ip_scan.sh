#!/bin/bash

>result;

 ip_1=0;
 ip_2=0;

while [ $ip_2 -le 100 ]
do 
#for ip_2 in {0..255..1}
#do
 	ip_1=0;
	while [ $ip_1 -le 255 ]
	
	#for ip_1 in {0..255..1}
	do
		ip_addr=192.168.$ip_2.$ip_1;
		#echo $ip_addr;
		#echo $ip_2;
		#echo $ip_1;
		(ping -c1 $ip_addr >/dev/null 2>&1) && (echo $ip_addr >> result) &
	
		ip_1=$(($ip_1+1));
	
	done	
	ip_2=$(($ip_2+1));
done
