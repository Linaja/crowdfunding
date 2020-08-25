package pers.llj.crowdfunding.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import pers.llj.crowdfunding.entity.Admin;
import pers.llj.crowdfunding.service.AdminService;

/**
 * 测试事务
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-persist-mybatis.xml","classpath:spring-persist-tx.xml"})
public class TestTransaction {

    @Autowired
    private AdminService adminService;

    @Test
    public void testTx(){
        Admin admin = new Admin(123456789L, "001257");
        adminService.removeAdmin(admin);
        adminService.addAdmin(admin);
    }
}
