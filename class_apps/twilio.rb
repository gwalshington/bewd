require 'twilio-ruby'
 
account_sid = "AC20fb01115aef1f74b5a91589d170ae4b"
auth_token = "669273860af767309b626a804c2816fc"
client = Twilio::REST::Client.new account_sid, auth_token
 
from = "+18452622301" # Your Twilio number
 
friends = {
"+15125079323" => "Curious George",
}
friends.each do |key, value|
  client.account.messages.create(
    :from => from,
    :to => key,
    :body => "Hey #{value}, Monkey party at 6PM. Bring Bananas!"
  )
  puts "Sent message to #{value}"
end