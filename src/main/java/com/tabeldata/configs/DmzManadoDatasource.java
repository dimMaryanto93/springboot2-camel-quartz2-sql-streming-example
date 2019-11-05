package com.tabeldata.configs;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class DmzManadoDatasource {

    @Bean(name = "dmzProperties")
    @ConfigurationProperties("dmz-manado.datasource")
    public DataSourceProperties properties() {
        return new DataSourceProperties();
    }

    @Bean(name = "dmzManado")
    @ConfigurationProperties("dmz-manado.datasource.configuration")
    public HikariDataSource datasource(@Qualifier("dmzProperties") DataSourceProperties properties) {
        return properties
                .initializeDataSourceBuilder()
                .type(HikariDataSource.class)
                .build();
    }
}
