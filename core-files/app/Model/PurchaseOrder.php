<?php

namespace App\Model;

use App\Traits\CompanyTrait;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class PurchaseOrder extends Model
{
    use CompanyTrait;
    protected $fillable = ['vendor_id','challan_no_mannual','challan_no_auto','purchase_date','amount','due_amount','paid_amount','status','company_id'];

    public function vendor(){
        return $this->belongsTo('App\Model\Vendor','vendor_id','id');
    }

    public function logs(){
        return $this->hasMany('App\Model\PurchaseOrderDetailLog','purchase_order_id','id');
    }

    public function groupByGrade(){
        return $this->logs->groupBy('grade');
    }

    public function rawMaterials(){
        return $this->hasMany('App\Model\PurchaseOrderDetail','purchase_order_id','id')->where('material_type','=',1);
    }

    public function otherMaterials(){
        return $this->hasMany('App\Model\PurchaseOrderDetail','purchase_order_id','id')->where('material_type','=',2);
    }

    public function vendorName(){
        return $this->vendor ? $this->vendor->name : "";
    }
    public function setPurchaseDateAttribute($value)
    {
        $this->attributes['purchase_date'] = Carbon::parse($value)->format('Y-m-d');
    }
}
