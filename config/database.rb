Sequel::Model.plugin(:schema)
Sequel::Model.raise_on_save_failure = false # Do not throw exceptions on failure
Sequel::Model.db = case Padrino.env
  when :development then Sequel.connect("postgres://agush:@localhost/roca9_development", :loggers => [logger])
  when :test        then Sequel.connect("postgres://agush:@localhost/roca9_test", :loggers => [logger])
  when :production  then Sequel.connect(ENV['DATABASE_URL'], :loggers => [logger])
end
