package = "feedparser"
version = "scm-1"

source = {
   url = "git://github.com/rpavlik/lua-feedparser.git",
   branch = "master"
}

description = {
   summary = "RSS and Atom feed parser, using expat via the luaExpat binding.",
   detailed = [[
      Similar to the Universal Feed Parser (http://feedparser.org), 
      but less good.]],
   homepage = "https://github.com/slact/lua-feedparser",
   license = "(new) BSD license, and included portions of LuaSocket code under MIT/X11"
}

dependencies = {
   "lua >= 5.1",
   "luaexpat",
}

build = {
  type = "builtin",
  modules = {
    ["feedparser"] = "feedparser.lua",
    ["feedparser.dateparser"] = "feedparser/dateparser.lua",
    ["feedparser.url"] = "feedparser/url.lua",
    ["feedparser.XMLElement"] = "feedparser/XMLElement.lua",
  },
  copy_directories = { --[["samples", "doc", "tests" ]]},
}
