<?php

use Illuminate\Support\Facades\Route;
use App\Models\News;


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

// Website routes

Route::get('/','Website\HomeController@getHome')->name('getHome');

Route::get('/news/{slug}','Website\HomeController@getSingleNews')->name('getSingleNews');
Route::get('/category/{category}','Website\HomeController@getCategory')->name('getCategory');
Route::get('/author/{author}','Website\HomeController@getAuthor')->name('getAuthor');
Route::get('/searched','Website\HomeController@postSearch')->name('postSearch');
Route::post('add-comment','Website\HomeController@addComment')->name('addComment');
Route::get('/contact','Website\HomeController@getContact')->name('getContact');
Route::get('/subscriber',"Website\SubsController@getSubs")->name('getSubs');
// Admin routes

Auth::routes();



Route::prefix('/cms')->middleware('auth')->group(function(){

    // news

    Route::get('/',"Admin\HomeController@getAdminHome")->name('getAdminHome');
    Route::get('/add-news','Admin\HomeController@addNews')->name('addNews');
    Route::post('/add-news-post','Admin\HomeController@addNewsPost')->name('addNewsPost'); 
    Route::get('/delete-news/{id}','Admin\HomeController@deleteNews')->name('deleteNews');
    Route::get('/edit-news/{id}','Admin\HomeController@editNews')->name('editNews');
    Route::post('/edit-news-post/{id}','Admin\HomeController@editNewsPost')->name('editNewsPost');
   
    



    // author
    Route::prefix('/author')->group(function(){
        Route::get('/','Admin\AuthorController@getAdminAuthor')->name('getAdminAuthor');
        Route::get('/add-author','Admin\AuthorController@addAuthor')->name('addAuthor');
        Route::post('/add-author-post','Admin\AuthorController@addAuthorPost')->name('addAuthorPost');
        Route::get('/delete-author/{id}','Admin\AuthorController@deleteAuthor')->name('deleteAuthor');
        Route::get('/edit-author/{id}','Admin\AuthorController@editAuthor')->name('editAuthor');
        Route::post('/edit-author-post/{id}','Admin\AuthorController@editAuthorPost')->name('editAuthorPost');

    });

    // category
    Route::prefix('/category')->group(function(){
        Route::get('/',"Admin\CategoryController@getAdminCategory")->name('getAdminCategory');
        Route::get('/add-category','Admin\CategoryController@addCategory')->name('addCategory');
        Route::post('/add-category-post','Admin\CategoryController@addCategoryPost')->name('addCategoryPost');
        Route::get('/delete-category/{id}','Admin\CategoryController@deleteCategory')->name('deleteCategory');
        Route::get('/edit-category/{id}','Admin\CategoryController@editCategory')->name('editCategory');
        Route::post('edit-category-post/{id}','Admin\CategoryController@editCategoryPost')->name('editCategoryPost');


    });


    // Admin

    Route::get('/user-admin','Admin\AdminController@getAdmin')->name('getAdmin');

    // setting

    Route::prefix('/setting')->group(function(){
        Route::get('/','Admin\SettingController@getAdminSetting')->name('getAdminSetting');
        Route::get('/edit-settings','Admin\SettingController@editSettings')->name('editSettings');
        Route::post('/edit-settings-post',"Admin\SettingController@editSettingsPost")->name('editSettingsPost');

    });
    // subscribers

    Route::prefix('/sub')->group(function(){
        Route::get('/','Admin\Subscribers@getAdminSubs')->name('getAdminSubs');
        Route::get('/delete-sbus/{id}','Admin\Subscribers@deleteSubs')->name('deleteSubs');

    });

    // comments

    Route::prefix('/comment')->group(function(){
        Route::get('/','Admin\CommentsController@getComments')->name('getComments');
        Route::get('/delete-comment/{id}','Admin\CommentsController@deleteComment')->name('deleteComment');
    });
   

  


});
