# Useful fish functions

Some may require HOST entries such as ```broker1``` to point to ```localhost``` for example.

## Examples
For example:
```
function k-read-all
    ./bin/kafka-console-consumer --topic $argv --bootstrap-server localhost:9092 --from-beginning --formatter kafka.tools.DefaultMessageFormatter --property print.key=true --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer --new-consumer --property interceptor.classes=io.confluent.monitoring.clients.interceptor.MonitoringConsumerInterceptor
end
```

```
function k-read
    ./bin/kafka-console-consumer \
          --topic $argv \
          --new-consumer \
          --bootstrap-server broker1:9092  \
          --formatter kafka.tools.DefaultMessageFormatter \
          --property print.key=true \
          --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
          --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer
end
```