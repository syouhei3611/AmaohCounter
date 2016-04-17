# coding: utf-8

require 'twitter'
require 'clockwork'
include Clockwork

client = Twitter::REST::Client.new(
	consumer_key:		 ENV['TWITTER_CONSUMER_KEY'],
	consumer_secret:	 ENV['TWITTER_CONSUMER_SECRET'],
	access_token:		 ENV['TWITTER_ACCESS_TOKEN'],
	access_token_secret: ENV['TWITTER_ACCESS_TOKEN_SECRET']
)

now = Time.now
since = Time.local(2016, 2, 18)
day = (now - since).div(60*60*24) + 1
# p day
rishufrom = Time.local(2016, 4, 18)
rishuto = Time.local(2016, 4, 28)
rishuday = (rishuto - now).div(60*60*24) + 1

# get = client.user()
# p get
rep = "あまおうリキュールDay#{day}"
if (now - rishufrom) >= 0 && rishuday >= 0
	rep = "履修登録残り#{rishuday}日"
end
client.update_profile({name: rep})
# print("update name \'#{get}\' to \'#{rep}\'\n")
print("update name to \'#{rep}\'\n")
