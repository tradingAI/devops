# ELK
Elasticsearch + Logstash + Kibana

# 部署
1. 拷贝elk文件夹到目标机器
2. 修改密码  
    修改[docker-compose.yml](devops/starter/elk/docker-compose.yml)中
    `ELASTIC_PASSWORD`
    
    修改[logstash.yml](devops/starter/elk/logstash/config/logstash.yml)中
    `xpack.monitoring.elasticsearch.password`

    修改[logstash.conf](devops/starter/elk/logstash/pipeline/logstash.conf)中
    `output.elasticsearch.password`

    修改[kibana.yml](devops/starter/elk/kibana/config/kibana.yml)中
    `elasticsearch.password`

    修改[filebeat.yml](devops/starter/elk/filebeat/filebeat.yml)中
    `setup.kibana.password`

