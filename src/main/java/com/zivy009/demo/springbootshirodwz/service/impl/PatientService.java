package com.zivy009.demo.springbootshirodwz.service.impl;

import static org.apache.commons.lang3.StringUtils.isNotEmpty;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.zivy009.demo.springbootshirodwz.common.PageHandler;
import com.zivy009.demo.springbootshirodwz.common.model.patient.PatientDto;
import com.zivy009.demo.springbootshirodwz.common.tools.StringUtil;
import com.zivy009.demo.springbootshirodwz.persistence.dao.PatientMapper;
import com.zivy009.demo.springbootshirodwz.persistence.model.Patient;
import com.zivy009.demo.springbootshirodwz.persistence.tools.CommonMapper;
import com.zivy009.demo.springbootshirodwz.persistence.tools.other.MysqlGenerateSQL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author zivy
 * @date 2017年7月10日
 * @describe
 */
@Service
@Transactional
public class PatientService extends ServiceImpl<PatientMapper, Patient> {

    @Autowired
    CommonMapper commonMapper;

    String tableName = "patient";

    @Transactional(readOnly = true)
    public List<Map<String, Object>> list(PageHandler page, PatientDto searchParam) {
        // 1.得到记录集
        Map<String,Object> map = new HashMap<String,Object>();
        MysqlGenerateSQL sql = new MysqlGenerateSQL();
        sql.SELECT("*");
        sql.FROM(tableName);
        sql.WHERE("disabled=0");
        if (isNotEmpty(searchParam.getPatientName())) {
            sql.WHERE("patient_name like #{paramMap.patient_name}");
            map.put("patient_name", "%" + searchParam.getPatientName() + "%");
        }
        if (isNotEmpty(searchParam.getPhysician())) {
            sql.WHERE("physician like #{paramMap.physician}");
            map.put("physician", "%" + searchParam.getPhysician() + "%");
        }
        if (isNotEmpty(searchParam.getOutpatientRoom())) {
            sql.WHERE("outpatient_room like #{paramMap.outpatient_room}");
            map.put("outpatient_room", "%" + searchParam.getOutpatientRoom() + "%");
        }
        if (isNotEmpty(searchParam.getPatientId())) {
            sql.WHERE("patient_id like #{paramMap.patient_id}");
            map.put("patient_id", "%" + searchParam.getPatientId() + "%");
        }
        if (isNotEmpty(searchParam.getDiagnosisDesc())) {
            sql.WHERE("diagnosis_desc like #{paramMap.diagnosis_desc}");
            map.put("diagnosis_desc", "%" + searchParam.getDiagnosisDesc() + "%");
        }
        if (isNotEmpty(searchParam.getPrescription())) {
            sql.WHERE("prescription like #{paramMap.prescription}");
            map.put("prescription", "%" + searchParam.getPrescription() + "%");
        }
        if (isNotEmpty(searchParam.getTechnical())) {
            sql.WHERE("technical like #{paramMap.technical}");
            map.put("technical", "%" + searchParam.getTechnical() + "%");
        }
//        if (isNotEmpty(searchParam.getRegisteredDt())) {
//            sql.WHERE("registered_dt = #{paramMap.registered_dt}");
//            map.put("registered_dt", searchParam.getRegisteredDt());
//        }
        if (isNotEmpty(searchParam.getTelephone())) {
            sql.WHERE("telephone like #{paramMap.telephone}");
            map.put("telephone", "%" + searchParam.getTelephone() + "%");
        }
        if (isNotEmpty(searchParam.getPhysicist())) {
            sql.WHERE("physicist like #{paramMap.physicist}");
            map.put("physicist", "%" + searchParam.getPhysicist() + "%");
        }
        sql.ORDER_BY("registered_dt desc");
        sql.limit(page.getStartRow(), page.getPageSize());
 
        List<Map<String, Object>> list =commonMapper.queryList(sql.toString(),map);
 
        // 2.得到总数
        Long countInt = commonMapper.queryCount(sql.getCountSQL(), map);
      page.setTotalCount(countInt.intValue());
         
        return list;
    }

    /**
     * 
     * 
     * @author zivy
     * @date 2017年7月17日
     * @describe
     * @param entity
     * @return
     *
     */
    public int save(Patient entity) {
        int rInt = baseMapper.insert(entity);
        return rInt;
    }

    /**
     * 
     * 由id删除记录
     * 
     * @author zivy
     * @date 2017年7月18日
     * @describe
     * @param id
     * @return
     *
     */
    public int del(Long id) {
        int rInt = baseMapper.deleteById(id);
        return rInt;
    }

    /**
     * 
     * 逻辑删除
     * 
     * @author zivy
     * @date 2017年8月8日
     * @describe
     * @param id
     * @return
     *
     */
    public int delLogical(Long id) {
        Patient entity = new Patient();
        entity.setId(id);
        entity.setDisabled(1);
        int rInt = baseMapper.updateById(entity);
        return rInt;
    }

    public Patient selectById(Integer id) {

        return baseMapper.selectById(id);

    }

    /**
     * 修改实体
     * 
     * @author zivy
     * @date 2017年7月19日
     * @describe
     * @param entity
     * @return
     *
     */
    public int update(Patient entity) {
        return baseMapper.updateById(entity);
    }

}
