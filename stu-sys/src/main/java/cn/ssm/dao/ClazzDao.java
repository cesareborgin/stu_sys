package cn.ssm.dao;

import cn.ssm.domian.Clazz;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface ClazzDao {
    public List<Clazz> findList(Map<String, Object> queryMap);
    public List<Clazz> findAll();
    public int getTotal(Map<String, Object> queryMap);
    public int add(Clazz clazz);
    public int edit(Clazz clazz);
    public int delete(String ids);
}
