
# config/initializers/datadog-tracer.rb
Datadog.configure do |c|
  c.service = 'rails_project'
  c.sampling.default_rate = 1.0
  c.profiling.enabled = true
end
