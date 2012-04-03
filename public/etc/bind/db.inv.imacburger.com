@	IN	SOA	imacburger.com.	root.simpson.com. (
	1	;	Serial
	604800	;	Refresh
	86400	;	Retry
	2419200	;	Expire
	604800 )	;	Negative Cache TTL
;
@		IN	NS	public
10.0.28		IN	PTR	public.imacburger.com.
10.0.18		IN	PTR	secret.imacburger.com.
