<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubCategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\ColorController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/admin/login', [AuthController::class, 'login'])->name('admin.login');
Route::post('/admin/login', [AuthController::class, 'login_proses'])->name('admin.login.proses');
Route::get('/admin/logout', [AuthController::class, 'logout'])->name('admin.logout');

Route::group(['middleware'=> 'admin'], function(){

    Route::get('/admin/dashboard', [DashboardController::class, 'dashboard'])->name('admin.dashboard');

    Route::get('/admin/admin/list', [AdminController::class, 'list'])->name('admin.admin.list');
    Route::get('/admin/admin/add', [AdminController::class, 'add'])->name('admin.admin.add');
    Route::post('/admin/admin/add', [AdminController::class, 'insert'])->name('admin.admin.insert');
    Route::get('/admin/admin/edit/{id}', [AdminController::class, 'edit'])->name('admin.admin.edit');
    Route::post('/admin/admin/edit/{id}', [AdminController::class, 'update'])->name('admin.admin.update');
    Route::get('/admin/admin/delete/{id}', [AdminController::class, 'delete'])->name('admin.admin.delete');

    Route::get('/admin/category/list', [CategoryController::class, 'list'])->name('admin.category.list');
    Route::get('/admin/category/add', [CategoryController::class, 'add'])->name('admin.category.add');
    Route::post('/admin/category/add', [CategoryController::class, 'insert'])->name('admin.category.insert');
    Route::get('/admin/category/edit/{id}', [CategoryController::class, 'edit'])->name('admin.category.edit');
    Route::post('/admin/category/edit/{id}', [CategoryController::class, 'update'])->name('admin.category.update');
    Route::get('/admin/category/delete/{id}', [CategoryController::class, 'delete'])->name('admin.category.delete');


    Route::get('/admin/sub_category/list', [SubCategoryController::class, 'list'])->name('admin.subcategory.list');
    Route::get('/admin/sub_category/add', [SubcategoryController::class, 'add'])->name('admin.subcategory.add');
    Route::post('/admin/sub_category/add', [SubcategoryController::class, 'insert'])->name('admin.subcategory.insert');
    Route::get('/admin/sub_category/edit/{id}', [SubCategoryController::class, 'edit'])->name('admin.subcategory.edit');
    Route::post('/admin/sub_category/edit/{id}', [SubCategoryController::class, 'update'])->name('admin.subcategory.update');
    Route::get('/admin/sub_category/delete/{id}', [SubCategoryController::class, 'delete'])->name('admin.subcategory.delete');
   
    Route::post('/admin/get_sub_category', [SubCategoryController::class, 'get_sub_category'])->name('admin.getsubcategory');

    Route::get('/admin/brand/list', [BrandController::class, 'list'])->name('admin.brand.list');
    Route::get('/admin/brand/add', [BrandController::class, 'add'])->name('admin.brand.add');
    Route::post('/admin/brand/add', [BrandController::class, 'insert'])->name('admin.brand.insert');
    Route::get('/admin/brand/edit/{id}', [BrandController::class, 'edit'])->name('admin.brand.edit');
    Route::post('/admin/brand/edit/{id}', [BrandController::class, 'update'])->name('admin.brand.update');
    Route::get('/admin/brand/delete/{id}', [BrandController::class, 'delete'])->name('admin.brand.delete');

    Route::get('/admin/color/list', [ColorController::class, 'list'])->name('admin.color.list');
    Route::get('/admin/color/add', [ColorController::class, 'add'])->name('admin.color.add');
    Route::post('/admin/color/add', [ColorController::class, 'insert'])->name('admin.color.insert');
    Route::get('/admin/color/edit/{id}', [ColorController::class, 'edit'])->name('admin.color.edit');
    Route::post('/admin/color/edit/{id}', [ColorController::class, 'update'])->name('admin.color.update');
    Route::get('/admin/color/delete/{id}', [ColorController::class, 'delete'])->name('admin.color.delete');

    Route::get('/admin/product/list', [ProductController::class, 'list'])->name('admin.product.list');
    Route::get('/admin/product/add', [ProductController::class, 'add'])->name('admin.product.add');
    Route::post('/admin/product/add', [ProductController::class, 'insert'])->name('admin.product.insert');
    Route::get('/admin/product/edit/{id}', [ProductController::class, 'edit'])->name('admin.product.edit');
    Route::post('/admin/product/edit/{id}', [ProductController::class, 'update'])->name('admin.product.update');

    Route::get('/admin/product/image_delete/{id}', [ProductController::class, 'iamge_delete'])->name('admin.product.iamge_delete');

});



