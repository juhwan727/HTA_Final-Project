<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../common/tags.jsp" %>
<!-- 
 -->
<main id="main">
  <article id="admin-user">
  <form
      class="search-user__form"
      id="form-search-userQnA"
      method="get"
      action="user-qna"
    >
      <input type="hidden" name="page" value="1" />
      <ul class="search-bar">
      	<li>
      		<select
          class="search__select grade"
          name="grade"
          onchange="searchDeniedActivities()"
        >
          	<option value="" selected disabled="disabled">등급</option>
			<option value="BRONZE" ${'BRONZE' eq param.grade ? 'selected' : ''}>브론즈</option>
			<option value="SILVER" ${'SILVER' eq param.grade ? 'selected' : ''}>실버</option>
			<option value="GOLD" ${'GOLD' eq param.grade ? 'selected' : ''}>골드</option>
			<option value="PLATINUM" ${'PLATINUM' eq param.grade ? 'selected' : ''}>플래티넘</option>
			<option value="DIAMOND" ${'DIAMOND' eq param.grade ? 'selected' : ''}>다이아몬드</option>
        </select>
      	</li>
      	<li>
      		<select class="search__select" name="opt">
          	<option value="" selected disabled="disabled">검색조건</option>
          	<option value="주소">주소</option>
			<option value="호스트번호">호스트번호</option>
			<option value="회원번호">회원번호</option>
			<option value="체험이름">체험이름</option>
        </select>
      	</li>
      	<li>
      		<input type="text" class="search-user" name="value" value="" />
        <button type="button" class="btn__search" id="btn-search-userQnA" onclick="searchDeniedActivities()">
          검색
        </button>
      	</li>
      </ul>
    </form>


	<table class="user-list-table">
		<colgroup>
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
      </colgroup>
      <thead>
        <tr>
          <th>no.</th>
          <th>호스트이름</th>
          <th>호스트등급</th>
          <th>회원번호</th>
          <th>연락처</th>
          <th>체험이름</th>
          <th>반려 사유</th>
          <th>등록일</th>
        </tr>
      </thead>
			<tbody id="dataSection">
				
			</tbody>
		</table>

		<!-- 페이지 내비게이션 표시 -->
		<!-- 페이지 내비게이션 표시 -->
		<div class="row mb-3">
			<div class="col">
				<div class="pagination">
					<ul id="paginationBox" class="pagination">
		
					</ul>
				</div>
			</div>
		</div>

 </article>
  <article id="admin-user">
  <form
      class="search-user__form"
      id="form-search-userQnA"
      method="get"
      action="user-qna"
    >
      <input type="hidden" name="page" value="1" />
      <ul class="search-bar">
      	<li>
      		<select
          class="search__select grade"
          name="grade1"
          onchange="searchEndedActivities()"
        >
          	<option value="" selected disabled="disabled">등급</option>
			<option value="BRONZE" ${'BRONZE' eq param.grade ? 'selected' : ''}>브론즈</option>
			<option value="SILVER" ${'SILVER' eq param.grade ? 'selected' : ''}>실버</option>
			<option value="GOLD" ${'GOLD' eq param.grade ? 'selected' : ''}>골드</option>
			<option value="PLATINUM" ${'PLATINUM' eq param.grade ? 'selected' : ''}>플래티넘</option>
			<option value="DIAMOND" ${'DIAMOND' eq param.grade ? 'selected' : ''}>다이아몬드</option>
        </select>
      	</li>
      	<li>
      		<select class="search__select" name="opt1">
          	<option value="" selected disabled="disabled">검색조건</option>
          	<option value="주소">주소</option>
			<option value="호스트번호">호스트번호</option>
			<option value="회원번호">회원번호</option>
			<option value="체험이름">체험이름</option>
        </select>
      	</li>
      	<li>
      		<input type="text" class="search-user" name="value1" value="" />
        <button type="button" class="btn__search" id="btn-search-userQnA" onclick="searchEndedActivities()">
          검색
        </button>
      	</li>
      </ul>
    </form>


	<table class="user-list-table">
		<colgroup>
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
      </colgroup>
      <thead>
        <tr>
          <th>no.</th>
          <th>호스트이름</th>
          <th>호스트등급</th>
          <th>회원번호</th>
          <th>연락처</th>
          <th>체험이름</th>
          <th>종료 상세</th>
          <th>등록일</th>
        </tr>
      </thead>
			<tbody id="dataSection1">
				
			</tbody>
		</table>

		<!-- 페이지 내비게이션 표시 -->
		<!-- 페이지 내비게이션 표시 -->
		<div class="row mb-3">
			<div class="col">
				<div class="pagination">
					<ul id="paginationBox1" class="pagination">
		
					</ul>
				</div>
			</div>
		</div>

 </article>
  <article id="admin-user">
  <form
      class="search-user__form"
      id="form-search-userQnA"
      method="get"
      action="user-qna"
    >
      <input type="hidden" name="page" value="1" />
      <ul class="search-bar">
      	<li>
      		<select
          class="search__select grade"
          name="grade2"
          onchange="searchClosedActivities()"
        >
          	<option value="" selected disabled="disabled">등급</option>
			<option value="BRONZE" ${'BRONZE' eq param.grade ? 'selected' : ''}>브론즈</option>
			<option value="SILVER" ${'SILVER' eq param.grade ? 'selected' : ''}>실버</option>
			<option value="GOLD" ${'GOLD' eq param.grade ? 'selected' : ''}>골드</option>
			<option value="PLATINUM" ${'PLATINUM' eq param.grade ? 'selected' : ''}>플래티넘</option>
			<option value="DIAMOND" ${'DIAMOND' eq param.grade ? 'selected' : ''}>다이아몬드</option>
        </select>
      	</li>
      	<li>
      		<select class="search__select" name="opt2">
          	<option value="" selected disabled="disabled">검색조건</option>
          	<option value="주소">주소</option>
			<option value="호스트번호">호스트번호</option>
			<option value="회원번호">회원번호</option>
				<option value="체험이름">체험이름</option>
        </select>
      	</li>
      	<li>
      		<input type="text" class="search-user" name="value2" value="" />
        <button type="button" class="btn__search" id="btn-search-userQnA" onclick="searchClosedActivities()">
          검색
        </button>
      	</li>
      </ul>
    </form>


	<table class="user-list-table">
		<colgroup>
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
	        <col style="width: 10%" />
      </colgroup>
      <thead>
        <tr>
          <th>no.</th>
          <th>호스트이름</th>
          <th>호스트등급</th>
          <th>회원번호</th>
          <th>연락처</th>
          <th>체험이름</th>
          <th>종료 상세</th>
          <th>등록일</th>
        </tr>
      </thead>
			<tbody id="dataSection2">
				
			</tbody>
		</table>

		<!-- 페이지 내비게이션 표시 -->
		<!-- 페이지 내비게이션 표시 -->
		<div class="row mb-3">
			<div class="col">
				<div class="pagination">
					<ul id="paginationBox2" class="pagination">
		
					</ul>
				</div>
			</div>
		</div>

 </article>
 </main>
 
 
