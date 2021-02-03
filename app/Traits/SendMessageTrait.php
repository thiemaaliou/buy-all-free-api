<?php
  namespace App\Traits;
  use Illuminate\Http\Request;
  use Illuminate\Support\Facades\Http;
  use Illuminate\Http\Client\Response;
  use App\Models\SmsConfig as Params;

  trait SendMessageTrait{

    public function getParams(){

      $params = Params::first();
      $response = Http::asForm()->withHeaders([
          'Authorization' => $params->basic_auth
      ])->post('https://api.orange.com/oauth/v2/token', [
          'grant_type' => 'client_credentials'
      ]);

      return $response['access_token'];

    }

    public function sendMessageToUser($client, $solde){
      $access_token = $this->getParams();

      $receiverAddress = 'tel:+'.$client->phone;
      $senderAddress = 'tel:+2210000';
      $message = 'Salut '.$client->first_name.' '.$client->last_name.' vous venez de recevoir '.$solde.' F sur votre kalpé BUY ALL FREE. Votre nouveau solde est '.$client->solde.' F';
      $args = array(
                'outboundSMSMessageRequest' => array(
                    'address'                   => $receiverAddress,
                    'senderAddress'             => $senderAddress,
                    'senderName'                => 'BUY ALL FREE',
                    'outboundSMSTextMessage'    => array(
                        'message' => $message
                    )
                )
            );

      $resp = Http::withHeaders([
          'Authorization' => 'Bearer '.$access_token,
          'Content-Type' => 'application/json'
      ])->post('https://api.orange.com/smsmessaging/v1/outbound/'.urlencode($senderAddress).'/requests', $args);

      return $resp;
    }
  }

 ?>
