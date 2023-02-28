<%@ taglib prefix="dec" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!doctype html>
<html lang="en" style="height: 100%;">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link href="${base_url}/assets/fontawesome/css/fontawesome.css" rel="stylesheet">
     <link href="${base_url}/assets/fontawesome/css/brands.css" rel="stylesheet">
     <link href="${base_url}/assets/fontawesome/css/solid.css" rel="stylesheet">

    <dec:head />
  </head>
  <body style="height: 100%;background:#eee">


    <div class="row" style="padding:1em;background: white;">
        <div class="col">
          <div class="row">
            <div class="col-2" style="text-align:center">
             <a href="${base_url}/index"><i class="fa fa-bandcamp" aria-hidden="true"></i>  Campagnie name</a>
            </div>
            <div class="col-6">
              <input type="text" class="form-control" style="background:#eee"/>
            </div>
            <div class="col" style="text-align:center">
                <i class="fa fa-bell" aria-hidden="true"></i>&nbsp;&nbsp;
                <i class="fa fa-id-card" aria-hidden="true"></i>&nbsp;&nbsp;
                <i class="fa fa-comments" aria-hidden="true"></i>
            </div>
            <div class="col" style="text-align:center">
                 <i class="fa-solid fa-user"></i>  Emilie Morand
            </div>
          </div>
        </div>
    </div>

  <div class="row">
    <div style="background:white" class="col-2">
        <div id="accordion">
          <div class="card">
            <div class="card-header" id="headingOne">
              <h5 class="mb-0">
                <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                   Rererence
                </button>
              </h5>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
              <div class="card-body">
                <ul class="breadcrumb">
                    <li class="breadcrumb-item active" aria-current="page"><a href="#">Competence</a></li>
                    <li class="breadcrumb-item "><a href="#">Macro-competence</a></li>
                    <li class="breadcrumb-item "><a href="#">Blocks</a></li>
                    <li class="breadcrumb-item "><a href="#">Certification</a></li>
                    <li class="breadcrumb-item "><a href="#">Badges</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-header" id="headingTwo">
              <h5 class="mb-0">
                <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                 Activite
                </button>
              </h5>
            </div>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
              <div class="card-body">
              </div>
            </div>
          </div>

      </div>
      <i class="fa fa-free-code-camp" aria-hidden="true" style="margin-top:60em"></i>
    </div>


    <div class="col-10" >
        <div class="contenair" >
        <dec:body />
        </div>
    </div>

  </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script>
    $('.collapse').collapse();
  </script>
  </body>
</html>