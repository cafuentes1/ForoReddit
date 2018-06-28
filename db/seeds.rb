User::HABTM_Roles.create!([
  {user_id: 1, role_id: 1}
])
Role::HABTM_Users.create!([
  {user_id: 1, role_id: 1}
])
User.create!([
  {email: "cafuentes1@uc.cl", encrypted_password: "$2a$11$ltmjOGDoW3QNfcUWDx.yuOL20hsAuWKi1wzixCuhxr.Kyjk67U1WG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 18, current_sign_in_at: "2018-06-25 03:49:05", last_sign_in_at: "2018-06-24 02:26:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "cafuentes1"},
  {email: "cafuentes2@uc.cl", encrypted_password: "$2a$11$G/Z/ZMfkF8IXIpMCEzvTj.NquxhoIPTy2tGSUgCEFF7IHrVyGQCSC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 12, current_sign_in_at: "2018-06-25 06:04:08", last_sign_in_at: "2018-06-25 03:16:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", username: "cafuentes2"}
])
Post.create!([
  {title: "Test Post", content: "This is a test post used for testing our forum. Edited. Edited.", user_id: 1, forum_id: 1},
  {title: "Test Post 2", content: "Este es el segundo post de testeo de la pagina.", user_id: 2, forum_id: 3},
  {title: "Tercer Post", content: "Este es el tercer post de la pagina. ", user_id: 1, forum_id: 2},
  {title: "Post numero 4", content: "Este es otro post", user_id: 1, forum_id: 4},
  {title: "Test 5 del foro", content: "Este es un post de testeo", user_id: 1, forum_id: 1},
  {title: "Post con imagen", content: "Post imagen", user_id: 1, forum_id: 1},
  {title: "Post 30", content: "![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)", user_id: 1, forum_id: 2},
  {title: "Testeo de Up/Down", content: "Este post se usara para testear funcionalidad Up/Down", user_id: 2, forum_id: 4},
  {title: "Paul", content: "Let's talk about McCartney", user_id: 2, forum_id: 6},
  {title: "Bohemian Rhapsody", content: "Good song.\r\n\r\n![Image of Queen](http://e.radio-oxigeno.io/normal/2018/05/24/292129_615616.jpg)", user_id: 1, forum_id: 7}
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
Forum.create!([
  {title: "General", topic: "Test", description: "Test Forum", post_id: nil},
  {title: "Blade Runner", topic: "Movies", description: "This is a forum about Blade Runner", post_id: nil},
  {title: "Star Wars", topic: "Movies", description: "This is a forum about Star Wars precuels", post_id: nil},
  {title: "Spider-man", topic: "Movies", description: "This is a forum about The Holy Trilogy.", post_id: nil},
  {title: "Mad Men", topic: "Series", description: "This is a forum about Mad Men TV series.", post_id: nil},
  {title: "The Beatles", topic: "Music", description: "Forum about The Beatles", post_id: nil},
  {title: "Queen", topic: "Music", description: "Forum about the band Queen", post_id: nil}
])
Role.create!([
  {name: "admin", resource_type: nil, resource_id: nil}
])
