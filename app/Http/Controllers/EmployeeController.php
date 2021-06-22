<?php

namespace App\Http\Controllers;

use App\Models\Employee;
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    public function indexDashboard()
    {
        $employees = Employee::orderByDesc('created_at')->get();
        return view('pages.admin.employee.index', compact('employees'));
    }

    public function create()
    {
        return view('pages.admin.employee.create');
    }

    public function delete($id)
    {
        Employee::destroy($id);

        return back();
    }

    public function edit($id)
    {
        $employee = Employee::find($id);

        if(! $employee)
            return back();

        return view('pages.admin.employee.edit', compact('employee'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'date_of_birth' => 'required|string',
            'city' => 'required|string|min:2',
            'street' => 'required|string|min:1',
            'position' => 'required|string|min:2'
        ]);

        $employee = Employee::create([
            'name' => $request->name,
            'date_of_birth' => $request->date_of_birth,
            'city' => $request->city,
            'street' => $request->street,
            'position' => $request->position
        ]);

        if($employee)
            return back()->withSuccess('Uspešno ste uneli novog zaposlenog');
        return back()->with(['failed' => 'Zaposleni nije uspešno unet, probajte opet.']);
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|numeric',
            'name' => 'required|string|min:3',
            'date_of_birth' => 'required|string',
            'city' => 'required|string|min:2',
            'street' => 'required|string|min:1',
            'position' => 'required|string|min:2'
        ]);

        $employee = Employee::find($request->id);

        if(! $employee)
            return back()->with(['failed' => 'Ažuriranje nije uspelo.']);

        $employee->name = $request->name;
        $employee->date_of_birth = $request->date_of_birth;
        $employee->city = $request->city;
        $employee->street = $request->street;
        $employee->position = $request->position;
        $employee->save();

        return back()->withSuccess('Uspešno ste ažurirali zaposlenog');
    }
}
