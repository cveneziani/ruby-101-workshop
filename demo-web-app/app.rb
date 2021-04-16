require "sinatra"
require "sinatra/link_header"
require "sinatra/reloader" if development?

enable :static

# Available colors
BLUE   = "blue"
GREEN  = "green"
PURPLE = "purple"
YELLOW = "yellow"

COLORS = [BLUE, GREEN, PURPLE, YELLOW]

get "/" do
  @profiles = [
    # STAFF
    {
      "color"       => YELLOW,
      "first_name"  => "Paola",
      "quote"       => "Finalement le code est accessible à toutes.",
      "picture_url" => "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1571079523/hzndq9mooevepscrzecr.jpg",
      "website_url" => "https://github.com/Paola44"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Cecile",
      "quote"        => "All you need is code",
      "picture_url"  => "https://www.cecilitse.org/images/avatar-db7c2e53.png",
      "website_url"  => "https://www.cecilitse.org/"
    },
    {
      "color"       => PURPLE,
      "first_name"  => "Miebi",
      "quote"       => "C’est l’occasion de réaliser de nouveaux projets.",
      "picture_url" => "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1610721314/wxkkw5zbyf7hxzx3iwyb.jpg",
      "website_url" => "https://www.miebi.space/"
    },
    {
      "color"       => GREEN,
      "first_name"  => "Diane",
      "quote"       => "J'ai sauté le pas pour apprendre le code, et à la fin une chose est sûre : aucun regret !",
      "picture_url" => "https://avatars.githubusercontent.com/u/69638006?v=4",
      "website_url" => "https://dianehb.github.io/profile/"
    },
    # APPRENTICES
    # TODO: gather a few profiles
  ]

  erb :index
end
