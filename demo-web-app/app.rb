require "sinatra"
require "sinatra/link_header"
require "sinatra/reloader" if development?
require "sqlite3"

enable :static

DB_FILE_PATH       = File.join(__dir__, "database.sqlite")
DB                 = SQLite3::Database.new(DB_FILE_PATH)
DB.results_as_hash = true

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
    {
      "color"       => YELLOW,
      "first_name"  => "Marguerite",
      "quote"       => "Je veux briser l'espace entre les devs et moi",
      "picture_url" => "https://luciana44.github.io/Mariage/images/20210417_113627.jpg",
      "website_url" => "https://luciana44.github.io/Mariage/"
    },
    {
      "color"       => BLUE,
      "first_name"  => "Oumou",
      "quote"       => "Je me reconvertis dans le marketing",
      "picture_url" => "https://oumou44200.github.io/womencode/images/oumisma.JPG",
      "website_url" => "https://oumou44200.github.io/womencode/"
    },
    {
      "color"       => GREEN,
      "first_name"  => "Pauline",
      "quote"       => "J'adore crapahuter",
      "picture_url" => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url" => "https://paulinetra.github.io/Profil2021v2/"
    },
    {
      "color"       => PURPLE,
      "first_name"  => "Hanna",
      "quote"       => "J'apprends à coder",
      "picture_url" => "https://hannalenda.github.io/profil-page/images/hanna_k.png",
      "website_url" => "https://hannalenda.github.io/profil-page/"
    },
    {
      "color"       => GREEN,
      "first_name"  => "Alexandra",
      "quote"       => "Je me reconvertis dans le numérique",
      "picture_url" => "https://stalmaer.github.io/profil_page/images/alexandra_clouet.jpg",
      "website_url" => "https://stalmaer.github.io/profil_page/"
    },
    {
      "color"       => YELLOW,
      "first_name"  => "Marie-Charlotte",
      "quote"       => "Je suis une entrepreneuse créative avec une mission celle de révéler les femmes tout simplement",
      "picture_url" => "https://mariecharlottebd.github.io/page-de-profil/images/portrait_mc.jpeg",
      "website_url" => "https://mariecharlottebd.github.io/page-de-profil/"
    },
    {
      "color"       => BLUE,
      "first_name"  => "Alice",
      "quote"       => "Je suis une future developpeuse fullstack",
      "picture_url" => "https://alad842.github.io/profiletest/images/SVG/kidaha-01.svg",
      "website_url" => "https://alad842.github.io/profiletest/"
    },
    {
      "color"       => YELLOW,
      "first_name"  => "Sylvie",
      "quote"       => "Je suis en pleine découverte du developpement web.",
      "picture_url" => "https://symica2021.github.io/Profile/images/syl.jpg",
      "website_url" => "https://symica2021.github.io/Profile/index.html"
    },
    {
      "color"       => BLUE,
      "first_name"  => "Armelle",
      "quote"       => "Je crée mon entreprise",
      "picture_url" => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url" => "https://armelle888.github.io/goodjob/"
    },
    {
      "color"       => GREEN,
      "first_name"  => "Juliette",
      "quote"       => "Développeuse web front-end en devenir ! (pour être honnête, je commence aujourd'hui 🤓)",
      "picture_url" => "https://jusupertramp.github.io/my-profile/images/photo-Juliette-Coiffard.jpeg",
      "website_url" => "https://jusupertramp.github.io/my-profile/"
    },
    {
      "color"       => YELLOW,
      "first_name"  => "Stéphanie",
      "quote"       => "Esprit d’équipe Maîtrise de la chaîne graphique Grand intérêt pour les nouvelles technologies...",
      "picture_url" => "https://steph-png-formation.github.io/my-profile/images/Photo1.jpg",
      "website_url" => "https://steph-png-formation.github.io/my-profile/"
    },
    {
      "color"       => PURPLE,
      "first_name"  => "Camille",
      "quote"       => "Je suis Product Owner et j'aime cuisiner, fabriquer des savons et faire des randonnées en vélo ou à pied",
      "picture_url" => "https://camille-merlet.github.io/my-profile/images/Camille_Merlet.jpg",
      "website_url" => "https://camille-merlet.github.io/my-profile/index.html"
    },
    {
      "color"       => BLUE,
      "first_name"  => "Clémence",
      "quote"       => "J'apprends à réaliser une landing page avec HTML/CSS",
      "picture_url" => "https://clemence2.github.io/profile-page/images/unnamed.jpg",
      "website_url" => "https://clemence2.github.io/profile-page/"
    },
  ]

  # @profiles = DB.execute("SELECT * FROM profiles ORDER BY first_name;")

  erb :index
end
