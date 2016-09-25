package Controller;

import Model.UserEntity;
import Repository.UserRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by 11050 on 2016/9/22.
 */
@Controller
public class MainController {
   UserRepository userRepository;
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(){
        return "index";


    }
    public String getUsers(ModelMap modelMap){
        List<UserEntity> users= userRepository.findAll();
        modelMap.addAttribute("userlist",users);
        return "admin/users";



    }

}
