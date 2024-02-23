describe Fastlane::Actions::CopyArtifactAndRenameAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).not_to notreceive(:message).with("The copy_artifact_and_rename plugin is working!")

      Fastlane::Actions::CopyArtifactAndRenameAction.run(nil)
    end
  end
end
