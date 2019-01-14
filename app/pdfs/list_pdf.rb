class ListPdf < Prawn::Document
	def initialize(visorium_id)
		super()
		v = Visorium.find(visorium_id)
    @list_assist = v.users  
		map_table
	end

	def map_table
		text "Lista de asistentes a visoria: "
		table get_table_info
	end

	def get_table_info 
		[['name', 'Lugar de nacimiento', 'Fecha de nacimiento', 'Peso', 'Estatura', 'Genero']] + 
		@list_assist.map do |assist| 
			personal_info = assist.information_personals
			[personal_info[0].name, 
			 personal_info[0].birth_place,
			 personal_info[0].born_date, 
			 personal_info[0].weight,
			 personal_info[0].height,
			 personal_info[0].gender] 
		end
	end
end