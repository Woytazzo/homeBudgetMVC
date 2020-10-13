<?php

namespace App\Controllers;

use \Core\View;
use \App\Auth;
use \App\Flash;
use \App\Models\GeneralFunctions;

/**
 * Profile controller
 *
 * PHP version 7.0
 */
class Transaction extends Authenticated
{

    /**
     * Before filter - called before each action method
     *
     * @return void
     */
    protected function before()
    {
        parent::before();

        $this->user = Auth::getUser();
    }

    /**
     * Show the profile
     *
     * @return void
     */
    public function addIncomeAction()
    {
		$arguments = new GeneralFunctions;
		
		$arguments['today'] = $arguments->getToday();
		
        View::renderTemplate('Transaction/add_income.html', [
            $arguments
        ]);
    }

	public function addExpenseAction()
    {
        View::renderTemplate('Transaction/add_expense.html', [
            'user' => $this->user
        ]);
    }
	
	
	
	
    /**
     * Show the form for editing the profile
     *
     * @return void
     */
    

    /**
     * Update the profile
     *
     * @return void
     */
    public function updateAction()
    {
        if ($this->user->updateProfile($_POST)) {

            Flash::addMessage('Changes saved');

            $this->redirect('/profile/show');

        } else {

            View::renderTemplate('Profile/edit.html', [
                'user' => $this->user
            ]);

        }
    }
	
}
