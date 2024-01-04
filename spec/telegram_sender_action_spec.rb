describe Fastlane::Actions::TelegramSenderAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The telegram_sender plugin is working!")

      Fastlane::Actions::TelegramSenderAction.run(nil)
    end
  end
end
