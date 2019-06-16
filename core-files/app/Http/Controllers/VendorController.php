<?php

namespace App\Http\Controllers;

use App\Model\PurchaseOrder;
use App\Model\Vendor;
use Illuminate\Http\Request;

class VendorController extends Controller
{
    public function index($company_id){
        $vendors = Vendor::where('company_id','=',$company_id)->orderBy('name','asc')->get();
        return view('admin.vendor.index')->with([
            'vendors'   => $vendors
        ]);
    }

    public function profile($company_id,$vendor_id){
        $purchase_orders = PurchaseOrder::where([
            ['company_id','=',$company_id],
            ['vendor_id','=',$vendor_id],
        ])->get();
        return view('vendor.purchase-orders')->with([
            'purchase_orders'   => $purchase_orders
        ]);
    }

    public function store(Request $request){
        $this->validate($request,[
            'name'  => 'required',
            'contact_no'  => 'required',
            'address'  => 'required',
        ]);
        Vendor::create($request->all());
        return redirect()->back()->withMessage([
            'status'    => true,
            'text'      => 'Successfully created vendor.'
        ]);
    }

    public function update(Request $request,$company_id,$id){
        $this->validate($request,[
            'name'  => 'required',
            'contact_no'  => 'required',
            'address'  => 'required',
        ]);
        Vendor::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->update($request->only('name','contact_no','address'));
        return redirect()->back()->withMessage([
            'status'    => true,
            'text'      => 'Successfully updated vendor.'
        ]);
    }
    public function delete($company_id,$id){
        Vendor::where([
            'company_id'    => $company_id,
            'id'            => $id
        ])->delete();
        return redirect()->back()->withMessage([
            'status'    => true,
            'text'      => 'Successfully deleted vendor.'
        ]);
    }
}
