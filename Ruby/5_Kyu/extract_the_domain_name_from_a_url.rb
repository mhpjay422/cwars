# Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:

# domain_name("http://github.com/carbonfive/raygun") == "github" 
# domain_name("http://www.zombie-bites.com") == "zombie-bites"
# domain_name("https://www.cnet.com") == "cnet"

def domain_name(url)
  ind_www = url.index("www.")
  ind_slash = url.index("//")
  
  if ind_www
    url = url[ind_www + 4..-1]
  elsif ind_slash
    url = url[ind_slash + 2..-1]
  end
  
  url[0..url.index(".") - 1]
end