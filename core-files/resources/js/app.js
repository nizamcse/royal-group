
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
//import datetime from 'vuejs-datetimepicker';
//import datetime from 'vue-datetime-picker';
//import Datetime from 'vue-datetime'
import {Datetime} from 'vue-datetime'

import Datepicker from 'vuejs-datepicker';
// You need a specific loader for CSS files
import 'vue-datetime/dist/vue-datetime.css'
window.Vue = require('vue');

/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

Vue.component('create-purchase-order', require('./components/CreatePurchaseOrder.vue'));
Vue.component('edit-purchase-order', require('./components/EditPurchaseOrder.vue'));
Vue.component('create-production', require('./components/CreateProduction.vue'));
Vue.component('create-production-product', require('./components/CreateProductionProduct.vue'));
Vue.component('create-product-release', require('./components/CreateProductionProductRelease.vue'));
Vue.component('date-time', require('./components/DatetimeInput.vue'));
Vue.component('create-sales-order', require('./components/CreateSalesOrder.vue'));
Vue.component('create-purchase-sales-order', require('./components/CreatePurchaseSalesOrder.vue'));
Vue.component('create-sales-chalan', require('./components/CreateSalesChalan.vue'));
Vue.component('create-sales-return-chalan', require('./components/CreateSalesReturnChalan.vue'));
Vue.component('create-journal', require('./components/CreateJournal.vue'));
Vue.component('update-journal', require('./components/UpdateJournal.vue'));
Vue.component('create-transaction', require('./components/CreateTransaction.vue'));
Vue.component('create-company', require('./components/CreateCompany.vue'));
Vue.component('create-sales-payment', require('./components/CreateSalesPayment.vue'));
Vue.component('create-purchase-payment', require('./components/CreatePurchasePayment.vue'));
Vue.component('create-role', require('./components/CreateRole.vue'));
Vue.component('vacation-form', require('./components/VacationForm.vue'));
Vue.component('leave', require('./components/Leave.vue'));
Vue.component('create-leave', require('./components/CreateLeaveForm.vue'));
Vue.component('create-salary', require('./components/CreateSalaryForm.vue'));
Vue.component('account-statement', require('./components/AccountStatement.vue'));
Vue.component('update-company', require('./components/UpdateCompany.vue'));
Vue.component('update-password', require('./components/UpdatePassword.vue'));
Vue.component('attendance-report', require('./components/AttendanceReport.vue'));
Vue.component('pagination', require('./components/Pagination.vue'));
Vue.component('purchase-order', require('./components/PurchaseOrders.vue'));
Vue.component('sales-order', require('./components/SalesOrders.vue'));
Vue.component('journals', require('./components/Journals.vue'));
Vue.component('employee-salaries', require('./components/EmployeeSalaries.vue'));
Vue.component('datetime', Datetime);
Vue.component('datepicker', Datepicker);

// const files = require.context('./', true, /\.vue$/i)
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key)))

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

const app = new Vue({
    el: '#app'
});


var purchaseOrder = document.getElementById("select-sales-order");
if(purchaseOrder){
    purchaseOrder.onchange = function () {
        var so_id = this.value;
        if(app.$refs.getSalesOrderItem){
            app.$refs.getSalesOrderItem.loadItems(so_id);
        }
    }
}
