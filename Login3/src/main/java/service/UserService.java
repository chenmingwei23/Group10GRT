package service;

import dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class UserService {
    private UserDao userdao;
    @Autowired
    public void setUserDao(UserDao userdao) {
        this.userdao = userdao;
    }
    public boolean Match(String username,String password)
    {
        int count=userdao.FindUser(username,password);
        return count>0;
    }
    public void InsertUser(String username,String password){
        userdao.InsertUser(username,password);
    }
}