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
			[assist.information_personal.name, 
			 assist.information_personal.birth_place,
			 assist.information_personal.born_date, 
			 assist.information_personal.weight,
			 assist.information_personal.height,
			 assist.information_personal.gender] 
		end
	end
end