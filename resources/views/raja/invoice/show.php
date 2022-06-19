<div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <div class="modal-header">
            <h2 class="modal-title" id="formModal" >Student Invoice</h2>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
       
<div class="modal-body" id="printTable">
                    <div class="">                            
                        <p class="form-control-static" style="text-align:center;"><strong>Full Name  : </strong><?php echo $student->fname; ?>&nbsp<?php echo $student->mname; ?>&nbsp<?php echo $student->lname; ?></p>
                    </div>
                    <div class="">
                            <p class="form-control-static" style="text-align:center;"><strong>Registration Date  : </strong><?php echo $student->yearStudy; ?></p>    
                    </div>
                    <div class="">
                            <p class="form-control-static" style="text-align:center;"><strong>Level Of School : </strong><?php echo $student->level; ?></p>    
                    </div>
                    <div class="">
                            <p class="form-control-static" style="text-align:center;"><strong>Class/standard/form level  : </strong><?php echo $student->class; ?></p>    
                    </div>
 <hr><br>                   
<div class="row">
<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="card" >
                <div class="card-header">
                    <h6>Student Fees Info Table</h6>
                </div>
                <div class="card-body table-responsive" >
                    <table class="table table-bordered table-striped bg-light">
                       
                        <?php
                          if (!empty($schools)):foreach ($schools as $school):
                        ?>
                         <tr>
                            <th>School Fee Type:</th>
                            <td><strong><?php echo $school->feeType; ?></strong></td>
                        </tr>
                         <tr>
                            <th>School Fee Price:</th>
                            <td><strong><?php echo $school->price; ?></strong></td>
                        </tr>
                        <?php endforeach; ?>
                        <?php else: ?>

                        <tr>Currently there is no school fees created</tr>   

                        <?php endif; ?>
                        

                    </table>
                </div>
            </div>
            </div><!-- ********************Allowance End ******************-->

<!-- ********************Deduction End  ******************-->

         

         
           

</div>
        </div>
        <div class="modal-footer">
        <a class="btn btn-warning" href="#null"  onclick="printContent('printTable')">Print</a>
        </div>
        <div class="modal-footer bg-whitesmoke br">
         
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      
    </div>
</div>

<script type="text/javascript">

    function printContent(id){
        str=document.getElementById(id).innerHTML
        newwin=window.open('','printwin','left=100,top=100,width=400,height=400')
        newwin.document.write('<HTML><HEAD> <link rel=\"stylesheet\" type=\"text/css\" href=\"CSS/style.css\"/>')
        newwin.document.write('<TITLE>Print Page</TITLE>\n')
        newwin.document.write('<script>\n')
        newwin.document.write('function chkstate(){\n')
        newwin.document.write('if(document.readyState=="complete"){\n')
        newwin.document.write('window.close()\n')
        newwin.document.write('}\n')
        newwin.document.write('else{\n')
        newwin.document.write('setTimeout("chkstate()",2000)\n')
        newwin.document.write('}\n')
        newwin.document.write('}\n')
        newwin.document.write('function print_win(){\n')
        newwin.document.write('window.print();\n')
        newwin.document.write('chkstate();\n')
        newwin.document.write('}\n')
        newwin.document.write('<\/script>\n')
        newwin.document.write('</HEAD>\n')
        newwin.document.write('<BODY onload="print_win()">\n')
        newwin.document.write(str)
        newwin.document.write('</BODY>\n')
        newwin.document.write('</HTML>\n')
        newwin.document.close()
    }

</script>