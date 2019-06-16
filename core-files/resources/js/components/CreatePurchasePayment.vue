<template>
    <div>
        <div class="box">
            <div class="box-body">
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>SELECT PURCHASE ORDER</label>
                            <select name="purchase_order_id" class="form-control" v-model="purchaseOrderId" v-on:change="changeSalesOrder" required>
                                <option value="">---Select Sales Order---</option>
                                <option v-for="purchaseOrder in purchaseOrders" :value="purchaseOrder.id">{{ purchaseOrder.id }}</option>
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
                            <input type="text" name="amount" v-model="amount" :max="purchaseOrder.due" class="form-control">
                        </div>
                    </div>
                    <div class="col-md-3" v-for="(field,index) in fields">
                        <div class="form-group">
                            <label>{{ field.name }}</label>
                            <input type="text" :name="'fields[' + field.id + ']'" class="form-control">
                        </div>
                    </div>
                </div>
                <div class="form-group text-right" v-if="amount > 0 && amount < purchaseOrder.due">
                    <button class="btn btn-success btn-sm" type="submit">CREATE</button>
                </div>
            </div>
        </div>

        <div class="box" v-if="purchaseOrder.name">
            <div class="box-header">
                <h4>PURCHASE ORDER DETAILS</h4>
            </div>
            <div class="box-body">
                <table class="table table-bordered">
                    <tbody>
                    <tr>
                        <td><strong>Date : </strong>{{ purchaseOrder.date }}</td>
                        <td><strong>Vendor Name : </strong>{{ purchaseOrder.name }}</td>
                        <td><strong>Contact No : </strong>{{ purchaseOrder.contactNo }}</td>
                    </tr>
                    <tr>
                        <td><strong>Total Amount : </strong>{{ purchaseOrder.total }}</td>
                        <td><strong>Paid Amount : </strong>{{ purchaseOrder.paid }}</td>
                        <td><strong>Due Amount : </strong>{{ purchaseOrder.due }}</td>
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
                purchaseOrders: [],
                fields: [],
                paymentTypeId: "",
                paymentDate: new Date(),
                purchaseOrderId: "",
                purchaseOrder: {
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
                console.log(this.paymentTypeId,this.paymentTypes);
            },
            changeSalesOrder: function(){
                if(this.purchaseOrderId){
                    console.log(this.purchaseOrderId,this.purchaseOrders);
                    for(let i=0; i<this.purchaseOrders.length; i++){
                        if(this.purchaseOrders[i].id == this.purchaseOrderId){
                            this.purchaseOrder.name = this.purchaseOrders[i].vendor ? this.purchaseOrders[i].vendor.name : '';
                            this.purchaseOrder.date = this.purchaseOrders[i].purchase_date;
                            this.purchaseOrder.contactNo = this.purchaseOrders[i].vendor ? this.purchaseOrders[i].vendor.contact_no : '';
                            this.purchaseOrder.total = this.purchaseOrders[i].amount;
                            this.purchaseOrder.paid = this.purchaseOrders[i].paid_amount;
                            this.purchaseOrder.due = this.purchaseOrders[i].due_amount;
                        }
                    }
                }
                console.log(this.purchaseOrderId);
            },

        },
        created: function() {
            this.paymentTypes = this.items.paymentTypes;
            this.purchaseOrders = this.items.purchaseOrders;
            console.log("Hello There");
        },
        mounted() {

        },


    };
</script>