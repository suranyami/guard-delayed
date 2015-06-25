guard 'bundler' do
  watch(/^Gemfile/)
  watch(/^.+\.gemspec/)
end

options = {
  cmd: 'bundle exec rspec',
  all_after_pass: true,
  all_on_start: true
}
guard :rspec, options do
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^lib/(.+)\.rb$})     { |m| "spec/lib/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb')  { "spec" }
end
