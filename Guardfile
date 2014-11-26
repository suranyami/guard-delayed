guard 'bundler' do
  watch(/^Gemfile/)
  watch(/^.+\.gemspec/)
end

options = {
  all_on_start: true,
  all_after_pass: true,
  cmd: 'spring rspec -f doc'
}

guard :rspec, options do
  watch(/^spec\/.*_spec\.rb/)
  watch(/^lib\/(.*)\.rb/)         { |m| "spec/#{m[1]}_spec.rb" }
  watch(/^spec\/spec_helper\.rb/) { "spec" }
end
