<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Hash;

class AdminController extends Controller
{
    public function list()
    {
        $data['getRecord'] = User::getAdmin();
        $data['header_title'] = 'Admin';
        return view('admin.admin.list', $data);
    }

    public function add()
    {
        $data['header_title'] = 'Add New Admin';
        return view('admin.admin.add', $data);
    }

    public function insert(Request $request)
    {

        $request->validate([
            'email'=> 'required|email|unique:users'
        ]);

        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = Hash::make($request->password);
        $user->status = $request->status;
        $user->is_admin = 1;
        $user->save();

        return redirect('/admin/admin/list')->with('success', "New Admin added!");
    }

    public function edit($id)
    {
        $data['getRecord'] = User::getSingle($id);
        $data['header_title'] = 'Edit Admin';
        return view('admin.admin.edit', $data);
    }

    public function update($id, Request $request)
    {
        $request->validate([
            'email'=> 'required|email|unique:users,email,' . $id
        ]);

        $user = User::getSingle($id);

        $user->name = $request->input('name');
        $user->email = $request->input('email');

        if (!empty($request->input('password'))) {
            $user->password = Hash::make($request->input('password'));
        }

        $user->status = $request->input('status');
        $user->is_admin = 1;

        $user->save();

        return redirect('/admin/admin/list')->with('success', 'Admin is updated!');
    }

    public function delete($id)
    {
        $user = User::getSingle($id);
        $user->is_deleted = 1;
        $user->save();

        return redirect()->back()->with('success', 'Admin is deleted!');

    }

}
