<%@ include file="taglibs.jsp"%>

<div>
<br>
<div class="row">
    <div class="col">
         <h1 class="display-6" >${competence.name}</h1>
    </div>
    <div class="col" style="background:green; color:white">
        <i class="fa-solid fa-medal"></i> Vous avez reussi a creer la/les competence(s)  X
    </div>
</div>
</div>

<div class="row" style="margin-left:15%;margin-right:15%">
  <c:forEach var="niveau" items="${competence.niveauList}" varStatus="status">
  <div class="col det_comp">
    <br>
    <div class="row"><div class="col"><i class="fa-solid fa-medal"></i></div></div>
    <div class="row"><div class="col">${niveau.name}</div></div>
    <div class="row"><div class="col">${niveau.description}</div></div>
  </div>
  <c:if test="${ status.index> 1 && competence.niveauList.size()%2==1 && status.index==competence.niveauList.size()-1}">
    <div class="col det_comp" style="background:#eee">
    </div>
  </c:if>
  <c:if test="${(status.index+1)%2==0}"><div class="w-100"></div></c:if>
  </c:forEach>

</div>

<style>

.det_comp{
    height: 20em;
    background: white;
    margin:1em;
}

</style>