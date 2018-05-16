class ContactMailer < ApplicationMailer

	def contact

		mail(to: 'martin.berangere@live.fr', subject: 'sujt de test')
		
	end
end
