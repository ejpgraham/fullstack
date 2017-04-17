{
  currentUser: {
    id: 1,
    username: "usernumberone"
  },
  forms: {
    signUp: {errors: []},
    logIn: {errors: []},
    createAlbum: {errors: []},
    addComment: {errors: []},
    addTag: {errors: []}
  },
  photos :{
    1: {
      image_url: "www.com",
      user_id: 1,
      album_id: 2,
      tags: {
        1: {
          id: 1,
          name: "sunshine"
        }
      }
      comments: {
        1: {
          id: 1,
          body: "great photo!"
        }
      }
    }
  },
  albums: {
    1: {
      title: "sunny photos",
      description: "photos filled with sunlight",
      user_id: 1
    }
  }
}
