<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper">
        <div class="sidebar-brand">
            <a href="{{url('home')}}">
                <?php
                  $settings= App\Models\System::first();
                  //$settings= App\Models\System::all()->where('added_by',auth()->user()->user_id);
?>
                <img alt="image" src="{{url('public/assets/img/logo')}}/{{$settings->picture}}" class="header-logo" />
                <span class="logo-name"></span>
            </a>
        </div>
        <ul class="sidebar-menu active show">
            @can('manage-dashboard')
            <li class="dropdown {{  request()->is('/dashboard') ? 'active' : '' }}">
                <a href="{{url('home')}}"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></a>
            </li>
            @endcan
         
            @can('manage-cotton')
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="command"></i><span>Manage
                        Cards</span></a>
                <ul class="dropdown-menu">



                    @can('view-top-up-operator')
                    <li><a class="nav-link" href="{{url('manage_cards')}}">Card Generetor</a></li>
                    @endcan
                    @can('view-top-up-center')
                    <li><a class="nav-link" href="{{url('top_up_center')}}">Top up Collection Center</a></li>
                    @endcan


                    @can('view-cotton-purchase')
                    <li><a class="nav-link" href="{{url('purchase_cotton')}}">Stock Control</a></li>
                    @endcan
                    @can('view-cotton-movement')
                    <li><a class="nav-link" href="{{url('cotton_movement')}}">Stock Movement</a></li>
                    @endcan
                    @can('view-reverse-top-up-center')
                    <li><a class="nav-link" href="{{url('reverse_top_up_center')}}"> Reversed Collection Center</a></li>
                    @endcan
                    @can('view-reverse-top-up-operator')
                    <li><a class="nav-link" href="{{url('reverse_top_up_operator')}}"> Reversed Operator </a></li>
                    @endcan

                    @can('view-district')
                    <li><a class="nav-link" href="{{url('district')}}"> Manage District </a></li>
                    @endcan
                    @can('view-operator')
                    <li><a class="nav-link" href="{{url('operator')}}">Manage Operator</a></li>
                    @endcan
                    @can('view-center')
                    <li><a class="nav-link" href="{{url('collection_center')}}">Manage Collection Center</a></li>
                    @endcan
                    @can('view-items')
                    <li><a class="nav-link" href="{{url('cotton_list')}}">Stock List</a></li>
                    @endcan
                    @can('view-items')
                    <li><a class="nav-link" href="{{url('levy_list')}}">Manage Levy</a></li>
                    @endcan

                    @can('view-reverse-top-up-operator')
                    <li><a class="nav-link" href="{{url('complete_operator')}}"> Complete Top Up Operator </a></li>
                    @endcan
                    @can('view-reverse-top-up-center')
                    <li><a class="nav-link" href="{{url('complete_center')}}"> Complete Top Up Centers</a></li>
                    @endcan
                    @can('view-connect')
                    <li><a class="nav-link" href="{{url('assign_center')}}">Assign Equipment to Center</a></li>
                    @endcan
                    @can('view-connect')
                    <li><a class="nav-link" href="{{url('reverse_assign_center')}}">Reversed Center Equiment</a></li>
                    @endcan
                </ul>
            </li>
            @endcan
            @can('manage-cotton')
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i
                        data-feather="command"></i><span>Reports</span></a>
                <ul class="dropdown-menu">
                    @can('view-stock-report')
                    <li><a class="nav-link" href="{{url('stock_report')}}"> Stock Report</a></li>
                    @endcan
                    @can('view-invoice-report')
                    <li><a class="nav-link" href="{{url('invoice_report')}}"> Invoice Report</a></li>
                    @endcan
                    @can('view-center-report')
                    <li><a class="nav-link" href="{{url('center_report')}}"> Collection Center Report</a></li>
                    <li><a class="nav-link" href="{{url('cotton_movement_report')}}"> Cotton Movement Report</a></li>
                    @endcan
                    @can('view-levy-report')
                    <li><a class="nav-link" href="{{url('levy_report')}}"> Levy Report</a></li>
                    @endcan
                    @can('view-levy-report')
                    <li><a class="nav-link" href="{{url('debtors_report')}}"> Debtors Report</a></li>
                    @endcan
                    @can('view-center-report')
                    <li><a class="nav-link" href="{{url('general_report')}}"> Report By District</a></li>
                    @endcan
                    @can('view-center-report')
                    <li><a class="nav-link" href="{{url('general_report2')}}"> General Report </a></li>
                    @endcan
                </ul>
            </li>
            @endcan

            <li><a class="nav-link" href="{{url('chatify')}}"><i class="fa fa-th-large"></i> <span
                        class="nav-label">Chatting</span> </a></li>


            @can('manage-access-control')
            <li class="dropdown{{ request()->is('setting/*') ? 'active' : '' }}">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i
                        data-feather="command"></i><span>{{__('permission.access_control')}}</span></a>
                <ul class="dropdown-menu">

                    <li class="{{ request()->is('setting/roleGroup') ? 'active' : '' }}"><a class="nav-link"
                            href="{{url('roles')}}">
                            {{__('permission.roles')}}</a>
                    </li>

                    @can('view-permission')
                    <li class="{{ request()->is('setting/roleGroup') ? 'active' :''}} "><a class="nav-link"
                            href="{{ url('permissions')}}">{{__('permission.permissions')}}</a>

                    </li>
                    @endcan
                    @can('view-user')
                    <li class=""><a class="nav-link" href="{{ url('system')}}">{{__('permission.system_setings')}}</a>

                    </li>
                    @endcan

                    @can('view-user')
                    <li class=""><a class="nav-link" href="{{url('departments')}}">Departments
                        </a></li>
                    @endcan

                    @can('view-user')
                    <li class=""><a class="nav-link" href="{{url('designations')}}">Designations
                        </a></li>
                    @endcan

                    @can('view-user')
                    <li class="{{ request()->is('users') ? 'active' : '' }}"><a class="nav-link"
                            href="{{url('users')}}">{{__('permission.user')}}
                            Management</a></li>
                    @endcan


                </ul>
            </li>
            @endcan


    </aside>
</div>