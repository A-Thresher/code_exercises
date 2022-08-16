=begin

https://www.codewars.com/kata/514a024011ea4fb54200004b/train/ruby

Write a function that when given a URL as a string, parses out just the domain
name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

=end

=begin

Problem:
  Write a method that extracts the domain name from a given string link

  Input: string
  Output: string

  Rules:
    Domain name is preceded by // or www. and ended with .

Examples:
  domain_name("http://google.com") == "google"
  domain_name("http://google.co.jp") == "google"
  domain_name("www.xakep.ru") == "xakep"
  domain_name("https://youtube.com") == "youtube"

Data:
  Strings

Algorithm
  - Create prefix constant
  - select prefix in use and delete from string
  - split by . return first

=end

PREFIX = %w(www. //)

def domain_name(url)
  used_prefix = PREFIX.select { |pf| url.match?(pf) }.first
  domain = url.split(used_prefix).last.split('.').first
end

p domain_name("http://google.com") == "google"
p domain_name("http://google.co.jp") == "google"
p domain_name("www.xakep.ru") == "xakep"
p domain_name("https://youtube.com") == "youtube"
