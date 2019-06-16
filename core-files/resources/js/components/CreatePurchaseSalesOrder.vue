<template>
    <div class="row">
        <div class="col-md-4">
            <div class="box" style="min-height: 495px">
                <div class="box-header">
                    <h4>SEARCH PRODUCT</h4>
                </div>
                <div class="box-body">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search Product" v-model="searchedText" v-on:keyup="searchItem">
                    </div>
                    <table class="table table-bordered">
                        <tbody>
                        <tr v-if="itemCollections.length" v-for="(product,index) in itemCollections">
                            <td v-on:click="selectProduct(index)" v-if="index < 10">{{ product.name }}</td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="box" style="min-height: 495px">
                <div class="box-header"><h4>SALES DETAILS</h4></div>
                <div class="box-body">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>PRODUCT NAME</th>
                            <th>PRICE</th>
                            <th>UNIT</th>
                            <th>QTY</th>
                            <th>DISCOUNT(%)</th>
                            <th>TOTAL</th>
                            <th>X</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr v-for="(soldProduct,index) in soldProducts">
                            <td>
                                {{ soldProduct.name }}
                                <input type="hidden" :name="'goods['+ index +'][id]'" v-model="soldProducts[index].id">
                            </td>
                            <td><input type="text" class="form-control input-sm" :name="'goods['+ index +'][price]'" v-model="soldProducts[index].price" v-on:keyup="changeQuantity(index)" style="width: 100px"></td>
                            <td>{{ soldProduct.unit ? soldProduct.unit.name : '' }}</td>
                            <td>
                                <input type="text" class="form-control input-sm" :name="'goods['+ index +'][quantity]'" v-model="soldProducts[index].quantity" v-on:keyup="changeQuantity(index)" style="width: 100px">
                            </td>
                            <td>
                                <input type="text" class="form-control input-sm" :name="'goods['+ index +'][discount]'" v-model="soldProducts[index].discount" v-on:keyup="changeQuantity(index)" style="width: 100px">
                            </td>
                            <td>{{ soldProduct.subTotal }}</td>
                            <td><button class="btn-remove" type="button" @click="deSelectProduct(index)">-</button></td>

                        </tr>
                        <tr v-if="!soldProducts.length">
                            <td colspan="6">No product </td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th colspan="5">Other Charge</th>
                            <th colspan="2"><input type="text" class="form-control input-sm" name="other_charge" v-model="otherCharge" v-on:keyup="calculateTotal(index)" style="width: 100px"></th>
                        </tr>
                        <tr>
                            <th colspan="5">Grand Total</th>
                            <th colspan="2">{{ this.soldTotal }}</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
            <div class="form-group text-right" style="margin: 15px;">
                <button class="btn btn-sm flat btn-success" type="submit" v-if="soldProducts.length">CREATE SALES ORDER</button>
            </div>
        </div>
    </div>
</template>

<script>

    export default {
        props: ['items'],

        data: function() {

            return {
                products: [],
                soldProducts: [],
                units: [],
                itemCollections: [],
                searchedText: "",
                soldTotal: 0,
                otherCharge: 0,
                discount: 0,
            };
        },

        methods: {
            selectProduct: function (index) {
                let item = this.itemCollections[index];
                console.log(item);
                this.itemCollections.splice(index,1);
                item.quantity = 0;
                item.subTotal = 0;
                item.discount = 0;
                item.price = 0;
                this.soldProducts.push(item);
                this.removeProduct(item.id);
                this.searchItem();
                this.calculateTotal();
            },
            removeProduct: function (id) {
                for (let i=0; i<this.products.length; i++){
                    if(this.products[i].id == id){
                        this.products.splice(i,1);
                        break;
                    }
                }
            },
            deSelectProduct: function (index) {
                let item = this.soldProducts[index];
                delete item.quantity;
                delete item.subTotal;
                delete item.discount;
                delete item.price;
                this.products.push(item);
                this.soldProducts.splice(index,1);
                this.searchItem();
                this.calculateTotal();
            },
            searchItem: function () {
                this.itemCollections = [];
                if(this.searchedText.length){
                    this.itemCollections = this.products.filter((item) => {
                        return item.name.toUpperCase().search(this.searchedText.toUpperCase()) != -1;
                    });
                }else{
                    this.itemCollections = this.products;
                }
            },
            changeQuantity: function (index) {
                let item = this.soldProducts[index];
                let discount = (parseFloat(item.discount ? item.discount : 0) / 100 );
                console.log(discount,st);
                let st = parseFloat(item.quantity ? item.quantity : 0) * parseFloat(item.price ? item.price : 0);
                let total_discount = st * discount;
                st = st - parseFloat(total_discount).toFixed(2);
                item.subTotal = st.toFixed(2);
                console.log(discount,st);
                this.soldProducts.splice(index,1,item);
                this.calculateTotal();
            },

            calculateTotal: function () {
                this.soldTotal = 0.0;
                for (let i=0; i<this.soldProducts.length; i++){
                    this.soldTotal += parseFloat(this.soldProducts[i].subTotal);
                }
                this.soldTotal += parseFloat(this.otherCharge ? this.otherCharge : 0);
                this.soldTotal -= parseFloat(this.discount ? this.discount : 0);

                this.soldTotal.toFixed(2);
            }



        },
        created: function() {
            this.itemCollections = this.items.products;
            this.products = this.items.products;
        },
        mounted() {

        },


    };
</script>
