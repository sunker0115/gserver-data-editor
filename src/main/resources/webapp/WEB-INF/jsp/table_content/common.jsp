<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<table id="dg" title="数据表格" style="width:1000px;height:364px" toolbar="#toolbar" pagination="true" idField="id" rownumbers="true" fitColumns="true" singleSelect="true">
	<thead>
		<tr>
			<c:forEach var="column" items="${columns}">
				<c:choose>
					<c:when test='${column.editorType=="NoEditor"}'>
						<th field="${column.name}" width="50">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_String"}'>
						<th field="${column.name}" width="50" editor="{type:'text',options:{required:false}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_Byte"}'>
						<th field="${column.name}" width="50" align:'center' editor="{type:'validatebox',options:{validType:'J_Byte'}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_Short"}'>
						<th field="${column.name}" width="50" align:'center' editor="{type:'validatebox',options:{validType:'J_Short'}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_Integer"}'>
						<th field="${column.name}" width="50" align:'center' editor="{type:'validatebox',options:{validType:'J_Integer'}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_Long"}'>
						<th field="${column.name}" width="50" align:'center' editor="{type:'validatebox',options:{validType:'J_Long'}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_Float"}'>
						<th field="${column.name}" width="50" align:'center' editor="{type:'validatebox',options:{validType:'J_Float'}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="J_Double"}'>
						<th field="${column.name}" width="50" align:'center' editor="{type:'validatebox',options:{validType:'J_Double'}}">${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="Array"}'>
						<th field="${column.name}" width="50" editor='{type:"arrayDialog", options:{divId:"arrayDlg", dialogTableId:"arrayDlgTable", table:"${tablename}", field:"${column.name}", arrayRule:${column.editorOptions[0]} }}'>${column.comment}</th>
					</c:when>
					<c:when test='${column.editorType=="Foreign"}'>
						<th field="${column.name}" width="50" editor="{type:'tableWindow', options:{divId:'popTableWin', table:'${tablename}', field:'${column.name}', openTable:'${column.editorOptions[0]}', openTableField:'${column.editorOptions[1]}'}}">${column.comment}</th>
					</c:when>
					<c:otherwise>
						<th field="${column.name}" width="50" editor="{type:'text',options:{required:false}}">${column.comment}</th>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</tr>
	</thead>
</table>