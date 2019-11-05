package com.tabeldata.configs;

import com.zaxxer.hikari.HikariDataSource;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

@Configuration
public class HCareDatasource {

    @Primary
    @Bean(name = "hcareProperties")
    @ConfigurationProperties("hcare.datasource")
    public DataSourceProperties properties() {
        return new DataSourceProperties();
    }

    @Primary
    @Bean(name = "hcare")
    @ConfigurationProperties("hcare.datasource.configuration")
    public HikariDataSource dataSource(@Qualifier("hcareProperties") DataSourceProperties properties) {
        return properties
                .initializeDataSourceBuilder()
                .type(HikariDataSource.class)
                .build();
    }
}
