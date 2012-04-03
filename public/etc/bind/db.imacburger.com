@	IN	SOA	imacburger.com.	root.imacburger.com.	(
	1		; Serial
	604800		; Refresh
	86400		; Retry
	2419200		; Expire
	604800	)	; Negative Cache TTL
;
@	IN	NS		public
@	IN	NS		routeur
routeur IN	A		10.28.0.1
public	IN	A		10.28.0.10
secret	IN	A		10.18.0.10
boss	IN	CNAME		secret
