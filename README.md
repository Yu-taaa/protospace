Protospace
====

## TableDesign

### Users
|nickname|member_name|profile|works|
|:------:|:---------:|:-----:|:---:|
| string |   string  |  text | text|

### Prototypes
|title|catch_copy|concept|user_id|
|:---:|:--------:|:-----:|:-----:|
|string| string  |  text |integer|

### Comments
|text|user_id|prototype_id|
|:--:|:-----:|:----------:|
|text|integer|integer|

### Images
|image_url|prototype_id|
|:-----:|:-----:|
|text|integer|

### Likes
|user_id|like_bad|
|:-----:|:-----:|
|integer|boolean|

### Users_likes
|user_id|like_id|
|:-----:|:-----:|
|integer|integer|

### Association

##### User
- has_many comments
- has_many prototypes
- has_many likes, through: :Users_likes

##### Prototype
- has_many comments
- has_many images
- belongs_to user

##### Comment
- belongs_to user
- belongs_to prototype

##### Image
- belongs_to prototype

##### Like
- belongs_to user






