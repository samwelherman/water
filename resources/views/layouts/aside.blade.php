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
                  
                    <li><a class="nav-link" href="{{url('manage_cards')}}">Card Generetor</a></li>
                    <li><a class="nav-link" href="{{route('manage_cards.create')}}">Card Assignment</a></li>
                    <li><a class="nav-link" href="{{route('card.manage')}}">Card Management</a></li>
                    <li><a class="nav-link" href="{{route('customer.list')}}">Customer List</a></li>
                 
                </ul>
            </li>
            @endcan
            
            @can('manage-cotton')
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="command"></i><span>System Setting
                        </span></a>
                <ul class="dropdown-menu">
                    
                    <li><a class="nav-link" href="{{url('water/water')}}">Locations</a></li>
   
                    <li><a class="nav-link" href="{{url('water/unit')}}">Set Unit Price</a></li>
            
                    <li><a class="nav-link" href="{{url('water/meter')}}">Meter Registration</a></li>
              
                    <li><a class="nav-link" href="{{url('water/customer')}}">Customer Registration</a></li>
         
                    <li><a class="nav-link" href="{{url('water/daily')}}">Daily Unit Limit</a></li>
           
                </ul>
            </li>
            @endcan
            @can('manage-cotton')
            <!--
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i
                        data-feather="command"></i><span>Reports</span></a>
                <ul class="dropdown-menu">
                    @can('view-stock-report')
                    <li><a class="nav-link" href=""> Daily Water Consuption</a></li>
                    @endcan
                    @can('view-invoice-report')
                    <li><a class="nav-link" href=""> Income Report</a></li>
                    @endcan
                  
                </ul>
            </li> -->
            @endcan

             @can('manage-cotton')
            <li class="dropdown">
                <a href="#" class="menu-toggle nav-link has-dropdown"><i data-feather="command"></i><span>Token Processing
                        </span></a>
                <ul class="dropdown-menu">
                    @can('view-stock-report')
                    <li><a class="nav-link" href="{{url('token/block')}}">Block Definition</a></li>
                    @endcan
                    @can('view-stock-report')
                    <li><a class="nav-link" href="{{url('token/token')}}">Token Generation</a></li>
                    @endcan
                    @can('view-stock-report')
                    <li><a class="nav-link" href="{{url('token/tokenTest')}}">Token Testing</a></li>
                    @endcan
                </ul>
            </li>
            @endcan

           


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