<?php namespace App\Http\Controllers\Frontend;

use App\Http\Requests;
//use App\Http\Requests\ContactRequest;
use App\Http\Controllers\Controller;
use App\Http\Controllers\Frontend;
//use Illuminate\Contracts\Routing\ResponseFactory;
use Illuminate\Http\Request;
//use Illuminate\Routing\Controller;
use App\Models\Article;
use App\Models\Category;
use App\Models\Lang;
use App\Models\Order;
use App\Models\Text;
use App;
use Illuminate\Support\Facades\Response;
//use Illuminate\Contracts\View\View;
use Mail;
use Illuminate\Support\Facades\Validator;
use Debugbar;

class ArticleController extends Controller {

	private $content;
	private $cod;



	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index($lang, $type = 'main')
	{
//dd($type);
		return view('frontend.' . $type);

	}

	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($lang, $type, $id)	{

		$article = Article::where('id', $id)
		->activearticles() // use scopeActiveArticles in Article Model
		->first();
		//dd($article);
		return view('frontend.single_news')->with(compact('article'));


	}

	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response
	 */

	public function create()
	{
		//
	}

	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}
	//Send letter from contact form
	public function contact(Request $request, $lang)
	{
		//dd('contact');
		if ($request ->isMethod('post')){
			/*get [] from request*/
			$all = $request->all();

			/*make rules for validation*/
			$rules = [
				'name' => 'required|max:50',
				'email' => 'required|email',
				'text' => 'required|max:600'
			];

			/*validation [] according to rules*/
			$validator = Validator::make($all, $rules);

			/*send error message after validation*/
			if ($validator->fails()) {
				return response()->json(array(
					'success' => false,
					'message' => $validator->messages()->first()
				));
			}

			//Send item on admin email address
			Mail::send('emails.callback', $all, function($message){
				$email = getSetting('config.email');
				$message->to($email, 'Flexweb')->subject('Сообщение с сайта "Flexweb"');
			});
			return response()->json([
				'success' => 'true'
			]);
		}
	}

	// Send letter from popup form
	public function callback(Request $request, $lang)
	{
		//dd('callback');
		if ($request ->isMethod('post')){
			/*get [] from request*/
			$all = $request->all();

			/*make rules for validation*/
			$rules = [
				'name' => 'required|max:50',
				'phone' => 'required|numeric',
				'text' => 'required|max:600'
			];

			/*validation [] according to rules*/
			$validator = Validator::make($all, $rules);

			/*send error message after validation*/
			if ($validator->fails()) {
				return response()->json(array(
					'success' => false,
					'message' => $validator->messages()->first()
				));
			}

			//Send item on admin email address
			Mail::send('emails.contact', $all, function($message){
				$email = getSetting('config.email');
				$message->to($email, 'Flexweb')->subject('Сообщение с сайта "Flexweb"');
			});
			return response()->json([
				'success' => 'true'
			]);
		}
	}
	/**
	 * getRate from JSONE
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function vacancies (Request $request, $lang)
	{
		//dd('contact');
		if ($request ->isMethod('post')){
			/*get [] from request*/
			$all = $request->all();

			/*make rules for validation*/
			$rules = [
				'name' => 'required|max:50',
				'phone' => 'required|numeric'
			];

			/*validation [] according to rules*/
			$validator = Validator::make($all, $rules);

			/*send error message after validation*/
			if ($validator->fails()) {
				return response()->json(array(
					'success' => false,
					'message' => $validator->messages()->first()
				));
			}

			//Send item on admin email address
			Mail::send('emails.vacancies', $all, function($message){
				$email = getSetting('config.email');
				$message->to($email, 'Gidrobud')->subject('Сообщение с сайта "Gidrobud"');
			});
			return response()->json([
				'success' => 'true'
			]);
		}
	}

}
