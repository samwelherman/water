<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h2 class="modal-title" id="formModal" >Student Details</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
       
<div class="modal-body">
<div class="row">
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                <div class="card-header">
                    <h6>Student Info View</h6>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-bordered table-striped bg-light">
                        <tr>
                            <th>School Level/ Name:</th>
                            <td><strong><?php echo $school->level; ?></strong></td>
                        </tr>

                        
                         <tr>
                            <th>School Fee Type:</th>
                            <td><strong><?php echo $school->feeType; ?></strong></td>
                        </tr>
                         <tr>
                            <th>School Fee Price:</th>
                            <td><strong><?php echo $school->price; ?></strong></td>
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