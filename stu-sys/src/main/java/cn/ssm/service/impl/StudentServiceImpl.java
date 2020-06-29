package cn.ssm.service.impl;

import cn.ssm.dao.StudentDao;
import cn.ssm.domian.Student;
import cn.ssm.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class StudentServiceImpl implements IStudentService {
    @Autowired
    private StudentDao studentDao;
    @Override
    public Student findByUserName(String username) {
        return studentDao.findByUserName(username);
    }

    @Override
    public List<Student> findList(Map<String, Object> queryMap) {
        return studentDao.findList(queryMap);
    }

    @Override
    public List<Student> findAll() {
        return studentDao.findAll();
    }

    @Override
    public int getTotal(Map<String, Object> queryMap) {
        return studentDao.getTotal(queryMap);
    }

    @Override
    public int add(Student student) {
        return studentDao.add(student);
    }

    @Override
    public int edit(Student student) {
        return studentDao.edit(student);
    }

    @Override
    public int delete(String ids) {
        return studentDao.delete(ids);
    }
}
