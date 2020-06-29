package cn.ssm.dao;

import cn.ssm.domian.Grade;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
@Repository
public interface GradeDao {
    public List<Grade> findList(Map<String, Object> queryMap);
    public List<Grade> findAll();
    public int getTotal(Map<String, Object> queryMap);
    public int add(Grade grade);
    public int edit(Grade grade);
    public int delete(String ids);
}
