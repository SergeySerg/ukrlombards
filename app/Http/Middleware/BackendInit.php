<?php namespace App\Http\Middleware;

use Closure;
use App;

use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use App\Models\Article;
use App\Models\Category;
use App\Models\Text;
use App\Models\Lang;
use League\Flysystem\Config;
use Debugbar;
use Illuminate\Support\Facades\Artisan;

class BackendInit {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */

	public function handle($request, Closure $next)
	{
		$admin_categories = Category::where('parent_id',0)
			->orderBy('priority','desc')
			->get();
		//dd($admin_categories);
		/*Debugbar::info($admin_categories);
		Debugbar::addMeasure('now', LARAVEL_START, microtime(true));*/
		//Подключение в Backend url типа
		$url = url('adminTai0a');
		//Artisan::call('view:clear');
		//Подключение в Backend version
		view()->share('version', config('app.version'));
		view()->share('url', $url);
		view()->share('admin_categories', $admin_categories);
		return $next($request);
	}

}
