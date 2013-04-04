require 'yaml'
test_array = ['Give Quiche A Chance','Mutants Out!', 
              'Chameleonic Life-Forms, No Thanks',
              'X-men']

filename = 'Ch11/CH11_6RimmerTshirts.txt'


def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end

def yaml_load filename
  yaml_string = File.read filename
  YAML::load yaml_string
end



yaml_save test_array, filename
read_array = yaml_load filename


puts(read_array == test_array)