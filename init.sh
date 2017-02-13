#!/usr/bin/env bash
source ./environment.cfg

sed -e "s/{container_http_port}/$container_http_port/g" \
    -e "s/{host_http_port}/$host_http_port/g" \
    -e "s/{container_https_port}/$container_https_port/g" \
    -e "s/{host_https_port}/$host_https_port/g" \
    -e "s/{container_db_port}/$container_db_port/g" \
    -e "s/{host_db_port}/$host_db_port/g" \
    -e "s/{prefix}/$prefix/g" \
    -e "s/{image_namespace}/$image_namespace/g" \
    -e "s/{local_code_mount_point}/$local_code_mount_point/g" \
    -e "s/{local_database_mount_point}/$local_database_mount_point/g" \
    -e "s/{mysql_root_user}/$mysql_root_user/g" \
    -e "s/{mysql_root_password}/$mysql_root_password/g" \
    -e "s/{mysql_db_name}/$mysql_db_name/g" \
    -e "s/{mysql_db_user}/$mysql_db_user/g" \
    -e "s/{mysql_db_password}/$mysql_db_password/g" \
    < docker-compose-template.yml > docker-compose.yml;

sed -e "s/{image_namespace}/$image_namespace/g" < build-template.sh > build.sh;


