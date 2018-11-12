class Table 

attr_reader :name, :recaudacion
def initialize(name, *recaudacion)
 @name = name
 @recaudacion =recaudacion.map(&:to_i)
end

def Table.build(file)
	tables = []
	File.readlines(file).each do |line|
		table_info_array=line.chomp.split(', ')
		name, recaudacion = table_info_array.shift, table_info_array
		debugger
		 tables << Table.new(name, *recaudacion)
	end
	 tables
end

def Table.max(file)
	tables = build(file)
	result = {}
	tables.each do |table,day|
		result[table.name] = [table.max, table.max_day]
	end
	result
end










end

