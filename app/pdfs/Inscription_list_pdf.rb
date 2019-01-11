cdrequire 'prawn'
class InscriptionListPdf < Prawn::Document
	def initialize(list_assist)
		super(top_margin: 70)		
		@list_assist = list_assist
		table client_information
	end

	def client_information
		#[[supplier_name = @jobs.first.level.building.project.client.supplier.name],
		#[supplier_address = @jobs.first.level.building.project.client.supplier.address],
		#[supplier_abn_acn = @jobs.first.level.building.project.client.supplier.abn_acn]]
	end
end