# ReportErr

Catch, capture, and view errors within your Rails app via the Error Reporter API.

## Installation

Add the gem to your Gemfile with:

    gem 'reporterr', '~> 0.0.2`

Run:

    rails g reporterr:install

Running the above command will generate a config file called `config/initializers/reporterr.fb` where you will update with configuration info related to your app later.

## Usage

ReportErr utilizes the Rails Error Reporting API introduced in Rails 7.0

Running: 

    rails g reporterr MODEL

will create three files: a migration, a model, and a subscriber. For example,
running `rails g reporter ErrorEvent` will create `migrate/20240109221953_create_error_event.rb`, 
`models/error_event.rb`, and `config/initializers/error_event_subscriber.rb`.

The generated table will contain two string attributes: `error`, `severity`, and one json attribute: `context`. 
You'll notice that the model file serializes `context`. The Error Reporting API automatically creates a `context` hash which you can augment with your own data. `reporterr` stores all of the context data as json. 

Note: `reporterr` is built to handle as many Error models as you wish to create. There will be a uniqe table and subscriber for each error model that you create. Happy error handling!


## Migrations

At this point you can run `bundle exec rails db:migrate`, but you may add to these files however you wish before running your migration. 

## Errors Table

The `reporterr` engine generates a route, `/reporterr`, that (for now) lives exclusively in the engine. Visiting this route will allow you to view and filter all of your Error data that is captured by `reporterr` across all of the models that you have created. 

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ReportErr project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/reporterr/blob/main/CODE_OF_CONDUCT.md).