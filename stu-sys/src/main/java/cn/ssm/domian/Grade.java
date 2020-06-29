package cn.ssm.domian;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class Grade {
    private Long id;
    private String name;
    private String remark;
}
