 users

  - id               integer not null
  - username         string  not null, indexed, unique
  - password_digest  string  not null
  - session_token    string  not null, indexed, unique

 photos

  - id               integer  not null
  - user_id          integer  not null
  - album_id         integer
  - title            string   
  - description      string
  - location         string


 albums
  - id              integer  not null
  - user_id         integer  not null
  - title           string
  - description     string

 tag
  - id              integer not null
  - name            string  not null

 taggings
  - id             integer not null
  - photo_id       integer not null
  - tag_id         integer not null

 comment
  - id             integer not null
  - user_id        integer not null
  - photo_id       integer not null
  - body           string  not null
