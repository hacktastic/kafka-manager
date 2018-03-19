FROM java
ADD . /kafka-manager
WORKDIR /kafka-manager

RUN /kafka-manager/sbt clean dist && \
unzip -d /tmp/kafka-manager/ /kafka-manager/target/universal/kafka-manager-*.zip && \
cd /tmp/kafka-manager && \
rm -rf /kafka-manager && \
rm -rf /root/.sbt/ && \
rm -rf /root/.ivy2/ && \
mv kafka-manager-* /kafka-manager

#WORKDIR /kafka-manager/kafka-manager-1.3.3.17
