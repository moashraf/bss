<?php

namespace App\Policies;

use App\User;
use App\Carros;
use Illuminate\Auth\Access\HandlesAuthorization;

class CarrosPolicy
{
    use HandlesAuthorization;

    /**
     * Determine whether the user can view the carros.
     *
     * @param  \App\User  $user
     * @param  \App\Carros  $carros
     * @return mixed
     */
    public function view(User $user, Carros $carros)
    {
        //
    }

    /**
     * Determine whether the user can create carros.
     *
     * @param  \App\User  $user
     * @return mixed
     */
    public function create(User $user)
    {
        //
    }

    /**
     * Determine whether the user can update the carros.
     *
     * @param  \App\User  $user
     * @param  \App\Carros  $carros
     * @return mixed
     */
    public function update(User $user, Carros $carros)
    {
        //
    }

    /**
     * Determine whether the user can delete the carros.
     *
     * @param  \App\User  $user
     * @param  \App\Carros  $carros
     * @return mixed
     */
    public function delete(User $user, Carros $carros)
    {
        //
    }
}
