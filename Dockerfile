from nginx
workdir /usr/share/nginx/html
copy build/ .
cmd ["nginx", "-g", "daemon off;"]
