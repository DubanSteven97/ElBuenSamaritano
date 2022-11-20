<?php HeaderAdmin($data); ?>
  <main class="app-content">
  <?php GetModal('modalPQRS',$data); ?>
    <div class="app-title">
      <div>
        <h1><i class="fa fa-dashboard"></i> <?= $data['page_title'];?></h1>
      </div>
      <ul class="app-breadcrumb breadcrumb">
        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
        <li class="breadcrumb-item"><a href="<?=BaseUrl();?>/dashboard"><?= $data['page_title'];?></a></li>
      </ul>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="tile">
          <div class="tile-body">Dashboard</div>
        </div>
          <?php 
          dep($_SESSION); 
          echo(FormatMoney(50000.02));
            /*$requestApi = CurlConnectionGet(URLPAYPAL."/v2/checkout/orders/19F44859MN067671Y","application/json",
            GetTokenPaypal());

            $requestPost = CurlConnectionPost(URLPAYPAL."/v2/payments/captures/1RT47227N4234811N/refund","application/json",
            GetTokenPaypal());
            dep($requestApi);
            dep($requestPost);*/
          ?>

        <button type="button" class="btn btn-primary" onclick="openModal()">Primary</button>
      </div>
    </div>
  </main>
<script src="<?=media();?>/js/functions_pqrs.js"></script>
<?php FooterAdmin($data); ?>   