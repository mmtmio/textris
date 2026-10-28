# 0.8.0 (latest release)

* runs on Ruby 4.0 and Rails 8.1, and allows phony 3
* Sidekiq `delay` jobs pass the action name as a string, so Sidekiq 7+ accepts them
* log delivery no longer appends to a string literal
* mail delivery requires the Active Support extension it uses for the app name
* replaced Travis, Appraisal, Code Climate and Scrutinizer with a GitHub Actions workflow

# 0.7.0

* added support for using Twilio Copilot via messaging_service_sid

# 0.6.0

* new release to support changes made with Nexmo features,
* `respond_to_missing?` defined for base texter,
* corrected an error typo in Message Recipients validation

# 0.5.0 

- **Breaking change**. `Textris::Message#parse_content` no longer strips any
  whitespace characters except for trailing characters. This allows to send
  messages with newlines etc.
- Added support for sending MMS messages via Twilio with `media_urls` option.
- Moved to TravisCI
- Added support for using Twilio Copilot which depends on having a `messaging_service_sid`.
- Fix defaults inheritance (see issue #11)
- Add support for Alphanumeric sender ID
- Add support for Short Codes

