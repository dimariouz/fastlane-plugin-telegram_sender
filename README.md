# telegram_sender plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-telegram_sender)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-telegram_sender`, add it to your project by running:

```bash
fastlane add_plugin telegram_sender
```

## About telegram

Allows post messages to telegram chats and topics

```ruby
telegram(
  token: ENV['TG_BOT_TOKEN'], # get token from @BotFather
  chat_id: ENV['TG_CHAT_ID'], # https://stackoverflow.com/questions/33858927/how-to-obtain-the-chat-id-of-a-private-telegram-channel
  message_thread_id: ENV['TG_MESSAGE_THREAD_ID'], # message_thread_id of topic 
  animation: ENV['ANIMATION_ID'], # Pass a file_id as String to send an animation that exists on the Telegram servers
  text: "Hello world, Telegram!" # Required
)
```

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

**Note to author:** Please set up a sample project to make it easy for users to explore what your plugin does. Provide everything that is necessary to try out the plugin in this project (including a sample Xcode/Android project if necessary)

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
