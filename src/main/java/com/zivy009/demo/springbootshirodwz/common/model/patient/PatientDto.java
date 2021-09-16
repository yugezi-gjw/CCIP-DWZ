package com.zivy009.demo.springbootshirodwz.common.model.patient;

import java.util.Date;

public class PatientDto {
  private Long id;

  private String patientId;

  private String patientName;

  private String physician;

  private String outpatientRoom;

  private String physicist;

  private String diagnosisDesc;

  private String prescription;
  private String technical;
  private String telephone;

  /**
   * 0有效；1删除
   */
  private Integer disabled;

  private String registeredDt;

  private Date createdUsername;

  private Date modifiedDt;

  private Date modifiedUsername;

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

  public Integer getDisabled() {
    return disabled;
  }

  public void setDisabled(Integer disabled) {
    this.disabled = disabled;
  }

  public String getRegisteredDt() {
    return registeredDt;
  }

  public void setRegisteredDt(String registeredDt) {
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
}
