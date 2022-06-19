<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h2 class="modal-title" id="formModal" >Community Details</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
       
<div class="modal-body">
<div class="row">
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                <div class="card-header">
                    <h6>Community Information View</h6>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-bordered table-striped bg-light">
                        <tr>
                            <th>Community Name:</th>
                            <td><strong><?php echo $community->name; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Chairman Name:</th>
                            <td><strong><?php echo $community->chairman; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Secretary Name:</th>
                            <td><strong><?php echo $community->secretary; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Community Location:</th>
                            <td><strong><?php echo $community->location; ?></strong></td>
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