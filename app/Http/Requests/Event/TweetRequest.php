<?php

namespace App\Http\Requests\Event;

use Illuminate\Foundation\Http\FormRequest;

class TweetRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'title' => 'required',
            'content' => 'required|max:140',
            'cost' => 'nullable|numeric',
            'age_id' => 'required',
            'category_id' => 'required',
            'prefecture_id' => 'required'
        ];
    }

    public function userId(): int //Request user関数で現在のログインユーザーの取得
    {
        return $this->user()->id;
    }

    public function title(): string
    {
        return $this->input('title');
    }

    public function content(): string
    {
        return $this->input('content');
    }

    public function cost()
    {
        return $this->input('cost');
    }

    public function ageId(): int
    {
        return $this->input('age_id');
    }

    public function categoryId(): int
    {
        return $this->input('category_id');
    }

    public function prefectureId(): int
    {
        return $this->input('prefecture_id');
    }

    public function day()
    {
        return $this->input('day');
    }

    public function images(): array 
    {
        return $this->file('images', []);
    }
}
