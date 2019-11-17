    
    Run strapi using docker, from you project directory,
    
on a mac

docker run -it \
-e DATABASE_CLIENT=sqlite \
-e DATABASE_NAME=strapi \
-e DATABASE_USERNAME=strapi \
-e DATABASE_PASSWORD=strapi \
-p 1337:1337 \
-v \`pwd\`/headless-cms-toontakeway:/srv/app \
strapi/strapi


on windows

docker run -it ^
-e DATABASE_NAME=strapi ^
-e DATABASE_USERNAME=strapi ^
-e DATABASE_PASSWORD=strapi ^
-p 1337:1337 ^
-v /headless-cms-toontakeway:/srv/app ^
strapi/strapi