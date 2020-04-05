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
    {
      "color"        => BLUE,
      "first_name"   => "Yulia",
      "quote"        => "Je suis traductrice en route vers le Web.",
      "picture_url"  => "https://iuliiatushkova.github.io/my-profile/images/photo.jpg",
      "website_url"  => "https://iuliiatushkova.github.io/my-profile/"
    },
    {
      "color"        => GREEN,
      "first_name"   => "Céline",
      "quote"        => "Codeuse en devenir",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://celinevp.github.io/my-profile/"
    },
    {
      "color"        => YELLOW,
      "first_name"   => "Karolina",
      "quote"        => "Débutante en coding mais ce n'est que le début...",
      "picture_url"  => "https://karolinag44.github.io/my-profile/images/photo%20profil.jfif",
      "website_url"  => "https://karolinag44.github.io/my-profile/"
    },
    {
      "color"        => PURPLE,
      "first_name"   => "Christine",
      "quote"        => "Je découvre le code",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://christine44000.github.io/my-profile/"
    },
    {
      "color"        => GREEN,
      "first_name"   => "Julie",
      "quote"        => "Je suis les conférences Women's Coding Day avec Le Wagon",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://july-sw.github.io/My-profile/"
    },
    {
      "color"        => YELLOW,
      "first_name"   => "Stéphanie",
      "quote"        => "Je suis maître d'armes et j'ai pour projet de me reconvertir dans le développement web 🤔",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://stef-rousset.github.io/my-profile/"
    },
    {
      "color"        => PURPLE,
      "first_name"   => "Isabelle",
      "quote"        => "Je suis ingénieur agronome et je veux me reconvertir en développeuse",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://isabelle4412.github.io/IsabellePouget/mapagelewagon"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Stefanie",
      "quote"        => "Je suis chef de projet digital dans une entreprise marketing à Nantes.",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://stefanie76240.github.io/my_profile/"
    },
    {
      "color"        => PURPLE,
      "first_name"   => "Heidi",
      "quote"        => "Je suis une américaine en France et je commence le chemin de devenir développeuse.",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://heidihappens.github.io/my-profile/"
    },
    {
      "color"        => GREEN,
      "first_name"   => "Johanna",
      "quote"        => "Je suis développeuse web & web mobile",
      "picture_url"  => "https://djonala.github.io/my-profile/images/imgprofile.png",
      "website_url"  => "https://djonala.github.io/my-profile/"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Charlotte",
      "quote"        => "J'adore l'informatique, je suis un peu geek à mes heures perdues !",
      "picture_url"  => "https://chuchu85.github.io/my-profile/images/charlotte.jpg",
      "website_url"  => "https://chuchu85.github.io/my-profile/"
    },
    {
      "color"        => YELLOW,
      "first_name"   => "Kedidia",
      "quote"        => "Je développeuse web à Rennes. Je suis intéressée par sql et Python",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://kedidia.github.io/my-profile/"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Karine",
      "quote"        => "J'habite près de Nantes 🐘, je travaille comme gestionnaire sinistre",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://karinejaulin.github.io/karinejaulin/"
    },
    {
      "color"        => GREEN,
      "first_name"   => "Justine",
      "quote"        => "Responsable de boutique en reconversion !",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://justinesop1.github.io/my-profile/"
    },
    {
      "color"        => PURPLE,
      "first_name"   => "Pauline",
      "quote"        => "J'habite en Finlande et j'apprends un peu de code à l'occasion",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://paulinetra.github.io/My-profile/"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Maelie",
      "quote"        => "J'ai 20ans et je suis en fac de sciences a l'université de nantes.",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://maelie-poussier.github.io/my-profile/"
    },
    {
      "color"        => GREEN,
      "first_name"   => "Chloé",
      "quote"        => "Spécialiste Marketing et Communication en reconversion dans le domaine informatique",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://chloebzz.github.io/PageLeWagon/"
    },
    {
      "color"        => YELLOW,
      "first_name"   => "Laure",
      "quote"        => "Je suis property manager & consultante",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://laure-dolisy.github.io/my-profile/"
    },
    {
      "color"        => BLUE,
      "first_name"   => "Nathalie",
      "quote"        => "Intéressée par le code et l'UX/UI design",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://nath03.github.io/my-profile/"
    },
    {
      "color"        => PURPLE,
      "first_name"   => "Joanna",
      "quote"        => "Je suis freelance en communication",
      "picture_url"  => "https://cdn.iconscout.com/icon/free/png-256/woman-1285-879839.png",
      "website_url"  => "https://joannawiwi.github.io/my-profile/"
    },
  ]

  erb :index
end
