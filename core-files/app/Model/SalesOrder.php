<?php

namespace App\Model;

use App\Traits\CompanyTrait;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class SalesOrder extends Model
{
    use CompanyTrait;
    protected $fillable = ['name','contact_no','address','sold_out_date','status','total_amount','paid_amount','due_amount','return_product_amount','company_id','other_charge','payable_amount','type'];

    public function details(){
        return $this->hasMany('App\Model\SalesOrderDetail','sales_order_id','id');
    }

    public function purchaseSalesDetails(){
        return $this->hasMany('App\Model\PurchaseSalesDetail','sales_order_id','id');
    }

    public function setSoldOutDateAttribute($value)
    {
        $this->attributes['sold_out_date'] = Carbon::parse($value)->format('Y-m-d');
    }
}
