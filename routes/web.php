<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\HomeController;
use \App\Http\Controllers\ContactController;
use App\Http\Controllers\ReviewController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\AboutController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [HomeController::class, 'index']);

Route::get('/contact', [ContactController::class, 'index']);
Route::post('/contact/store', [ContactController::class, 'store']);

Route::post('/review/store', [ReviewController::class, 'store'])->middleware(['auth']);

Route::get('/about', [AboutController::class, 'index']);

Route::middleware('HasDashboardPermission')->group(function () {
    Route::get('/admin/dashboard', [HomeController::class, 'dashboardIndex']);
    Route::get('/admin/products/index', [ProductController::class, 'adminIndex']);
    Route::get('/admin/product/delete/{id}', [ProductController::class, 'delete']);
    Route::get('/admin/product/edit/{id}', [ProductController::class, 'edit']);
    Route::post('/admin/product/store', [ProductController::class, 'store']);
    Route::post('/admin/product/update', [ProductController::class, 'update']);

    Route::get('/admin/contacts/index', [ContactController::class, 'indexDashboard']);
    Route::get('/admin/contact/delete/{id}', [ContactController::class, 'delete']);

    Route::get('/admin/product/create', [ProductController::class, 'create']);
    Route::post('/admin/product/store', [ProductController::class, 'store']);


    Route::group(['middleware' => 'HasAdminPermission'], function () {

        Route::get('/admin/employees/index', [EmployeeController::class, 'indexDashboard']);
        Route::get('/admin/employee/delete/{id}', [EmployeeController::class, 'delete']);
        Route::get('/admin/employee/edit/{id}', [EmployeeController::class, 'edit']);
        Route::post('/admin/employee/update', [EmployeeController::class, 'update']);

        Route::get('/admin/suppliers/index', [SupplierController::class, 'indexDashboard']);
        Route::get('/admin/supplier/delete/{id}', [SupplierController::class, 'delete']);
        Route::get('/admin/supplier/edit/{id}', [SupplierController::class, 'edit']);
        Route::post('/admin/supplier/update', [SupplierController::class, 'update']);

        Route::get('/admin/users/index', [UserController::class, 'indexDashboard']);
        Route::get('/admin/user/delete/{id}', [UserController::class, 'delete']);
        Route::get('/admin/user/edit/{id}', [UserController::class, 'edit']);
        Route::post('/admin/user/update', [UserController::class, 'update']);

        
        Route::get('/admin/supplier/create', [SupplierController::class, 'create']);
        Route::get('/admin/employee/create', [EmployeeController::class, 'create']);

    
        Route::post('/admin/supplier/store', [SupplierController::class, 'store']);
        Route::post('/admin/employee/store', [EmployeeController::class, 'store']);
    });

});

