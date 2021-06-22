<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        return view('pages.contact');
    }

    public function indexDashboard()
    {
        $contacts = Contact::all();
        return view('pages.admin.contact.index', compact('contacts'));
    }

    public function store(Request $request)
    {

        $request->validate([
            'name' => 'required|string|min:3',
            'subject' => 'required|string|min:5',
            'message' => 'required|string|min:20',
            'phone_number' => 'required|numeric',
        ]);

        $contact = Contact::create([
            'name' => $request->name,
            'subject' => $request->subject,
            'message' => $request->message,
            'phone_number' => $request->phone_number
        ]);

        if($contact)
        {
            return redirect()->back()->withSuccess('Tvoja poruka je uspešno poslata');
        }else
        {
            return redirect()->back()->with(['failed' => 'Poruka nije poslata, molimo pokušajte ponovo.']);
        }
    }

    public function delete($id)
    {
        Contact::destroy($id);

        return back();
    }
}
