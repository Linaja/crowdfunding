package pers.llj.crowdfunding.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.entity.mapper.AdminMapper;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * 测试 Spring 与持久层框架的整合
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:spring-persist-mybatis.xml")
public class TestPersist {

    @Autowired
    private DataSource dataSource;

    @Autowired
    private AdminMapper mapper;

    @Test
    public void testConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println(connection);
    }

    @Test
    public void testMybatis() {
        Admin admin = new Admin(123456789L, "001257");
        mapper.deleteByPrimaryKey(admin.getAccount());
        mapper.insertSelective(admin);
        System.out.println(mapper.selectByPrimaryKey(admin.getAccount()));
    }
}
