package com.zivy009.demo.springbootshirodwz.persistence.dao;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.zivy009.demo.springbootshirodwz.persistence.model.Patient;
import com.zivy009.demo.springbootshirodwz.persistence.model.ZzDemo;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

/**
 * <p>
  *  Mapper 接口
 * </p>
 *
 * @author zivy
 * @since 2017-07-13
 */
@Mapper
public interface PatientMapper extends BaseMapper<Patient> {
}