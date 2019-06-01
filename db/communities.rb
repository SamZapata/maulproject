# seeds for communities

communities = [
  {
    name: "Comunidad Santiaguina",
    about: "Somos estudiantes, egresados, profesores y personas allegadas a la Universidad Santiago de Cali",
    email: "",
    website: "http://usc.edu.co",
    phone: "",
    facebook: "https://www.facebook.com/usantiagodecali/",
    instagram: "https://www.instagram.com/usantiagodecali/",
    twitter: "https://twitter.com/usantiagodecali"
  },
  {
    name: "Somos Lobos Rugby",
    about: "Somos la comunidad de Lobos Rugby Club",
    email: "",
    website: "",
    phone: "317 5571203",
    facebook: "https://www.facebook.com/LobosRC/",
    instagram: "https://www.instagram.com/lobos_rugbyclub/",
    twitter: "https://twitter.com/LobosRugbycali"
  },
  {
    name: "Niños, Niñas, Adolescentes y Jóvenes Gestores de Paz - Cali",
    about: "Movimiento Nacional de niños, niñas, adolescentes y jóvenes gestores de paz de Santiago de Cali",
    email: "",
    website: "https://www.wvi.org/es/GestoresdePaz",
    phone: "",
    facebook: "",
    instagram: "",
    twitter: "https://twitter.com/SoyGestordePaz"
  },
  {
    name: "Distrito Rugby",
    about: "Comunidad de personas simpatizantes por el desarrollo y difusión del rugby",
    email: "",
    website: "http://distritorugby.herokuapp.com/",
    phone: "",
    facebook: "",
    instagram: "",
    twitter: ""
  },
  {
    name: "Rugby Valle",
    about: "Buscamos promover el desarrollo del rugby en el Valle de Cauca",
    email: "",
    website: "http://rugbyvalle.co/",
    phone: "",
    facebook: "https://www.facebook.com/LVRrugby/?epa=SEARCH_BOX",
    instagram: "https://www.instagram.com/rugbyvalle/",
    twitter: "https://twitter.com/LVR_rugby"
  },
  # {
  #   name: "",
  #   about: "",
  #   email: "",
  #   website: "",
  #   phone: "",
  #   facebook: "",
  #   instagram: "",
  #   twitter: ""
  # },
]

Community.create!(communities)
