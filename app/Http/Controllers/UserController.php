<?php

namespace App\Http\Controllers;

use App\Models\Review;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function indexDashboard()
    {
        $users = User::all();

        return view('pages.admin.user.index', compact('users'));
    }

    public function delete($id)
    {
        $deleteUser = User::destroy($id);

        if($deleteUser)
        {
            Review::where('user_id', $id)->delete();
        }

        return back();
    }

    public function edit($id)
    {
        $user = User::find($id);
        $roles = Role::all();

        if(! $user)
            return back();

        return view('pages.admin.user.edit', compact('user', 'roles'));
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|numeric',
            'name' => 'required|string|min:3',
            'role' => 'required|string|min:1'
        ]);

        $user = User::find($request->id);

        if(! $user)
            return back()->with(['failed' => 'Ažuriranje nije uspelo.']);

        $user->name = $request->name;
        $user->role_id = $request->role;
        $user->save();

        return back()->withSuccess('Uspešno ste ažurirali korisnika');
    }
}
