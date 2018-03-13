FROM pangpanglabs/java8

## Batch 애플리케이션
ADD ./batch-sample.jar /app/batch-sample.jar
ADD ./batch-start.sh /app/batch-start.sh
RUN chmod 755 /app/batch-start.sh

# cron
ADD crontab /etc/cron.d/batch-sample-cron
RUN chmod 0644 /etc/cron.d/batch-sample-cron

ADD bootstrap.sh /app/bootstrap.sh
RUN chmod +x /app/bootstrap.sh

CMD ["/app/bootstrap.sh"]
