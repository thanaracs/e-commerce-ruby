RSpec.configure do |config|
    config.before(:suite) do
        #TRUNCATE exclui os dados dentro da tabela
        DatabaseCleaner.clean_with(:truncation)
    end

    config.before(:each) do
        DatabaseCleaner.strategy = :transaction
    end

    config.before(:each, js: true) do
        DatabaseCleaner.strategy = :transaction
    end

    config.before(:each) do
        DatabaseCleaner.start
    end

    config.before(:each) do
        DatabaseCleaner.clean
    end

    
end