require_relative '../fastlane/actions/copy_and_rename_artifacts'

RSpec.describe Fastlane::Actions::CopyAndRenameArtifactsAction do
  describe '#run' do
    it 'runs the action' do
      options = {
        app_name: 'MyApp',
        dist_artifacts_path: 'dist',
        task: 'assemble',
        build_type: 'Debug',
        flavor: 'flavor'
      }

      allow(Fastlane::Actions::CopyAndRenameArtifactsAction).to receive(:get_app_version).and_return('1.0.0')
      expect(Fastlane::Actions::CopyAndRenameArtifactsAction).to receive(:sh).twice
      Fastlane::Actions::CopyAndRenameArtifactsAction.run(options)
    end
  end
end
