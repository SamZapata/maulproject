# seeds for events

events = [
  {
    name: "Maul Empujamos Todos",
    description: "Evento deportivo que se realiza con el apoyo de todos y todas sus participantes",
    start_date: "2019-07-23 15:00",
    final_date: "2019-07-23 18:30"
  },
  # {
  #   name: "",
  #   description: "",
  #   start_date: "",
  #   final_date: ""
  # },
]

Event.create!(events)
