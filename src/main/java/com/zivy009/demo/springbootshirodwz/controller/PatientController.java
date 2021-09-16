package com.zivy009.demo.springbootshirodwz.controller;

import com.zivy009.demo.springbootshirodwz.common.PageHandler;
import com.zivy009.demo.springbootshirodwz.common.exception.MyRuntimeException;
import com.zivy009.demo.springbootshirodwz.common.exception.MyRuntimeRightException;
import com.zivy009.demo.springbootshirodwz.common.http.RequestUtil;
import com.zivy009.demo.springbootshirodwz.common.model.patient.PatientDto;
import com.zivy009.demo.springbootshirodwz.common.util.DateUtil;
import com.zivy009.demo.springbootshirodwz.controller.base.BaseController;
import com.zivy009.demo.springbootshirodwz.persistence.model.Patient;
import com.zivy009.demo.springbootshirodwz.service.impl.PatientService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.servlet.http.HttpServletRequest;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author zivy
 * @date 2017年7月10日
 * @describe
 */
@Controller
@RequestMapping(value = "/patient")
public class PatientController extends BaseController<PatientService> {
    
   
    String viewRoot = "patient";

    @RequestMapping("/list")
    @RequiresPermissions("base:list")
    protected String list(Model model, HttpServletRequest request, @RequestParam(value = "pageNum", defaultValue = "1") int pageIndex,
            @RequestParam(value = "numPerPage", defaultValue = "5") int pageSize) {

        PageHandler page = new PageHandler(pageIndex, pageSize);
        PatientDto searchParam = getParamFromRequest(request);
        List<Map<String, Object>> list = baseService.list(page, searchParam);

        List<Map<String, String>> physicianList = new ArrayList<>();
        physicianList.add(new HashMap(){{
            put("id", "");
            put("name", "全部");
        }});
        physicianList.add(new HashMap(){{
            put("id", "101");
            put("name", "张医生");
        }});
        physicianList.add(new HashMap(){{
            put("id", "102");
            put("name", "李医生");
        }});
        model.addAttribute("page", page);
        model.addAttribute("list", list);
        model.addAttribute("physicianList", physicianList);
        model.addAttribute("patientDto", searchParam);
        return viewRoot + "/list";
    }

    private PatientDto getParamFromRequest(HttpServletRequest request) {
        String patientName = RequestUtil.getString(request, "patientName");
        String physician = RequestUtil.getString(request, "physician");
        String outpatientRoom = RequestUtil.getString(request, "outpatientRoom");
        String patientId = RequestUtil.getString(request, "patientId");
        String diagnosisDesc = RequestUtil.getString(request, "diagnosisDesc");
        String prescription = RequestUtil.getString(request, "prescription");
        String technical = RequestUtil.getString(request, "technical");
        String registeredDt = RequestUtil.getString(request, "registeredDt");
        String telephone = RequestUtil.getString(request, "telephone");
        String physicist = RequestUtil.getString(request, "physicist");
        PatientDto patientDto = new PatientDto();
        patientDto.setPatientName(patientName);
        patientDto.setPhysician(physician);
        patientDto.setOutpatientRoom(outpatientRoom);
        patientDto.setPatientId(patientId);
        patientDto.setDiagnosisDesc(diagnosisDesc);
        patientDto.setPrescription(prescription);
        patientDto.setTechnical(technical);
        patientDto.setRegisteredDt(registeredDt);
        patientDto.setTelephone(telephone);
        patientDto.setPhysicist(physicist);
        return patientDto;
    }

    @RequestMapping("/add")
    @RequiresPermissions("patient:add")
    String addView(Model model, HttpServletRequest request) {
        model.addAttribute("model", null);
        return viewRoot + "/add";
    }

    @RequestMapping("/upd")
    @RequiresPermissions("patient:upd")
    String updView(Model model, HttpServletRequest request, @RequestParam(value = "id", defaultValue = "0") Integer id) {
        Patient entity = null;
        if (id != 0) {
            entity = baseService.selectById(id);
        } else {
            throw new MyRuntimeException("");
        }
        model.addAttribute("model", entity);
        return viewRoot + "/add";
    }

    @RequestMapping(value = "/save")
    @ResponseBody
    String save(Patient entity) {
        String jsonReturn = this.ajaxSuccess();
        int returnInt = 0;
        try {
            if (entity.getId() != null) {
                returnInt = baseService.update(entity);
            } else {
                returnInt = baseService.save(entity);
            }

        }catch(MyRuntimeRightException rightE){
            jsonReturn = this.ajaxFail("警告：" + rightE.getMessage());
        }catch (Exception e) {

            e.printStackTrace();
            jsonReturn = this.ajaxFail("发生异常：" + e.getMessage());
        }
        return jsonReturn;
    }

    @RequestMapping(value = "/del")
    @RequiresPermissions("patient:del")
    @ResponseBody
    String del(@RequestParam(value = "id", defaultValue = "0") Long id) {
        String jsonReturn = this.ajaxDelSuccess();
        try {
            int returnInt = baseService.delLogical(id);

        }catch(MyRuntimeRightException rightE){
            jsonReturn = this.ajaxFail("警告：" + rightE.getMessage());
        }catch (Exception e) {
            e.printStackTrace();
            jsonReturn = this.ajaxFail("发生异常：" + e.getMessage());
        }
        return jsonReturn;
    }
    
    
    @RequestMapping("{anyFile}")
    public String anything(@PathVariable String anyFile) {
     //  String temp= anyPath+File.separator+anyFile;
        return viewRoot+"/"+anyFile;
    }
}
