<?php

namespace App\Http\Middleware;

use App\Model\Company;
use Closure;
use Auth;

class CompanyAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if($request->route('company_id')){
            $userId = $request->user()->id;
            $company = Company::whereHas('users',function($query) use($userId){
                $query->where('user_id',$userId);
            })->first();
            return $company ? $next($request) : abort(404);
        }
        abort(404);
    }
}
