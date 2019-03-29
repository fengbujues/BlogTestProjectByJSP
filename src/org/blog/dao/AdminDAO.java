package org.blog.dao;

import org.blog.entity.Admin;

public interface AdminDAO {
    public Admin login(String username,String password);
    public Admin QueryAdminByName(String name);
    public boolean AddAdmin(Admin admin);
}
