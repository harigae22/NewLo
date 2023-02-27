@component('mail::message')
# ようこそ！
## LINE認証にてユーザーがNewLoへ登録されました。


こんにちは! {{ $user_name }} さん、
NewLoより、アカウント登録完了のメールと
アカウントのパスワードについてのご連絡です。

ユーザー登録に関して:
初期パスワードは、
    {{ $user_pass }}
    になります。

変更希望の方は、
ログイン後 画面右上プロフィールアイコンをクリックし、
プロフィール画面よりパスワードの更新を行なってください。


@component('mail::button', ['url' => 'http://localhost:8888/newlo'])
NewLo:ログイン
@endcomponent

@component('mail::panel')
新しくNewLoへアカウントが登録されました!
あなたの素敵なイベントをみんなに共有しましょう。
@endcomponent


{{__('*このメールは送信専用のため返信できません。')}}<br>

{{ config('app.name') }}
@endcomponent