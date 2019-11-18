    
Run strapi using docker, from you project directory,

note: Change to path (R:\Code\headless-cms-toontakeway) to be the same as your desired folder 
    
on a mac/linux

docker run -it \
-e DATABASE_CLIENT=sqlite \
-e DATABASE_NAME=strapi \
-e DATABASE_USERNAME=strapi \
-e DATABASE_PASSWORD=strapi \
-p 1337:1337 \
-v \`pwd\`/headless-cms-toontakeway:/srv/app \
strapi/strapi:1.0


on windows

docker run -it ^
-e DATABASE_NAME=strapi ^
-e DATABASE_USERNAME=strapi ^
-e DATABASE_PASSWORD=strapi ^
-p 1337:1337 ^
-v R:\Code\headless-cms-toontakeway:/srv/app ^
toontakeaway:1.0

docker run -it -e DATABASE_NAME=strapi -e DATABASE_USERNAME=strapi -e DATABASE_PASSWORD=strapi -p 1337:1337 -v R:\Code\headless-cms-toontakeway:/srv/app toontakeaway:1.0