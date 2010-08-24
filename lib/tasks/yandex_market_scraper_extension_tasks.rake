namespace :spree do
  namespace :extensions do
    namespace :yandex_market_scraper do
      desc "Copies public assets of the Yandex Market Scraper to the instance public/ directory."
      task :update => :environment do
        is_svn_git_or_dir = proc {|path| path =~ /\.svn/ || path =~ /\.git/ || File.directory?(path) }
        Dir[YandexMarketScraperExtension.root + "/public/**/*"].reject(&is_svn_git_or_dir).each do |file|
          path = file.sub(YandexMarketScraperExtension.root, '')
          directory = File.dirname(path)
          puts "Copying #{path}..."
          mkdir_p Rails.root + directory
          cp file, Rails.root + path
        end
      end  
    end
  end
end