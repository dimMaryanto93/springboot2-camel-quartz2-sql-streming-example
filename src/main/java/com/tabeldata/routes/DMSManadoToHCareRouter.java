package com.tabeldata.routes;

import org.apache.camel.LoggingLevel;
import org.apache.camel.builder.RouteBuilder;
import org.springframework.stereotype.Component;

@Component
public class DMSManadoToHCareRouter extends RouteBuilder {

    @Override
    public void configure() throws Exception {
        onException(Exception.class)
                .handled(true)
                .log(LoggingLevel.ERROR, "${exception.message}")
                .stop();

        from("quartz2://manado/timerName?cron=0+0/1+*+1/1+*+?+*") // TODO run every minutes at ?:?:00
                .routeGroup("dmz-manado")
                .routeId("migrate-to-hcare")
                    .to("sql:classpath://camel/query/manado/read-customer.sql?dataSource=#dmzManado&outputType=StreamList")// TODO read data return as List
                    .split(body()).streaming()// TODO stream()
                        .log(LoggingLevel.INFO, "${body}")
                        .to("sql:classpath://camel/query/manado/write-customer.sql?dataSource=#hcare&transacted=true&batch=true")//TODO write data with stream
                        .log(LoggingLevel.INFO, "${body}")
                    .end();

    }
}
