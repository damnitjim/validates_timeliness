# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{validates_timeliness}
  s.version = "3.0.0.beta"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Adam Meehan"]
  s.autorequire = %q{validates_timeliness}
  s.date = %q{2010-09-17}
  s.description = %q{Date and time validation plugin for Rails which allows custom formats}
  s.email = %q{adam.meehan@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE", "CHANGELOG"]
  s.files = ["validates_timeliness.gemspec", "LICENSE", "CHANGELOG", "README.rdoc", "Rakefile", "lib/generators", "lib/generators/validates_timeliness", "lib/generators/validates_timeliness/install_generator.rb", "lib/generators/validates_timeliness/templates", "lib/generators/validates_timeliness/templates/en.yml", "lib/generators/validates_timeliness/templates/validates_timeliness.rb", "lib/validates_timeliness", "lib/validates_timeliness/attribute_methods.rb", "lib/validates_timeliness/conversion.rb", "lib/validates_timeliness/extensions", "lib/validates_timeliness/extensions/date_time_select.rb", "lib/validates_timeliness/extensions/multiparameter_handler.rb", "lib/validates_timeliness/extensions.rb", "lib/validates_timeliness/helper_methods.rb", "lib/validates_timeliness/orms", "lib/validates_timeliness/orms/active_record.rb", "lib/validates_timeliness/parser.rb", "lib/validates_timeliness/validator.rb", "lib/validates_timeliness/version.rb", "lib/validates_timeliness.rb", "spec/model_helpers.rb", "spec/spec_helper.rb", "spec/test_model.rb", "spec/validates_timeliness", "spec/validates_timeliness/attribute_methods_spec.rb", "spec/validates_timeliness/conversion_spec.rb", "spec/validates_timeliness/extensions", "spec/validates_timeliness/extensions/date_time_select_spec.rb", "spec/validates_timeliness/extensions/multiparameter_handler_spec.rb", "spec/validates_timeliness/helper_methods_spec.rb", "spec/validates_timeliness/parser_spec.rb", "spec/validates_timeliness/validator", "spec/validates_timeliness/validator/after_spec.rb", "spec/validates_timeliness/validator/before_spec.rb", "spec/validates_timeliness/validator/is_at_spec.rb", "spec/validates_timeliness/validator/on_or_after_spec.rb", "spec/validates_timeliness/validator/on_or_before_spec.rb", "spec/validates_timeliness/validator_spec.rb"]
  s.homepage = %q{http://github.com/adzap/validates_timeliness}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{validates_timeliness}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Date and time validation plugin for Rails which allows custom formats}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
