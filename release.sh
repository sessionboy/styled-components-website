
# 发布
rsync -cavzP  ./ --exclude-from='.rsync-exclude' root@106.12.5.252:/home/docs/styled-components
ssh root@106.12.5.252 "\
cd /home/docs/styled-components; \
yarn; \
sh deploy.sh; \
"
