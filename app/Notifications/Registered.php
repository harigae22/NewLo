<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class Registered extends Notification
{
    use Queueable;
    public $user_name;
    public $user_pass;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct($user_item)
    {
        $this->user_name =$user_item['name'];
        $this->user_pass = $user_item['pass'];
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)->markdown('mail.registered', [
             'user_name' => $this->user_name,
             'user_pass' => $this->user_pass
        ])
        ->subject('NewLo 登録完了');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    {
        return [
            //
        ];
    }
}
