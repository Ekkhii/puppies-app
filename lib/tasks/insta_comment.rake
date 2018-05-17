desc "Commentaire Instagram"
task insta_comment: :environment do
	BotInsta.new.perform
end