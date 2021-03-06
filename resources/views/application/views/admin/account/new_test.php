<?= form_open(base_url('admin/account/new_test'), ['class' => 'form-horizontal']) ;
// $form->form_validation->set_rules('username', 'Username', 'required');
?>
<?php
$this->form_builder->text([
    'name' => 'username',
    // 'type' => 'textarea', // hidden, textarea, password, file
    'value' => set_value('username'),
    // 'error_class' => false, // by default TRUE
    // 'error_text' => false, // by default TRUE
    'id' => 'field_id',
    'class' => 'col-lg-5',
    'placeholder' => 'Field Placeholder',
    // 'maxlength' => 50,
    // 'size'   => '50',
    // 'style'  => 'width:50%',
    'required' => true,
    // 'group' => false,
    // 'disabled' => true, // by default false
    'label' => [
        'class' => 'col-lg-3',
        'text' => 'ABC'
    ],
    'help' => [
        // 'class' => 'text-danger',
        'text' => 'Field Help Text',
        // 'style' => 'background-color:red;',
    ],
    'other' => [
        // 'onClick' => "alert('Jeevan');"
    ]
]);
echo form_error('username', '<div class="error" style="color: red">', '</div>');

$this->form_builder->select([
    // 'type' => 'multi',
    'name' => 'roles', // 'roles[]
    'options' => [
        '' => 'Small Shirt',
        'med' => 'Medium Shirt',
        'large' => 'Large Shirt',
        'xlarge' => 'Extra Large Shirt',
    ],
    'select' => set_value('roles'), // roles[]
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
    'help' => [
        // 'class' => 'text-danger',
        'text' => 'Field Help Text',
        // 'style' => 'background-color:red;',
    ],
]);

$this->form_builder->select([
    'type' => 'multi',
    'name' => 'lang[]', // 'lang[]
    'options' => [
        'HI' => 'Hindi',
        'EN' => 'English',
    ],
    'label' => 'Select Language',
    'select' => set_value('lang[]'), // lang[]
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
    'help' => [
        // 'class' => 'text-danger',
        'text' => 'Field Help Text',
        // 'style' => 'background-color:red;',
    ],
]);

$this->form_builder->checkbox([
    'name' => 'accept_terms_checkbox',
    'text' => 'Please Select Check Box',
    'id' => 'newsletter',
    'value' => '1',
    // 'style'   => 'margin:10px'
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
]);

$this->form_builder->checkbox([
    'name' => 'multi_checkbox[]',
    'text' => 'Hindi',
    'id' => 'newsletter',
    'value' => '1',
    // 'style'   => 'margin:10px',
    'inline' => true,
    // 'group' => false,
    'error_text' => false, // by default TRUE
    // 'disabled' => true, // by default false
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
]);

$this->form_builder->checkbox([
    'name' => 'multi_checkbox[]',
    'text' => 'English',
    'id' => 'newsletter',
    'value' => '2',
    'inline' => true,
    // 'group' => false,
    // 'style'   => 'margin:10px'
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
]);

$this->form_builder->radio([
    'name' => 'radio',
    'text' => 'Male',
    'id' => 'newsletter',
    'value' => 'Male',
    // 'style'   => 'margin:10px'
    'error_text' => false, // by default TRUE
    // 'inline' => true,
    // 'group' => false,
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
]);

$this->form_builder->radio([
    'name' => 'radio',
    'text' => 'Female',
    'id' => 'newsletter',
    'value' => 'Female',
    // 'inline' => true,
    // 'group' => false,
    // 'style'   => 'margin:10px',
    // 'disabled' => true, // by default false
    'other' => [
        //  'onClick' => "alert('Jeevan');"
    ],
]);

$this->form_builder->text([
    'name' => 'file',
    'type' => 'file', // hidden, textarea, password, file
    'value' => set_value('file'),
    // 'error_class' => false, // by default TRUE
    // 'error_text' => false, // by default TRUE
    'id' => 'field_id',
    'placeholder' => 'Field Placeholder',
    'required' => true,
    // 'maxlength' => 50,
    // 'size'   => '50',
    // 'style'  => 'width:50%',
    // 'required' => true,
    // 'disabled' => true, // by default false
    'label' => [
        // 'class'=> 'label',
        'text' => 'Article Title'
    ],
    'help' => [
        // 'class' => 'text-danger',
        'text' => 'Field Help Text',
        // 'style' => 'background-color:red;',
    ],
    'other' => [
        // 'onClick' => "alert('Jeevan');"
    ]
]);

$this->form_builder->submit([
    'name' => 'submit_name',
    'id' => 'submit_id',
    // 'type' => 'reset', // submit and reset by default submit
    'value' => 'Login',
    // 'class' => 'btn btn-info btn-lg btn-block',
    'style' => 'margin-bottom: 8px;',
    // 'disabled' => true, // by default false
    'other' => [
        // 'onClick' => "alert('Jeevan');"
    ]
]);

$this->form_builder->submit([
    'name' => 'submit_name',
    'id' => 'submit_id',
    'type' => 'reset', // submit and reset by default submit
    // 'value' => 'Login',
    // 'class' => 'btn btn-outline-danger btn-block',
    'style' => 'margin-bottom: 8px;',
    // 'disabled' => true, // by default false
    'other' => [
        // 'onClick' => "alert('Jeevan');"
    ]
]);

$this->form_builder->button([
    'name' => 'submit_name',
    'id' => 'submit_id',
    'value' => '<i class="fa fa-image"></i> Button',
    // 'class' => 'btn btn-warning btn-lg btn-block',
    'style' => 'margin-bottom: 8px;',
    // 'disabled' => true, // by default false
    'other' => [
        // 'onClick' => "alert('Jeevan');"
    ]
]);
?>
<?= form_close() ?>