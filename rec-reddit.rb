require "RestClient"
require "JSON"

def get_comments(main_data)
  if main_data.class == Hash
    main_data.each do |key, value|
      if key == "body"
        $counter += 1
        puts main_data["body"]
        puts "-"*100
      elsif key == "replies"
        get_comments(main_data[key])
      elsif key == "data"
        main_data[key]["children"].each do |item|
          get_comments(item["data"])
        end
      end
    end
  end
end

data = RestClient.get("http://www.reddit.com/r/aww/comments/zzg3k/my_local_humane_society_posts_pictures_of_new/.json")
data = JSON.parse(data.body)
$counter = 1
get_comments(data[1])
puts $counter

# i = 0 # first level comments
# j = 0 # second level comments, comments on comments
# k = 0 # third level comments
# puts data[1]["data"]["children"][i]["data"]["body"]
# puts "-----"
# puts data[1]["data"]["children"][i]["data"]["replies"]["data"]["children"][j]["data"]["body"]
# puts "-----"
# puts data[1]["data"]["children"][i]["data"]["replies"]["data"]["children"][j]["data"]["replies"]["data"]["children"][k]["data"]["body"]
# puts "-----"
# puts data[1]["data"]["children"][i]["data"]["replies"]["data"]["children"][j]["data"]["replies"]["data"]["children"][k]["data"]["replies"]["data"]["children"][0]["data"]["body"]
# puts "-----"
# puts data[1]["data"]["children"][i]["data"]["replies"]["data"]["children"][j]["data"]["replies"]["data"]["children"][k]["data"]["replies"]["data"]["children"][0]["data"]["replies"]["data"]["children"][0]["data"]["body"]
