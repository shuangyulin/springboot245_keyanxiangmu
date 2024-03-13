package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 项目管理员
 *
 * @author 
 * @email
 */
@TableName("xiangmuguanliyuan")
public class XiangmuguanliyuanEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public XiangmuguanliyuanEntity() {

	}

	public XiangmuguanliyuanEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 账户
     */
    @TableField(value = "username")

    private String username;


    /**
     * 密码
     */
    @TableField(value = "password")

    private String password;


    /**
     * 项目管理员姓名
     */
    @TableField(value = "xiangmuguanliyuan_name")

    private String xiangmuguanliyuanName;


    /**
     * 联系电话
     */
    @TableField(value = "xiangmuguanliyuan_phone")

    private String xiangmuguanliyuanPhone;


    /**
     * 项目管理员身份证号
     */
    @TableField(value = "xiangmuguanliyuan_id_number")

    private String xiangmuguanliyuanIdNumber;


    /**
     * 头像
     */
    @TableField(value = "xiangmuguanliyuan_photo")

    private String xiangmuguanliyuanPhoto;


    /**
     * 性别
     */
    @TableField(value = "sex_types")

    private Integer sexTypes;


    /**
     * 电子邮箱
     */
    @TableField(value = "xiangmuguanliyuan_email")

    private String xiangmuguanliyuanEmail;


    /**
     * 住址
     */
    @TableField(value = "xiangmuguanliyuan_address")

    private String xiangmuguanliyuanAddress;


    /**
     * 逻辑删除
     */
    @TableField(value = "xiangmuguanliyuan_delete")

    private Integer xiangmuguanliyuanDelete;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：账户
	 */
    public String getUsername() {
        return username;
    }


    /**
	 * 获取：账户
	 */

    public void setUsername(String username) {
        this.username = username;
    }
    /**
	 * 设置：密码
	 */
    public String getPassword() {
        return password;
    }


    /**
	 * 获取：密码
	 */

    public void setPassword(String password) {
        this.password = password;
    }
    /**
	 * 设置：项目管理员姓名
	 */
    public String getXiangmuguanliyuanName() {
        return xiangmuguanliyuanName;
    }


    /**
	 * 获取：项目管理员姓名
	 */

    public void setXiangmuguanliyuanName(String xiangmuguanliyuanName) {
        this.xiangmuguanliyuanName = xiangmuguanliyuanName;
    }
    /**
	 * 设置：联系电话
	 */
    public String getXiangmuguanliyuanPhone() {
        return xiangmuguanliyuanPhone;
    }


    /**
	 * 获取：联系电话
	 */

    public void setXiangmuguanliyuanPhone(String xiangmuguanliyuanPhone) {
        this.xiangmuguanliyuanPhone = xiangmuguanliyuanPhone;
    }
    /**
	 * 设置：项目管理员身份证号
	 */
    public String getXiangmuguanliyuanIdNumber() {
        return xiangmuguanliyuanIdNumber;
    }


    /**
	 * 获取：项目管理员身份证号
	 */

    public void setXiangmuguanliyuanIdNumber(String xiangmuguanliyuanIdNumber) {
        this.xiangmuguanliyuanIdNumber = xiangmuguanliyuanIdNumber;
    }
    /**
	 * 设置：头像
	 */
    public String getXiangmuguanliyuanPhoto() {
        return xiangmuguanliyuanPhoto;
    }


    /**
	 * 获取：头像
	 */

    public void setXiangmuguanliyuanPhoto(String xiangmuguanliyuanPhoto) {
        this.xiangmuguanliyuanPhoto = xiangmuguanliyuanPhoto;
    }
    /**
	 * 设置：性别
	 */
    public Integer getSexTypes() {
        return sexTypes;
    }


    /**
	 * 获取：性别
	 */

    public void setSexTypes(Integer sexTypes) {
        this.sexTypes = sexTypes;
    }
    /**
	 * 设置：电子邮箱
	 */
    public String getXiangmuguanliyuanEmail() {
        return xiangmuguanliyuanEmail;
    }


    /**
	 * 获取：电子邮箱
	 */

    public void setXiangmuguanliyuanEmail(String xiangmuguanliyuanEmail) {
        this.xiangmuguanliyuanEmail = xiangmuguanliyuanEmail;
    }
    /**
	 * 设置：住址
	 */
    public String getXiangmuguanliyuanAddress() {
        return xiangmuguanliyuanAddress;
    }


    /**
	 * 获取：住址
	 */

    public void setXiangmuguanliyuanAddress(String xiangmuguanliyuanAddress) {
        this.xiangmuguanliyuanAddress = xiangmuguanliyuanAddress;
    }
    /**
	 * 设置：逻辑删除
	 */
    public Integer getXiangmuguanliyuanDelete() {
        return xiangmuguanliyuanDelete;
    }


    /**
	 * 获取：逻辑删除
	 */

    public void setXiangmuguanliyuanDelete(Integer xiangmuguanliyuanDelete) {
        this.xiangmuguanliyuanDelete = xiangmuguanliyuanDelete;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Xiangmuguanliyuan{" +
            "id=" + id +
            ", username=" + username +
            ", password=" + password +
            ", xiangmuguanliyuanName=" + xiangmuguanliyuanName +
            ", xiangmuguanliyuanPhone=" + xiangmuguanliyuanPhone +
            ", xiangmuguanliyuanIdNumber=" + xiangmuguanliyuanIdNumber +
            ", xiangmuguanliyuanPhoto=" + xiangmuguanliyuanPhoto +
            ", sexTypes=" + sexTypes +
            ", xiangmuguanliyuanEmail=" + xiangmuguanliyuanEmail +
            ", xiangmuguanliyuanAddress=" + xiangmuguanliyuanAddress +
            ", xiangmuguanliyuanDelete=" + xiangmuguanliyuanDelete +
            ", createTime=" + createTime +
        "}";
    }
}
