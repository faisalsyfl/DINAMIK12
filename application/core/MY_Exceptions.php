<?php
	class MY_Exceptions extends CI_Exceptions 
	{

		public function __construct()
		{
			parent::__construct();
		}

		/**
		 * 404 Page Not Found Handler
		 *
		 * @access  private
		 * @param   string
		 * @return  string
		 */
		public function show_404($page = '', $log_error = TRUE)
		{

			/**
			 * Quick fix for 404 Override bug.
			 * 
			 * index.php/non-existent-controller                        -----> override ok
			 * index.php/existent-controller/non-existent-method        -----> override not ok
			 * index.php/existent-folder/non-existent-controller        -----> override not ok
			 */

			$router =& load_class('Router', 'core');
			if ( ! empty($router->routes['404_override']))
			{
				if ($log_error) log_message('error', '404 Page Not Found --> '. $page);

				$config =& load_class('Config', 'core');
				echo file_get_contents($config->site_url($router->routes['404_override']));
				exit;
			}

			/* End of fix */

			$heading = "404 Page Not Found";
			$message = "The page you requested was not found.";

			// By default we log this, but allow a dev to skip it
			if ($log_error)
			{
				log_message('error', '404 Page Not Found --> '.$page);
			}

			echo $this->show_error($heading, $message, 'error_404', 404);
			exit;
		}
	}
?>