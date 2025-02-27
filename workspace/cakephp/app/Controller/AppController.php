<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
 *
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		https://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller
{

    public $components = array(
        'DebugKit.Toolbar',
        'Session',
        'Flash',
        'Auth' => array(
            'loginAction' => array(
                'controller' => 'users',
                'action' => 'login',
                'plugin' => false,
                'admin' => false
            ),
            'loginRedirect' => array(
                'controller' => 'conversations', // Controller to redirect to after login
                'action' => 'home' // Action to redirect to after login
            ),
            'logoutRedirect' => array(
                'controller' => 'users', // Controller for logout redirect
                'action' => 'login' // Action for logout redirect
            ),
            'authenticate' => array(
                'Form' => array(
                    'fields' => array('username' => 'email') // Adjust according to your User model
                )
            ),
            'authError' => 'Please login to access this page'
        )
    );

    public function beforeFilter()
    {
        $this->Auth->allow('login', 'register', 'thank_you'); // Allow public access to these actions
        parent::beforeFilter();

        // Checks if user is logged in
        if ($this->Auth->user() && in_array($this->request->params['action'], array('login', 'register'))) {
            $this->redirect($this->Auth->redirectUrl());
        }
    }

    public function isAuthorized($user)
    {
        return false;
    }

    // Check for session
    public function beforeRender()
    {
        parent::beforeRender();
        $this->response->header(
            array(
                'Cache-Control' => 'no-cache, no-store, must-revalidate',
                'Pragma' => 'no-cache',
                'Expires' => '0'
            )
        );
    }

}


