<template>
    <div>
        <div class="box">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>SELECT SALES ORDER</label>
                            <select name="sales_order_id" class="form-control" v-model="salesOrderId" v-on:change="changeSalesOrder" required>
                                <option value="">---Select Sales Order---</option>
                                <option v-for="salesOrder in salesOrders" :value="salesOrder.id">{{ salesOrder.id }}</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>SELECT PAYMENT TYPE</label>
                            <select name="payment_type_id" class="form-control" v-model="paymentTypeId" v-on:change="changePaymentType" required>
                                <option value="">---Select Payment Type---</option>
                                <option v-for="paymentType in paymentTypes" :value="paymentType.id">{{ paymentType.name }}</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>PAYMENT DATE</label>
                            <datepicker input-class="form-control" v-model="paymentDate"></datepicker>
                            <input type="hidden" name="payment_date" :value="dateOfPayment">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>AMOUNT</label>
                            <input type="text" name="amount" v-model="amount" :max="salesOrder.due" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3" v-for="(field,index) in fields">
                        <div class="form-group">
                            <label>{{ field.name }}</label>
                            <input type="text" :name="'fields[' + field.id + ']'" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="form-group text-right" v-if="amount > 0 && amount < salesOrder.due">
                    <button class="btn btn-success btn-sm" type="submit">CREATE</button>
                </div>
            </div>
        </div>

        <div class="box" v-if="salesOrder.name">
            <div class="box-header">
                <h4>SALES ORDER DETAILS</h4>
            </div>
            <div class="box-body">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td><strong>Date : </strong>{{ salesOrder.date }}</td>
                        <td><strong>Customer Name : </strong>{{ salesOrder.name }}</td>
                        <td><strong>Contact No : </strong>{{ salesOrder.contactNo }}</td>
                    </tr>
                    <tr>
                        <td><strong>Total Amount : </strong>{{ salesOrder.total }}</td>
                        <td><strong>Paid Amount : </strong>{{ salesOrder.paid }}</td>
                        <td><strong>Due Amount : </strong>{{ salesOrder.due }}</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>

<script>

    export default {
        props: ['items'],
        data: function() {

            return {
                paymentTypes: [],
                salesOrders: [],
                fields: [],
                paymentTypeId: "",
                paymentDate: new Date(),
                salesOrderId: "",
                salesOrder: {
                    date: null,
                    contactNo: null,
                    name: null,
                    total: null,
                    paid: null,
                    due: null,
                },
                amount: 0,
            };
        },
        computed: {
            dateOfPayment: function(){
                return this.paymentDate ? moment(this.paymentDate).format('YYYY-MM-DD') : '';
            },
        },

        methods: {
            changePaymentType: function(){
                if(this.paymentTypeId){
                    this.fields = [];
                    for(let i=0; i<this.paymentTypes.length; i++){
                        if(this.paymentTypes[i].id == this.paymentTypeId){
                            this.fields = this.paymentTypes[i].fields;
                        }
                    }
                }
                console.log(this.paymentTypeId);
            },
            changeSalesOrder: function(){
                if(this.salesOrderId){
                    console.log(this.salesOrderId);
                    for(let i=0; i<this.salesOrders.length; i++){
                        if(this.salesOrders[i].id == this.salesOrderId){
                            this.salesOrder.name = this.salesOrders[i].name;
                            this.salesOrder.date = this.salesOrders[i].sold_out_date;
                            this.salesOrder.contactNo = this.salesOrders[i].contact_no;
                            this.salesOrder.total = this.salesOrders[i].total_amount;
                            this.salesOrder.paid = this.salesOrders[i].paid_amount;
                            this.salesOrder.due = this.salesOrders[i].due_amount;
                        }
                    }
                }
                console.log(this.salesOrderId);
            },

        },
        created: function() {
            this.paymentTypes = this.items.paymentTypes;
            this.salesOrders = this.items.salesOrders;
            console.log("Hello There");
        },
        mounted() {

        },


    };
</script>