# frozen_string_literal: true

# config/enviroments 内の設定ファイルに下記の設定書けば、factory のディレクトリを設定できる
# default は spec/factories となっている
# config.factory_bot.definition_file_paths = ["custom/factories"]
#
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods
end
