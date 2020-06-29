package cn.ssm.domian;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class User {
    private Long id;
    private String username;
    private String password;
}
