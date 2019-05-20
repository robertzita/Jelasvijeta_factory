<?php

namespace App\Http\Controllers;
use App\Meal;
use Illuminate\Http\Request;
use App\Http\Resources\MealApi;

class MealsApiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, Meal $meal)
    {
        $params = $request->all();
 
        $query = Meal::select();


        $language_id = isset($params['language_id']) ? $params['language_id'] : 2; 

        $meals = $query->where('language_id', $language_id); 
        
        $limit = isset($params['limit']) ? $params['limit'] : 3;

        $meals = $query->paginate($limit);
 

        if (isset($params['with'])) {
            $withParams = explode(',', $params['with']);
            $filter = array('ingredients', 'category', 'tags');

            foreach ($withParams as $param) {

                if (in_array($param, $filter, true)) {
                    $query->with($param);
                }
            }
        }

        if (isset($params['category'])) {
            if (is_numeric($params['category'])) {
                $query->where('category_id', $params['category']);
            } elseif ($params['category'] == 'NULL') {
                $query->whereNull('category_id');
            } elseif ($params['category'] == '!NULL') {
                $query->whereNotNull('category_id');
            }
        }

        if (isset($params['tag'])) {
            $tag = explode(',', $params['tag']);

            $query->join('meals_tags', 'meal.id', '=', 'meals_tags.meal_id');
            $query->whereIn('meals_tags.tag_id', $tag);

        }

        return MealApi::collection($meals);
    }

    

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Meal::findOrFail($id);
    }

    

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $meal = Meal::findOrFail($id);
        $meal->delete();
        return 'deleted';
    }
}
