<template>
    <div>
        <table class="table table-bordered table-striped" id="workorder_tbl" >
            <thead>
            <tr>
                <th>Product Title</th>
                <th>Unit</th>
                <th> Ordered Qty </th>
                <th> Delivered Qty </th>
                <th> Remaining Qty </th>
                <th> Delivery Qty </th>
                <th> Unit Price </th>
                <th> Sub Total</th>

            </tr>
            </thead>
            <tbody>
            <tr v-for="(product,index) in products">
                <td v-if="product.good">{{ product.good.name }} <input type="hidden" :name="'sales_od[' + index +'][sales_od_id]'" :value="product.id" ></td>
                <td v-else>{{ product.inventory_item.name }} <input type="hidden" :name="'sales_od[' + index +'][sales_od_id]'" :value="product.id" ></td>
                <td>{{ product.unit ? product.unit.name : '' }}</td>
                <td>{{ product.quantity }}</td>
                <td>{{ product.delivered_quantity }}</td>
                <td>{{ product.remaining_quantity }}</td>
                <td><input type="number" :name="'sales_od[' + index + '][quantity]'"  v-model="products[index].returned_quantity" class="form-control" :max="product.remaining_quantity" v-on:keyup="calculateSubtotal(index)"></td>
                <td>{{ product.unit_price }}</td>
                <td>{{ product.unit_price * products[index].returned_quantity }}</td>
            </tr>
            <tr>
                <td colspan="7">Grand Total</td>
                <td>{{ total }}</td>
            </tr>

            </tbody>
        </table>
        <div class="form-group text-right">
            <button class="btn btn-sm btn-success" type="submit">Create Sales Chalan</button>
        </div>
    </div>
</template>

<script>

    export default {
        props: ['uri'],
        data: function() {

            return {
                products: [],
                total: 0,
                apiUrl: null
            };
        },

        methods: {
            loadItems: function(id){

                if(!id){
                    this.products = [];
                    return;
                }

                //console.log(id);

                var app =this;
                axios.get(this.apiUrl + '/' + id)
                    .then(response => {
                        app.products = response.data;

                    })
                    .catch(e => {
                        this.errors.push(e)
                    });
            },
            calculateSubtotal: function(index){
                let t = this.products[index];
                console.log(index,t);
                let q = t.returned_quantity;
                let p = t.unit_price;
                let delivered_amount = parseFloat(p) * parseInt(q);
                t.delivered_amount = delivered_amount;
                this.products.splice(index,1,t);
                this.grandTotal();
            },
            grandTotal: function () {

                this.total = 0;

                for (let i=0; i<this.products.length; i++){
                    this.total += parseFloat(this.products[i].unit_price * this.products[i].returned_quantity);
                }

            }

        },
        created: function() {
            this.apiUrl = this.uri;
        },
        mounted() {

        },


    };
</script>