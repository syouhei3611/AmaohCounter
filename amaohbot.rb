# coding: utf-8

require 'twitter'

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

# get = client.user()
# p get
rep = "あまおうリキュールDay#{day}"
client.update_profile({name: rep})
# print("update name \'#{get}\' to \'#{rep}\'\n")
print("update name to \'#{rep}\'\n")
