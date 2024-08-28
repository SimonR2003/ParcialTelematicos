;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	miempresa.com. root.miempresa.com. (
			      4		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.miempresa.com.
ns	IN	A	192.168.50.4
maestro IN	CNAME	ns
esclavo	IN	A	192.168.50.3
