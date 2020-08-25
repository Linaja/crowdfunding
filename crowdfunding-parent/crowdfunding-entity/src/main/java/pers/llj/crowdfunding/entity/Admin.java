package pers.llj.crowdfunding.entity;

import java.util.Date;

public class Admin {
    private Long account;

    private String password;

    private String name;

    private String eMail;

    private Date creationTime;

    public Admin(Long account, String password) {
        this(account,password,null,null);
    }

    public Admin(Long account, String password, String name, String eMail) {
        this.account = account;
        this.password = password;
        this.name = name;
        this.eMail = eMail;
    }

    public Long getAccount() {
        return account;
    }

    public void setAccount(Long account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public Date getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(Date creationTime) {
        this.creationTime = creationTime;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "account=" + account +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", eMail='" + eMail + '\'' +
                ", creationTime=" + creationTime +
                '}';
    }
}