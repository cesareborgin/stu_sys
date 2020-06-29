package cn.ssm.service;

import cn.ssm.domian.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public interface IUserService {
    public User findByUserName(String username);
    public int add(User user);
    public int edit(User user);
    public int delete(String ids);
    public List<User> findList(Map<String, Object> queryMap);
    public int getTotal(Map<String, Object> queryMap);
}
