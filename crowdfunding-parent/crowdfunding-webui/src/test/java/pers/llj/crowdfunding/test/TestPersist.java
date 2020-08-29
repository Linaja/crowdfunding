package pers.llj.crowdfunding.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.entity.Role;
import pers.llj.crowdfunding.entity.mapper.AdminMapper;
import pers.llj.crowdfunding.entity.mapper.RoleMapper;
import pers.llj.crowdfunding.util.CustomUtils;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.Random;

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

    @Autowired
    private RoleMapper roleMapper;

    @Test
    public void testConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        System.out.println(connection);
    }

    @Test
    public void testMybatis() {
        Admin admin = new Admin(123456789L, "001257");
        System.out.println(mapper.selectByPrimaryKey(admin.getAccount()));
    }

    @Test
    public void addAdminBash() throws InterruptedException {
        Admin admin = new Admin();
        admin.setPassword(CustomUtils.md5("001257"));
        for (int i = 0; i < 100; i++){
           admin.setAccount((long) (Math.random() * 100000000));
           mapper.insertSelective(admin);
           Thread.sleep(2);
        }
    }

    @Test
    public void testRoleFunction(){
        System.out.println(roleMapper);
        System.out.println(roleMapper.selectByKeyword(""));
    }
}
