<?php

namespace App\Http\Controllers;

use App\Model\Company;
use Illuminate\Http\Request;
use Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Auth::user()->super_admin)
            $companies = Company::all();
        else{
            $userId = Auth::user()->id;
            $companies = Company::whereHas('users',function($query) use($userId){
                $query->where('user_id',$userId);
            })->get();

        }
        return view('admin.company.index')->with([
            'companies' => $companies
        ]);
    }

    public function companyDashboard(){
        $companies = Company::all();
        return view('admin.dashboard.company')->with([
            'companies' => $companies
        ]);
    }
}
