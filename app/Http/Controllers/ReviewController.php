<?php

namespace App\Http\Controllers;

use App\Models\Review;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'comment' => 'required|string|min:3',
            'star' => 'required|numeric|min:1|max:10'
        ]);

        $review = Review::create([
            'comment' => $request->comment,
            'star' => $request->star,
            'user_id' => auth()->user()->id
        ]);

        if($review)
        {
            return redirect()->back()->withSuccess('Tvoja ocena je uspešno poslata');
        }else
        {
            return redirect()->back()->with(['failed' => 'Ocena nije poslata, molimo pokušajte ponovo.']);
        }
    }
}
