<aside class="main-sidebar sidebar-dark-primary elevation-4">
  <!-- Brand Logo -->
  <div href="#" class="brand-link" style="text-align: center">
    <span class="brand-text font-weight-light">rpl-Mart</span>
  </div>

  <!-- Sidebar -->
  <div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    

    <!-- SidebarSearch Form -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
      <div class="image">
        <img src="{{asset('lte/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2">
      </div>
      <div class="info">
        <a class="d-block">{{Auth::user()->name}}</a>
      </div>
    </div>

    <!-- Sidebar Menu -->
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
           with font-awesome or any other icon font library -->
           <li class="nav-item">
            <a href="{{route('admin.dashboard')}}" class="nav-link @if(Request::segment(2) == 'dashboard') active @endif" >
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
            
          </li>
          <li class="nav-item">
            <a href="{{route('admin.admin.list')}}" class="nav-link @if(Request::segment(2) == 'admin') active @endif">
              <i class="nav-icon fas fa-user-tie"></i>
              <p>
                admin
                
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/admin/user" class="nav-link ">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Users
              </p>
            </a>
            
          </li>



          <li class="nav-item">
            <a href="{{url('admin/category/list')}}" class="nav-link @if(Request::segment(2) == 'category') active @endif">
              <i class="nav-icon fas fa-list-alt"></i>
              <p>
                Category
              </p>
            </a>
            
          </li>

          <li class="nav-item">
            <a href="{{url('admin/sub_category/list')}}" class="nav-link @if(Request::segment(2) == 'sub_category') active @endif">
              <i class="nav-icon fas fa-list-alt"></i>
              <p>
                Sub Category
              </p>
            </a>
            
          </li>

          <li class="nav-item">
            <a href="{{url('admin/brand/list')}}" class="nav-link @if(Request::segment(2) == 'brand') active @endif">
              <i class="nav-icon fas fa-list-alt"></i>
              <p>
                Brand
              </p>
            </a>
            
          </li>

          <li class="nav-item">
            <a href="{{url('admin/color/list')}}" class="nav-link @if(Request::segment(2) == 'color') active @endif">
              <i class="nav-icon fas fa-palette"></i>
              <p>
                Color
              </p>
            </a>
            
          </li>

          <li class="nav-item">
            <a href="{{url('admin/product/list')}}" class="nav-link @if(Request::segment(2) == 'product') active @endif">
              <i class="nav-icon fas fa-boxes"></i>
              <p>
                Products
              </p>
            </a>
            
          </li>


          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-coins"></i>
              <p>
                Transaction
              </p>
            </a>
            
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cart"></i>
              <p>
                Orders
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
            
          </li>

          <li class="nav-item">
            <a href="{{route('admin.logout')}}" class="nav-link">
              <i class="nav-icon fas fa-sign-out-alt"></i>
              <p>
                Logout
              </p>
            </a>
            
          </li>

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>