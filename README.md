
 - Create directories ssl and data: 
   mkdir ssl data 
 - Generate SSL certs by certbot: 
   certbot certonly --standalone --email gergund@gmail.com -d vpn.itwnik.com
 - Copy SSL certs to the volume directory: 
   cp /etc/letsencrypt/archive/vpn.itwnik.com/fullchain1.pem ./ssl/fullchain1.pem
   cp /etc/letsencrypt/archive/vpn.itwnik.com/privkey1.pem   ./ssl/privkey1.pem
 - Spin up Docker container: 
   ./run.sh
