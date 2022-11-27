<?php

use App\Http\Controllers\CustomersController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\FixedAssetsController;
use App\Http\Controllers\Inventory\VariableAssetsController;
use App\Http\Controllers\ManageVariableRequest\VariableAcceptRejectStatusController;
use Facade\FlareClient\Stacktrace\File;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


Route::get('/', function () {
    return view('auth.login');
});

Auth::routes(['register' => false]);

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['web', 'auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::middleware('auth')->group(function () {

    Route::get('/home', 'HomeController@index')->name('home');
    Route::view('/file_manager', 'file_manager.index')->name('file_manager.index');

    // Accounting Route
    Route::resource('accountingdashboard', 'AccountingDashboardController');

    Route::resource('accountclassification', 'Accounting\AccountClassificationController');
    Route::get('classificationdependent/ajax/{id}', array('as' => 'classificationdependent.ajax', 'uses' => 'Accounting\AccountClassificationController@dependentAjax'));

    Route::resource('accounttype', 'Accounting\AccountTypeController');
    Route::get('accounttypedependent/ajax/{id}', array('as' => 'accounttypedependent.ajax', 'uses' => 'Accounting\AccountTypeController@dependentAjax'));

    Route::resource('chartofaccount', 'Accounting\ChartofAccountController');
    // Accounting Route


    // Inventory Route
    Route::resource('inventorydashboard', 'Inventory\DashboardController');

    Route::resource('material', 'Inventory\MaterialController');

    Route::resource('unitsofmeasure', 'Inventory\UnitsOfMeasureController');
    Route::resource('labour', 'Inventory\LabourController');

    Route::resource('warehouseplan', 'Inventory\WarehousePlanController'); //Old Not Using Now
    Route::resource('manage_warehouse_plan', 'Warehouse\ManageWareHousePlanController'); // New 

    Route::resource('managerequest', 'Inventory\ManageRequestController');
    Route::get('fixed_assets_completed_list', array('as' => 'fixed_assets_completed_list', 'uses' => 'Inventory\ManageRequestController@fixed_assets_completed_list'));
    Route::get('fixed_assets_reject_list', array('as' => 'fixed_assets_reject_list', 'uses' => 'Inventory\ManageRequestController@fixed_assets_reject_list'));
    Route::get('fixed_assets_status_completed/{id}', array('as' => 'fixed_assets_status_completed', 'uses' => 'Inventory\ManageRequestController@fixed_assets_status_completed'));
    Route::get('fixed_assets_status_incompleted/{id}', array('as' => 'fixed_assets_status_incompleted', 'uses' => 'Inventory\ManageRequestController@fixed_assets_status_incompleted'));


    Route::resource('variable_assets_size', 'Inventory\VariableAssetsSizeController');

    Route::resource('variable_assets_request', 'ManageVariableRequest\VariableAssetsRequestController');
    Route::get('variable_completed_list', array('as' => 'variable_completed_list', 'uses' => 'ManageVariableRequest\VariableAssetsRequestController@variable_completed_list'));
    Route::get('variable_reject_list', array('as' => 'variable_reject_list', 'uses' => 'ManageVariableRequest\VariableAssetsRequestController@variable_reject_list'));
    Route::get('change_request_status_completed/{id}', array('as' => 'change_request_status_completed', 'uses' => 'ManageVariableRequest\VariableAssetsRequestController@change_request_status_completed'));
    Route::get('change_request_status_incompleted/{id}', array('as' => 'change_request_status_incompleted', 'uses' => 'ManageVariableRequest\VariableAssetsRequestController@change_request_status_incompleted'));


    Route::resource('variable_ajax_request', 'ManageVariableRequest\VariableRequestAjaxController');


    Route::get('variable_logistics_check_create/{id}', [
        'as' => 'variable_logistics_check_create',
        'uses' => 'ManageVariableRequest\VariableLogisticsTeamCheckController@create'
    ]);

    Route::resource('variable_accept_reject_status', 'ManageVariableRequest\VariableAcceptRejectStatusController');
    Route::post('save_variable_accept_reject', [
        'as' => 'save_variable_accept_reject',
        'uses' => 'ManageVariableRequest\VariableAcceptRejectStatusController@save_variable_accept_reject'
    ]);
    Route::get('variable_accept_reject_remark', [VariableAcceptRejectStatusController::class, 'updateAcceptRejectRemark'])->name('variable_accept_reject_remark');
    Route::get('variable_accept_reject_status', [VariableAcceptRejectStatusController::class, 'updateAcceptRejectStatus'])->name('variable_accept_reject_status');


    Route::resource('variable_qs_team_check', 'ManageVariableRequest\VariableQsTeamCheckController');
    Route::get('variable_qs_team_check_create/{id}', [
        'as' => 'variable_qs_team_check_create',
        'uses' => 'ManageVariableRequest\VariableQsTeamCheckController@create'
    ]);

    Route::resource('variable_logistics_team_check', 'ManageVariableRequest\VariableLogisticsTeamCheckController');
    Route::get('variable_logistics_check_create/{id}', [
        'as' => 'variable_logistics_check_create',
        'uses' => 'ManageVariableRequest\VariableLogisticsTeamCheckController@create'
    ]);

    Route::resource('management_accept_reject', 'ManageVariableRequest\ManagementVariableAcceptRejectStatusController');
    Route::post('save_management_reject', [
        'as' => 'save_management_reject',
        'uses' => 'ManageVariableRequest\ManagementVariableAcceptRejectStatusController@save_management_variable_accept_reject'
    ]);

    Route::resource('variable_actual_voucher', 'ManageVariableRequest\VariableActualVoucherController');
    Route::get('variable_actual_voucher_upload/{id}', [
        'as' => 'variable_actual_voucher_upload',
        'uses' => 'ManageVariableRequest\VariableActualVoucherController@actual_voucher_upload'
    ]);

    Route::resource('variable_finance', 'ManageVariableRequest\VariableFinancePaymentSlipController');
    Route::get('finance_payslip_upload/{id}', [
        'as' => 'finance_payslip_upload',
        'uses' => 'ManageVariableRequest\VariableFinancePaymentSlipController@payment_slip_upload'
    ]);

    Route::resource('variable_logistics_send', 'ManageVariableRequest\VariableLogisticsTeamSendController');
    Route::get('variable_logistics_send_form/{id}', [
        'as' => 'variable_logistics_send_form',
        'uses' => 'ManageVariableRequest\VariableLogisticsTeamSendController@send_form'
    ]);


    //Project
    Route::resource('projectdashboard', 'Project\ProjectDashboardController');
    Route::resource('customers', 'CustomersController');
    Route::get('customerdependent/ajax/{id}', array('as' => 'customerdependent.ajax', 'uses' => 'CustomersController@dependentAjax'));
    Route::resource('proposal', 'Project\ProposalController');
    Route::get('proposal_grid_view', 'Project\ProposalController@grid_view');
    Route::resource('project', 'Project\ProjectController');
    Route::get('get_projects_ajax/ajax/{id}', array('as' => 'get_projects_ajax.ajax', 'uses' => 'Project\ProjectController@getProjectsAjax'));
    Route::post('projectsortable', 'Project\ProjectController@projectsortable');


    Route::resource('floorplan', 'FloorPlanController');
    Route::get('floorplancreate/{id}', [
        'as' => 'floorplan.create',
        'uses' => 'FloorPlanController@create'
    ]);


    Route::resource('processingfile', 'ProcessingFileController');
    Route::get('processingfilecreate/{id}', [
        'as' => 'createprocessingfile.create',
        'uses' => 'ProcessingFileController@create'
    ]);


    Route::resource('quotationproposal', 'QuotationProposalController');
    Route::get('quotationproposalcreate/{id}', [
        'as' => 'quotationproposal.create',
        'uses' => 'QuotationProposalController@create'
    ]);

    Route::resource('exteriordesign', 'ExteriorDesignController');
    Route::get('exterior_design_fees_create/{id}', [
        'as' => 'exterior_design_fees_create.create',
        'uses' => 'ExteriorDesignController@create'
    ]);


    Route::resource('structuredesignfees', 'StructureDesignFeesController');
    Route::get('structure_design_fees_create/{id}', [
        'as' => 'structure_design_fees_create.create',
        'uses' => 'StructureDesignFeesController@create'
    ]);


    Route::resource('structuredesign', 'StructureDesignController');
    Route::get('structuredesigncreate/{id}', [
        'as' => 'structuredesigncreate.create',
        'uses' => 'StructureDesignController@create'
    ]);


    Route::resource('archiexteriordesign', 'ArchiExteriorDesignController');
    Route::get('archiexteriordesigncreate/{id}', [
        'as' => 'archiexteriordesigncreate.create',
        'uses' => 'ArchiExteriorDesignController@create'
    ]);


    Route::resource('approvedby', 'ApprovedByController');
    Route::get('approvedbycreate/{id}', [
        'as' => 'approvedbycreate.create',
        'uses' => 'ApprovedByController@create'
    ]);


    Route::resource('permit', 'PermitController');
    Route::get('permitcreate/{id}', [
        'as' => 'permitcreate.create',
        'uses' => 'PermitController@create'
    ]);


    Route::resource('contract', 'ContractController');
    Route::get('contractcreate/{id}', [
        'as' => 'contractcreate.create',
        'uses' => 'ContractController@create'
    ]);


    //HR
    Route::resource('hrdashboard', 'HrDashboardController');
    Route::resource('engineer', 'hr\EngineerController');
    Route::get('project_add/{id}', [
        'as' => 'project_add',
        'uses' => 'hr\EngineerController@add_project'
    ]);
    Route::get('projects_users/ajax/{id}', array('as' => 'projects_users.ajax', 'uses' => 'hr\EngineerController@projectsUsersAjax'));

    //Department
    Route::resource('department', 'DepartmentController');
    Route::resource('role', 'RoleController');
    Route::resource('permission', 'PermissionController');

    Route::resource('employee', 'EmployeeController');
    Route::resource('leave', 'hr\LeaveController');
    Route::get('un_leave/{id}', 'hr\LeaveController@un_leave')->name('un_leave');
    Route::post('un_leave_update', 'hr\LeaveController@UnleaveUpdate')->name('un_leave_update');

    Route::resource('profile', 'ProfileController');
    Route::resource('changepassword', 'ChangePasswordController');


    // Inventory Route
    Route::resource('inventorydashboard', 'Inventory\DashboardController');

    Route::resource('material', 'Inventory\MaterialController');

    Route::resource('unitsofmeasure', 'Inventory\UnitsOfMeasureController');
    Route::resource('labour', 'Inventory\LabourController');

    Route::resource('warehouseplan', 'Inventory\WarehousePlanController');
    Route::resource('mainwarehouse', 'MainWarehouseController');

    Route::resource('fixedassets', 'FixedAssetsController');



    Route::resource('accept_reject_status', 'Inventory\AcceptRejectStatusController');
    Route::resource('qs_team_check', 'Inventory\QsTeamCheckController');
    Route::get('qs_team_check_create/{id}', [
        'as' => 'qs_team_check_create',
        'uses' => 'Inventory\QsTeamCheckController@create'
    ]);

    Route::resource('logistics_team_check', 'Inventory\LogisticsTeamCheckController');
    Route::get('logistics_team_check_create/{id}', [
        'as' => 'logistics_team_check_create',
        'uses' => 'Inventory\LogisticsTeamCheckController@create'
    ]);

    Route::resource('transferhistory', 'Inventory\TransferhistoryController');

    Route::resource('inventory_engineer_return', 'Inventory\EngineerReturnController');

    Route::resource('inventory_qs_team_check', 'Inventory\ReturnQsTeamCheckController');
    Route::get('inventory_qs_team_check_create/{id}', [
        'as' => 'inventory_qs_team_check_create',
        'uses' => 'Inventory\ReturnQsTeamCheckController@create'
    ]);

    Route::resource('return_logistics_team_check', 'Inventory\ReturnLogisticsTeamCheckController');
    Route::get('return_logistics_team_check_create/{id}', [
        'as' => 'return_logistics_team_check_create',
        'uses' => 'Inventory\ReturnLogisticsTeamCheckController@create'
    ]);

    Route::resource('received_by_store_manager', 'Inventory\ReceivedByStoreManagerController');
    Route::resource('variable_assets', 'Inventory\VariableAssetsController');
    Route::post('variable_assets_sortable', 'Inventory\VariableAssetsController@variable_assets_sortable');
    Route::get('get_variable_assets_ajax/{id}', array('as' => 'get_variable_assets_ajax', 'uses' => 'Inventory\VariableAssetsController@getVariableAssetsAjax'));

    //Engineering
    Route::resource('engineerdashboard', 'Engineer\EngineerDashboardController');
    Route::resource('sites', 'Engineer\SitesController');

    Route::resource('engrequest', 'Engineer\EngRequestController');
    Route::get('engrequest_create/{id}', [
        'as' => 'engrequest_create',
        'uses' => 'Engineer\EngRequestController@engrequest_create'
    ]);
    Route::resource('requestitem', 'Engineer\RequestItem');
    Route::resource('engineeringrequest', 'EngineerRequestController');
    Route::resource('manage_my_request', 'Engineer\ManageMyRequestController');
    Route::resource('received_by_engineer', 'Engineer\ReceivedByEngineerController');


    Route::resource('engineer_return', 'Engineer\EngineerReturnController');
    Route::get('engineer_return_create_with_customer/{customer_id}', [
        'as' => 'engineer_return_create_with_customer',
        'uses' => 'Engineer\EngineerReturnController@create'
    ]);

    Route::resource('engineer_variable_assets', 'Engineer\EngineerVariableAssetsController');
    Route::resource('variable_engineer_received', 'Engineer\VariableReceivedByEngineerController');

    Route::resource('weekly_photo', 'Engineer\WeeklyPhotoController');



    // Purchase
    Route::resource('fixed_assets_purchase', 'Purchase\FixedAssetsPurchaseController');
    Route::resource('activity', 'Activity\ActivityLogController');
    Route::resource('members_lists', 'MembersListsController');

    Route::resource('fixed_assets_voucher', 'Fixedassets\FixedAssetsVoucherController');
    Route::get('fixed_assets_voucher_create/{id}', [
        'as' => 'fixed_assets_voucher_create',
        'uses' => 'Fixedassets\FixedAssetsVoucherController@create_voucher'
    ]);

    Route::resource('unusable_fixed_assets', 'Fixedassets\UnusableFixedAssetsController');
    Route::get('unusable_fixed_asset_create/{id}', [
        'as' => 'unusable_fixed_asset_create',
        'uses' => 'Fixedassets\UnusableFixedAssetsController@unusable_fixed_asset_create'
    ]);





    Route::post('add_variable_assets_temporarie', 'General\VariableAssetsTemporaryController@store');
    Route::get('get_variable_assets_temporarie', array('as' => 'get_variable_assets_temporarie', 'uses' => 'General\VariableAssetsTemporaryController@index'));
    Route::get('remove_variable_assets_temporarie/{id}', array('as' => 'remove_variable_assets_temporarie', 'uses' => 'General\VariableAssetsTemporaryController@remove_variable_assets_temporarie'));
    Route::post('update_variable_assets_temporarie', 'General\VariableAssetsTemporaryController@update_variable_assets_temporarie');


    // BQ 
    Route::resource('bq_dashboard', 'Bq\BqDashboardController');
    Route::resource('project_bq', 'Bq\ProjectBqController');
    Route::resource('bq', 'Bq\BqController');
    Route::get('bq_create/{id}', [
        'as' => 'bq_create',
        'uses' => 'Bq\BqController@bq_create'
    ]);
    Route::get('project_bq_show/{id}/{project_id}/{work_scope_id}/{overall_status}', [
        'as' => 'project_bq_show',
        'uses' => 'Bq\ProjectBqController@project_bq_show'
    ]);
    Route::get('get_bq_item_edit/{id}', [
        'as' => 'get_bq_item_edit',
        'uses' => 'Bq\ProjectBqController@get_bq_item_edit'
    ]);
    Route::post('update_bq_item', 'Bq\ProjectBqController@update_bq_item')->name('update_bq_item');

    Route::get('bq_custom_create/{id}', [
        'as' => 'bq_custom_create',
        'uses' => 'Bq\ProjectBqController@bq_custom_create'
    ]);



    // Bq Labout Cost 
    Route::resource('bq_labour_cost', 'Bq\LabourCostController');
    Route::post('labour_costs_import', 'Bq\LabourCostController@labour_costs_import')->name('labour_costs_import');

    Route::resource('bq_temporary', 'Bq\BqTemporaryController');
    Route::post('store_bq_temporary', 'Bq\BqTemporaryController@store');
    Route::get('get_bq_temporary', array('as' => 'get_bq_temporary', 'uses' => 'Bq\BqTemporaryController@index'));
    Route::get('remove_bq_temporaries/{id}', array('as' => 'remove_bq_temporaries', 'uses' => 'Bq\BqTemporaryController@remove_bq_temporaries'));

    // Work Scope 
    Route::resource('work_scope', 'Bq\WorkScopeController');


    // No 
    Route::post('add_variable_bq_temporaries', 'General\VariableBqTemporaryController@store');
    Route::get('get_variable_bq_temporaries', array('as' => 'get_variable_bq_temporaries', 'uses' => 'General\VariableBqTemporaryController@index'));
    Route::get('remove_variable_bq_temporaries/{id}', array('as' => 'remove_variable_bq_temporaries', 'uses' => 'General\VariableBqTemporaryController@remove_variable_assets_temporarie'));
    Route::post('update_variable_bq_temporaries', 'General\VariableBqTemporaryController@update_variable_bq_temporaries');
    Route::post('update_rate_variable_bq_temporaries', 'General\VariableBqTemporaryController@update_rate_variable_bq_temporaries');


    Route::resource('variable_request_ssd', 'VariableRequest\VariableRequestSsdController');
    Route::get('get_variable_request_ssd', [
        'as' => 'get_variable_request_ssd',
        'uses' => 'VariableRequest\VariableRequestSsdController@getVariableRequest'
    ]);

    Route::get('get_logistics_check_items/{id}', [
        'as' => 'get_logistics_check_items',
        'uses' => 'VariableRequest\VariableRequestSsdController@get_logistics_check_items'
    ]);


    Route::get('get_request_item_show/{id}', [
        'as' => 'get_request_item_show',
        'uses' => 'VariableRequest\RequestItemController@show'
    ]);


    Route::resource('fixed_assets_buy_request', 'Fixedassets\FixedAssetsBuyRequestController');
    Route::resource('fixed_assets_approval', 'Fixedassets\FixedAssetsApprovalController');
    Route::get('fixed_assets_approval_create/{id}', 'Fixedassets\FixedAssetsApprovalController@approvalCreate')->name('fixed_assets_approval_create');
    Route::post('update_fixed_assets_approval_qty', 'Fixedassets\FixedAssetsApprovalController@UpdateFixedAssetsApprovalQty')->name('update_fixed_assets_approval_qty');
    Route::post('update_fixed_assets_approval_remark', 'Fixedassets\FixedAssetsApprovalController@UpdateFixedAssetsApprovalRemark')->name('update_fixed_assets_approval_remark');

    Route::resource('fixed_assets_received', 'Fixedassets\FiexdAssetsReceivedController');
    Route::get('fixed_assets_received_create/{id}', 'Fixedassets\FiexdAssetsReceivedController@receivedCreate')->name('fixed_assets_received_create');
    Route::post('update_fixed_assets_received_qty', 'Fixedassets\FiexdAssetsReceivedController@UpdateFixedAssetsReceivedQty')->name('update_fixed_assets_received_qty');
    Route::post('update_fixed_assets_received_remark', 'Fixedassets\FiexdAssetsReceivedController@UpdateFixedAssetsReceivedRemark')->name('update_fixed_assets_received_remark');


    Route::resource('testing', 'Testing\TestingController');



    // Export 
    Route::get('fixedassets_export', [FixedAssetsController::class, 'exportFixedAssets'])->name('fixedassets_export');
    Route::get('variable_assets_export', [VariableAssetsController::class, 'exportVariableAssets'])->name('variable_assets_export');
    Route::get('customer_export', [CustomersController::class, 'exportCustomer'])->name('customer_export');
    Route::get('user_export', [EmployeeController::class, 'exportUser'])->name('user_export');
});
