
User.create!([
  {email: "cafuentes1@uc.cl", password: 123456, password_confirmation: 123456, username: "cafuentes1"},
  {email: "cafuentes2@uc.cl", password: 123456, password_confirmation: 123456, username: "cafuentes2"}
])
Forum.create!([
  {title: "General", topic: "Test", description: "Test Forum"},
  {title: "Blade Runner", topic: "Movies", description: "This is a forum about Blade Runner"},
  {title: "Star Wars", topic: "Movies", description: "This is a forum about Star Wars precuels"},
  {title: "Spider-man", topic: "Movies", description: "This is a forum about The Holy Trilogy."},
  {title: "Mad Men", topic: "Series", description: "This is a forum about Mad Men TV series."},
  {title: "The Beatles", topic: "Music", description: "Forum about The Beatles"},
  {title: "Queen", topic: "Music", description: "Forum about the band Queen"}
])
Post.create!([
  {title: "Test Post", content: "This is a test post used for testing our forum. Edited. Edited.", user_id: 1},
  {title: "Test Post 2", content: "Este es el segundo post de testeo de la pagina.", user_id: 2},
  {title: "Tercer Post", content: "Este es el tercer post de la pagina. ", user_id: 1},
  {title: "Post numero 4", content: "Este es otro post", user_id: 1},
  {title: "Test 5 del foro", content: "Este es un post de testeo", user_id: 1},
  {title: "Post con imagen", content: "Post imagen", user_id: 1},
  {title: "Post 30", content: "![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)", user_id: 1},
  {title: "Testeo de Up/Down", content: "Este post se usara para testear funcionalidad Up/Down", user_id: 2},
  {title: "Paul", content: "Let's talk about McCartney", user_id: 2},
  {title: "Bohemian Rhapsody", content: "Good song.\r\n\r\n![Image of Queen](http://e.radio-oxigeno.io/normal/2018/05/24/292129_615616.jpg)", user_id: 1}
])
Comment.create!([
  {comment: "Comentario editado", post_id: 1, user_id: 1},
  {comment: "Otro comentario", post_id: 1, user_id: 1},
  {comment: "Y otro mas", post_id: 1, user_id: 2},
  {comment: "Este es un comentario", post_id: 3, user_id: 1},
  {comment: "hola", post_id: 6, user_id: 1},
  {comment: "![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)", post_id: 9, user_id: 2},
  {comment: "hi", post_id: 9, user_id: 1},
  {comment: "Test comment", post_id: 2, user_id: 2},
  {comment: "comments 2", post_id: 2, user_id: 2},
  {comment: "hi", post_id: 2, user_id: 2},
  {comment: "Comment 1", post_id: 10, user_id: 2},
  {comment: "-1", post_id: 10, user_id: 2},
  {comment: "-1", post_id: 10, user_id: 2},
  {comment: "first", post_id: 11, user_id: 2},
  {comment: "hola", post_id: 5, user_id: 2},
  {comment: "hi", post_id: 11, user_id: 1}
])
Role.create!([
  {name: "admin", resource_type: nil, resource_id: nil}
])
User::HABTM_Roles.create!([
  {user_id: 1, role_id: 1}
])
Role::HABTM_Users.create!([
  {user_id: 1, role_id: 1}
])
