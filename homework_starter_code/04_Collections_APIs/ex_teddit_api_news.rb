# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'rest-client'
require 'JSON'

def get_mashable_stories

end

def get_digg_stories

end

def get_reddit_stories
	result = JSON.load(RestClient.get('http://www.reddit.com/top.json'))
	result["data"]["children"].map do |story|
		{title: story["data"]["title"], category: story["data"]["subreddit"],
						 upvotes: story["data"]["ups"]}
	end
end

def display_stories(stories)
	stories.each_with_index do |story, index|
		puts "#{index + 1}. #{story[:upvotes]} | #{story[:title]} (#{story[:category]})"
	end
end

# my_stories = [{title: "Example One", category: "food", upvotes: 1}, 
# 			  {title: "Example Two", category: "food", upvotes: 1}]

my_stories = get_reddit_stories

puts "Welcome to Teddit! Here are todays stories:"
display_stories(my_stories)

