package com.zivy009.demo.springbootshirodwz.persistence.model;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import java.io.Serializable;
import java.util.Date;

@TableName("patient")
public class Patient extends Model<Patient> {

  private static final long serialVersionUID = 1L;

  @TableId(value="id", type= IdType.AUTO)
  private Long id;

  @TableField("patient_id")
  private String patientId;

  @TableField("patient_name")
  private String patientName;

  private String physician;

  @TableField("outpatient_room")
  private String outpatientRoom;

  private String physicist;

  @TableField("diagnosis_desc")
  private String diagnosisDesc;

  private String prescription;
  private String technical;
  private String telephone;

  /**
   * 0有效；1删除
   */
  private Integer disabled;

  @TableField("registered_dt")
  private Date registeredDt;

  @TableField("created_username")
  private Date createdUsername;

  @TableField("modified_dt")
  private Date modifiedDt;

  @TableField("modified_username")
  private Date modifiedUsername;

  @Override
  protected Serializable pkVal() {
    return this.id;
  }

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getPatientId() {
    return patientId;
  }

  public void setPatientId(String patientId) {
    this.patientId = patientId;
  }

  public String getPatientName() {
    return patientName;
  }

  public void setPatientName(String patientName) {
    this.patientName = patientName;
  }

  public String getPhysician() {
    return physician;
  }

  public void setPhysician(String physician) {
    this.physician = physician;
  }

  public String getOutpatientRoom() {
    return outpatientRoom;
  }

  public void setOutpatientRoom(String outpatientRoom) {
    this.outpatientRoom = outpatientRoom;
  }

  public String getPhysicist() {
    return physicist;
  }

  public void setPhysicist(String physicist) {
    this.physicist = physicist;
  }

  public String getDiagnosisDesc() {
    return diagnosisDesc;
  }

  public void setDiagnosisDesc(String diagnosisDesc) {
    this.diagnosisDesc = diagnosisDesc;
  }

  public String getPrescription() {
    return prescription;
  }

  public void setPrescription(String prescription) {
    this.prescription = prescription;
  }

  public String getTechnical() {
    return technical;
  }

  public void setTechnical(String technical) {
    this.technical = technical;
  }

  public String getTelephone() {
    return telephone;
  }

  public void setTelephone(String telephone) {
    this.telephone = telephone;
  }

  public Date getRegisteredDt() {
    return registeredDt;
  }

  public void setRegisteredDt(Date registeredDt) {
    this.registeredDt = registeredDt;
  }

  public Date getCreatedUsername() {
    return createdUsername;
  }

  public void setCreatedUsername(Date createdUsername) {
    this.createdUsername = createdUsername;
  }

  public Date getModifiedDt() {
    return modifiedDt;
  }

  public void setModifiedDt(Date modifiedDt) {
    this.modifiedDt = modifiedDt;
  }

  public Date getModifiedUsername() {
    return modifiedUsername;
  }

  public void setModifiedUsername(Date modifiedUsername) {
    this.modifiedUsername = modifiedUsername;
  }

  public Integer getDisabled() {
    return disabled;
  }

  public void setDisabled(Integer disabled) {
    this.disabled = disabled;
  }
}
