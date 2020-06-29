package cn.ssm.service;

import cn.ssm.domian.Student;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public interface IStudentService {
    public Student findByUserName(String username);
    public List<Student> findList(Map<String, Object> queryMap);
    public List<Student> findAll();
    public int getTotal(Map<String, Object> queryMap);
    public int add(Student student);
    public int edit(Student student);
    public int delete(String ids);
}
