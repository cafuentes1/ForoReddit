ReputationSystem::Reputation.create!([
  {reputation_name: "votes", value: -1.0, aggregated_by: "sum", target_type: "Comment", target_id: 17, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Post", target_id: 6, active: true, data: {}},
  {reputation_name: "posts_votes", value: 4.0, aggregated_by: "sum", target_type: "User", target_id: 2, active: true, data: {}},
  {reputation_name: "rp", value: 6.0, aggregated_by: "sum", target_type: "User", target_id: 2, active: true, data: {}},
  {reputation_name: "votes", value: 0.0, aggregated_by: "sum", target_type: "Comment", target_id: 25, active: true, data: {}},
  {reputation_name: "votes", value: 0.0, aggregated_by: "sum", target_type: "Post", target_id: 11, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Post", target_id: 13, active: true, data: {}},
  {reputation_name: "posts_votes", value: 4.0, aggregated_by: "sum", target_type: "User", target_id: 1, active: true, data: {}},
  {reputation_name: "rp", value: 5.0, aggregated_by: "sum", target_type: "User", target_id: 1, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Post", target_id: 2, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Comment", target_id: 19, active: true, data: {}},
  {reputation_name: "votes", value: -1.0, aggregated_by: "sum", target_type: "Comment", target_id: 21, active: true, data: {}},
  {reputation_name: "votes", value: -1.0, aggregated_by: "sum", target_type: "Comment", target_id: 22, active: true, data: {}},
  {reputation_name: "votes", value: 5.0, aggregated_by: "sum", target_type: "User", target_id: 1, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Post", target_id: 10, active: true, data: {}},
  {reputation_name: "votes", value: 2.0, aggregated_by: "sum", target_type: "Post", target_id: 8, active: true, data: {}},
  {reputation_name: "votes", value: 0.0, aggregated_by: "sum", target_type: "Comment", target_id: 14, active: true, data: {}},
  {reputation_name: "votes", value: -1.0, aggregated_by: "sum", target_type: "Post", target_id: 1, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Comment", target_id: 20, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Post", target_id: 3, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Comment", target_id: 15, active: true, data: {}},
  {reputation_name: "votes", value: 2.0, aggregated_by: "sum", target_type: "Post", target_id: 9, active: true, data: {}},
  {reputation_name: "votes", value: 0.0, aggregated_by: "sum", target_type: "User", target_id: 2, active: true, data: {}},
  {reputation_name: "votes", value: -2.0, aggregated_by: "sum", target_type: "Post", target_id: 5, active: true, data: {}},
  {reputation_name: "votes", value: 0.0, aggregated_by: "sum", target_type: "Comment", target_id: 24, active: true, data: {}},
  {reputation_name: "votes", value: 1.0, aggregated_by: "sum", target_type: "Comment", target_id: 16, active: true, data: {}},
  {reputation_name: "votes", value: 0.0, aggregated_by: "sum", target_type: "Comment", target_id: 23, active: true, data: {}},
  {reputation_name: "comments_votes", value: 0.0, aggregated_by: "sum", target_type: "User", target_id: 2, active: true, data: {}}
])
ReputationSystem::ReputationMessage.create!([
  {sender_type: "ReputationSystem::Evaluation", sender_id: 1, receiver_id: 1, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 2, receiver_id: 2, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 3, receiver_id: 3, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 4, receiver_id: 4, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 7, receiver_id: 8, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 5, receiver_id: 8, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 4, receiver_id: 8, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 3, receiver_id: 8, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 1, receiver_id: 8, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 2, receiver_id: 8, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 5, receiver_id: 5, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 6, receiver_id: 2, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 7, receiver_id: 1, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 9, receiver_id: 11, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 7, receiver_id: 12, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 5, receiver_id: 12, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 4, receiver_id: 12, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 3, receiver_id: 12, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 1, receiver_id: 12, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 2, receiver_id: 12, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 6, receiver_id: 13, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 10, receiver_id: 6, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 6, receiver_id: 14, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 14, receiver_id: 15, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 11, receiver_id: 16, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 12, receiver_id: 17, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 12, receiver_id: 19, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 13, receiver_id: 7, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 15, receiver_id: 21, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 21, receiver_id: 18, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 16, receiver_id: 23, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 23, receiver_id: 18, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 17, receiver_id: 24, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 24, receiver_id: 18, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 18, receiver_id: 25, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 25, receiver_id: 18, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 19, receiver_id: 22, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 22, receiver_id: 14, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 20, receiver_id: 26, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 26, receiver_id: 14, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 21, receiver_id: 27, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 27, receiver_id: 18, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 22, receiver_id: 4, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 23, receiver_id: 26, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 24, receiver_id: 27, weight: 1.0},
  {sender_type: "ReputationSystem::Evaluation", sender_id: 25, receiver_id: 30, weight: 1.0},
  {sender_type: "ReputationSystem::Reputation", sender_id: 30, receiver_id: 12, weight: 1.0}
])
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
FavoritePost.create!([
  {post_id: 11, user_id: 1},
  {post_id: 13, user_id: 1},
  {post_id: 13, user_id: 2}
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
SubscriptionForum.create!([
  {forum_id: 1, user_id: 1},
  {forum_id: 2, user_id: 1},
  {forum_id: 3, user_id: 1}
])
