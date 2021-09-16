 
<form method="post" action="patient/save.do" class="pageForm required-validate" onsubmit="return iframeCallback(this, dialogAjaxDone);">
	<input name="id" type="hidden" value="${(model.id)!}" />
	<div class="formBar">
		<ul>
			<li><button type="submit" class="buttonActive">保存</button></li>
			<li><button type="button" class="button close">取消</button></li>
		</ul>
	</div>
	<div class="pageContent">
		<div class="pageFormContent" layoutH="56">
			<dl>
				<dt>姓名：</dt>
				<dd><input class="required" name="patientName" type="text" size="30" value="${(model.patientName)!}"/></dd>
			</dl>
			<dl>
				<dt>PatientID：</dt>
				<dd><input class="required" name="patientId" type="text" size="30" value="${(model.patientId)!}"/></dd>
			</dl>
			<dl>
				<dt>医师：</dt>
				<dd><input class="required" name="physician" type="text" size="30" value="${(model.physician)!}"/></dd>
			</dl>
			<dl>
				<dt>诊室：</dt>
				<dd><input name="outpatientRoom" type="text" size="30" value="${(model.outpatientRoom)!}"/></dd>
			</dl>
			<dl>
				<dt>诊断：</dt>
				<dd><input name="diagnosisDesc" type="text" size="30" value="${(model.diagnosisDesc)!}"/></dd>
			</dl>
			<dl>
				<dt>处方：</dt>
				<dd><input name="prescription" type="text" size="30" value="${(model.prescription)!}"/></dd>
			</dl>
			<dl>
				<dt>治疗技术：</dt>
				<dd><input name="technical" type="text" size="30" value="${(model.technical)!}"/></dd>
			</dl>
			<dl>
				<dt>电话：</dt>
				<dd><input name="telephone" type="text" size="30" value="${(model.telephone)!}"/></dd>
			</dl>
			<dl>
				<dt>物理师：</dt>
				<dd><input name="physicist" type="text" size="30" value="${(model.physicist)!}"/></dd>
			</dl>

		</div>
	</div>
</form>