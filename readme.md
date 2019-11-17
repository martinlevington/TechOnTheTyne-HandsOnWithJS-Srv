    
    Run strapi using docker, from you project directory,
    
    docker run -it \
    -e DATABASE_CLIENT=sqlite \
    -e DATABASE_NAME=strapi \
    -e DATABASE_USERNAME=strapi \
    -e DATABASE_PASSWORD=strapi \
    -p 1337:1337 \
    -v \`pwd\`/headless-cms-toontakeway:/srv/app \
    strapi/strapi
