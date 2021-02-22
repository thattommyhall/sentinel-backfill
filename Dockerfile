FROM filecoin/sentinel-visor-dev:master-625a7cce
WORKDIR /usr/bin/

ADD s5cmd .
RUN chmod a+x s5cmd

ADD run_backfill.sh .
RUN chmod a+x run_backfill.sh
ENTRYPOINT ["/usr/bin/run_backfill.sh"]
