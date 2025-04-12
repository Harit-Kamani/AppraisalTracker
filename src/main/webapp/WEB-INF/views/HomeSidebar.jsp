<jsp:include page="AdminHeader.jsp"></jsp:include>
<jsp:include page="AdminJs.jsp"></jsp:include>
<jsp:include page="AdminCss.jsp"></jsp:include>
<aside id="sidebar" class="sidebar">
    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link" href="index.html">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#users-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-person"></i><span>Users</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="users-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="addEmployee">
                        <i class="bi bi-circle"></i><span>Add New User</span>
                    </a>
                </li>
                <li>
                    <a href="listEmployee">
                        <i class="bi bi-circle"></i><span>Employee List</span>
                    </a>
                </li>
                
                <li>
                    <a href="listEmployee">
                        <i class="bi bi-circle"></i><span>User</span>
                    </a>
                </li>
                
            </ul>
        </li><!-- End Users Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#categories-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-basket2"></i><span>Category</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="categories-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="addcategory">
                        <i class="bi bi-circle"></i><span>Add New Category</span>
                    </a>
                </li>
                <li>
                    <a href="listcategory">
                        <i class="bi bi-circle"></i><span>List Category</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Categories Nav -->
        
        <li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#subcategories-nav" data-bs-toggle="collapse" href="#">
        <i class="bi bi-tag"></i><span>SubCategories</span><i class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="subcategories-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li>
            <a href="newsubcategory">
                <i class="bi bi-circle"></i><span>Add New SubCategory</span>
            </a>
        </li>
        <li>
            <a href="listsubcategory">
                <i class="bi bi-circle"></i><span>List SubCategories</span>
            </a>
        </li>
    </ul>
</li><!-- End SubCategories Nav -->
        

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="tables-general.html">
                        <i class="bi bi-circle"></i><span>General Tables</span>
                    </a>
                </li>
                <li>
                    <a href="tables-data.html">
                        <i class="bi bi-circle"></i><span>Data Tables</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Tables Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="charts-chartjs.html">
                        <i class="bi bi-circle"></i><span>Chart.js</span>
                    </a>
                </li>
                <li>
                    <a href="charts-apexcharts.html">
                        <i class="bi bi-circle"></i><span>ApexCharts</span>
                    </a>
                </li>
                <li>
                    <a href="charts-echarts.html">
                        <i class="bi bi-circle"></i><span>ECharts</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Charts Nav -->

        <li class="nav-heading">Pages</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>Profile</span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>Contact</span>
            </a>
        </li><!-- End Contact Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>Register</span>
            </a>
        </li><!-- End Register Page Nav -->

    </ul>
</aside>

<jsp:include page="AdminFooter.jsp"></jsp:include>