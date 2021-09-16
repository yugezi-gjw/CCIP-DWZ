 
<form id="pagerForm" method="post" action="patient/list">
	 
	<input   type="hidden" name="pageNum" value="${((page.pageIndex)!0)}" />
	<input type="hidden" name="numPerPage" value="${(page.pageSize)!}" />
 	<input type="hidden" name="keyword" value="${(keyword)!}" />
</form>
 
 

<div class="pageHeader">
	<form onsubmit="return navTabSearch(this);" action="patient/list" method="post">
	<div class="searchBar">
		<table class="searchContent">
			<tr>
				<td>
					姓名：<input type="text" name="patientName" value="${(patientDto.patientName)!}" />
				</td>
<#--				<td>-->
<#--					医师1：<select style="margin-right:3px; font-size: 12px; width: 160px; padding: 2px 2px 2px 2px" name="physicianId" value="">-->
<#--						<#list physicianList as physician>-->
<#--							<option value="${physician.id!}">${physician.name!}</option>-->
<#--						</#list>-->
<#--					</select>-->
<#--				</td>-->
				<td>
					医师：<input type="text" name="physician" value="${(patientDto.physician)!}" />
				</td>
				<td>
					诊室：<input type="text" name="outpatientRoom" value="${(patientDto.outpatientRoom)!}" />
				</td>
				<td>
					患者ID：<input type="text" name="patientId" value="${(patientDto.patientId)!}" />
				</td>
				<td>
					诊断：<input type="text" name="patientId" value="${(patientDto.diagnosisDesc)!}" />
				</td>
			</tr>
			<tr>
				<td>
					处方：<input type="text" name="prescription" value="${(patientDto.prescription)!}" />
				</td>
				<td>
					治疗技术：<input type="text" name="technical" value="${(patientDto.technical)!}" />
				</td>
				<td>
					登记日期：<input name="registeredDt" type="text" class="date" value="${(patientDto.registeredDt)!}" />
				</td>
				<td>
					电话：<input type="text" name="telephone" value="${(patientDto.telephone)!}" />
				</td>
				<td>
					物理师：<input type="text" name="physicist" value="${(patientDto.physicist)!}" />
				</td>

			</tr>
		</table>
		<div class="subBar">
			<ul>
				<li><div class="buttonActive"><div class="buttonContent"><button type="submit">&nbsp;&nbsp;检&nbsp;&nbsp;&nbsp;&nbsp;索&nbsp;&nbsp;</button></div></div></li>
 
			</ul>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
			<@shiro.hasPermission name="patient:add">
			<li><a class="add" href="patient/add" target="dialog" rel="save"><span>添加</span></a></li>
			</@shiro.hasPermission>
			<@shiro.hasPermission name="patient:del">
			<li><a class="delete" href="patient/del?id={sid}" target="ajaxTodo" title="确定要删除吗?"><span>删除</span></a></li>
			</@shiro.hasPermission>
			<@shiro.hasPermission name="patient:upd">
			<li><a class="edit" href="patient/upd?id={sid}" target="dialog"><span>修改</span></a></li>
			</@shiro.hasPermission>
			<li class="line">line</li>
		 </ul>
	</div>
	<table class="table" width="100%" layoutH="138">
		<thead>
			<tr>
				<th orderField="id"  >ID</th>
				<th>医师</th>
				<th>诊室</th>
				<th>患者ID</th>
				<th>姓名</th>
				<th>诊断</th>
				<th>处方</th>
				<th>治疗技术</th>
				<th>登记日期</th>
				<th>电话</th>
				<th>物理师</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<#list list as patient>
			<tr target="sid" rel="${patient.id}">
				<td>${patient.id!}</td>
				<td>${patient.physician!}</td>
				<td>${patient.outpatient_room!}</td>
				<td>${patient.patient_id!}</td>
				<td>${patient.patient_name!}</td>
				<td>${patient.diagnosis_desc!}</td>
				<td>${patient.prescription!}</td>
				<td>${patient.technical!}</td>
				<td>${patient.registered_dt!?string("yyyy-MM-dd")}</td>
				<td>${patient.telephone!}</td>
				<td>${patient.physicist!}</td>
				<td>
					<a href="patient/del?id=${patient.id}" title="确定要删除这条记录么?" target="ajaxTodo">删除</a>
				</td>
			</tr>
			</#list> 
		</tbody>
	</table>
	
		<#include "../include_page/page.ftl"/>
	
</div>
