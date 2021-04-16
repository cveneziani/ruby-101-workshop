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
      "color"        => YELLOW,
      "first_name"   => "Cecile",
      "quote"        => "All you need is code",
      "picture_url"  => "https://www.cecilitse.org/images/avatar-db7c2e53.png",
      "website_url"  => "https://www.cecilitse.org/"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Mélanie",
      "quote"        => "Learn code is about working all around the world.",
      "picture_url"  => "https://melrt.github.io/profile/images/profile_image.jpg",
      "website_url"  => "https://melrt.github.io/profile/"
    },
    {
      "color"       => PURPLE,
      "first_name"  => "Johanne",
      "quote"       => "Je souhaitais changer de domaine professionnel pour partir vivre à l’étranger.",
      "picture_url" => "https://johanneggn.github.io/profile/images/photo_de_profil.jpg",
      "website_url" => "https://johanneggn.github.io/profile/"
    },
    {
      "color"       => BLUE,
      "first_name"  => "Sybil",
      "quote"       => "Le code c'est démarrer une nouvelle aventure.",
      "picture_url" => "https://avatars1.githubusercontent.com/u/56188582?s=460&u=0fc2ad663b9d419fb12119aae917db4a635317fb&v=4",
      "website_url" => "https://sybilrondeau.github.io/profile/"
    },
    {
      "color"       => PURPLE,
      "first_name"  => "Ophélie",
      "quote"       => "Les compétences tech me sont indispensables.",
      "picture_url" => "https://avatars2.githubusercontent.com/u/57873225?s=460&u=d881c0a6bab8bc7ad8cfad7c88042e2b2098bbc6&v=4",
      "website_url" => "https://orduhamel.github.io/profile/"
    },
    {
      "color"       => YELLOW,
      "first_name"  => "Marion",
      "quote"       => "J’ai toujours ressenti le besoin d’acquérir des compétences tech.",
      "picture_url" => "https://avatars0.githubusercontent.com/u/58480867?s=460&u=8f9eaec57cefd8fad20ff006cad375b420b3cd40&v=4",
      "website_url" => "https://mhenrio.github.io/profile/"
    },
    {
      "color"       => GREEN,
      "first_name"  => "Caroline",
      "quote"       => "J'avais un goût pour la 'bidouille' informatique.",
      "picture_url" => "https://caroline44300.github.io/profile/images/Profile_Picture.jpeg",
      "website_url" => "https://caroline44300.github.io/profile/"
    },
    {
      "color"       => YELLOW,
      "first_name"  => "Paola",
      "quote"       => "Finalement le code est accessible à toutes.",
      "picture_url" => "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1571079523/hzndq9mooevepscrzecr.jpg",
      "website_url" => "https://github.com/Paola44"
    },
    {
      "color"        => GREEN,
      "first_name"   => "Ophélie",
      "quote"        => "Je code avec ma chienne Joy 🐕",
      "picture_url"  => "https://avatars2.githubusercontent.com/u/56040091?s=400&u=819e8d35a223421ab7c6f754fd26e49cd2a1bbfc&v=4",
      "website_url"  => "https://opheliejones.github.io/profile/"
    },
    # APPRENTICES
    # TODO: gather a few profiles
  ]

  erb :index
end
