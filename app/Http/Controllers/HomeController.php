<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\Gallery;
use App\Models\Product;
use App\Models\Review;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $request->validate([
            'product' => 'nullable|string|max:100'
        ]);

        if($request->product)
            $products = Product::where('name', 'like', '%' . $request->product . '%')->orderByDesc('created_at')->get();
        else
            $products = Product::all();

        $galleries = Gallery::all();
        $reviews = Review::with('user')->orderByDesc('created_at')->get();

        return view('pages.home', compact('products', 'galleries', 'reviews'));
    }

    public function dashboardIndex()
    {
        $usersCount = User::count();
        $productsCount = Product::count();
        $contactsCount = Contact::count();
        $avarageReview = Review::avg('star');
        $reviewsCount = Review::count();

        $userAdminCount = User::where('role_id', User::ADMIN_ROLE)->count();
        $userEditorCount = User::where('role_id', User::EDITOR_ROLE)->count();
        $userGuestCount = User::where('role_id', User::GUEST_ROLE)->count();

        return view('pages.admin.dashboard', compact(
            'usersCount',
            'productsCount',
            'contactsCount',
            'avarageReview',
            'reviewsCount',
            'userAdminCount',
            'userEditorCount',
            'userGuestCount'
        ));
    }
}
