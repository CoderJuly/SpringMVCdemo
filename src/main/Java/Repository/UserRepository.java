package Repository;

import Model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by 11050 on 2016/9/24.
 */
@Repository
public interface UserRepository extends JpaRepository<UserEntity,Integer> {



}
