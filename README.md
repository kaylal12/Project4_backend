# PROJECT 4

KeySub: a website that allows users find roommates and/or sublet in Boston.
Backend built with Ruby on Rails with a PostSQL
database.

[Data Model](img/data.JPG)

Gems needed in this webapp include:
-paperclip
-aws-sdk
-dotenv
-active_model_serializers

Paperclip is used to attach files to the models (in this case, profile and listings).
Aws-sdk is used to use amazon s3 storage for the files that will be uploaded.
dotenv is used to help load the varibles in the .env.
Active_model_serializers is used to return json of multiple models that have a relationship. For this webapp, a profile serializer and a listing serializer were used to show the user's listings when getting the profile.

[Frontend_Repo](https://github.com/kaylal12/Project4_frontend);
[KeySub](http://kaylal12.github.io/Project4_frontend/);
