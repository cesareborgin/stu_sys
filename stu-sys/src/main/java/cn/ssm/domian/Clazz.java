package cn.ssm.domian;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class Clazz {
    private Long id;
    private Long gradeId;
    private String name;
    private String remark;
}
