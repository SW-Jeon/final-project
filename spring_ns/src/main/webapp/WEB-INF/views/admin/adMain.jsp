<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- adminMain -->
<div class="wrapper">
		<!-- Sidebar -->
		<div class="sidebar sidebar-style-2">			
			<div class="sidebar-wrapper scrollbar scrollbar-inner">
				<div class="sidebar-content">
					<div class="user">
						<div class="avatar-sm float-left mr-2">
							<img src="../assets/img/profile.jpg" alt="..." class="avatar-img rounded-circle">
						</div>
						<div class="info">
							<a data-toggle="collapse" href="#collapseExample" aria-expanded="true">
								<span>
									Hizrian
									<span class="user-level">Administrator</span>
									<span class="caret"></span>
								</span>
							</a>
							<div class="clearfix"></div>

							<div class="collapse in" id="collapseExample">
								<ul class="nav">
									<li>
										<a href="#profile">
											<span class="link-collapse">My Profile</span>
										</a>
									</li>
									<li>
										<a href="#edit">
											<span class="link-collapse">Edit Profile</span>
										</a>
									</li>
									<li>
										<a href="#settings">
											<span class="link-collapse">Settings</span>
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<ul class="nav nav-primary">
						<li class="nav-item active">
							<a data-toggle="collapse" href="#dashboard" class="collapsed" aria-expanded="false">
								<i class="fas fa-home"></i>
								<p>Dashboard</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="dashboard">
								<ul class="nav nav-collapse">
									<li>
										<a href="../demo1/index.html">
											<span class="sub-item">Dashboard 1</span>
										</a>
									</li>
									<li>
										<a href="../demo2/index.html">
											<span class="sub-item">Dashboard 2</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-section">
							<span class="sidebar-mini-icon">
								<i class="fa fa-ellipsis-h"></i>
							</span>
							<h4 class="text-section">Components</h4>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#base">
								<i class="fas fa-layer-group"></i>
								<p>Base</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="base">
								<ul class="nav nav-collapse">
									<li>
										<a href="components/avatars.html">
											<span class="sub-item">Avatars</span>
										</a>
									</li>
									<li>
										<a href="components/buttons.html">
											<span class="sub-item">Buttons</span>
										</a>
									</li>
									<li>
										<a href="components/gridsystem.html">
											<span class="sub-item">Grid System</span>
										</a>
									</li>
									<li>
										<a href="components/panels.html">
											<span class="sub-item">Panels</span>
										</a>
									</li>
									<li>
										<a href="components/notifications.html">
											<span class="sub-item">Notifications</span>
										</a>
									</li>
									<li>
										<a href="components/sweetalert.html">
											<span class="sub-item">Sweet Alert</span>
										</a>
									</li>
									<li>
										<a href="components/font-awesome-icons.html">
											<span class="sub-item">Font Awesome Icons</span>
										</a>
									</li>
									<li>
										<a href="components/simple-line-icons.html">
											<span class="sub-item">Simple Line Icons</span>
										</a>
									</li>
									<li>
										<a href="components/flaticons.html">
											<span class="sub-item">Flaticons</span>
										</a>
									</li>
									<li>
										<a href="components/typography.html">
											<span class="sub-item">Typography</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#sidebarLayouts">
								<i class="fas fa-th-list"></i>
								<p>Sidebar Layouts</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="sidebarLayouts">
								<ul class="nav nav-collapse">
									<li>
										<a href="sidebar-style-1.html">
											<span class="sub-item">Sidebar Style 1</span>
										</a>
									</li>
									<li>
										<a href="overlay-sidebar.html">
											<span class="sub-item">Overlay Sidebar</span>
										</a>
									</li>
									<li>
										<a href="compact-sidebar.html">
											<span class="sub-item">Compact Sidebar</span>
										</a>
									</li>
									<li>
										<a href="static-sidebar.html">
											<span class="sub-item">Static Sidebar</span>
										</a>
									</li>
									<li>
										<a href="icon-menu.html">
											<span class="sub-item">Icon Menu</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#forms">
								<i class="fas fa-pen-square"></i>
								<p>Forms</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="forms">
								<ul class="nav nav-collapse">
									<li>
										<a href="forms/forms.html">
											<span class="sub-item">Basic Form</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#tables">
								<i class="fas fa-table"></i>
								<p>Tables</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="tables">
								<ul class="nav nav-collapse">
									<li>
										<a href="tables/tables.html">
											<span class="sub-item">Basic Table</span>
										</a>
									</li>
									<li>
										<a href="tables/datatables.html">
											<span class="sub-item">Datatables</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#maps">
								<i class="fas fa-map-marker-alt"></i>
								<p>Maps</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="maps">
								<ul class="nav nav-collapse">
									<li>
										<a href="maps/jqvmap.html">
											<span class="sub-item">JQVMap</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#charts">
								<i class="far fa-chart-bar"></i>
								<p>Charts</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="charts">
								<ul class="nav nav-collapse">
									<li>
										<a href="charts/charts.html">
											<span class="sub-item">Chart Js</span>
										</a>
									</li>
									<li>
										<a href="charts/sparkline.html">
											<span class="sub-item">Sparkline</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="nav-item">
							<a href="widgets.html">
								<i class="fas fa-desktop"></i>
								<p>Widgets</p>
								<span class="badge badge-success">4</span>
							</a>
						</li>
						<li class="nav-item">
							<a data-toggle="collapse" href="#submenu">
								<i class="fas fa-bars"></i>
								<p>Menu Levels</p>
								<span class="caret"></span>
							</a>
							<div class="collapse" id="submenu">
								<ul class="nav nav-collapse">
									<li>
										<a data-toggle="collapse" href="#subnav1">
											<span class="sub-item">Level 1</span>
											<span class="caret"></span>
										</a>
										<div class="collapse" id="subnav1">
											<ul class="nav nav-collapse subnav">
												<li>
													<a href="#">
														<span class="sub-item">Level 2</span>
													</a>
												</li>
												<li>
													<a href="#">
														<span class="sub-item">Level 2</span>
													</a>
												</li>
											</ul>
										</div>
									</li>
									<li>
										<a data-toggle="collapse" href="#subnav2">
											<span class="sub-item">Level 1</span>
											<span class="caret"></span>
										</a>
										<div class="collapse" id="subnav2">
											<ul class="nav nav-collapse subnav">
												<li>
													<a href="#">
														<span class="sub-item">Level 2</span>
													</a>
												</li>
											</ul>
										</div>
									</li>
									<li>
										<a href="#">
											<span class="sub-item">Level 1</span>
										</a>
									</li>
								</ul>
							</div>
						</li>
						<li class="mx-4 mt-2">
							<a href="http://themekita.com/atlantis-bootstrap-dashboard.html" class="btn btn-primary btn-block"><span class="btn-label mr-2"> <i class="fa fa-heart"></i> </span>Buy Pro</a> 
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!-- End Sidebar -->

		<div class="main-panel">
			<div class="content">
				<div class="panel-header bg-primary-gradient">
					<div class="page-inner py-5">
						<div class="d-flex align-items-left align-items-md-center flex-column flex-md-row">
							<div>
								<h2 class="text-white pb-2 fw-bold">Dashboard</h2>
								<h5 class="text-white op-7 mb-2">Free Bootstrap 4 Admin Dashboard</h5>
							</div>
							<div class="ml-md-auto py-2 py-md-0">
								<a href="#" class="btn btn-white btn-border btn-round mr-2">Manage</a>
								<a href="#" class="btn btn-secondary btn-round">Add Customer</a>
							</div>
						</div>
					</div>
				</div>
				<div class="page-inner mt--5">
					<div class="row mt--2">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Overall statistics</div>
									<div class="card-category">Daily information about statistics in system</div>
									<div class="d-flex flex-wrap justify-content-around pb-2 pt-4">
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-1"></div>
											<h6 class="fw-bold mt-3 mb-0">New Users</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-2"></div>
											<h6 class="fw-bold mt-3 mb-0">Sales</h6>
										</div>
										<div class="px-2 pb-2 pb-md-0 text-center">
											<div id="circles-3"></div>
											<h6 class="fw-bold mt-3 mb-0">Subscribers</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-body">
									<div class="card-title">Total income & spend statistics</div>
									<div class="row py-3">
										<div class="col-md-4 d-flex flex-column justify-content-around">
											<div>
												<h6 class="fw-bold text-uppercase text-success op-8">Total Income</h6>
												<h3 class="fw-bold">$9.782</h3>
											</div>
											<div>
												<h6 class="fw-bold text-uppercase text-danger op-8">Total Spend</h6>
												<h3 class="fw-bold">$1,248</h3>
											</div>
										</div>
										<div class="col-md-8">
											<div id="chart-container">
												<canvas id="totalIncomeChart"></canvas>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-8">
							<div class="card">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">User Statistics</div>
										<div class="card-tools">
											<a href="#" class="btn btn-info btn-border btn-round btn-sm mr-2">
												<span class="btn-label">
													<i class="fa fa-pencil"></i>
												</span>
												Export
											</a>
											<a href="#" class="btn btn-info btn-border btn-round btn-sm">
												<span class="btn-label">
													<i class="fa fa-print"></i>
												</span>
												Print
											</a>
										</div>
									</div>
								</div>
								<div class="card-body">
									<div class="chart-container" style="min-height: 375px">
										<canvas id="statisticsChart"></canvas>
									</div>
									<div id="myChartLegend"></div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card card-primary">
								<div class="card-header">
									<div class="card-title">Daily Sales</div>
									<div class="card-category">March 25 - April 02</div>
								</div>
								<div class="card-body pb-0">
									<div class="mb-4 mt-2">
										<h1>$4,578.58</h1>
									</div>
									<div class="pull-in">
										<canvas id="dailySalesChart"></canvas>
									</div>
								</div>
							</div>
							<div class="card">
								<div class="card-body pb-0">
									<div class="h1 fw-bold float-right text-warning">+7%</div>
									<h2 class="mb-2">213</h2>
									<p class="text-muted">Transactions</p>
									<div class="pull-in sparkline-fix">
										<div id="lineChart"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
						<div class="col-md-4">
							<div class="card card-primary bg-primary-gradient">
								<div class="card-body">
									<h4 class="mt-3 b-b1 pb-2 mb-4 fw-bold">Active user right now</h4>
									<h1 class="mb-4 fw-bold">17</h1>
									<h4 class="mt-3 b-b1 pb-2 mb-5 fw-bold">Page view per minutes</h4>
									<div id="activeUsersChart"></div>
									<h4 class="mt-5 pb-3 mb-0 fw-bold">Top active pages</h4>
									<ul class="list-unstyled">
										<li class="d-flex justify-content-between pb-1 pt-1"><small>/product/readypro/index.html</small> <span>7</span></li>
										<li class="d-flex justify-content-between pb-1 pt-1"><small>/product/atlantis/demo.html</small> <span>10</span></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-header">
									<div class="card-title">Feed Activity</div>
								</div>
								<div class="card-body">
									<ol class="activity-feed">
										<li class="feed-item feed-item-secondary">
											<time class="date" datetime="9-25">Sep 25</time>
											<span class="text">Responded to need <a href="#">"Volunteer opportunity"</a></span>
										</li>
										<li class="feed-item feed-item-success">
											<time class="date" datetime="9-24">Sep 24</time>
											<span class="text">Added an interest <a href="#">"Volunteer Activities"</a></span>
										</li>
										<li class="feed-item feed-item-info">
											<time class="date" datetime="9-23">Sep 23</time>
											<span class="text">Joined the group <a href="single-group.php">"Boardsmanship Forum"</a></span>
										</li>
										<li class="feed-item feed-item-warning">
											<time class="date" datetime="9-21">Sep 21</time>
											<span class="text">Responded to need <a href="#">"In-Kind Opportunity"</a></span>
										</li>
										<li class="feed-item feed-item-danger">
											<time class="date" datetime="9-18">Sep 18</time>
											<span class="text">Created need <a href="#">"Volunteer Opportunity"</a></span>
										</li>
										<li class="feed-item">
											<time class="date" datetime="9-17">Sep 17</time>
											<span class="text">Attending the event <a href="single-event.php">"Some New Event"</a></span>
										</li>
									</ol>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card full-height">
								<div class="card-header">
									<div class="card-head-row">
										<div class="card-title">Support Tickets</div>
										<div class="card-tools">
											<ul class="nav nav-pills nav-secondary nav-pills-no-bd nav-sm" id="pills-tab" role="tablist">
												<li class="nav-item">
													<a class="nav-link" id="pills-today" data-toggle="pill" href="#pills-today" role="tab" aria-selected="true">Today</a>
												</li>
												<li class="nav-item">
													<a class="nav-link active" id="pills-week" data-toggle="pill" href="#pills-week" role="tab" aria-selected="false">Week</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" id="pills-month" data-toggle="pill" href="#pills-month" role="tab" aria-selected="false">Month</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="card-body">
									<div class="d-flex">
										<div class="avatar avatar-online">
											<span class="avatar-title rounded-circle border border-white bg-info">J</span>
										</div>
										<div class="flex-1 ml-3 pt-1">
											<h6 class="text-uppercase fw-bold mb-1">Joko Subianto <span class="text-warning pl-3">pending</span></h6>
											<span class="text-muted">I am facing some trouble with my viewport. When i start my</span>
										</div>
										<div class="float-right pt-1">
											<small class="text-muted">8:40 PM</small>
										</div>
									</div>
									<div class="separator-dashed"></div>
									<div class="d-flex">
										<div class="avatar avatar-offline">
											<span class="avatar-title rounded-circle border border-white bg-secondary">P</span>
										</div>
										<div class="flex-1 ml-3 pt-1">
											<h6 class="text-uppercase fw-bold mb-1">Prabowo Widodo <span class="text-success pl-3">open</span></h6>
											<span class="text-muted">I have some query regarding the license issue.</span>
										</div>
										<div class="float-right pt-1">
											<small class="text-muted">1 Day Ago</small>
										</div>
									</div>
									<div class="separator-dashed"></div>
									<div class="d-flex">
										<div class="avatar avatar-away">
											<span class="avatar-title rounded-circle border border-white bg-danger">L</span>
										</div>
										<div class="flex-1 ml-3 pt-1">
											<h6 class="text-uppercase fw-bold mb-1">Lee Chong Wei <span class="text-muted pl-3">closed</span></h6>
											<span class="text-muted">Is there any update plan for RTL version near future?</span>
										</div>
										<div class="float-right pt-1">
											<small class="text-muted">2 Days Ago</small>
										</div>
									</div>
									<div class="separator-dashed"></div>
									<div class="d-flex">
										<div class="avatar avatar-offline">
											<span class="avatar-title rounded-circle border border-white bg-secondary">P</span>
										</div>
										<div class="flex-1 ml-3 pt-1">
											<h6 class="text-uppercase fw-bold mb-1">Peter Parker <span class="text-success pl-3">open</span></h6>
											<span class="text-muted">I have some query regarding the license issue.</span>
										</div>
										<div class="float-right pt-1">
											<small class="text-muted">2 Day Ago</small>
										</div>
									</div>
									<div class="separator-dashed"></div>
									<div class="d-flex">
										<div class="avatar avatar-away">
											<span class="avatar-title rounded-circle border border-white bg-danger">L</span>
										</div>
										<div class="flex-1 ml-3 pt-1">
											<h6 class="text-uppercase fw-bold mb-1">Logan Paul <span class="text-muted pl-3">closed</span></h6>
											<span class="text-muted">Is there any update plan for RTL version near future?</span>
										</div>
										<div class="float-right pt-1">
											<small class="text-muted">2 Days Ago</small>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		