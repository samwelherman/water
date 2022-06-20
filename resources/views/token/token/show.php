<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h2 class="modal-title" id="formModal" >Token Generated Details</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
       
<div class="modal-body">
<div class="row">
<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                <div class="card-header">
                    <h6>Token Generation Information View</h6>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-bordered table-striped bg-light">
                        <tr>
                            <th> Card Number:</th>
                            <td><strong><?php echo $token->cardNo; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Amount Paid:</th>
                            <td><strong><?php echo $token->amount; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Token:</th>
                            <td><strong><?php echo $token->token; ?></strong></td>
                        </tr>
                        <tr>
                            <th>Token Generated Date and Time:</th>
                            <td><strong><?php echo $token->tokenDate; ?></strong></td>
                        </tr>
                    </table>
                </div>
            </div>
            </div><!-- ********************Allowance End ******************-->

<!-- ********************Deduction End  ******************-->

         

         
           

</div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
         
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      
    </div>
</div>