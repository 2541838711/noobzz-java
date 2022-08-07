package cn.noobzz.common.security.handler;

import cn.noobzz.common.security.utils.SecurityUtils;
import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

import java.util.Date;

/**
 * @author: ZZJ
 * @date: 2022/08/07
 * @desc:
 */
@Component
public class MyMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        boolean createTime = metaObject.hasSetter("createTime");
        if (createTime){
            this.strictInsertFill(metaObject,"createTIme", Date.class,new Date());
        }
        if (metaObject.hasSetter("createBy")){
            this.strictInsertFill(metaObject,"createBy", String.class, SecurityUtils.getUsername());
        }
    }

    @Override
    public void updateFill(MetaObject metaObject) {

        boolean createTime = metaObject.hasSetter("updateTime");
        if (createTime){
            this.strictInsertFill(metaObject,"updateTime", Date.class,new Date());
        }
        if (metaObject.hasSetter("updateBy")){
            this.strictInsertFill(metaObject,"updateBy", String.class, SecurityUtils.getUsername());
        }

    }
}
