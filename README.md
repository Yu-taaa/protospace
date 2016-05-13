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

