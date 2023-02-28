<%@ include file="taglibs.jsp"%>
<div>
<h1 class="display-6" >Creer une competence</h1>
<div style=" width: fit-content;background : red;padding: .5em;border-radius: 7px;color: white;">
Etape1
<br>
Details de la competence
</div>
</div>

<div class="row">


<div class="col"></div>
<div class="col-8">
<form:form commandName="competence" method="post" action="${base_url}/index">
<input type="hidden" name="action" id="action" value="0"/>
<form:hidden path="id" />

<br>
<div class="row" style="margin-left:15%;margin-right:15%">
    <div class="col">
        <form:input path="name"  id="name" placeholder="saisi un nom" class="form-control" />
        <form:errors path="name" cssClass="fieldError"/>
    </div>
    <div class="col">
        <form:select path="nbrNiveau" cssClass="form-control" onchange="changeNiveau()" >
            <form:options items="${niveaux}" itemValue="key" itemLabel="value" />
        </form:select>
    </div>
</div>
<div style="margin-left:15%;margin-right:15%">
 <c:forEach var="niveau" items="${competence.niveauList}" varStatus="status">
 <br>
<div class="row">
 <h3 class="display-6">Niveau ${niveau.niveau}</h3>
 </div>

<div class="row">
    <div class="col">
        <div class="row">
            <div class="col"><c:if test="${not empty competence.niveauList[status.index].name}"><label>Nom du niveau</label></c:if></div>
            <div class="col" style="text-align:right"><label>${competence.niveauList[status.index].name.length()}/200</label></div>
        </div>
        <form:input path="niveauList[${status.index}].name"  id="name" placeholder="Saisir un nom" class="form-control" required=""/>
        <form:errors path="niveauList[${status.index}]." cssClass="fieldError"/>
    </div>
</div>
<br>
<div class="row">
    <div class="col">
        <div class="row">
            <div class="col"><c:if test="${not empty competence.niveauList[status.index].description}">Saisir une description</label></c:if></div>
            <div class="col" style="text-align:right"><label>${competence.niveauList[status.index].description.length()}/1500</label></div>
        </div>
        <c:if test="${empty competence.niveauList[status.index].description}">
            <form:input path="niveauList[${status.index}].description"  id="name" placeholder="Saisir une description" class="form-control"/>
        </c:if>
        <c:if test="${not empty competence.niveauList[status.index].description}">
            <form:textarea path="niveauList[${status.index}].description"  id="name" placeholder="Saisir une description" class="form-control"/>
        </c:if>
        <form:errors path="niveauList[${status.index}].description" cssClass="fieldError"/>
    </div>
</div>
 </c:forEach>
 <br>
<div class="row" style="text-align: right;">
    <div class="col">
       <c:if test="${empty competence.niveauList[0].description}">
            <button type="button" class="btn btn-dark" onclick="creerComp()">Creer</button>
       </c:if>
       <c:if test="${not empty competence.niveauList[0].description}">
        <button type="button" class="btn btn-dark" style="background:red;color:white" onclick="saveComp()">Creer</button>
        </c:if>
    </div>
</div>
</div>
</form:form>
</div>
<div class="col"></div>
</div>
<script>
function changeNiveau(){
   if(document.getElementById("nbrNiveau").value>0){
        document.getElementById("action").value = 0;
        document.getElementById("competence").submit();
   }
}

function creerComp(){
    document.getElementById("action").value = 1;
    document.getElementById("competence").submit();
 }

 function saveComp(){
     document.getElementById("action").value = 2;
     document.getElementById("competence").submit();
  }
</script>

