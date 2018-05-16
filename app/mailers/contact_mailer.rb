class ContactMailer < ApplicationMailer

	def contact

		mail(to: 'contact@test.fr', subject: 'sujt de test')
		
	end
end
