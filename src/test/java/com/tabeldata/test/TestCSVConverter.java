package com.tabeldata.test;

import junit.framework.TestCase;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.springframework.util.StringUtils;

import java.util.Arrays;
import java.util.List;

@Slf4j
public class TestCSVConverter extends TestCase {

    @Test
    public void testFormatCSV() {
        List<String> dataDTO = Arrays.asList("01234", "12342143");
        String csv = StringUtils.collectionToDelimitedString(dataDTO, ";");
        log.info("{}", csv);
    }
}
