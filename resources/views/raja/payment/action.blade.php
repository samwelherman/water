@extends('layouts.master')


@section('content')
<section class="section">
    <div class="section-body">
        <div class="row">

            <div class="col-12 col-sm-12 col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4>School Fees Collection</h4>
                    </div>
                    <div class="card-body">
                        <!-- Tabs within a box -->
                        <ul class="nav nav-tabs">
                            <li class="nav-item"><a
                                    class="nav-link @if(empty($id)) active show @endif" href="#home2"
                                    data-toggle="tab">Collection of School Fees</a>
                            </li>
                        </ul>
                        <div class="tab-content tab-bordered">
                             <div class="tab-pane fade @if(empty($id)) active show @endif" id="home2">
                    {{ Form::open(['route' => 'student.store_payment','role'=>'form','enctype'=>'multipart/form-data']) }}
                                                @method('POST')
                                <div class="card">
                                    <div class="card-header">
                                        <h5>Student Details and School Fees Payment </h5>
                                    </div>
                                    <div class="card-body">

                                    <div class="">                            
                                        <p class="form-control-static" style="text-align:center;"><strong>Full Name  : </strong><?php echo $student->fname; ?>&nbsp<?php echo $student->mname; ?>&nbsp<?php echo $student->lname; ?>
                                        <input type="hidden" name="fname"
                                           value="<?php echo $student->fname; ?>"
                                            lass="form-control ">
                                            <input type="hidden" name="mname"
                                           value="<?php echo $student->mname; ?>"
                                            lass="form-control ">
                                            <input type="hidden" name="lname"
                                           value="<?php echo $student->lname; ?>"
                                            lass="form-control ">
                                        </p>
                                    </div>
                                    <div class="">
                                            <p class="form-control-static" style="text-align:center;"><strong>Registration Date  : </strong><?php echo $student->yearStudy; ?>
                                        <input type="hidden" name="yearStudy"
                                           value="<?php echo $student->yearStudy; ?>"
                                            lass="form-control ">
                                        </p>    
                                    </div>
                                    <div class="">
                                            <p class="form-control-static" style="text-align:center;"><strong>Level Of School : </strong><?php echo $student->level; ?>
                                        <input type="hidden" name="level"
                                           value="<?php echo $student->level; ?>"
                                            lass="form-control ">
                                        </p>    
                                    </div>
                                    <div class="">
                                            <p class="form-control-static" style="text-align:center;"><strong>Class/standard/form level  : </strong><?php echo $student->class; ?>
                                        <input type="hidden" name="class"
                                           value="<?php echo $student->class; ?>"
                                            lass="form-control ">
                                        </p>    
                                    </div>
 <hr><br>  


                                        <div class="row">
                                            <div class="col-sm-12 ">
                                                
                                               
                                               
                                        <div class="table-responsive">
                                    <table class="table table-striped " id="table-1">
                                        <thead>
                                            <tr>
                                                <th >#</th>
                                                <th>School Fee Type</th>
                                                <th>School Fee Price</th>
                                           
                                                <th class="col-sm-3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                       
                                            @if(!@empty($schools))
                                              @foreach ($schools as $row)
                                                <tr class="gradeA even" role="row">
                                                  <th>{{ $loop->iteration }}</th>
                                                   <td>{{$row->feeType}}<input type="hidden" name="feeType[]" value="{{$row->feeType}}"  class="form-control "></td>
                                                   <td>{{$row->price}}<input type="hidden" data-parsley-type="number" name="price[]" value="{{$row->price}}"  class="form-control "></td>
                                                   <td><div class="form-inline">
                                                <div class = "input-group"> 
                                             <input type="text" data-parsley-type="number"
                                                name="paid[]" required placeholder="Enter fee price paid by student" 
                                                 class="form-control">
                                        </div>
                                        </div>
                                        </td>      
                                                               
                                      </tr>
                                    @endforeach

                                    <div class="btn-bottom-toolbar text-center">
                                      <button type="submit"
                                         class="btn btn-sm btn-primary">Save Details</button>
                                                              
                                    </div>
                                
                                    @endif
                                
                                   </tbody>

                                   
                                       
                                    </table>
                                </div>
                                                

                                                
                                            
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                {!! Form::close() !!}
                            </div>
                            
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- discount Modal -->
<div class="modal inmodal show" id="appFormModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    </div>
</div>
</div>
</div>
@endsection

@section('scripts')
<script type="text/javascript">
    function model(id, type) {

        let url = '{{ route("school.show", ":id") }}';
        url = url.replace(':id', id)

        $.ajax({
            type: 'GET',
            url: url,
            data: {
                'type': type,
            },
            cache: false,
            async: true,
            success: function(data) {
                //alert(data);
                $('.modal-dialog').html(data);
            },
            error: function(error) {
                $('#appFormModal').modal('toggle');

            }
        });

    }
    </script>


<script type="text/javascript">
 $(document).ready(function () {
        var maxAppend = 0;
        $("#add_more_deduc").click(function () {
            var add_new = $('<div class="row">\n\
    <div class="col-sm-12"><input type="text" name="feeType[]" style="margin:5px 0px;height: 28px;width: 56%;" class="form-control" placeholder="Enter School Fee Type" required></div>\n\
<div class="col-sm-9"><input  type="text"  name="price[]" placeholder="Enter School Fee Price" required   class="form-control"></div>\n\
<div class="col-sm-3"><strong><a href="javascript:void(0);" class="remCF_deduc"><i class="fa fa-times"></i>&nbsp;Remove</a></strong></div></div>');
            maxAppend++;
            $("#add_new_deduc").append(add_new);

        });

        $("#add_new_deduc").on('click', '.remCF_deduc', function () {
            $(this).parent().parent().parent().remove();
        });
    });
</script>
<script type="text/javascript">
 $(document).on("change", function () {
        var sum = 0;
        var basic_salary= 0;
        var deduc = 0;

        $(".salary").each(function () {
            sum += +$(this).val();
         console.log(sum);
        });
         $(".basic_salary").each(function () {
            basic_salary += +$(this).val();
        });
        
        var provident_fund = ((basic_salary * 10 / 100 )).toFixed(2);
        $(".NSSF").val(provident_fund);
        
              
        

      var sub_total=sum- provident_fund ;


        var total_tax = tax_deduction_rule(sub_total);

        $(".PAYE").val(total_tax);

    

        $(".deduction").each(function () {
            deduc += +$(this).val();
        });
        
        var ctc = $("#ctc").val();
        $("#total").val(sum.toFixed(2));

        $("#deduc").val(deduc.toFixed(2));
        var net_salary = 0;
        net_salary = (sum - deduc).toFixed(2);
        $("#net_salary").val(net_salary);
    });

    function tax_deduction_rule(tax) {
        if (tax < 270000) {
            return "0";
        }
        else if (tax >= 270000 && tax < 520000) {
            return (0.08 * (tax - 270000)).toFixed(2);
        }
        else if (tax >= 520000 && tax < 760000) {
            var tr = (tax - 520000);
            var ttotal = ( tr * 20 / 100 );
            return ((20000 + ttotal)).toFixed(2);
        }
        else if (tax >= 760000 && tax < 1000000) {
            var tr = (tax - 760000);
            var ttotal = ( tr * 25 / 100 );
            return ((68000 + ttotal)).toFixed(2);
        } else if (tax >= 1000000) {
            var tr = (tax - 1000000);
            var ttotal = ( tr * 30 / 100 );
            return ((128000 + ttotal)).toFixed(2);
        }
    }


</script>
@endsection