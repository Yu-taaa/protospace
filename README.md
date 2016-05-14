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
|image_url|small_image_url|prototype_id|
|:-----:|:-----:|:-----:|
|text|text|integer|

### Likes
|user_id|like_bad|prototype_id|
|:-----:|:-----:|:-----:|
|integer|boolean|integer|


### Association

##### User
- has_many comments
- has_many prototypes, through:likes


##### Prototype
- has_many comments
- has_many images
- belongs_to user
- has_many likes

##### Comment
- belongs_to user
- belongs_to prototype

##### Image
- belongs_to prototype

##### Like
- belongs_to user
- belongs_to prototype






