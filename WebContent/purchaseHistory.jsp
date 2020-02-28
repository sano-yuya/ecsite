<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/product.css">
<link rel="stylesheet" type="text/css" href="./css/table.css">
<title>商品購入履歴</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		<div id="top">
			<h1>商品購入履歴画面</h1>
		</div>
		<s:if
			test="purchaseHistoryInfoDTOList !=null && purchaseHistoryInfoDTOList.size() > 0">
			<table class="horizontal_table">
				<thead>
					<tr>
						<th><label>商品名</label></th>
						<th><label>ふりがな</label></th>
						<th><label>商品画像</label></th>
						<th><label>発売会社名</label></th>
						<th><label>発売年月日</label></th>
						<th><label>値段</label></th>
						<th><label>個数</label></th>
						<th><label>合計金額</label></th>
						<th><label>宛先名前</label></th>
						<th><label>宛先住所</label></th>
					</tr>
				<tbody>
					<s:iterator value="purchaseHistoryInfoDTOList">
						<tr>
							<td><s:property value="productName" /></td>
							<td><s:property value="productNameKana" /></td>
							<td style="text-align: center;"><img
								src='<s:property value="imageFilePath"/>/<s:property value="imageFileName" />'
								class="relatedPath" width="50px" height="50px"/></td>
							<td><s:property value="releaseCompany" /></td>
							<td><s:property value="releaseDate" /></td>
							<td><s:property value="price" />円</td>
							<td><s:property value="productCount" />個</td>
							<td><s:property value="productTotalPrice" />円</td>
							<td><s:property value="familyName" /><span> </span> <s:property
									value="firstName" /></td>
							<td><s:property value="userAddress" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
			<s:form action="DeletePurchaseHistoryAction">
				<div class="submit_btn_box">
					<s:submit value="履歴削除" class="submit_btn" />
				</div>
			</s:form>
		</s:if>
		<s:else>
			<div class="info">商品購入履歴情報がありません。</div>
		</s:else>
	</div>
</body>
</html>