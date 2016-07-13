#!/bin/bash

docker run --rm --link biggispipeline_zookeeper_1 \
	biggis/kafka:0.9.0.0 \
	/bin/bash -c "kafka-topics.sh --create --topic $1 --replication-factor 1 --partitions 1 --zookeeper zookeeper:2181"
