
# 发布
rsync -cavzP  ./ --exclude-from='.rsync-exclude' root@0.0.0.0:/home/styled-components
ssh root@0.0.0.0 "\
cd /home/styled-components; \
yarn; \
sh deploy.sh; \
"
