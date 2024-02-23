require_relative '../fastlane/actions/copy_and_rename_artifacts'

class TestCopyArtifactAndRenameAction
  def self.test_run
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

# Running the test
TestCopyArtifactAndRenameAction.test_run