<script type="text/javascript">
$(function(){
	
	activeMenu("숙소관리", "숙소승인 반려/종료");
	})

searchDeniedActivities();
searchEndedActivities();
searchClosedActivities();

function searchDeniedActivities(page) {
	var opt = $("select[name=opt]").val();
	var value = $.trim($(":input[name=value]").val());
	var grade =  $("select[name=grade]").val();
	
			$.ajax({
				type: 'POST',
				url : "/admin/getDeniedActivityList.do", //서비스 주소 
				data : { //서비스 처리에 필요한 인자값
					page : page,
					opt : opt,
					value : value,
					grade : grade
				},
				success : function(result) {
					const list = result['list'];
					const pagination = result['pagination'];
					var data = "";
					var block = "";

					console.log(pagination);
					console.log(list);
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += "<tr>";
						data += "<td>" + list[i].no + "</td>";
						data += "<td>" + list[i].hostName + "</td>";
						data += "<td>" + list[i].gradeName + "</td>";
						data += "<td>" + list[i].userNo + "</td>";
						data += "<td>" + list[i].hostTel + "</td>";
						data += "<td>" + list[i].name + "</td>";
						data += "<td>" + list[i].statusDetail + "</td>";
						data += "<td>" + list[i].registeredDate + "</td>";
						data += "</tr>";
					}
					$("#dataSection").html(data);

					// 이전버튼 활성화 여부를 결정하는 부분
					if (pagination['prevPage']) {
						block += "<li class='page-item'><a class='page-link' onclick='searchDeniedActivities("
								+ (pagination['beginPage'] - 1)
								+ ")'> < </a></li>";
					} else {
						block += "<li class='page-item disabled'><a class='page-link'> < </a></li>";
					}

					// 번호를 표시하는 부분
					for (var i = pagination['beginPage']; i <= pagination['endPage']; i++) {
						if (page !== i) {
							block += "<li class='page-item'><a class='page-link' onclick='searchDeniedActivities("
									+ i + ")'>" + (i) + "</a></li>";
						} else {
							block += "<li class='page-item disabled'><a class='page-link'>"
									+ (i) + "</a></li>";
						}
					}

					if (pagination['nextPage']) {
						block += "<li class='page-item'><a class='page-link' onclick='searchDeniedActivities("
								+ (pagination['endPage'] + 1)
								+ ")'>  > </a></li>";
					} else {
						block += "<li class='page-item disabled'><a class='page-link'> > </a></li>";
					}
					
					$("#paginationBox").html(block);
				}
			})
}
function searchEndedActivities(page) {
	var opt = $("select[name=opt1]").val();
	var value = $.trim($(":input[name=value1]").val());
	var grade =  $("select[name=grade1]").val();
	
			$.ajax({
				type: 'POST',
				url : "/admin/getEndedActivityList.do", //서비스 주소 
				data : { //서비스 처리에 필요한 인자값
					page : page,
					opt : opt,
					value : value,
					grade : grade
				},
				success : function(result) {
					const list = result['list'];
					const pagination = result['pagination'];
					var data = "";
					var block = "";

					console.log(pagination);
					console.log(list);
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += "<tr>";
						data += "<td>" + list[i].no + "</td>";
						data += "<td>" + list[i].hostName + "</td>";
						data += "<td>" + list[i].gradeName + "</td>";
						data += "<td>" + list[i].userNo + "</td>";
						data += "<td>" + list[i].hostTel + "</td>";
						data += "<td>" + list[i].name + "</td>";
						data += "<td>" + list[i].statusDetail + "</td>";
						data += "<td>" + list[i].registeredDate + "</td>";
						data += "</tr>";
					}
					$("#dataSection1").html(data);

					// 이전버튼 활성화 여부를 결정하는 부분
					if (pagination['prevPage']) {
						block += "<li class='page-item'><a class='page-link' onclick='searchEndedActivities("
								+ (pagination['beginPage'] - 1)
								+ ")'> < </a></li>";
					} else {
						block += "<li class='page-item disabled'><a class='page-link'> < </a></li>";
					}

					// 번호를 표시하는 부분
					for (var i = pagination['beginPage']; i <= pagination['endPage']; i++) {
						if (page !== i) {
							block += "<li class='page-item'><a class='page-link' onclick='searchEndedActivities("
									+ i + ")'>" + (i) + "</a></li>";
						} else {
							block += "<li class='page-item disabled'><a class='page-link'>"
									+ (i) + "</a></li>";
						}
					}

					if (pagination['nextPage']) {
						block += "<li class='page-item'><a class='page-link' onclick='searchEndedActivities("
								+ (pagination['endPage'] + 1)
								+ ")'>  > </a></li>";
					} else {
						block += "<li class='page-item disabled'><a class='page-link'> > </a></li>";
					}
					
					$("#paginationBox1").html(block);
				}
			})
}
function searchClosedActivities(page) {
	var opt = $("select[name=opt2]").val();
	var value = $.trim($(":input[name=value2]").val());
	var grade =  $("select[name=grade2]").val();
	
			$.ajax({
				type: 'POST',
				url : "/admin/getClosedActivityList.do", //서비스 주소 
				data : { //서비스 처리에 필요한 인자값
					page : page,
					opt : opt,
					value : value,
					grade : grade
				},
				success : function(result) {
					const list = result['list'];
					const pagination = result['pagination'];
					var data = "";
					var block = "";

					console.log(pagination);
					console.log(list);
					// 테이블의 row를 삽입하는 부분
					for (var i = 0; i < list.length; i++) {
						data += "<tr>";
						data += "<td>" + list[i].no + "</td>";
						data += "<td>" + list[i].hostName + "</td>";
						data += "<td>" + list[i].gradeName + "</td>";
						data += "<td>" + list[i].userNo + "</td>";
						data += "<td>" + list[i].hostTel + "</td>";
						data += "<td>" + list[i].name + "</td>";
						data += "<td>" + list[i].statusDetail + "</td>";
						data += "<td>" + list[i].registeredDate + "</td>";
						data += "</tr>";
					}
					$("#dataSection2").html(data);

					// 이전버튼 활성화 여부를 결정하는 부분
					if (pagination['prevPage']) {
						block += "<li class='page-item'><a class='page-link' onclick='searchClosedActivities("
								+ (pagination['beginPage'] - 1)
								+ ")'> < </a></li>";
					} else {
						block += "<li class='page-item disabled'><a class='page-link'> < </a></li>";
					}

					// 번호를 표시하는 부분
					for (var i = pagination['beginPage']; i <= pagination['endPage']; i++) {
						if (page !== i) {
							block += "<li class='page-item'><a class='page-link' onclick='searchClosedActivities("
									+ i + ")'>" + (i) + "</a></li>";
						} else {
							block += "<li class='page-item disabled'><a class='page-link'>"
									+ (i) + "</a></li>";
						}
					}

					if (pagination['nextPage']) {
						block += "<li class='page-item'><a class='page-link' onclick='searchClosedActivities("
								+ (pagination['endPage'] + 1)
								+ ")'>  > </a></li>";
					} else {
						block += "<li class='page-item disabled'><a class='page-link'> > </a></li>";
					}
					
					$("#paginationBox2").html(block);
				}
			})
}





</script>