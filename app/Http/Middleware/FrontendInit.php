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
//use DB;

class FrontendInit {

	/**
	 * Handle an incoming request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @param  \Closure  $next
	 * @return mixed
	 */
	public function handle($request, Closure $next)
	{
		// Get current lang object from db
		$currentLang = Lang::where('lang', $request->lang)
			->first();

		if (!$currentLang){
			abort('404');
		}
		$langs = Lang::activelangs()->orderBy('priority','desc')->get()/**/;
		// Locale setting
		App::setLocale($request->lang);
		$texts = new Text();
		//get all Category
		$categories = Category::all();
		$categories_data = [];
		foreach($categories as $category){
			//create arr for categories with type
			$categories_data[$category->link] = $category;
			if($category->link == 'page'){
				$static_page = $category
					->articles()
					->where('id', $request->id)
					->activearticles() // use scopeActiveArticles in Article Model
					->first();
				view()->share('static_page', $static_page);
			}
			$category_item = $category
				->articles()
				->activearticles()
				->get();
			// validate count for change method (get() or first()) if one item in array
			if(count($category_item) == 1){
				$category_item = $category_item->first();
			}
			//share Article
			view()->share($category->link, $category_item);
		}

		view()->share('static_page', $static_page);

		// Share to views global template variables
		view()->share('langs', $langs);
		view()->share('texts', $texts->init());
		view()->share('categories_data', $categories_data);
		view()->share('version', config('app.version'));

		return $next($request);
	}

}
