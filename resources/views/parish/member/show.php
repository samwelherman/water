<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h2 class="modal-title" id="formModal" >Member Details</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
       
<div class="modal-body">
<div class="row">
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card">
                <div class="card-header">
                    <h6>Member Information View</h6>
                </div>
                <div class="card-body table-responsive">
                    <table class="table table-bordered table-striped bg-light">
                        <tr>
                            <th>Member Name:</th>
                            <td><strong><?php echo $member->name; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Community Name Of Member:</th>
                            <td><strong><?php echo $member->communityName; ?></strong></td>
                        </tr>
                         <tr>
                            <th>Member's Number Of Children:</th>
                            <td><strong><?php echo $member->childNo; ?></strong></td>
                        </tr>
                        <?php

                             $i = 0;
                          if (!empty($members_info[0])):foreach ($members_info as $v_member):
                         ?>
                         <tr>
                            <th>Child Name and Child Age:</th>
                            <td><strong><?php echo $v_member->childName; ?>&nbsp;&nbsp;he/she is &nbsp; <?php echo $v_member->childAge; ?> &nbsp; years old </strong></td>
                        </tr>

                        <?php $i += $v_member->childAge; ?>
                        <?php endforeach; ?> 
                        <?php else : ?>
                             <p class="form-control-static"><strong> NO DATA FOUND</strong></p>
                        <?php endif; ?>
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