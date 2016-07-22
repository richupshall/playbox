require 'chefspec'
describe 'my_cookbook::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(
          platform: 'ubuntu', version: '12.04'
      ).converge(described_recipe)
    end

    it 'should have a greetings file' do
      expect(chef_run).to render_file('/tmp/greeting.txt').with_content('Hello! ubuntu!')
    end
  end
end