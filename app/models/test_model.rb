# coding: utf-8
# Test for model
require 'minitest/autorun'
require_relative 'model'

class TestModel < Minitest::Unit::TestCase
  def self.runnable_methods
    puts 'Overriding minitest to run tests in a defined order'
    methods = methods_matching(/^test_/)
  end
  def worksheet; @worksheet ||= init_spreadsheet; end
  def init_spreadsheet; Model.new end
  def test_control_f44; assert_in_delta(1.0, worksheet.control_f44, 0.002); end
  def test_control_f45; assert_in_delta(1.0, worksheet.control_f45, 0.002); end
  def test_control_f46; assert_equal(".", worksheet.control_f46.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f47; assert_equal(".", worksheet.control_f47.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f48; assert_equal(".", worksheet.control_f48.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f49; assert_equal(".", worksheet.control_f49.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f50; assert_in_delta(1.0, worksheet.control_f50, 0.002); end
  def test_control_f51; assert_equal("A", worksheet.control_f51.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f52; assert_equal(".", worksheet.control_f52.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f53; assert_in_delta(1.0, worksheet.control_f53, 0.002); end
  def test_control_f54; assert_equal(".", worksheet.control_f54.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f55; assert_in_delta(1.0, worksheet.control_f55, 0.002); end
  def test_control_f56; assert_in_delta(1.0, worksheet.control_f56, 0.002); end
  def test_control_f57; assert_in_delta(1.0, worksheet.control_f57, 0.002); end
  def test_control_f58; assert_equal(".", worksheet.control_f58.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f59; assert_in_delta(1.0, worksheet.control_f59, 0.002); end
  def test_control_f60; assert_in_delta(1.0, worksheet.control_f60, 0.002); end
  def test_control_f61; assert_equal(".", worksheet.control_f61.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f62; assert_in_delta(1.0, worksheet.control_f62, 0.002); end
  def test_control_f63; assert_equal(".", worksheet.control_f63.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f64; assert_in_delta(1.0, worksheet.control_f64, 0.002); end
  def test_control_f65; assert_in_delta(1.0, worksheet.control_f65, 0.002); end
  def test_control_f66; assert_equal(".", worksheet.control_f66.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f67; assert_in_delta(1.0, worksheet.control_f67, 0.002); end
  def test_control_f68; assert_equal(".", worksheet.control_f68.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f69; assert_in_delta(1.0, worksheet.control_f69, 0.002); end
  def test_control_f70; assert_equal(".", worksheet.control_f70.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f71; assert_in_delta(1.0, worksheet.control_f71, 0.002); end
  def test_control_f72; assert_in_delta(1.0, worksheet.control_f72, 0.002); end
  def test_control_f73; assert_equal(".", worksheet.control_f73.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f74; assert_equal(".", worksheet.control_f74.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f75; assert_equal(".", worksheet.control_f75.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f76; assert_in_delta(1.0, worksheet.control_f76, 0.002); end
  def test_control_f77; assert_in_delta(1.0, worksheet.control_f77, 0.002); end
  def test_control_f78; assert_in_delta(1.0, worksheet.control_f78, 0.002); end
  def test_control_f79; assert_in_delta(1.0, worksheet.control_f79, 0.002); end
  def test_control_f80; assert_equal(".", worksheet.control_f80.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f81; assert_in_delta(1.0, worksheet.control_f81, 0.002); end
  def test_control_f82; assert_in_delta(1.0, worksheet.control_f82, 0.002); end
  def test_control_f83; assert_in_delta(1.0, worksheet.control_f83, 0.002); end
  def test_control_f84; assert_equal(".", worksheet.control_f84.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f85; assert_in_delta(1.0, worksheet.control_f85, 0.002); end
  def test_control_f86; assert_in_delta(1.0, worksheet.control_f86, 0.002); end
  def test_control_f87; assert_in_delta(1.0, worksheet.control_f87, 0.002); end
  def test_control_f88; assert_equal(".", worksheet.control_f88.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_f89; assert_in_delta(1.0, worksheet.control_f89, 0.002); end
  def test_control_h44; assert_equal("Proyección realizada por el INE", worksheet.control_h44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i44; assert_equal("Proyección 10% menor al 2050 respecto a la realizada por el INE", worksheet.control_i44.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h45; assert_equal("Escenario Optimista", worksheet.control_h45.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i45; assert_equal("Escenario Conservador", worksheet.control_i45.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h50; assert_equal("Según variación porcentual  en la capacidad instalada entre 2015-2016 según la CNE", worksheet.control_h50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i50; assert_equal("De acuerdo a  Escenario 10 mesa ERNC", worksheet.control_i50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j50; assert_equal("1,71 GW adicionales al 2050", worksheet.control_j50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k50; assert_equal("2,4 GW adicionales al 2050", worksheet.control_k50.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h51; assert_equal("27% Gas, 68% Carbón, 5% Diésel", worksheet.control_h51.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i51; assert_equal("75% Gas, 23% Carbón, 2% Diésel", worksheet.control_i51.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j51; assert_equal("16% Gas, 80% Carbón, 4% Diésel", worksheet.control_j51.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k51; assert_equal("100% Gas", worksheet.control_k51.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h53; assert_equal("Según información CNE 2015 - 2016", worksheet.control_h53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i53; assert_equal("De acuerdo a las licitaciones eléctricas del año 2016", worksheet.control_i53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j53; assert_equal("Capacidad instalada al 2050 de 11 GW", worksheet.control_j53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k53; assert_equal("15 GW  al 2050, 40% de Potencial teórico", worksheet.control_k53.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h55; assert_equal("Según información CNE 2015 - 2016", worksheet.control_h55.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i55; assert_equal("Capacidad instalada al 2050 de 2,7 GW", worksheet.control_i55.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j55; assert_equal("Capacidad instalada al 2050 de 6 GW", worksheet.control_j55.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k55; assert_equal("Capacidad instalada al 2050 de 9,5 GW ", worksheet.control_k55.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h56; assert_equal("Según información CNE 2015 - 2016", worksheet.control_h56.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i56; assert_equal("Capacidad instalada al 2050 de 5 GW", worksheet.control_i56.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j56; assert_equal("Capacidad instalada al 2050 de 7 GW ", worksheet.control_j56.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k56; assert_equal("Capacidad instalada al 2050 de 9,4 GW ", worksheet.control_k56.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h57; assert_equal("Según información CNE 2015 - 2016", worksheet.control_h57.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i57; assert_equal("Capacidad instalada al 2050 de 5 GW", worksheet.control_i57.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j57; assert_equal("Capacidad instalada al 2050 de 8 GW ", worksheet.control_j57.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k57; assert_equal("Capacidad instalada al 2050 de 11 GW", worksheet.control_k57.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h59; assert_equal("Sin desarrollo hasta el 2030, alcalzando una capacidad instalada de 0,03 GW al 2050", worksheet.control_h59.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i59; assert_equal("Capacidad instalada al 2050 de 0,2 GW ", worksheet.control_i59.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j59; assert_equal("Capacidad instalada al 2050 de 0,5 GW ", worksheet.control_j59.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k59; assert_equal("Capacidad instalada al 2050 de 0,9 GW ", worksheet.control_k59.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h60; assert_equal("Sin desarrollo hasta el 2030, alcanzando una capacidad instalada de 0,1 GW al 2050", worksheet.control_h60.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i60; assert_equal("Capacidad instalada al 2050 de 0,4 GW ", worksheet.control_i60.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j60; assert_equal("Capacidad instalada al 2050 de 0,9 GW ", worksheet.control_j60.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k60; assert_equal("Capacidad instalada al 2050 de 1,7 GW ", worksheet.control_k60.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h62; assert_equal("Considera solo la operación de proyecto Cerro Pabellón (50 MW)", worksheet.control_h62.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i62; assert_equal("Capacidad instalada al 2050 de 0,5 GW ", worksheet.control_i62.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j62; assert_equal("Capacidad instalada al 2050 de 1,4 GW ", worksheet.control_j62.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k62; assert_equal("Capacidad instalada al 2050 de 2,2 GW ", worksheet.control_k62.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h64; assert_equal("Según información CNE 2014 - 2015", worksheet.control_h64.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i64; assert_equal("Capacidad instalada al 2050 de  5 GW", worksheet.control_i64.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j64; assert_equal("Capacidad instalada al 2050 de  7 GW", worksheet.control_j64.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k64; assert_equal("Capacidad instalada al 2050 de  9 GW ", worksheet.control_k64.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h65; assert_equal("Sin desarrollo", worksheet.control_h65.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i65; assert_equal(" Capacidad instalada al 2050 de 3,7 GW ", worksheet.control_i65.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j65; assert_equal("Capacidad instalada al 2050 de  5,6 GW (1% potencial ERNC)", worksheet.control_j65.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k65; assert_equal("Capacidad instalada al 2050 de 11,1 GW ", worksheet.control_k65.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h67; assert_equal("Capacidad instalada al 2050 de  0,3 GW  (Sin política)", worksheet.control_h67.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i67; assert_equal("Capacidad instalada al 2050 de 1 GW ", worksheet.control_i67.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j67; assert_equal("Capacidad instalada al 2050 de 2 GW", worksheet.control_j67.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k67; assert_equal("Capacidad instalada al 2050 de 2,8 GW ", worksheet.control_k67.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h69; assert_equal("Supone la operación de la plantas Loma los Colorados y Santa Marta, junto con sus planes de expansión, sin el ingreso de nuevas centrales", worksheet.control_h69.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i69; assert_equal("Al escenario anterior se suma el ingreso de operación de central Los Molles en 2020", worksheet.control_i69.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j69; assert_equal("Mantiene la trayecotria del nivel 2 hasta el 2025, posterior a esto se considera un 75% del biogás capturado es utilizado para generación eléctrica.", worksheet.control_j69.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k69; assert_equal(" Mantiene la trayectoria del nivel 2 hasta el 2020, posterior a esto se considera un 100% del biogás capturado es utilizado para generación eléctrica.", worksheet.control_k69.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h71; assert_equal("Considera los 1,6  MW de generación eléctrica mediante biodigestores ya existentes al 2050", worksheet.control_h71.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i71; assert_equal("Desarrollo de biodigestores que para el 2050, el 30% de los desechos de cerdo se utilizan en la producción de energía.", worksheet.control_i71.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j71; assert_equal("Al  2050,  la población de cerdos  y vacas lecheras  producen energía a través de biodigestores en 70% y 30%, respectivamente. ", worksheet.control_j71.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k71; assert_equal("En 2050 los desechos de aves, cerdos y vacas lecheras son destinados para un uso en biodigestores con fines energéticos en 5%,  80% y 90%, respectivamente.", worksheet.control_k71.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h72; assert_equal("40% de los pequeños agricultores ocupan sistema de bombeo de agua basado en energía fotovoltaica en 2050.", worksheet.control_h72.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i72; assert_equal("30% y 40 % de los medianos y pequeños agricultores, respectivamente, utilizan sistema de bombeo de agua basado en energía fotovoltaica al 2050", worksheet.control_i72.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j72; assert_equal("100% de los pequeños agricultores utilizan paneles fotovoltaicos en 2050. los medianos agricultores alcanzan 50% en el 2050 y los grandes alcanzan el 100% en 2040", worksheet.control_j72.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k72; assert_equal("100% de los pequeños agricultores utilizan paneles fotovoltaicos en 2050. los medianos agricultores alcanzan 80% en el 2050 y los grandes alcanzan el 100% en 2030.", worksheet.control_k72.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h76; assert_equal("Tasa de ocupación de 1,72 al 2050", worksheet.control_h76.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i76; assert_equal("Tasa de ocupación de 1,89 al 2050", worksheet.control_i76.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j76; assert_equal("Tasa de ocupación de 2,06 al 2050", worksheet.control_j76.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k76; assert_equal("Tasa de ocupación de 2,28 al 2050", worksheet.control_k76.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h77; assert_equal("Renovación natural del parque. 1,61% mejor que en 2015 (km/LGE)", worksheet.control_h77.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i77; assert_equal("Renovación natural del parque. 2% mejor que en 2015 (km/LGE)", worksheet.control_i77.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j77; assert_equal("Renovación natural del parque. 2,5% mejor que en 2015 (km/LGE)", worksheet.control_j77.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k77; assert_equal("Renovación natural del parque. 3,05% mejor que en 2015 (km/LGE)", worksheet.control_k77.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h78; assert_equal("Ventas de vehículos eléctricos al 2050  menor al 1%", worksheet.control_h78.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i78; assert_equal("Ventas de vehículos eléctricos al  2050 del 14%", worksheet.control_i78.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j78; assert_equal("Ventas de vehículos eléctricos al 2050 del 23%", worksheet.control_j78.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k78; assert_equal("Ventas de vehículos eléctricos al 2050 del 40%", worksheet.control_k78.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h79; assert_equal("Al 2050, la relación entre el transporte publico y privado cae de 0,51 a 0,38.", worksheet.control_h79.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i79; assert_equal("Al 2050, la relación entre el transporte publico y privado cae de 0,51 a 0,44.", worksheet.control_i79.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j79; assert_equal("Al 2050, la relación entre el transporte publico y privado cae de 0,51 a 0,46.", worksheet.control_j79.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k79; assert_equal("Al 2050, la relación entre el transporte publico y privado sube de 0,51 a 0,53.", worksheet.control_k79.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h81; assert_equal("No existen sistema de recuperación de calor", worksheet.control_h81.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i81; assert_equal("La recuperación de calor y el remplazo de energía térmica por energía solar es del 2,2% al 2050", worksheet.control_i81.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j81; assert_equal("La recuperación de calor y el remplazo de energía térmica por energía solar es del 6,5% al 2050", worksheet.control_j81.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k81; assert_equal("La recuperación de calor y el remplazo de energía térmica por energía solar es del 9,5% al 2050", worksheet.control_k81.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h82; assert_equal("Sin desarrollo", worksheet.control_h82.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i82; assert_equal("Al 2050, se remplaza del 29,7% de diésel y petróleo por gas natural", worksheet.control_i82.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j82; assert_equal("Al 2050, se remplaza del 59,4% de diésel y petróleo por gas natural", worksheet.control_j82.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k82; assert_equal("Al 2050, se remplaza del 89,1% de diésel y petróleo por gas natural", worksheet.control_k82.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h83; assert_equal("Sin desarrollo", worksheet.control_h83.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i83; assert_equal("3% en ahorro al 2050", worksheet.control_i83.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j83; assert_equal("7% en ahorro al 2050", worksheet.control_j83.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k83; assert_equal("10% en ahorro al 2050", worksheet.control_k83.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h85; assert_equal("Sin desarrollo", worksheet.control_h85.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i85; assert_equal("Al 2050, se reduce 25% en calefacción por m2", worksheet.control_i85.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j85; assert_equal("Al 2050, se reduce 40% en calefacción por m2", worksheet.control_j85.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k85; assert_equal("Al 2050, se reduce 75% en calefacción por m2", worksheet.control_k85.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h86; assert_equal("Sin desarrollo", worksheet.control_h86.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i86; assert_equal("al 2050, se remplaza el 25% de calefacción de biomasa por electricidad", worksheet.control_i86.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j86; assert_equal("al 2050, se remplaza el 45% de calefacción de biomasa por electricidad", worksheet.control_j86.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k86; assert_equal("al 2050, se remplaza el 65% de calefacción de biomasa por electricidad", worksheet.control_k86.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h87; assert_equal("Sin desarrollo", worksheet.control_h87.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i87; assert_equal("Al 2050 se logran mejoras en eficiencia del 13%", worksheet.control_i87.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j87; assert_equal("Al 2050 se logran mejoras en eficiencia del 17%", worksheet.control_j87.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k87; assert_equal("Al 2050 se logran mejoras en eficiencia del 22%", worksheet.control_k87.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_h89; assert_equal("Sin desarrollo", worksheet.control_h89.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_i89; assert_equal("Al 2050 se logran mejoras en eficiencia del 13%", worksheet.control_i89.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_j89; assert_equal("Al 2050 se logran mejoras en eficiencia del 17%", worksheet.control_j89.to_s.gsub(/[\n\r]+/,'')); end
  def test_control_k89; assert_equal("Al 2050 se logran mejoras en eficiencia del 22%", worksheet.control_k89.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_b2; assert_equal("Fuentes de Energía / Uso para Diagramas", worksheet.resultados_intermedios_b2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_p2; assert_equal("Grafico 1", worksheet.resultados_intermedios_p2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r2; assert_equal("Oferta Total de Energía", worksheet.resultados_intermedios_r2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ab2; assert_equal("Grafico 2", worksheet.resultados_intermedios_ab2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ac2; assert_equal("Demanda de Energía por sector", worksheet.resultados_intermedios_ac2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_am2; assert_equal("Grafico 4", worksheet.resultados_intermedios_am2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_an2; assert_equal("Electricidad sumistrada a la red", worksheet.resultados_intermedios_an2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ay2; assert_equal("Electricidad demandada", worksheet.resultados_intermedios_ay2.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r3; assert_equal("TWh", worksheet.resultados_intermedios_r3.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s3; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_s3, 0.002); end
  def test_resultados_intermedios_t3; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_t3, 0.002); end
  def test_resultados_intermedios_u3; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_u3, 0.002); end
  def test_resultados_intermedios_v3; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_v3, 0.002); end
  def test_resultados_intermedios_w3; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_w3, 0.002); end
  def test_resultados_intermedios_x3; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_x3, 0.002); end
  def test_resultados_intermedios_y3; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_y3, 0.002); end
  def test_resultados_intermedios_z3; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_z3, 0.002); end
  def test_resultados_intermedios_ac3; assert_equal("TWh", worksheet.resultados_intermedios_ac3.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad3; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_ad3, 0.002); end
  def test_resultados_intermedios_ae3; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_ae3, 0.002); end
  def test_resultados_intermedios_af3; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_af3, 0.002); end
  def test_resultados_intermedios_ag3; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_ag3, 0.002); end
  def test_resultados_intermedios_ah3; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_ah3, 0.002); end
  def test_resultados_intermedios_ai3; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_ai3, 0.002); end
  def test_resultados_intermedios_aj3; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_aj3, 0.002); end
  def test_resultados_intermedios_ak3; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_ak3, 0.002); end
  def test_resultados_intermedios_an3; assert_equal("TWh", worksheet.resultados_intermedios_an3.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao3; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_ao3, 0.002); end
  def test_resultados_intermedios_ap3; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_ap3, 0.002); end
  def test_resultados_intermedios_aq3; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_aq3, 0.002); end
  def test_resultados_intermedios_ar3; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_ar3, 0.002); end
  def test_resultados_intermedios_as3; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_as3, 0.002); end
  def test_resultados_intermedios_at3; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_at3, 0.002); end
  def test_resultados_intermedios_au3; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_au3, 0.002); end
  def test_resultados_intermedios_av3; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_av3, 0.002); end
  def test_resultados_intermedios_ay3; assert_equal("TWh", worksheet.resultados_intermedios_ay3.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_az3; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_az3, 0.002); end
  def test_resultados_intermedios_ba3; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_ba3, 0.002); end
  def test_resultados_intermedios_bb3; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_bb3, 0.002); end
  def test_resultados_intermedios_bc3; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_bc3, 0.002); end
  def test_resultados_intermedios_bd3; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_bd3, 0.002); end
  def test_resultados_intermedios_be3; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_be3, 0.002); end
  def test_resultados_intermedios_bf3; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_bf3, 0.002); end
  def test_resultados_intermedios_bg3; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_bg3, 0.002); end
  def test_resultados_intermedios_d4; assert_equal("TWh / year", worksheet.resultados_intermedios_d4.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f4; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_f4, 0.002); end
  def test_resultados_intermedios_g4; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_g4, 0.002); end
  def test_resultados_intermedios_h4; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_h4, 0.002); end
  def test_resultados_intermedios_i4; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_i4, 0.002); end
  def test_resultados_intermedios_j4; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_j4, 0.002); end
  def test_resultados_intermedios_k4; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_k4, 0.002); end
  def test_resultados_intermedios_l4; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_l4, 0.002); end
  def test_resultados_intermedios_m4; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m4, 0.002); end
  def test_resultados_intermedios_ac4; assert_equal("Comercial, Público y Residencial", worksheet.resultados_intermedios_ac4.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad4; assert_in_epsilon(69.7324886097226, worksheet.resultados_intermedios_ad4, 0.002); end
  def test_resultados_intermedios_ae4; assert_in_epsilon(77.77943813949432, worksheet.resultados_intermedios_ae4, 0.002); end
  def test_resultados_intermedios_af4; assert_in_epsilon(89.46034730856599, worksheet.resultados_intermedios_af4, 0.002); end
  def test_resultados_intermedios_ag4; assert_in_epsilon(103.32455340139477, worksheet.resultados_intermedios_ag4, 0.002); end
  def test_resultados_intermedios_ah4; assert_in_epsilon(118.96919895910916, worksheet.resultados_intermedios_ah4, 0.002); end
  def test_resultados_intermedios_ai4; assert_in_epsilon(137.0678323267025, worksheet.resultados_intermedios_ai4, 0.002); end
  def test_resultados_intermedios_aj4; assert_in_epsilon(158.362640255516, worksheet.resultados_intermedios_aj4, 0.002); end
  def test_resultados_intermedios_ak4; assert_in_epsilon(179.14934888905594, worksheet.resultados_intermedios_ak4, 0.002); end
  def test_resultados_intermedios_an4; assert_equal("Gas Natural", worksheet.resultados_intermedios_an4.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao4; assert_in_epsilon(10.716366861978855, worksheet.resultados_intermedios_ao4, 0.002); end
  def test_resultados_intermedios_ap4; assert_in_epsilon(11.993360596902663, worksheet.resultados_intermedios_ap4, 0.002); end
  def test_resultados_intermedios_aq4; assert_in_epsilon(14.434262310558546, worksheet.resultados_intermedios_aq4, 0.002); end
  def test_resultados_intermedios_ar4; assert_in_epsilon(17.04205037653656, worksheet.resultados_intermedios_ar4, 0.002); end
  def test_resultados_intermedios_as4; assert_in_epsilon(20.265255004021373, worksheet.resultados_intermedios_as4, 0.002); end
  def test_resultados_intermedios_at4; assert_in_epsilon(23.810483729297946, worksheet.resultados_intermedios_at4, 0.002); end
  def test_resultados_intermedios_au4; assert_in_epsilon(27.480020318721834, worksheet.resultados_intermedios_au4, 0.002); end
  def test_resultados_intermedios_av4; assert_in_epsilon(30.807684864500306, worksheet.resultados_intermedios_av4, 0.002); end
  def test_resultados_intermedios_ay4; assert_equal("Electricidad demandada", worksheet.resultados_intermedios_ay4.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_az4; assert_in_epsilon(67.57963331657376, worksheet.resultados_intermedios_az4, 0.002); end
  def test_resultados_intermedios_ba4; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_ba4, 0.002); end
  def test_resultados_intermedios_bb4; assert_in_epsilon(91.52024444612704, worksheet.resultados_intermedios_bb4, 0.002); end
  def test_resultados_intermedios_bc4; assert_in_epsilon(103.6006457581674, worksheet.resultados_intermedios_bc4, 0.002); end
  def test_resultados_intermedios_bd4; assert_in_epsilon(117.65200581808284, worksheet.resultados_intermedios_bd4, 0.002); end
  def test_resultados_intermedios_be4; assert_in_epsilon(132.75541227739603, worksheet.resultados_intermedios_be4, 0.002); end
  def test_resultados_intermedios_bf4; assert_in_epsilon(148.13841553905652, worksheet.resultados_intermedios_bf4, 0.002); end
  def test_resultados_intermedios_bg4; assert_in_epsilon(162.18836791957614, worksheet.resultados_intermedios_bg4, 0.002); end
  def test_resultados_intermedios_r5; assert_equal("Solar", worksheet.resultados_intermedios_r5.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s5; assert_in_epsilon(1.602650561775374, worksheet.resultados_intermedios_s5, 0.002); end
  def test_resultados_intermedios_t5; assert_in_epsilon(5.022408446731655, worksheet.resultados_intermedios_t5, 0.002); end
  def test_resultados_intermedios_u5; assert_in_epsilon(7.202976090518175, worksheet.resultados_intermedios_u5, 0.002); end
  def test_resultados_intermedios_v5; assert_in_epsilon(8.376857947625211, worksheet.resultados_intermedios_v5, 0.002); end
  def test_resultados_intermedios_w5; assert_in_epsilon(9.296769907339296, worksheet.resultados_intermedios_w5, 0.002); end
  def test_resultados_intermedios_x5; assert_in_epsilon(9.98517489565925, worksheet.resultados_intermedios_x5, 0.002); end
  def test_resultados_intermedios_y5; assert_in_epsilon(10.461743649769149, worksheet.resultados_intermedios_y5, 0.002); end
  def test_resultados_intermedios_z5; assert_in_epsilon(10.827699474223696, worksheet.resultados_intermedios_z5, 0.002); end
  def test_resultados_intermedios_ac5; assert_equal("Industria y Minería", worksheet.resultados_intermedios_ac5.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad5; assert_in_epsilon(135.84274834045024, worksheet.resultados_intermedios_ad5, 0.002); end
  def test_resultados_intermedios_ae5; assert_in_epsilon(158.67044327209996, worksheet.resultados_intermedios_ae5, 0.002); end
  def test_resultados_intermedios_af5; assert_in_epsilon(180.06416398976444, worksheet.resultados_intermedios_af5, 0.002); end
  def test_resultados_intermedios_ag5; assert_in_epsilon(197.03307251300703, worksheet.resultados_intermedios_ag5, 0.002); end
  def test_resultados_intermedios_ah5; assert_in_epsilon(218.59381484642964, worksheet.resultados_intermedios_ah5, 0.002); end
  def test_resultados_intermedios_ai5; assert_in_epsilon(241.06883940080814, worksheet.resultados_intermedios_ai5, 0.002); end
  def test_resultados_intermedios_aj5; assert_in_epsilon(262.505469545544, worksheet.resultados_intermedios_aj5, 0.002); end
  def test_resultados_intermedios_ak5; assert_in_epsilon(282.57731267178247, worksheet.resultados_intermedios_ak5, 0.002); end
  def test_resultados_intermedios_an5; assert_equal("Carbón", worksheet.resultados_intermedios_an5.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao5; assert_in_epsilon(26.790917154947138, worksheet.resultados_intermedios_ao5, 0.002); end
  def test_resultados_intermedios_ap5; assert_in_epsilon(29.983401492256657, worksheet.resultados_intermedios_ap5, 0.002); end
  def test_resultados_intermedios_aq5; assert_in_epsilon(36.085655776396365, worksheet.resultados_intermedios_aq5, 0.002); end
  def test_resultados_intermedios_ar5; assert_in_epsilon(42.6051259413414, worksheet.resultados_intermedios_ar5, 0.002); end
  def test_resultados_intermedios_as5; assert_in_epsilon(50.66313751005343, worksheet.resultados_intermedios_as5, 0.002); end
  def test_resultados_intermedios_at5; assert_in_epsilon(59.52620932324486, worksheet.resultados_intermedios_at5, 0.002); end
  def test_resultados_intermedios_au5; assert_in_epsilon(68.70005079680459, worksheet.resultados_intermedios_au5, 0.002); end
  def test_resultados_intermedios_av5; assert_in_epsilon(77.01921216125076, worksheet.resultados_intermedios_av5, 0.002); end
  def test_resultados_intermedios_c6; assert_equal("Usos", worksheet.resultados_intermedios_c6.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r6; assert_equal("Eólico", worksheet.resultados_intermedios_r6.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s6; assert_in_epsilon(2.6604444, worksheet.resultados_intermedios_s6, 0.002); end
  def test_resultados_intermedios_t6; assert_in_epsilon(4.6811184, worksheet.resultados_intermedios_t6, 0.002); end
  def test_resultados_intermedios_u6; assert_in_epsilon(4.960195199999999, worksheet.resultados_intermedios_u6, 0.002); end
  def test_resultados_intermedios_v6; assert_in_epsilon(5.239271999999999, worksheet.resultados_intermedios_v6, 0.002); end
  def test_resultados_intermedios_w6; assert_in_epsilon(5.518348799999999, worksheet.resultados_intermedios_w6, 0.002); end
  def test_resultados_intermedios_x6; assert_in_epsilon(5.797425599999999, worksheet.resultados_intermedios_x6, 0.002); end
  def test_resultados_intermedios_y6; assert_in_epsilon(6.076502399999998, worksheet.resultados_intermedios_y6, 0.002); end
  def test_resultados_intermedios_z6; assert_in_epsilon(6.3555791999999975, worksheet.resultados_intermedios_z6, 0.002); end
  def test_resultados_intermedios_ac6; assert_equal("Transporte", worksheet.resultados_intermedios_ac6.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad6; assert_in_epsilon(94.64643067227325, worksheet.resultados_intermedios_ad6, 0.002); end
  def test_resultados_intermedios_ae6; assert_in_epsilon(101.90184165594128, worksheet.resultados_intermedios_ae6, 0.002); end
  def test_resultados_intermedios_af6; assert_in_epsilon(119.5723479137848, worksheet.resultados_intermedios_af6, 0.002); end
  def test_resultados_intermedios_ag6; assert_in_epsilon(143.42343267731206, worksheet.resultados_intermedios_ag6, 0.002); end
  def test_resultados_intermedios_ah6; assert_in_epsilon(163.87690747914812, worksheet.resultados_intermedios_ah6, 0.002); end
  def test_resultados_intermedios_ai6; assert_in_epsilon(178.49288116463165, worksheet.resultados_intermedios_ai6, 0.002); end
  def test_resultados_intermedios_aj6; assert_in_epsilon(189.2116773546291, worksheet.resultados_intermedios_aj6, 0.002); end
  def test_resultados_intermedios_ak6; assert_in_epsilon(198.19344783503647, worksheet.resultados_intermedios_ak6, 0.002); end
  def test_resultados_intermedios_an6; assert_equal("Petróleo Diésel", worksheet.resultados_intermedios_an6.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao6; assert_in_epsilon(2.0093187866210354, worksheet.resultados_intermedios_ao6, 0.002); end
  def test_resultados_intermedios_ap6; assert_in_epsilon(2.2487551119192495, worksheet.resultados_intermedios_ap6, 0.002); end
  def test_resultados_intermedios_aq6; assert_in_epsilon(2.7064241832297276, worksheet.resultados_intermedios_aq6, 0.002); end
  def test_resultados_intermedios_ar6; assert_in_epsilon(3.195384445600605, worksheet.resultados_intermedios_ar6, 0.002); end
  def test_resultados_intermedios_as6; assert_in_epsilon(3.799735313254008, worksheet.resultados_intermedios_as6, 0.002); end
  def test_resultados_intermedios_at6; assert_in_epsilon(4.464465699243365, worksheet.resultados_intermedios_at6, 0.002); end
  def test_resultados_intermedios_au6; assert_in_epsilon(5.152503809760344, worksheet.resultados_intermedios_au6, 0.002); end
  def test_resultados_intermedios_av6; assert_in_epsilon(5.776440912093808, worksheet.resultados_intermedios_av6, 0.002); end
  def test_resultados_intermedios_ay6; assert_equal("Base (Nivel 1)", worksheet.resultados_intermedios_ay6.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_az6; assert_in_epsilon(67.57963331657376, worksheet.resultados_intermedios_az6, 0.002); end
  def test_resultados_intermedios_ba6; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_ba6, 0.002); end
  def test_resultados_intermedios_bb6; assert_in_epsilon(91.52024444612704, worksheet.resultados_intermedios_bb6, 0.002); end
  def test_resultados_intermedios_bc6; assert_in_epsilon(103.6006457581674, worksheet.resultados_intermedios_bc6, 0.002); end
  def test_resultados_intermedios_bd6; assert_in_epsilon(117.65200581808284, worksheet.resultados_intermedios_bd6, 0.002); end
  def test_resultados_intermedios_be6; assert_in_epsilon(132.75541227739603, worksheet.resultados_intermedios_be6, 0.002); end
  def test_resultados_intermedios_bf6; assert_in_epsilon(148.13841553905652, worksheet.resultados_intermedios_bf6, 0.002); end
  def test_resultados_intermedios_bg6; assert_in_epsilon(162.18836791957614, worksheet.resultados_intermedios_bg6, 0.002); end
  def test_resultados_intermedios_r7; assert_equal("Mareomotriz y Undimotriz", worksheet.resultados_intermedios_r7.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s7; assert_in_delta(0.0, (worksheet.resultados_intermedios_s7||0), 0.002); end
  def test_resultados_intermedios_t7; assert_in_delta(0.0, (worksheet.resultados_intermedios_t7||0), 0.002); end
  def test_resultados_intermedios_u7; assert_in_delta(0.01341198, worksheet.resultados_intermedios_u7, 0.002); end
  def test_resultados_intermedios_v7; assert_in_delta(0.01932903, worksheet.resultados_intermedios_v7, 0.002); end
  def test_resultados_intermedios_w7; assert_in_delta(0.028993545000000003, worksheet.resultados_intermedios_w7, 0.002); end
  def test_resultados_intermedios_x7; assert_in_delta(0.0864836028, worksheet.resultados_intermedios_x7, 0.002); end
  def test_resultados_intermedios_y7; assert_in_delta(0.1770854724, worksheet.resultados_intermedios_y7, 0.002); end
  def test_resultados_intermedios_z7; assert_in_delta(0.3541709448, worksheet.resultados_intermedios_z7, 0.002); end
  def test_resultados_intermedios_an7; assert_equal("Biomasa", worksheet.resultados_intermedios_an7.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_ao7, 0.002); end
  def test_resultados_intermedios_ap7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_ap7, 0.002); end
  def test_resultados_intermedios_aq7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_aq7, 0.002); end
  def test_resultados_intermedios_ar7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_ar7, 0.002); end
  def test_resultados_intermedios_as7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_as7, 0.002); end
  def test_resultados_intermedios_at7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_at7, 0.002); end
  def test_resultados_intermedios_au7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_au7, 0.002); end
  def test_resultados_intermedios_av7; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_av7, 0.002); end
  def test_resultados_intermedios_c8; assert_equal("H.01", worksheet.resultados_intermedios_c8.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d8; assert_equal("Climatización", worksheet.resultados_intermedios_d8.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f8; assert_in_epsilon(35.49217952649192, worksheet.resultados_intermedios_f8, 0.002); end
  def test_resultados_intermedios_g8; assert_in_epsilon(39.634019653836816, worksheet.resultados_intermedios_g8, 0.002); end
  def test_resultados_intermedios_h8; assert_in_epsilon(45.608248634209794, worksheet.resultados_intermedios_h8, 0.002); end
  def test_resultados_intermedios_i8; assert_in_epsilon(52.70397945362738, worksheet.resultados_intermedios_i8, 0.002); end
  def test_resultados_intermedios_j8; assert_in_epsilon(60.783628392010016, worksheet.resultados_intermedios_j8, 0.002); end
  def test_resultados_intermedios_k8; assert_in_epsilon(70.22699797755328, worksheet.resultados_intermedios_k8, 0.002); end
  def test_resultados_intermedios_l8; assert_in_epsilon(81.42970938717079, worksheet.resultados_intermedios_l8, 0.002); end
  def test_resultados_intermedios_m8; assert_in_epsilon(92.60864244997762, worksheet.resultados_intermedios_m8, 0.002); end
  def test_resultados_intermedios_ac8; assert_equal("Total", worksheet.resultados_intermedios_ac8.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad8; assert_in_epsilon(300.2216676224461, worksheet.resultados_intermedios_ad8, 0.002); end
  def test_resultados_intermedios_ae8; assert_in_epsilon(338.35172306753554, worksheet.resultados_intermedios_ae8, 0.002); end
  def test_resultados_intermedios_af8; assert_in_epsilon(389.0968592121152, worksheet.resultados_intermedios_af8, 0.002); end
  def test_resultados_intermedios_ag8; assert_in_epsilon(443.7810585917139, worksheet.resultados_intermedios_ag8, 0.002); end
  def test_resultados_intermedios_ah8; assert_in_epsilon(501.4399212846869, worksheet.resultados_intermedios_ah8, 0.002); end
  def test_resultados_intermedios_ai8; assert_in_epsilon(556.6295528921423, worksheet.resultados_intermedios_ai8, 0.002); end
  def test_resultados_intermedios_aj8; assert_in_epsilon(610.079787155689, worksheet.resultados_intermedios_aj8, 0.002); end
  def test_resultados_intermedios_ak8; assert_in_epsilon(659.9201093958749, worksheet.resultados_intermedios_ak8, 0.002); end
  def test_resultados_intermedios_an8; assert_equal("Eólico", worksheet.resultados_intermedios_an8.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao8; assert_in_epsilon(2.6604444, worksheet.resultados_intermedios_ao8, 0.002); end
  def test_resultados_intermedios_ap8; assert_in_epsilon(4.6811184, worksheet.resultados_intermedios_ap8, 0.002); end
  def test_resultados_intermedios_aq8; assert_in_epsilon(4.960195199999999, worksheet.resultados_intermedios_aq8, 0.002); end
  def test_resultados_intermedios_ar8; assert_in_epsilon(5.239271999999999, worksheet.resultados_intermedios_ar8, 0.002); end
  def test_resultados_intermedios_as8; assert_in_epsilon(5.518348799999999, worksheet.resultados_intermedios_as8, 0.002); end
  def test_resultados_intermedios_at8; assert_in_epsilon(5.797425599999999, worksheet.resultados_intermedios_at8, 0.002); end
  def test_resultados_intermedios_au8; assert_in_epsilon(6.076502399999998, worksheet.resultados_intermedios_au8, 0.002); end
  def test_resultados_intermedios_av8; assert_in_epsilon(6.3555791999999975, worksheet.resultados_intermedios_av8, 0.002); end
  def test_resultados_intermedios_ay8; assert_equal("Reducción", worksheet.resultados_intermedios_ay8.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_az8; assert_in_delta(0.0, (worksheet.resultados_intermedios_az8||0), 0.002); end
  def test_resultados_intermedios_ba8; assert_in_delta(0.0, (worksheet.resultados_intermedios_ba8||0), 0.002); end
  def test_resultados_intermedios_bb8; assert_in_delta(0.0, (worksheet.resultados_intermedios_bb8||0), 0.002); end
  def test_resultados_intermedios_bc8; assert_in_delta(0.0, (worksheet.resultados_intermedios_bc8||0), 0.002); end
  def test_resultados_intermedios_bd8; assert_in_delta(0.0, (worksheet.resultados_intermedios_bd8||0), 0.002); end
  def test_resultados_intermedios_be8; assert_in_delta(0.0, (worksheet.resultados_intermedios_be8||0), 0.002); end
  def test_resultados_intermedios_bf8; assert_in_delta(0.0, (worksheet.resultados_intermedios_bf8||0), 0.002); end
  def test_resultados_intermedios_bg8; assert_in_delta(0.0, (worksheet.resultados_intermedios_bg8||0), 0.002); end
  def test_resultados_intermedios_c9; assert_equal("H.02", worksheet.resultados_intermedios_c9.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d9; assert_equal("Iluminación", worksheet.resultados_intermedios_d9.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f9; assert_in_epsilon(7.474227188193183, worksheet.resultados_intermedios_f9, 0.002); end
  def test_resultados_intermedios_g9; assert_in_epsilon(8.364538019566382, worksheet.resultados_intermedios_g9, 0.002); end
  def test_resultados_intermedios_h9; assert_in_epsilon(9.707757393974132, worksheet.resultados_intermedios_h9, 0.002); end
  def test_resultados_intermedios_i9; assert_in_epsilon(11.29572770779278, worksheet.resultados_intermedios_i9, 0.002); end
  def test_resultados_intermedios_j9; assert_in_epsilon(12.972718409914814, worksheet.resultados_intermedios_j9, 0.002); end
  def test_resultados_intermedios_k9; assert_in_epsilon(14.756077842367976, worksheet.resultados_intermedios_k9, 0.002); end
  def test_resultados_intermedios_l9; assert_in_epsilon(16.703485442098668, worksheet.resultados_intermedios_l9, 0.002); end
  def test_resultados_intermedios_m9; assert_in_epsilon(18.149057829896936, worksheet.resultados_intermedios_m9, 0.002); end
  def test_resultados_intermedios_r9; assert_equal("Geotermia", worksheet.resultados_intermedios_r9.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s9; assert_in_delta(0.0, (worksheet.resultados_intermedios_s9||0), 0.002); end
  def test_resultados_intermedios_t9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_t9, 0.002); end
  def test_resultados_intermedios_u9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_u9, 0.002); end
  def test_resultados_intermedios_v9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_v9, 0.002); end
  def test_resultados_intermedios_w9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_w9, 0.002); end
  def test_resultados_intermedios_x9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_x9, 0.002); end
  def test_resultados_intermedios_y9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_y9, 0.002); end
  def test_resultados_intermedios_z9; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_z9, 0.002); end
  def test_resultados_intermedios_an9; assert_equal("Hidroelectricidad", worksheet.resultados_intermedios_an9.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao9; assert_in_epsilon(22.147299, worksheet.resultados_intermedios_ao9, 0.002); end
  def test_resultados_intermedios_ap9; assert_in_epsilon(23.153197500000005, worksheet.resultados_intermedios_ap9, 0.002); end
  def test_resultados_intermedios_aq9; assert_in_epsilon(24.159096, worksheet.resultados_intermedios_aq9, 0.002); end
  def test_resultados_intermedios_ar9; assert_in_epsilon(25.1649945, worksheet.resultados_intermedios_ar9, 0.002); end
  def test_resultados_intermedios_as9; assert_in_epsilon(26.12268, worksheet.resultados_intermedios_as9, 0.002); end
  def test_resultados_intermedios_at9; assert_in_epsilon(27.1285785, worksheet.resultados_intermedios_at9, 0.002); end
  def test_resultados_intermedios_au9; assert_in_epsilon(28.134477000000004, worksheet.resultados_intermedios_au9, 0.002); end
  def test_resultados_intermedios_av9; assert_in_epsilon(29.092162499999997, worksheet.resultados_intermedios_av9, 0.002); end
  def test_resultados_intermedios_c10; assert_equal("H.03", worksheet.resultados_intermedios_c10.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d10; assert_equal("Refrigeración", worksheet.resultados_intermedios_d10.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f10; assert_in_epsilon(2.9915688480682157, worksheet.resultados_intermedios_f10, 0.002); end
  def test_resultados_intermedios_g10; assert_in_epsilon(3.3416651895996683, worksheet.resultados_intermedios_g10, 0.002); end
  def test_resultados_intermedios_h10; assert_in_epsilon(3.8449247805183946, worksheet.resultados_intermedios_h10, 0.002); end
  def test_resultados_intermedios_i10; assert_in_epsilon(4.442876787834558, worksheet.resultados_intermedios_i10, 0.002); end
  def test_resultados_intermedios_j10; assert_in_epsilon(5.127273393254245, worksheet.resultados_intermedios_j10, 0.002); end
  def test_resultados_intermedios_k10; assert_in_epsilon(5.931878120157017, worksheet.resultados_intermedios_k10, 0.002); end
  def test_resultados_intermedios_l10; assert_in_epsilon(6.890825419029806, worksheet.resultados_intermedios_l10, 0.002); end
  def test_resultados_intermedios_m10; assert_in_epsilon(7.860116446024148, worksheet.resultados_intermedios_m10, 0.002); end
  def test_resultados_intermedios_r10; assert_equal("Hidroelectricidad", worksheet.resultados_intermedios_r10.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s10; assert_in_epsilon(22.147299, worksheet.resultados_intermedios_s10, 0.002); end
  def test_resultados_intermedios_t10; assert_in_epsilon(23.153197500000005, worksheet.resultados_intermedios_t10, 0.002); end
  def test_resultados_intermedios_u10; assert_in_epsilon(24.159096, worksheet.resultados_intermedios_u10, 0.002); end
  def test_resultados_intermedios_v10; assert_in_epsilon(25.1649945, worksheet.resultados_intermedios_v10, 0.002); end
  def test_resultados_intermedios_w10; assert_in_epsilon(26.12268, worksheet.resultados_intermedios_w10, 0.002); end
  def test_resultados_intermedios_x10; assert_in_epsilon(27.1285785, worksheet.resultados_intermedios_x10, 0.002); end
  def test_resultados_intermedios_y10; assert_in_epsilon(28.134477000000004, worksheet.resultados_intermedios_y10, 0.002); end
  def test_resultados_intermedios_z10; assert_in_epsilon(29.092162499999997, worksheet.resultados_intermedios_z10, 0.002); end
  def test_resultados_intermedios_ac10; assert_equal("Base (Nivel 1)", worksheet.resultados_intermedios_ac10.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad10; assert_in_epsilon(300.2216676224461, worksheet.resultados_intermedios_ad10, 0.002); end
  def test_resultados_intermedios_ae10; assert_in_epsilon(338.35172306753554, worksheet.resultados_intermedios_ae10, 0.002); end
  def test_resultados_intermedios_af10; assert_in_epsilon(389.0968592121152, worksheet.resultados_intermedios_af10, 0.002); end
  def test_resultados_intermedios_ag10; assert_in_epsilon(443.7810585917139, worksheet.resultados_intermedios_ag10, 0.002); end
  def test_resultados_intermedios_ah10; assert_in_epsilon(501.4399212846869, worksheet.resultados_intermedios_ah10, 0.002); end
  def test_resultados_intermedios_ai10; assert_in_epsilon(556.6295528921423, worksheet.resultados_intermedios_ai10, 0.002); end
  def test_resultados_intermedios_aj10; assert_in_epsilon(610.079787155689, worksheet.resultados_intermedios_aj10, 0.002); end
  def test_resultados_intermedios_ak10; assert_in_epsilon(659.9201093958749, worksheet.resultados_intermedios_ak10, 0.002); end
  def test_resultados_intermedios_c11; assert_equal("H.04", worksheet.resultados_intermedios_c11.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d11; assert_equal("ACS", worksheet.resultados_intermedios_d11.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f11; assert_in_epsilon(10.096238347936703, worksheet.resultados_intermedios_f11, 0.002); end
  def test_resultados_intermedios_g11; assert_in_epsilon(11.237069927481432, worksheet.resultados_intermedios_g11, 0.002); end
  def test_resultados_intermedios_h11; assert_in_epsilon(12.87373438469534, worksheet.resultados_intermedios_h11, 0.002); end
  def test_resultados_intermedios_i11; assert_in_epsilon(14.818687878686267, worksheet.resultados_intermedios_i11, 0.002); end
  def test_resultados_intermedios_j11; assert_in_epsilon(17.059874020150673, worksheet.resultados_intermedios_j11, 0.002); end
  def test_resultados_intermedios_k11; assert_in_epsilon(19.716521969122127, worksheet.resultados_intermedios_k11, 0.002); end
  def test_resultados_intermedios_l11; assert_in_epsilon(22.90411032569556, worksheet.resultados_intermedios_l11, 0.002); end
  def test_resultados_intermedios_m11; assert_in_epsilon(26.208857045506825, worksheet.resultados_intermedios_m11, 0.002); end
  def test_resultados_intermedios_r11; assert_equal("Residuos", worksheet.resultados_intermedios_r11.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s11; assert_in_delta(0.26623890102673253, worksheet.resultados_intermedios_s11, 0.002); end
  def test_resultados_intermedios_t11; assert_in_delta(0.35463923560444954, worksheet.resultados_intermedios_t11, 0.002); end
  def test_resultados_intermedios_u11; assert_in_delta(0.4166729130700315, worksheet.resultados_intermedios_u11, 0.002); end
  def test_resultados_intermedios_v11; assert_in_delta(0.41733218190020505, worksheet.resultados_intermedios_v11, 0.002); end
  def test_resultados_intermedios_w11; assert_in_delta(0.4179800763354362, worksheet.resultados_intermedios_w11, 0.002); end
  def test_resultados_intermedios_x11; assert_in_delta(0.41862659982364236, worksheet.resultados_intermedios_x11, 0.002); end
  def test_resultados_intermedios_y11; assert_in_delta(0.4192035421882092, worksheet.resultados_intermedios_y11, 0.002); end
  def test_resultados_intermedios_z11; assert_in_delta(0.4197616559644616, worksheet.resultados_intermedios_z11, 0.002); end
  def test_resultados_intermedios_c12; assert_equal("H.05", worksheet.resultados_intermedios_c12.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d12; assert_equal("Cocción", worksheet.resultados_intermedios_d12.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f12; assert_in_epsilon(4.460661730158743, worksheet.resultados_intermedios_f12, 0.002); end
  def test_resultados_intermedios_g12; assert_in_epsilon(4.9700680497493295, worksheet.resultados_intermedios_g12, 0.002); end
  def test_resultados_intermedios_h12; assert_in_epsilon(5.701850783121131, worksheet.resultados_intermedios_h12, 0.002); end
  def test_resultados_intermedios_i12; assert_in_epsilon(6.571361978763622, worksheet.resultados_intermedios_i12, 0.002); end
  def test_resultados_intermedios_j12; assert_in_epsilon(7.570093405587981, worksheet.resultados_intermedios_j12, 0.002); end
  def test_resultados_intermedios_k12; assert_in_epsilon(8.74947181845154, worksheet.resultados_intermedios_k12, 0.002); end
  def test_resultados_intermedios_l12; assert_in_epsilon(10.160246299359558, worksheet.resultados_intermedios_l12, 0.002); end
  def test_resultados_intermedios_m12; assert_in_epsilon(11.607704346123256, worksheet.resultados_intermedios_m12, 0.002); end
  def test_resultados_intermedios_r12; assert_equal("Carbón", worksheet.resultados_intermedios_r12.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s12; assert_in_epsilon(90.6741819972922, worksheet.resultados_intermedios_s12, 0.002); end
  def test_resultados_intermedios_t12; assert_in_epsilon(101.4592932255809, worksheet.resultados_intermedios_t12, 0.002); end
  def test_resultados_intermedios_u12; assert_in_epsilon(119.46423832489575, worksheet.resultados_intermedios_u12, 0.002); end
  def test_resultados_intermedios_v12; assert_in_epsilon(137.2718577993193, worksheet.resultados_intermedios_v12, 0.002); end
  def test_resultados_intermedios_w12; assert_in_epsilon(159.42441337764467, worksheet.resultados_intermedios_w12, 0.002); end
  def test_resultados_intermedios_x12; assert_in_epsilon(183.48940437287516, worksheet.resultados_intermedios_x12, 0.002); end
  def test_resultados_intermedios_y12; assert_in_epsilon(207.95509258643116, worksheet.resultados_intermedios_y12, 0.002); end
  def test_resultados_intermedios_z12; assert_in_epsilon(230.29484921441994, worksheet.resultados_intermedios_z12, 0.002); end
  def test_resultados_intermedios_ac12; assert_equal("Reducción", worksheet.resultados_intermedios_ac12.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ad12||0), 0.002); end
  def test_resultados_intermedios_ae12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ae12||0), 0.002); end
  def test_resultados_intermedios_af12; assert_in_delta(0.0, (worksheet.resultados_intermedios_af12||0), 0.002); end
  def test_resultados_intermedios_ag12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ag12||0), 0.002); end
  def test_resultados_intermedios_ah12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ah12||0), 0.002); end
  def test_resultados_intermedios_ai12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ai12||0), 0.002); end
  def test_resultados_intermedios_aj12; assert_in_delta(0.0, (worksheet.resultados_intermedios_aj12||0), 0.002); end
  def test_resultados_intermedios_ak12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ak12||0), 0.002); end
  def test_resultados_intermedios_an12; assert_equal("Mareomotriz y Undimotriz", worksheet.resultados_intermedios_an12.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ao12||0), 0.002); end
  def test_resultados_intermedios_ap12; assert_in_delta(0.0, (worksheet.resultados_intermedios_ap12||0), 0.002); end
  def test_resultados_intermedios_aq12; assert_in_delta(0.01341198, worksheet.resultados_intermedios_aq12, 0.002); end
  def test_resultados_intermedios_ar12; assert_in_delta(0.01932903, worksheet.resultados_intermedios_ar12, 0.002); end
  def test_resultados_intermedios_as12; assert_in_delta(0.028993545000000003, worksheet.resultados_intermedios_as12, 0.002); end
  def test_resultados_intermedios_at12; assert_in_delta(0.0864836028, worksheet.resultados_intermedios_at12, 0.002); end
  def test_resultados_intermedios_au12; assert_in_delta(0.1770854724, worksheet.resultados_intermedios_au12, 0.002); end
  def test_resultados_intermedios_av12; assert_in_delta(0.3541709448, worksheet.resultados_intermedios_av12, 0.002); end
  def test_resultados_intermedios_c13; assert_equal("H.06", worksheet.resultados_intermedios_c13.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d13; assert_equal("Otros Electrodomésticos", worksheet.resultados_intermedios_d13.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f13; assert_in_epsilon(9.217612968873837, worksheet.resultados_intermedios_f13, 0.002); end
  def test_resultados_intermedios_g13; assert_in_epsilon(10.232077299260691, worksheet.resultados_intermedios_g13, 0.002); end
  def test_resultados_intermedios_h13; assert_in_epsilon(11.72383133204718, worksheet.resultados_intermedios_h13, 0.002); end
  def test_resultados_intermedios_i13; assert_in_epsilon(13.491919594690156, worksheet.resultados_intermedios_i13, 0.002); end
  def test_resultados_intermedios_j13; assert_in_epsilon(15.455611338191433, worksheet.resultados_intermedios_j13, 0.002); end
  def test_resultados_intermedios_k13; assert_in_epsilon(17.686884599050554, worksheet.resultados_intermedios_k13, 0.002); end
  def test_resultados_intermedios_l13; assert_in_epsilon(20.274263382161628, worksheet.resultados_intermedios_l13, 0.002); end
  def test_resultados_intermedios_m13; assert_in_epsilon(22.714970771527163, worksheet.resultados_intermedios_m13, 0.002); end
  def test_resultados_intermedios_r13; assert_equal("Petróleo Diésel", worksheet.resultados_intermedios_r13.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s13; assert_in_epsilon(155.1892287860105, worksheet.resultados_intermedios_s13, 0.002); end
  def test_resultados_intermedios_t13; assert_in_epsilon(171.46290983518537, worksheet.resultados_intermedios_t13, 0.002); end
  def test_resultados_intermedios_u13; assert_in_epsilon(199.7089576630182, worksheet.resultados_intermedios_u13, 0.002); end
  def test_resultados_intermedios_v13; assert_in_epsilon(232.82179625634126, worksheet.resultados_intermedios_v13, 0.002); end
  def test_resultados_intermedios_w13; assert_in_epsilon(264.762312761839, worksheet.resultados_intermedios_w13, 0.002); end
  def test_resultados_intermedios_x13; assert_in_epsilon(291.4785565871108, worksheet.resultados_intermedios_x13, 0.002); end
  def test_resultados_intermedios_y13; assert_in_epsilon(314.76614030973906, worksheet.resultados_intermedios_y13, 0.002); end
  def test_resultados_intermedios_z13; assert_in_epsilon(335.37561387009015, worksheet.resultados_intermedios_z13, 0.002); end
  def test_resultados_intermedios_an13; assert_equal("Geotérmica", worksheet.resultados_intermedios_an13.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao13; assert_in_delta(0.0, (worksheet.resultados_intermedios_ao13||0), 0.002); end
  def test_resultados_intermedios_ap13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_ap13, 0.002); end
  def test_resultados_intermedios_aq13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_aq13, 0.002); end
  def test_resultados_intermedios_ar13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_ar13, 0.002); end
  def test_resultados_intermedios_as13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_as13, 0.002); end
  def test_resultados_intermedios_at13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_at13, 0.002); end
  def test_resultados_intermedios_au13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_au13, 0.002); end
  def test_resultados_intermedios_av13; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_av13, 0.002); end
  def test_resultados_intermedios_c14; assert_equal("I.01", worksheet.resultados_intermedios_c14.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d14; assert_equal("Industria y minería", worksheet.resultados_intermedios_d14.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f14; assert_in_epsilon(135.84274834045024, worksheet.resultados_intermedios_f14, 0.002); end
  def test_resultados_intermedios_g14; assert_in_epsilon(158.67044327209996, worksheet.resultados_intermedios_g14, 0.002); end
  def test_resultados_intermedios_h14; assert_in_epsilon(180.06416398976444, worksheet.resultados_intermedios_h14, 0.002); end
  def test_resultados_intermedios_i14; assert_in_epsilon(197.03307251300703, worksheet.resultados_intermedios_i14, 0.002); end
  def test_resultados_intermedios_j14; assert_in_epsilon(218.59381484642964, worksheet.resultados_intermedios_j14, 0.002); end
  def test_resultados_intermedios_k14; assert_in_epsilon(241.06883940080814, worksheet.resultados_intermedios_k14, 0.002); end
  def test_resultados_intermedios_l14; assert_in_epsilon(262.505469545544, worksheet.resultados_intermedios_l14, 0.002); end
  def test_resultados_intermedios_m14; assert_in_epsilon(282.57731267178247, worksheet.resultados_intermedios_m14, 0.002); end
  def test_resultados_intermedios_r14; assert_equal("Gas Natural", worksheet.resultados_intermedios_r14.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s14; assert_in_epsilon(71.71414354736139, worksheet.resultados_intermedios_s14, 0.002); end
  def test_resultados_intermedios_t14; assert_in_epsilon(82.72146711426092, worksheet.resultados_intermedios_t14, 0.002); end
  def test_resultados_intermedios_u14; assert_in_epsilon(97.54825858566404, worksheet.resultados_intermedios_u14, 0.002); end
  def test_resultados_intermedios_v14; assert_in_epsilon(112.93808741081389, worksheet.resultados_intermedios_v14, 0.002); end
  def test_resultados_intermedios_w14; assert_in_epsilon(131.12397915064165, worksheet.resultados_intermedios_w14, 0.002); end
  def test_resultados_intermedios_x14; assert_in_epsilon(151.83587101940554, worksheet.resultados_intermedios_x14, 0.002); end
  def test_resultados_intermedios_y14; assert_in_epsilon(174.67904222238852, worksheet.resultados_intermedios_y14, 0.002); end
  def test_resultados_intermedios_z14; assert_in_epsilon(196.29094670538313, worksheet.resultados_intermedios_z14, 0.002); end
  def test_resultados_intermedios_ac14; assert_equal("Demanda", worksheet.resultados_intermedios_ac14.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_an14; assert_equal("Solar ", worksheet.resultados_intermedios_an14.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao14; assert_in_epsilon(1.586488212, worksheet.resultados_intermedios_ao14, 0.002); end
  def test_resultados_intermedios_ap14; assert_in_epsilon(4.811837223547013, worksheet.resultados_intermedios_ap14, 0.002); end
  def test_resultados_intermedios_aq14; assert_in_epsilon(6.991326082872359, worksheet.resultados_intermedios_aq14, 0.002); end
  def test_resultados_intermedios_ar14; assert_in_epsilon(8.163957282788626, worksheet.resultados_intermedios_ar14, 0.002); end
  def test_resultados_intermedios_as14; assert_in_epsilon(9.08267556941859, worksheet.resultados_intermedios_as14, 0.002); end
  def test_resultados_intermedios_at14; assert_in_epsilon(9.76993922298622, worksheet.resultados_intermedios_at14, 0.002); end
  def test_resultados_intermedios_au14; assert_in_epsilon(10.245372199181563, worksheet.resultados_intermedios_au14, 0.002); end
  def test_resultados_intermedios_av14; assert_in_epsilon(10.610155680966797, worksheet.resultados_intermedios_av14, 0.002); end
  def test_resultados_intermedios_c15; assert_equal("T.01", worksheet.resultados_intermedios_c15.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d15; assert_equal("Transporte pasajeros caminero Urbano", worksheet.resultados_intermedios_d15.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f15; assert_in_epsilon(53.33594497140453, worksheet.resultados_intermedios_f15, 0.002); end
  def test_resultados_intermedios_g15; assert_in_epsilon(53.655135425366886, worksheet.resultados_intermedios_g15, 0.002); end
  def test_resultados_intermedios_h15; assert_in_epsilon(57.799860517853276, worksheet.resultados_intermedios_h15, 0.002); end
  def test_resultados_intermedios_i15; assert_in_epsilon(66.42951369605058, worksheet.resultados_intermedios_i15, 0.002); end
  def test_resultados_intermedios_j15; assert_in_epsilon(75.39994302653336, worksheet.resultados_intermedios_j15, 0.002); end
  def test_resultados_intermedios_k15; assert_in_epsilon(81.96655355921445, worksheet.resultados_intermedios_k15, 0.002); end
  def test_resultados_intermedios_l15; assert_in_epsilon(84.98060686895651, worksheet.resultados_intermedios_l15, 0.002); end
  def test_resultados_intermedios_m15; assert_in_epsilon(85.28909607350379, worksheet.resultados_intermedios_m15, 0.002); end
  def test_resultados_intermedios_r15; assert_equal("Biomasa", worksheet.resultados_intermedios_r15.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s15; assert_in_epsilon(15.042851866876788, worksheet.resultados_intermedios_s15, 0.002); end
  def test_resultados_intermedios_t15; assert_in_epsilon(13.473032185258074, worksheet.resultados_intermedios_t15, 0.002); end
  def test_resultados_intermedios_u15; assert_in_epsilon(12.337851148176384, worksheet.resultados_intermedios_u15, 0.002); end
  def test_resultados_intermedios_v15; assert_in_epsilon(11.855724128264164, worksheet.resultados_intermedios_v15, 0.002); end
  def test_resultados_intermedios_w15; assert_in_epsilon(11.889735478123473, worksheet.resultados_intermedios_w15, 0.002); end
  def test_resultados_intermedios_x15; assert_in_epsilon(12.056385936741588, worksheet.resultados_intermedios_x15, 0.002); end
  def test_resultados_intermedios_y15; assert_in_epsilon(12.20784827110258, worksheet.resultados_intermedios_y15, 0.002); end
  def test_resultados_intermedios_z15; assert_in_epsilon(13.07292347760443, worksheet.resultados_intermedios_z15, 0.002); end
  def test_resultados_intermedios_ac15; assert_equal("reducción al 2030", worksheet.resultados_intermedios_ac15.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad15; assert_equal("reducción al 2050", worksheet.resultados_intermedios_ad15.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c16; assert_equal("T.02", worksheet.resultados_intermedios_c16.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d16; assert_equal("Transporte pasajeros caminero Interurbano", worksheet.resultados_intermedios_d16.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f16; assert_in_epsilon(13.170718948417285, worksheet.resultados_intermedios_f16, 0.002); end
  def test_resultados_intermedios_g16; assert_in_epsilon(15.2583909925431, worksheet.resultados_intermedios_g16, 0.002); end
  def test_resultados_intermedios_h16; assert_in_epsilon(18.88427914401492, worksheet.resultados_intermedios_h16, 0.002); end
  def test_resultados_intermedios_i16; assert_in_epsilon(22.312780471609948, worksheet.resultados_intermedios_i16, 0.002); end
  def test_resultados_intermedios_j16; assert_in_epsilon(27.758718064616787, worksheet.resultados_intermedios_j16, 0.002); end
  def test_resultados_intermedios_k16; assert_in_epsilon(34.386846640344736, worksheet.resultados_intermedios_k16, 0.002); end
  def test_resultados_intermedios_l16; assert_in_epsilon(42.239823681665676, worksheet.resultados_intermedios_l16, 0.002); end
  def test_resultados_intermedios_m16; assert_in_epsilon(51.51391648078021, worksheet.resultados_intermedios_m16, 0.002); end
  def test_resultados_intermedios_ac16; assert_in_delta(0.0, (worksheet.resultados_intermedios_ac16||0), 0.002); end
  def test_resultados_intermedios_ad16; assert_in_delta(0.0, (worksheet.resultados_intermedios_ad16||0), 0.002); end
  def test_resultados_intermedios_an16; assert_equal("Residuos", worksheet.resultados_intermedios_an16.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao16; assert_in_delta(0.26280000000000003, worksheet.resultados_intermedios_ao16, 0.002); end
  def test_resultados_intermedios_ap16; assert_in_delta(0.3504, worksheet.resultados_intermedios_ap16, 0.002); end
  def test_resultados_intermedios_aq16; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_aq16, 0.002); end
  def test_resultados_intermedios_ar16; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_ar16, 0.002); end
  def test_resultados_intermedios_as16; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_as16, 0.002); end
  def test_resultados_intermedios_at16; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_at16, 0.002); end
  def test_resultados_intermedios_au16; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_au16, 0.002); end
  def test_resultados_intermedios_av16; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_av16, 0.002); end
  def test_resultados_intermedios_c17; assert_equal("T.03", worksheet.resultados_intermedios_c17.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d17; assert_equal("Transporte pasajeros ferroviario Urbano", worksheet.resultados_intermedios_d17.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f17; assert_in_delta(0.299020053660109, worksheet.resultados_intermedios_f17, 0.002); end
  def test_resultados_intermedios_g17; assert_in_delta(0.3563788644201739, worksheet.resultados_intermedios_g17, 0.002); end
  def test_resultados_intermedios_h17; assert_in_delta(0.45450745671867954, worksheet.resultados_intermedios_h17, 0.002); end
  def test_resultados_intermedios_i17; assert_in_delta(0.5420024826127864, worksheet.resultados_intermedios_i17, 0.002); end
  def test_resultados_intermedios_j17; assert_in_delta(0.6231144139110819, worksheet.resultados_intermedios_j17, 0.002); end
  def test_resultados_intermedios_k17; assert_in_delta(0.6420095458025065, worksheet.resultados_intermedios_k17, 0.002); end
  def test_resultados_intermedios_l17; assert_in_delta(0.6371828856258573, worksheet.resultados_intermedios_l17, 0.002); end
  def test_resultados_intermedios_m17; assert_in_delta(0.6139926845524387, worksheet.resultados_intermedios_m17, 0.002); end
  def test_resultados_intermedios_an17; assert_equal("Agropecuario", worksheet.resultados_intermedios_an17.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao17; assert_in_delta(0.0034389010267325154, worksheet.resultados_intermedios_ao17, 0.002); end
  def test_resultados_intermedios_ap17; assert_in_delta(0.004239235604449544, worksheet.resultados_intermedios_ap17, 0.002); end
  def test_resultados_intermedios_aq17; assert_in_delta(0.004952913070031461, worksheet.resultados_intermedios_aq17, 0.002); end
  def test_resultados_intermedios_ar17; assert_in_delta(0.005612181900205029, worksheet.resultados_intermedios_ar17, 0.002); end
  def test_resultados_intermedios_as17; assert_in_delta(0.00626007633543619, worksheet.resultados_intermedios_as17, 0.002); end
  def test_resultados_intermedios_at17; assert_in_delta(0.006906599823642307, worksheet.resultados_intermedios_at17, 0.002); end
  def test_resultados_intermedios_au17; assert_in_delta(0.007483542188209202, worksheet.resultados_intermedios_au17, 0.002); end
  def test_resultados_intermedios_av17; assert_in_delta(0.008041655964461538, worksheet.resultados_intermedios_av17, 0.002); end
  def test_resultados_intermedios_c18; assert_equal("T.04", worksheet.resultados_intermedios_c18.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d18; assert_equal("Transporte pasajeros ferroviario Interurbano", worksheet.resultados_intermedios_d18.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f18; assert_in_delta(0.03154875796091091, worksheet.resultados_intermedios_f18, 0.002); end
  def test_resultados_intermedios_g18; assert_in_delta(0.0385653287828087, worksheet.resultados_intermedios_g18, 0.002); end
  def test_resultados_intermedios_h18; assert_in_delta(0.0504411731104858, worksheet.resultados_intermedios_h18, 0.002); end
  def test_resultados_intermedios_i18; assert_in_delta(0.06267508513733391, worksheet.resultados_intermedios_i18, 0.002); end
  def test_resultados_intermedios_j18; assert_in_delta(0.07501718400084248, worksheet.resultados_intermedios_j18, 0.002); end
  def test_resultados_intermedios_k18; assert_in_delta(0.08959821225654771, worksheet.resultados_intermedios_k18, 0.002); end
  def test_resultados_intermedios_l18; assert_in_delta(0.10538681092763307, worksheet.resultados_intermedios_l18, 0.002); end
  def test_resultados_intermedios_m18; assert_in_delta(0.12275791095265887, worksheet.resultados_intermedios_m18, 0.002); end
  def test_resultados_intermedios_c19; assert_equal("T.05", worksheet.resultados_intermedios_c19.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d19; assert_equal("Transporte pasajeros Aéreo Interurbano", worksheet.resultados_intermedios_d19.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f19; assert_in_epsilon(12.39386297880878, worksheet.resultados_intermedios_f19, 0.002); end
  def test_resultados_intermedios_g19; assert_in_epsilon(15.986954950981243, worksheet.resultados_intermedios_g19, 0.002); end
  def test_resultados_intermedios_h19; assert_in_epsilon(24.28394824198671, worksheet.resultados_intermedios_h19, 0.002); end
  def test_resultados_intermedios_i19; assert_in_epsilon(34.35695357892007, worksheet.resultados_intermedios_i19, 0.002); end
  def test_resultados_intermedios_j19; assert_in_epsilon(38.63373673416931, worksheet.resultados_intermedios_j19, 0.002); end
  def test_resultados_intermedios_k19; assert_in_epsilon(38.222272999940216, worksheet.resultados_intermedios_k19, 0.002); end
  def test_resultados_intermedios_l19; assert_in_epsilon(36.125164502313076, worksheet.resultados_intermedios_l19, 0.002); end
  def test_resultados_intermedios_m19; assert_in_epsilon(33.49087876827979, worksheet.resultados_intermedios_m19, 0.002); end
  def test_resultados_intermedios_r19; assert_equal("Total", worksheet.resultados_intermedios_r19.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s19; assert_in_epsilon(359.29703906034297, worksheet.resultados_intermedios_s19, 0.002); end
  def test_resultados_intermedios_t19; assert_in_epsilon(402.6787059426214, worksheet.resultados_intermedios_t19, 0.002); end
  def test_resultados_intermedios_u19; assert_in_epsilon(466.1622979053426, worksheet.resultados_intermedios_u19, 0.002); end
  def test_resultados_intermedios_v19; assert_in_epsilon(534.455891254264, worksheet.resultados_intermedios_v19, 0.002); end
  def test_resultados_intermedios_w19; assert_in_epsilon(608.9358530969236, worksheet.resultados_intermedios_w19, 0.002); end
  def test_resultados_intermedios_x19; assert_in_epsilon(682.627147114416, worksheet.resultados_intermedios_x19, 0.002); end
  def test_resultados_intermedios_y19; assert_in_epsilon(755.2277754540186, worksheet.resultados_intermedios_y19, 0.002); end
  def test_resultados_intermedios_z19; assert_in_epsilon(822.4343470424858, worksheet.resultados_intermedios_z19, 0.002); end
  def test_resultados_intermedios_c20; assert_equal("T.06", worksheet.resultados_intermedios_c20.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d20; assert_equal("Transporte de carga caminero Urbano", worksheet.resultados_intermedios_d20.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f20; assert_in_epsilon(7.088639766958563, worksheet.resultados_intermedios_f20, 0.002); end
  def test_resultados_intermedios_g20; assert_in_epsilon(7.635310827180459, worksheet.resultados_intermedios_g20, 0.002); end
  def test_resultados_intermedios_h20; assert_in_epsilon(8.320255613424766, worksheet.resultados_intermedios_h20, 0.002); end
  def test_resultados_intermedios_i20; assert_in_epsilon(9.063455479528239, worksheet.resultados_intermedios_i20, 0.002); end
  def test_resultados_intermedios_j20; assert_in_epsilon(9.827825180642476, worksheet.resultados_intermedios_j20, 0.002); end
  def test_resultados_intermedios_k20; assert_in_epsilon(10.652714024731472, worksheet.resultados_intermedios_k20, 0.002); end
  def test_resultados_intermedios_l20; assert_in_epsilon(11.540996944925201, worksheet.resultados_intermedios_l20, 0.002); end
  def test_resultados_intermedios_m20; assert_in_epsilon(12.475499139011452, worksheet.resultados_intermedios_m20, 0.002); end
  def test_resultados_intermedios_ac20; assert_equal("Oferta Eléctrica", worksheet.resultados_intermedios_ac20.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c21; assert_equal("T.07", worksheet.resultados_intermedios_c21.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d21; assert_equal("Transporte de carga caminero Interurbano", worksheet.resultados_intermedios_d21.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f21; assert_in_epsilon(8.035475877848699, worksheet.resultados_intermedios_f21, 0.002); end
  def test_resultados_intermedios_g21; assert_in_epsilon(8.655166292645411, worksheet.resultados_intermedios_g21, 0.002); end
  def test_resultados_intermedios_h21; assert_in_epsilon(9.431599781786563, worksheet.resultados_intermedios_h21, 0.002); end
  def test_resultados_intermedios_i21; assert_in_epsilon(10.274069535198388, worksheet.resultados_intermedios_i21, 0.002); end
  def test_resultados_intermedios_j21; assert_in_epsilon(11.140536797886952, worksheet.resultados_intermedios_j21, 0.002); end
  def test_resultados_intermedios_k21; assert_in_epsilon(12.075606800947295, worksheet.resultados_intermedios_k21, 0.002); end
  def test_resultados_intermedios_l21; assert_in_epsilon(13.08253848496264, worksheet.resultados_intermedios_l21, 0.002); end
  def test_resultados_intermedios_m21; assert_in_epsilon(14.14186299364741, worksheet.resultados_intermedios_m21, 0.002); end
  def test_resultados_intermedios_r21; assert_equal("Base (Nivel 1)", worksheet.resultados_intermedios_r21.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s21; assert_in_epsilon(359.29703906034297, worksheet.resultados_intermedios_s21, 0.002); end
  def test_resultados_intermedios_t21; assert_in_epsilon(402.1824611968587, worksheet.resultados_intermedios_t21, 0.002); end
  def test_resultados_intermedios_u21; assert_in_epsilon(465.6850345211053, worksheet.resultados_intermedios_u21, 0.002); end
  def test_resultados_intermedios_v21; assert_in_epsilon(533.9842106234165, worksheet.resultados_intermedios_v21, 0.002); end
  def test_resultados_intermedios_w21; assert_in_epsilon(608.4778502118812, worksheet.resultados_intermedios_w21, 0.002); end
  def test_resultados_intermedios_x21; assert_in_epsilon(682.1075887904973, worksheet.resultados_intermedios_x21, 0.002); end
  def test_resultados_intermedios_y21; assert_in_epsilon(754.6907319464831, worksheet.resultados_intermedios_y21, 0.002); end
  def test_resultados_intermedios_z21; assert_in_epsilon(821.8565047731773, worksheet.resultados_intermedios_z21, 0.002); end
  def test_resultados_intermedios_ac21; assert_equal("reducción al 2030", worksheet.resultados_intermedios_ac21.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad21; assert_equal("reducción al 2050", worksheet.resultados_intermedios_ad21.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_an21; assert_equal("Todo", worksheet.resultados_intermedios_an21.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao21; assert_in_epsilon(67.57963331657376, worksheet.resultados_intermedios_ao21, 0.002); end
  def test_resultados_intermedios_ap21; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_ap21, 0.002); end
  def test_resultados_intermedios_aq21; assert_in_epsilon(91.52024444612704, worksheet.resultados_intermedios_aq21, 0.002); end
  def test_resultados_intermedios_ar21; assert_in_epsilon(103.60064575816739, worksheet.resultados_intermedios_ar21, 0.002); end
  def test_resultados_intermedios_as21; assert_in_epsilon(117.65200581808283, worksheet.resultados_intermedios_as21, 0.002); end
  def test_resultados_intermedios_at21; assert_in_epsilon(132.75541227739603, worksheet.resultados_intermedios_at21, 0.002); end
  def test_resultados_intermedios_au21; assert_in_epsilon(148.13841553905652, worksheet.resultados_intermedios_au21, 0.002); end
  def test_resultados_intermedios_av21; assert_in_epsilon(162.18836791957608, worksheet.resultados_intermedios_av21, 0.002); end
  def test_resultados_intermedios_aw21; assert_in_epsilon(16.965734880966792, worksheet.resultados_intermedios_aw21, 0.002); end
  def test_resultados_intermedios_ax21; assert_in_delta(0.10460512735031371, worksheet.resultados_intermedios_ax21, 0.002); end
  def test_resultados_intermedios_c22; assert_equal("T.08", worksheet.resultados_intermedios_c22.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d22; assert_equal("Transporte de carga ferroviario", worksheet.resultados_intermedios_d22.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f22; assert_in_delta(0.006050246655736268, worksheet.resultados_intermedios_f22, 0.002); end
  def test_resultados_intermedios_g22; assert_in_delta(0.006313188775642579, worksheet.resultados_intermedios_g22, 0.002); end
  def test_resultados_intermedios_h22; assert_in_delta(0.006666900286388698, worksheet.resultados_intermedios_h22, 0.002); end
  def test_resultados_intermedios_i22; assert_in_delta(0.007025387250991386, worksheet.resultados_intermedios_i22, 0.002); end
  def test_resultados_intermedios_j22; assert_in_delta(0.007354902783301131, worksheet.resultados_intermedios_j22, 0.002); end
  def test_resultados_intermedios_k22; assert_in_delta(0.00768062785474644, worksheet.resultados_intermedios_k22, 0.002); end
  def test_resultados_intermedios_l22; assert_in_delta(0.007997950472683703, worksheet.resultados_intermedios_l22, 0.002); end
  def test_resultados_intermedios_m22; assert_in_delta(0.008288347248164046, worksheet.resultados_intermedios_m22, 0.002); end
  def test_resultados_intermedios_c23; assert_equal("T.09", worksheet.resultados_intermedios_c23.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d23; assert_equal("Transporte de carga maritimo", worksheet.resultados_intermedios_d23.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f23; assert_in_delta(0.2851690705586349, worksheet.resultados_intermedios_f23, 0.002); end
  def test_resultados_intermedios_g23; assert_in_delta(0.30962578524555734, worksheet.resultados_intermedios_g23, 0.002); end
  def test_resultados_intermedios_h23; assert_in_delta(0.34078908460303153, worksheet.resultados_intermedios_h23, 0.002); end
  def test_resultados_intermedios_i23; assert_in_delta(0.37495696100373616, worksheet.resultados_intermedios_i23, 0.002); end
  def test_resultados_intermedios_j23; assert_in_delta(0.4106611746040028, worksheet.resultados_intermedios_j23, 0.002); end
  def test_resultados_intermedios_k23; assert_in_delta(0.449598753539675, worksheet.resultados_intermedios_k23, 0.002); end
  def test_resultados_intermedios_l23; assert_in_delta(0.49197922477980477, worksheet.resultados_intermedios_l23, 0.002); end
  def test_resultados_intermedios_m23; assert_in_delta(0.53715543706052, worksheet.resultados_intermedios_m23, 0.002); end
  def test_resultados_intermedios_r23; assert_equal("Reducción", worksheet.resultados_intermedios_r23.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s23; assert_in_delta(0.0, (worksheet.resultados_intermedios_s23||0), 0.002); end
  def test_resultados_intermedios_t23; assert_in_delta(-0.0012338796283803966, worksheet.resultados_intermedios_t23, 0.002); end
  def test_resultados_intermedios_u23; assert_in_delta(-0.0010248630487514898, worksheet.resultados_intermedios_u23, 0.002); end
  def test_resultados_intermedios_v23; assert_in_delta(-0.0008833231797187313, worksheet.resultados_intermedios_v23, 0.002); end
  def test_resultados_intermedios_w23; assert_in_delta(-0.0007527026413252091, worksheet.resultados_intermedios_w23, 0.002); end
  def test_resultados_intermedios_x23; assert_in_delta(-0.0007616955630709299, worksheet.resultados_intermedios_x23, 0.002); end
  def test_resultados_intermedios_y23; assert_in_delta(-0.0007116073973114645, worksheet.resultados_intermedios_y23, 0.002); end
  def test_resultados_intermedios_z23; assert_in_delta(-0.000703093868519078, worksheet.resultados_intermedios_z23, 0.002); end
  def test_resultados_intermedios_an23; assert_equal("Baja en Emisiones", worksheet.resultados_intermedios_an23.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao23; assert_in_epsilon(30.07234929964777, worksheet.resultados_intermedios_ao23, 0.002); end
  def test_resultados_intermedios_ap23; assert_in_epsilon(37.00274747107072, worksheet.resultados_intermedios_ap23, 0.002); end
  def test_resultados_intermedios_aq23; assert_in_epsilon(41.00032635917213, worksheet.resultados_intermedios_aq23, 0.002); end
  def test_resultados_intermedios_ar23; assert_in_epsilon(43.95346944028944, worksheet.resultados_intermedios_ar23, 0.002); end
  def test_resultados_intermedios_as23; assert_in_epsilon(46.72361330400803, worksheet.resultados_intermedios_as23, 0.002); end
  def test_resultados_intermedios_at23; assert_in_epsilon(49.41871922485323, worksheet.resultados_intermedios_at23, 0.002); end
  def test_resultados_intermedios_au23; assert_in_epsilon(51.95834442353012, worksheet.resultados_intermedios_au23, 0.002); end
  def test_resultados_intermedios_av23; assert_in_epsilon(54.36147089382507, worksheet.resultados_intermedios_av23, 0.002); end
  def test_resultados_intermedios_an24; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_an24.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao24; assert_in_epsilon(10.716366861978855, worksheet.resultados_intermedios_ao24, 0.002); end
  def test_resultados_intermedios_ap24; assert_in_epsilon(11.993360596902663, worksheet.resultados_intermedios_ap24, 0.002); end
  def test_resultados_intermedios_aq24; assert_in_epsilon(14.434262310558546, worksheet.resultados_intermedios_aq24, 0.002); end
  def test_resultados_intermedios_ar24; assert_in_epsilon(17.04205037653656, worksheet.resultados_intermedios_ar24, 0.002); end
  def test_resultados_intermedios_as24; assert_in_epsilon(20.265255004021373, worksheet.resultados_intermedios_as24, 0.002); end
  def test_resultados_intermedios_at24; assert_in_epsilon(23.810483729297946, worksheet.resultados_intermedios_at24, 0.002); end
  def test_resultados_intermedios_au24; assert_in_epsilon(27.480020318721834, worksheet.resultados_intermedios_au24, 0.002); end
  def test_resultados_intermedios_av24; assert_in_epsilon(30.807684864500306, worksheet.resultados_intermedios_av24, 0.002); end
  def test_resultados_intermedios_d25; assert_equal("Demanda Total", worksheet.resultados_intermedios_d25.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f25; assert_in_epsilon(300.22166762244615, worksheet.resultados_intermedios_f25, 0.002); end
  def test_resultados_intermedios_g25; assert_in_epsilon(338.3517230675355, worksheet.resultados_intermedios_g25, 0.002); end
  def test_resultados_intermedios_h25; assert_in_epsilon(389.09685921211525, worksheet.resultados_intermedios_h25, 0.002); end
  def test_resultados_intermedios_i25; assert_in_epsilon(443.78105859171393, worksheet.resultados_intermedios_i25, 0.002); end
  def test_resultados_intermedios_j25; assert_in_epsilon(501.43992128468693, worksheet.resultados_intermedios_j25, 0.002); end
  def test_resultados_intermedios_k25; assert_in_epsilon(556.6295528921423, worksheet.resultados_intermedios_k25, 0.002); end
  def test_resultados_intermedios_l25; assert_in_epsilon(610.079787155689, worksheet.resultados_intermedios_l25, 0.002); end
  def test_resultados_intermedios_m25; assert_in_epsilon(659.9201093958749, worksheet.resultados_intermedios_m25, 0.002); end
  def test_resultados_intermedios_p25; assert_equal("Grafico 3", worksheet.resultados_intermedios_p25.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r26; assert_equal("Emisiones por sector", worksheet.resultados_intermedios_r26.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c27; assert_equal("Demanda de Energía por sector", worksheet.resultados_intermedios_c27.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r27; assert_equal("Mt CO2e", worksheet.resultados_intermedios_r27.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s27; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_s27, 0.002); end
  def test_resultados_intermedios_t27; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_t27, 0.002); end
  def test_resultados_intermedios_u27; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_u27, 0.002); end
  def test_resultados_intermedios_v27; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_v27, 0.002); end
  def test_resultados_intermedios_w27; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_w27, 0.002); end
  def test_resultados_intermedios_x27; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_x27, 0.002); end
  def test_resultados_intermedios_y27; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_y27, 0.002); end
  def test_resultados_intermedios_z27; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_z27, 0.002); end
  def test_resultados_intermedios_an27; assert_equal("Baja en Emisiones", worksheet.resultados_intermedios_an27.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao27; assert_in_delta(0.44499130616431726, worksheet.resultados_intermedios_ao27, 0.002); end
  def test_resultados_intermedios_ap27; assert_in_delta(0.468510727365967, worksheet.resultados_intermedios_ap27, 0.002); end
  def test_resultados_intermedios_aq27; assert_in_delta(0.44799187990922357, worksheet.resultados_intermedios_aq27, 0.002); end
  def test_resultados_intermedios_ar27; assert_in_delta(0.424258643550244, worksheet.resultados_intermedios_ar27, 0.002); end
  def test_resultados_intermedios_as27; assert_in_delta(0.39713401381574004, worksheet.resultados_intermedios_as27, 0.002); end
  def test_resultados_intermedios_at27; assert_in_delta(0.37225389441442486, worksheet.resultados_intermedios_at27, 0.002); end
  def test_resultados_intermedios_au27; assert_in_delta(0.3507418668848349, worksheet.resultados_intermedios_au27, 0.002); end
  def test_resultados_intermedios_av27; assert_in_delta(0.3351749055196187, worksheet.resultados_intermedios_av27, 0.002); end
  def test_resultados_intermedios_c28; assert_equal("X", worksheet.resultados_intermedios_c28.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d28; assert_equal("Comercial, Público y Residencial", worksheet.resultados_intermedios_d28.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f28; assert_in_epsilon(69.7324886097226, worksheet.resultados_intermedios_f28, 0.002); end
  def test_resultados_intermedios_g28; assert_in_epsilon(77.77943813949432, worksheet.resultados_intermedios_g28, 0.002); end
  def test_resultados_intermedios_h28; assert_in_epsilon(89.46034730856599, worksheet.resultados_intermedios_h28, 0.002); end
  def test_resultados_intermedios_i28; assert_in_epsilon(103.32455340139477, worksheet.resultados_intermedios_i28, 0.002); end
  def test_resultados_intermedios_j28; assert_in_epsilon(118.96919895910916, worksheet.resultados_intermedios_j28, 0.002); end
  def test_resultados_intermedios_k28; assert_in_epsilon(137.0678323267025, worksheet.resultados_intermedios_k28, 0.002); end
  def test_resultados_intermedios_l28; assert_in_epsilon(158.362640255516, worksheet.resultados_intermedios_l28, 0.002); end
  def test_resultados_intermedios_m28; assert_in_epsilon(179.14934888905594, worksheet.resultados_intermedios_m28, 0.002); end
  def test_resultados_intermedios_r28; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_r28.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s28; assert_in_epsilon(28.282873684358243, worksheet.resultados_intermedios_s28, 0.002); end
  def test_resultados_intermedios_t28; assert_in_epsilon(31.0104170487364, worksheet.resultados_intermedios_t28, 0.002); end
  def test_resultados_intermedios_u28; assert_in_epsilon(37.321690649147655, worksheet.resultados_intermedios_u28, 0.002); end
  def test_resultados_intermedios_v28; assert_in_epsilon(44.064470943903444, worksheet.resultados_intermedios_v28, 0.002); end
  def test_resultados_intermedios_w28; assert_in_epsilon(52.39849199864721, worksheet.resultados_intermedios_w28, 0.002); end
  def test_resultados_intermedios_x28; assert_in_epsilon(61.56514886814706, worksheet.resultados_intermedios_x28, 0.002); end
  def test_resultados_intermedios_y28; assert_in_epsilon(71.05322013009346, worksheet.resultados_intermedios_y28, 0.002); end
  def test_resultados_intermedios_z28; assert_in_epsilon(79.65733609318178, worksheet.resultados_intermedios_z28, 0.002); end
  def test_resultados_intermedios_an28; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_an28.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao28; assert_in_delta(0.15857391252448078, worksheet.resultados_intermedios_ao28, 0.002); end
  def test_resultados_intermedios_ap28; assert_in_delta(0.151854077895438, worksheet.resultados_intermedios_ap28, 0.002); end
  def test_resultados_intermedios_aq28; assert_in_delta(0.15771660574022184, worksheet.resultados_intermedios_aq28, 0.002); end
  def test_resultados_intermedios_ar28; assert_in_delta(0.16449753041421603, worksheet.resultados_intermedios_ar28, 0.002); end
  def test_resultados_intermedios_as28; assert_in_delta(0.1722474246240743, worksheet.resultados_intermedios_as28, 0.002); end
  def test_resultados_intermedios_at28; assert_in_delta(0.1793560301673072, worksheet.resultados_intermedios_at28, 0.002); end
  def test_resultados_intermedios_au28; assert_in_delta(0.18550232374719006, worksheet.resultados_intermedios_au28, 0.002); end
  def test_resultados_intermedios_av28; assert_in_delta(0.18995002699439476, worksheet.resultados_intermedios_av28, 0.002); end
  def test_resultados_intermedios_c29; assert_equal("XI", worksheet.resultados_intermedios_c29.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d29; assert_equal("Industria y Minería", worksheet.resultados_intermedios_d29.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f29; assert_in_epsilon(135.84274834045024, worksheet.resultados_intermedios_f29, 0.002); end
  def test_resultados_intermedios_g29; assert_in_epsilon(158.67044327209996, worksheet.resultados_intermedios_g29, 0.002); end
  def test_resultados_intermedios_h29; assert_in_epsilon(180.06416398976444, worksheet.resultados_intermedios_h29, 0.002); end
  def test_resultados_intermedios_i29; assert_in_epsilon(197.03307251300703, worksheet.resultados_intermedios_i29, 0.002); end
  def test_resultados_intermedios_j29; assert_in_epsilon(218.59381484642964, worksheet.resultados_intermedios_j29, 0.002); end
  def test_resultados_intermedios_k29; assert_in_epsilon(241.06883940080814, worksheet.resultados_intermedios_k29, 0.002); end
  def test_resultados_intermedios_l29; assert_in_epsilon(262.505469545544, worksheet.resultados_intermedios_l29, 0.002); end
  def test_resultados_intermedios_m29; assert_in_epsilon(282.57731267178247, worksheet.resultados_intermedios_m29, 0.002); end
  def test_resultados_intermedios_r29; assert_equal("Residuos", worksheet.resultados_intermedios_r29.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s29; assert_in_epsilon(3.109643151780735, worksheet.resultados_intermedios_s29, 0.002); end
  def test_resultados_intermedios_t29; assert_in_epsilon(3.7985207352657593, worksheet.resultados_intermedios_t29, 0.002); end
  def test_resultados_intermedios_u29; assert_in_epsilon(4.470377260836178, worksheet.resultados_intermedios_u29, 0.002); end
  def test_resultados_intermedios_v29; assert_in_epsilon(5.161089721535043, worksheet.resultados_intermedios_v29, 0.002); end
  def test_resultados_intermedios_w29; assert_in_epsilon(5.829810437822885, worksheet.resultados_intermedios_w29, 0.002); end
  def test_resultados_intermedios_x29; assert_in_epsilon(6.494138205442351, worksheet.resultados_intermedios_x29, 0.002); end
  def test_resultados_intermedios_y29; assert_in_epsilon(7.145379054205324, worksheet.resultados_intermedios_y29, 0.002); end
  def test_resultados_intermedios_z29; assert_in_epsilon(7.796091713576472, worksheet.resultados_intermedios_z29, 0.002); end
  def test_resultados_intermedios_c30; assert_equal("XII", worksheet.resultados_intermedios_c30.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d30; assert_equal("Transporte", worksheet.resultados_intermedios_d30.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f30; assert_in_epsilon(94.64643067227325, worksheet.resultados_intermedios_f30, 0.002); end
  def test_resultados_intermedios_g30; assert_in_epsilon(101.90184165594128, worksheet.resultados_intermedios_g30, 0.002); end
  def test_resultados_intermedios_h30; assert_in_epsilon(119.5723479137848, worksheet.resultados_intermedios_h30, 0.002); end
  def test_resultados_intermedios_i30; assert_in_epsilon(143.42343267731206, worksheet.resultados_intermedios_i30, 0.002); end
  def test_resultados_intermedios_j30; assert_in_epsilon(163.87690747914812, worksheet.resultados_intermedios_j30, 0.002); end
  def test_resultados_intermedios_k30; assert_in_epsilon(178.49288116463165, worksheet.resultados_intermedios_k30, 0.002); end
  def test_resultados_intermedios_l30; assert_in_epsilon(189.2116773546291, worksheet.resultados_intermedios_l30, 0.002); end
  def test_resultados_intermedios_m30; assert_in_epsilon(198.19344783503647, worksheet.resultados_intermedios_m30, 0.002); end
  def test_resultados_intermedios_r30; assert_equal("Agropecuario", worksheet.resultados_intermedios_r30.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s30; assert_in_epsilon(12.816572783657763, worksheet.resultados_intermedios_s30, 0.002); end
  def test_resultados_intermedios_t30; assert_in_epsilon(12.78736097645349, worksheet.resultados_intermedios_t30, 0.002); end
  def test_resultados_intermedios_u30; assert_in_epsilon(12.77852613371573, worksheet.resultados_intermedios_u30, 0.002); end
  def test_resultados_intermedios_v30; assert_in_epsilon(12.913262357995444, worksheet.resultados_intermedios_v30, 0.002); end
  def test_resultados_intermedios_w30; assert_in_epsilon(13.100772485088362, worksheet.resultados_intermedios_w30, 0.002); end
  def test_resultados_intermedios_x30; assert_in_epsilon(13.309006434440434, worksheet.resultados_intermedios_x30, 0.002); end
  def test_resultados_intermedios_y30; assert_in_epsilon(13.522309091729012, worksheet.resultados_intermedios_y30, 0.002); end
  def test_resultados_intermedios_z30; assert_in_epsilon(13.732410206521122, worksheet.resultados_intermedios_z30, 0.002); end
  def test_resultados_intermedios_an30; assert_equal("renovables al 2035", worksheet.resultados_intermedios_an30.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao30; assert_equal("renovables al 2050", worksheet.resultados_intermedios_ao30.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f31; assert_in_epsilon(300.2216676224461, worksheet.resultados_intermedios_f31, 0.002); end
  def test_resultados_intermedios_g31; assert_in_epsilon(338.35172306753554, worksheet.resultados_intermedios_g31, 0.002); end
  def test_resultados_intermedios_h31; assert_in_epsilon(389.0968592121152, worksheet.resultados_intermedios_h31, 0.002); end
  def test_resultados_intermedios_i31; assert_in_epsilon(443.7810585917139, worksheet.resultados_intermedios_i31, 0.002); end
  def test_resultados_intermedios_j31; assert_in_epsilon(501.4399212846869, worksheet.resultados_intermedios_j31, 0.002); end
  def test_resultados_intermedios_k31; assert_in_epsilon(556.6295528921423, worksheet.resultados_intermedios_k31, 0.002); end
  def test_resultados_intermedios_l31; assert_in_epsilon(610.079787155689, worksheet.resultados_intermedios_l31, 0.002); end
  def test_resultados_intermedios_m31; assert_in_epsilon(659.9201093958749, worksheet.resultados_intermedios_m31, 0.002); end
  def test_resultados_intermedios_r31; assert_equal("Residencial", worksheet.resultados_intermedios_r31.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s31; assert_in_epsilon(6.082129133163526, worksheet.resultados_intermedios_s31, 0.002); end
  def test_resultados_intermedios_t31; assert_in_epsilon(7.25504189081435, worksheet.resultados_intermedios_t31, 0.002); end
  def test_resultados_intermedios_u31; assert_in_epsilon(8.639321741507763, worksheet.resultados_intermedios_u31, 0.002); end
  def test_resultados_intermedios_v31; assert_in_epsilon(10.113707400902864, worksheet.resultados_intermedios_v31, 0.002); end
  def test_resultados_intermedios_w31; assert_in_epsilon(11.713850659765072, worksheet.resultados_intermedios_w31, 0.002); end
  def test_resultados_intermedios_x31; assert_in_epsilon(13.704434327263904, worksheet.resultados_intermedios_x31, 0.002); end
  def test_resultados_intermedios_y31; assert_in_epsilon(16.19100270698397, worksheet.resultados_intermedios_y31, 0.002); end
  def test_resultados_intermedios_z31; assert_in_epsilon(18.75215737326751, worksheet.resultados_intermedios_z31, 0.002); end
  def test_resultados_intermedios_an31; assert_in_delta(0.39713401381574004, worksheet.resultados_intermedios_an31, 0.002); end
  def test_resultados_intermedios_ao31; assert_in_delta(0.3351749055196187, worksheet.resultados_intermedios_ao31, 0.002); end
  def test_resultados_intermedios_r32; assert_equal("Comercial y Púbico", worksheet.resultados_intermedios_r32.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s32; assert_in_epsilon(2.006872315215893, worksheet.resultados_intermedios_s32, 0.002); end
  def test_resultados_intermedios_t32; assert_in_epsilon(2.1992460143489043, worksheet.resultados_intermedios_t32, 0.002); end
  def test_resultados_intermedios_u32; assert_in_epsilon(2.5620733079933875, worksheet.resultados_intermedios_u32, 0.002); end
  def test_resultados_intermedios_v32; assert_in_epsilon(2.9902471723562, worksheet.resultados_intermedios_v32, 0.002); end
  def test_resultados_intermedios_w32; assert_in_epsilon(3.431569865310332, worksheet.resultados_intermedios_w32, 0.002); end
  def test_resultados_intermedios_x32; assert_in_epsilon(3.8868286697186196, worksheet.resultados_intermedios_x32, 0.002); end
  def test_resultados_intermedios_y32; assert_in_epsilon(4.367296580493904, worksheet.resultados_intermedios_y32, 0.002); end
  def test_resultados_intermedios_z32; assert_in_epsilon(4.672695092978926, worksheet.resultados_intermedios_z32, 0.002); end
  def test_resultados_intermedios_c33; assert_equal("Oferta desde Hojas Balances", worksheet.resultados_intermedios_c33.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r33; assert_equal("Procesos Industriales", worksheet.resultados_intermedios_r33.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s33; assert_in_epsilon(17.84512510239621, worksheet.resultados_intermedios_s33, 0.002); end
  def test_resultados_intermedios_t33; assert_in_epsilon(24.151604186091568, worksheet.resultados_intermedios_t33, 0.002); end
  def test_resultados_intermedios_u33; assert_in_epsilon(27.579673476743537, worksheet.resultados_intermedios_u33, 0.002); end
  def test_resultados_intermedios_v33; assert_in_epsilon(30.438708837580368, worksheet.resultados_intermedios_v33, 0.002); end
  def test_resultados_intermedios_w33; assert_in_epsilon(34.0525977929312, worksheet.resultados_intermedios_w33, 0.002); end
  def test_resultados_intermedios_x33; assert_in_epsilon(37.858358300855876, worksheet.resultados_intermedios_x33, 0.002); end
  def test_resultados_intermedios_y33; assert_in_epsilon(41.548324073480885, worksheet.resultados_intermedios_y33, 0.002); end
  def test_resultados_intermedios_z33; assert_in_epsilon(44.98080596778992, worksheet.resultados_intermedios_z33, 0.002); end
  def test_resultados_intermedios_ac33; assert_equal("Emisiones", worksheet.resultados_intermedios_ac33.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_r34; assert_equal("Transporte ", worksheet.resultados_intermedios_r34.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s34; assert_in_epsilon(24.86898935397778, worksheet.resultados_intermedios_s34, 0.002); end
  def test_resultados_intermedios_t34; assert_in_epsilon(26.744439668839334, worksheet.resultados_intermedios_t34, 0.002); end
  def test_resultados_intermedios_u34; assert_in_epsilon(31.339051195684757, worksheet.resultados_intermedios_u34, 0.002); end
  def test_resultados_intermedios_v34; assert_in_epsilon(37.47304445448401, worksheet.resultados_intermedios_v34, 0.002); end
  def test_resultados_intermedios_w34; assert_in_epsilon(42.816327515400786, worksheet.resultados_intermedios_w34, 0.002); end
  def test_resultados_intermedios_x34; assert_in_epsilon(46.577044569806105, worksheet.resultados_intermedios_x34, 0.002); end
  def test_resultados_intermedios_y34; assert_in_epsilon(49.41720544382521, worksheet.resultados_intermedios_y34, 0.002); end
  def test_resultados_intermedios_z34; assert_in_epsilon(51.82151628758896, worksheet.resultados_intermedios_z34, 0.002); end
  def test_resultados_intermedios_ac34; assert_equal("reducción al 2030", worksheet.resultados_intermedios_ac34.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ad34; assert_equal("reducción al 2050", worksheet.resultados_intermedios_ad34.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_an34; assert_equal("Intermitentes", worksheet.resultados_intermedios_an34.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao34; assert_in_epsilon(4.246932612, worksheet.resultados_intermedios_ao34, 0.002); end
  def test_resultados_intermedios_ap34; assert_in_epsilon(9.492955623547012, worksheet.resultados_intermedios_ap34, 0.002); end
  def test_resultados_intermedios_aq34; assert_in_epsilon(11.951521282872358, worksheet.resultados_intermedios_aq34, 0.002); end
  def test_resultados_intermedios_ar34; assert_in_epsilon(13.403229282788626, worksheet.resultados_intermedios_ar34, 0.002); end
  def test_resultados_intermedios_as34; assert_in_epsilon(14.601024369418589, worksheet.resultados_intermedios_as34, 0.002); end
  def test_resultados_intermedios_at34; assert_in_epsilon(15.56736482298622, worksheet.resultados_intermedios_at34, 0.002); end
  def test_resultados_intermedios_au34; assert_in_epsilon(16.321874599181562, worksheet.resultados_intermedios_au34, 0.002); end
  def test_resultados_intermedios_av34; assert_in_epsilon(16.965734880966792, worksheet.resultados_intermedios_av34, 0.002); end
  def test_resultados_intermedios_c35; assert_equal("Fuentes primarias", worksheet.resultados_intermedios_c35.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ac35; assert_in_delta(0.0, (worksheet.resultados_intermedios_ac35||0), 0.002); end
  def test_resultados_intermedios_ad35; assert_in_delta(0.0, (worksheet.resultados_intermedios_ad35||0), 0.002); end
  def test_resultados_intermedios_c37; assert_equal("R.01", worksheet.resultados_intermedios_c37.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d37; assert_equal("Solar", worksheet.resultados_intermedios_d37.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f37; assert_in_epsilon(1.602650561775374, worksheet.resultados_intermedios_f37, 0.002); end
  def test_resultados_intermedios_g37; assert_in_epsilon(5.022408446731655, worksheet.resultados_intermedios_g37, 0.002); end
  def test_resultados_intermedios_h37; assert_in_epsilon(7.202976090518175, worksheet.resultados_intermedios_h37, 0.002); end
  def test_resultados_intermedios_i37; assert_in_epsilon(8.376857947625211, worksheet.resultados_intermedios_i37, 0.002); end
  def test_resultados_intermedios_j37; assert_in_epsilon(9.296769907339296, worksheet.resultados_intermedios_j37, 0.002); end
  def test_resultados_intermedios_k37; assert_in_epsilon(9.98517489565925, worksheet.resultados_intermedios_k37, 0.002); end
  def test_resultados_intermedios_l37; assert_in_epsilon(10.461743649769149, worksheet.resultados_intermedios_l37, 0.002); end
  def test_resultados_intermedios_m37; assert_in_epsilon(10.827699474223696, worksheet.resultados_intermedios_m37, 0.002); end
  def test_resultados_intermedios_r37; assert_equal("Total ", worksheet.resultados_intermedios_r37.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s37; assert_in_epsilon(95.01220552455015, worksheet.resultados_intermedios_s37, 0.002); end
  def test_resultados_intermedios_t37; assert_in_epsilon(107.9466305205498, worksheet.resultados_intermedios_t37, 0.002); end
  def test_resultados_intermedios_u37; assert_in_epsilon(124.69071376562901, worksheet.resultados_intermedios_u37, 0.002); end
  def test_resultados_intermedios_v37; assert_in_epsilon(143.1545308887574, worksheet.resultados_intermedios_v37, 0.002); end
  def test_resultados_intermedios_w37; assert_in_epsilon(163.34342075496585, worksheet.resultados_intermedios_w37, 0.002); end
  def test_resultados_intermedios_x37; assert_in_epsilon(183.39495937567438, worksheet.resultados_intermedios_x37, 0.002); end
  def test_resultados_intermedios_y37; assert_in_epsilon(203.24473708081177, worksheet.resultados_intermedios_y37, 0.002); end
  def test_resultados_intermedios_z37; assert_in_epsilon(221.4130127349047, worksheet.resultados_intermedios_z37, 0.002); end
  def test_resultados_intermedios_an37; assert_equal("Base (Nivel 1)", worksheet.resultados_intermedios_an37.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao37; assert_in_epsilon(67.57963331657375, worksheet.resultados_intermedios_ao37, 0.002); end
  def test_resultados_intermedios_ap37; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_ap37, 0.002); end
  def test_resultados_intermedios_aq37; assert_in_epsilon(91.52024444612702, worksheet.resultados_intermedios_aq37, 0.002); end
  def test_resultados_intermedios_ar37; assert_in_epsilon(103.60064575816739, worksheet.resultados_intermedios_ar37, 0.002); end
  def test_resultados_intermedios_as37; assert_in_epsilon(117.65200581808284, worksheet.resultados_intermedios_as37, 0.002); end
  def test_resultados_intermedios_at37; assert_in_epsilon(132.755412277396, worksheet.resultados_intermedios_at37, 0.002); end
  def test_resultados_intermedios_au37; assert_in_epsilon(148.13841553905652, worksheet.resultados_intermedios_au37, 0.002); end
  def test_resultados_intermedios_av37; assert_in_epsilon(162.18836791957614, worksheet.resultados_intermedios_av37, 0.002); end
  def test_resultados_intermedios_c38; assert_equal("R.02", worksheet.resultados_intermedios_c38.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d38; assert_equal("Viento", worksheet.resultados_intermedios_d38.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f38; assert_in_epsilon(2.6604444, worksheet.resultados_intermedios_f38, 0.002); end
  def test_resultados_intermedios_g38; assert_in_epsilon(4.6811184, worksheet.resultados_intermedios_g38, 0.002); end
  def test_resultados_intermedios_h38; assert_in_epsilon(4.960195199999999, worksheet.resultados_intermedios_h38, 0.002); end
  def test_resultados_intermedios_i38; assert_in_epsilon(5.239271999999999, worksheet.resultados_intermedios_i38, 0.002); end
  def test_resultados_intermedios_j38; assert_in_epsilon(5.518348799999999, worksheet.resultados_intermedios_j38, 0.002); end
  def test_resultados_intermedios_k38; assert_in_epsilon(5.797425599999999, worksheet.resultados_intermedios_k38, 0.002); end
  def test_resultados_intermedios_l38; assert_in_epsilon(6.076502399999998, worksheet.resultados_intermedios_l38, 0.002); end
  def test_resultados_intermedios_m38; assert_in_epsilon(6.3555791999999975, worksheet.resultados_intermedios_m38, 0.002); end
  def test_resultados_intermedios_c39; assert_equal("R.03", worksheet.resultados_intermedios_c39.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d39; assert_equal("Mareomotriz", worksheet.resultados_intermedios_d39.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f39; assert_in_delta(0.0, (worksheet.resultados_intermedios_f39||0), 0.002); end
  def test_resultados_intermedios_g39; assert_in_delta(0.0, (worksheet.resultados_intermedios_g39||0), 0.002); end
  def test_resultados_intermedios_h39; assert_in_delta(0.00946728, worksheet.resultados_intermedios_h39, 0.002); end
  def test_resultados_intermedios_i39; assert_in_delta(0.012425805000000002, worksheet.resultados_intermedios_i39, 0.002); end
  def test_resultados_intermedios_j39; assert_in_delta(0.0186387075, worksheet.resultados_intermedios_j39, 0.002); end
  def test_resultados_intermedios_k39; assert_in_delta(0.024709600800000002, worksheet.resultados_intermedios_k39, 0.002); end
  def test_resultados_intermedios_l39; assert_in_delta(0.0432418014, worksheet.resultados_intermedios_l39, 0.002); end
  def test_resultados_intermedios_m39; assert_in_delta(0.0864836028, worksheet.resultados_intermedios_m39, 0.002); end
  def test_resultados_intermedios_an39; assert_equal("Reducción", worksheet.resultados_intermedios_an39.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_ao39; assert_in_delta(0.0, (worksheet.resultados_intermedios_ao39||0), 0.002); end
  def test_resultados_intermedios_ap39; assert_in_delta(0.0, (worksheet.resultados_intermedios_ap39||0), 0.002); end
  def test_resultados_intermedios_aq39; assert_in_delta(0.0, (worksheet.resultados_intermedios_aq39||0), 0.002); end
  def test_resultados_intermedios_ar39; assert_in_delta(0.0, (worksheet.resultados_intermedios_ar39||0), 0.002); end
  def test_resultados_intermedios_as39; assert_in_delta(0.0, (worksheet.resultados_intermedios_as39||0), 0.002); end
  def test_resultados_intermedios_at39; assert_in_delta(0.0, (worksheet.resultados_intermedios_at39||0), 0.002); end
  def test_resultados_intermedios_au39; assert_in_delta(0.0, (worksheet.resultados_intermedios_au39||0), 0.002); end
  def test_resultados_intermedios_av39; assert_in_delta(0.0, (worksheet.resultados_intermedios_av39||0), 0.002); end
  def test_resultados_intermedios_c40; assert_equal("R.04", worksheet.resultados_intermedios_c40.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d40; assert_equal("Undimotriz", worksheet.resultados_intermedios_d40.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f40; assert_in_delta(0.0, (worksheet.resultados_intermedios_f40||0), 0.002); end
  def test_resultados_intermedios_g40; assert_in_delta(0.0, (worksheet.resultados_intermedios_g40||0), 0.002); end
  def test_resultados_intermedios_h40; assert_in_delta(0.003944700000000001, worksheet.resultados_intermedios_h40, 0.002); end
  def test_resultados_intermedios_i40; assert_in_delta(0.006903225, worksheet.resultados_intermedios_i40, 0.002); end
  def test_resultados_intermedios_j40; assert_in_delta(0.0103548375, worksheet.resultados_intermedios_j40, 0.002); end
  def test_resultados_intermedios_k40; assert_in_delta(0.061774002, worksheet.resultados_intermedios_k40, 0.002); end
  def test_resultados_intermedios_l40; assert_in_delta(0.133843671, worksheet.resultados_intermedios_l40, 0.002); end
  def test_resultados_intermedios_m40; assert_in_delta(0.267687342, worksheet.resultados_intermedios_m40, 0.002); end
  def test_resultados_intermedios_r40; assert_equal("Base (Nivel 1)", worksheet.resultados_intermedios_r40.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s40; assert_in_epsilon(95.01220552455015, worksheet.resultados_intermedios_s40, 0.002); end
  def test_resultados_intermedios_t40; assert_in_epsilon(107.9466305205498, worksheet.resultados_intermedios_t40, 0.002); end
  def test_resultados_intermedios_u40; assert_in_epsilon(124.69071376562901, worksheet.resultados_intermedios_u40, 0.002); end
  def test_resultados_intermedios_v40; assert_in_epsilon(143.1545308887574, worksheet.resultados_intermedios_v40, 0.002); end
  def test_resultados_intermedios_w40; assert_in_epsilon(163.34342075496585, worksheet.resultados_intermedios_w40, 0.002); end
  def test_resultados_intermedios_x40; assert_in_epsilon(183.39495937567438, worksheet.resultados_intermedios_x40, 0.002); end
  def test_resultados_intermedios_y40; assert_in_epsilon(203.24473708081177, worksheet.resultados_intermedios_y40, 0.002); end
  def test_resultados_intermedios_z40; assert_in_epsilon(221.4130127349047, worksheet.resultados_intermedios_z40, 0.002); end
  def test_resultados_intermedios_c41; assert_equal("R.05", worksheet.resultados_intermedios_c41.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d41; assert_equal("Geotermia", worksheet.resultados_intermedios_d41.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f41; assert_in_delta(0.0, (worksheet.resultados_intermedios_f41||0), 0.002); end
  def test_resultados_intermedios_g41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_g41, 0.002); end
  def test_resultados_intermedios_h41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_h41, 0.002); end
  def test_resultados_intermedios_i41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_i41, 0.002); end
  def test_resultados_intermedios_j41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_j41, 0.002); end
  def test_resultados_intermedios_k41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_k41, 0.002); end
  def test_resultados_intermedios_l41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_l41, 0.002); end
  def test_resultados_intermedios_m41; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_m41, 0.002); end
  def test_resultados_intermedios_r41; assert_equal("Reducción", worksheet.resultados_intermedios_r41.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s41; assert_in_delta(0.0, (worksheet.resultados_intermedios_s41||0), 0.002); end
  def test_resultados_intermedios_t41; assert_in_delta(0.0, (worksheet.resultados_intermedios_t41||0), 0.002); end
  def test_resultados_intermedios_u41; assert_in_delta(0.0, (worksheet.resultados_intermedios_u41||0), 0.002); end
  def test_resultados_intermedios_v41; assert_in_delta(0.0, (worksheet.resultados_intermedios_v41||0), 0.002); end
  def test_resultados_intermedios_w41; assert_in_delta(0.0, (worksheet.resultados_intermedios_w41||0), 0.002); end
  def test_resultados_intermedios_x41; assert_in_delta(0.0, (worksheet.resultados_intermedios_x41||0), 0.002); end
  def test_resultados_intermedios_y41; assert_in_delta(0.0, (worksheet.resultados_intermedios_y41||0), 0.002); end
  def test_resultados_intermedios_z41; assert_in_delta(0.0, (worksheet.resultados_intermedios_z41||0), 0.002); end
  def test_resultados_intermedios_c42; assert_equal("R.06", worksheet.resultados_intermedios_c42.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d42; assert_equal("Hidro", worksheet.resultados_intermedios_d42.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f42; assert_in_epsilon(22.147299, worksheet.resultados_intermedios_f42, 0.002); end
  def test_resultados_intermedios_g42; assert_in_epsilon(23.153197500000005, worksheet.resultados_intermedios_g42, 0.002); end
  def test_resultados_intermedios_h42; assert_in_epsilon(24.159096, worksheet.resultados_intermedios_h42, 0.002); end
  def test_resultados_intermedios_i42; assert_in_epsilon(25.1649945, worksheet.resultados_intermedios_i42, 0.002); end
  def test_resultados_intermedios_j42; assert_in_epsilon(26.12268, worksheet.resultados_intermedios_j42, 0.002); end
  def test_resultados_intermedios_k42; assert_in_epsilon(27.1285785, worksheet.resultados_intermedios_k42, 0.002); end
  def test_resultados_intermedios_l42; assert_in_epsilon(28.134477000000004, worksheet.resultados_intermedios_l42, 0.002); end
  def test_resultados_intermedios_m42; assert_in_epsilon(29.092162499999997, worksheet.resultados_intermedios_m42, 0.002); end
  def test_resultados_intermedios_r42; assert_equal("t CO2e", worksheet.resultados_intermedios_r42.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s42; assert_in_epsilon(95012205.52455015, worksheet.resultados_intermedios_s42, 0.002); end
  def test_resultados_intermedios_t42; assert_in_epsilon(107946630.5205498, worksheet.resultados_intermedios_t42, 0.002); end
  def test_resultados_intermedios_u42; assert_in_epsilon(124690713.76562901, worksheet.resultados_intermedios_u42, 0.002); end
  def test_resultados_intermedios_v42; assert_in_epsilon(143154530.88875738, worksheet.resultados_intermedios_v42, 0.002); end
  def test_resultados_intermedios_w42; assert_in_epsilon(163343420.75496584, worksheet.resultados_intermedios_w42, 0.002); end
  def test_resultados_intermedios_x42; assert_in_epsilon(183394959.37567437, worksheet.resultados_intermedios_x42, 0.002); end
  def test_resultados_intermedios_y42; assert_in_epsilon(203244737.08081177, worksheet.resultados_intermedios_y42, 0.002); end
  def test_resultados_intermedios_z42; assert_in_epsilon(221413012.7349047, worksheet.resultados_intermedios_z42, 0.002); end
  def test_resultados_intermedios_c43; assert_equal("Y.02", worksheet.resultados_intermedios_c43.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d43; assert_equal("Electricidad sobreoferta  (importada)", worksheet.resultados_intermedios_d43.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f43; assert_in_delta(0.0, (worksheet.resultados_intermedios_f43||0), 0.002); end
  def test_resultados_intermedios_g43; assert_in_delta(0.0, (worksheet.resultados_intermedios_g43||0), 0.002); end
  def test_resultados_intermedios_h43; assert_in_delta(0.0, (worksheet.resultados_intermedios_h43||0), 0.002); end
  def test_resultados_intermedios_i43; assert_in_delta(0.0, (worksheet.resultados_intermedios_i43||0), 0.002); end
  def test_resultados_intermedios_j43; assert_in_delta(0.0, (worksheet.resultados_intermedios_j43||0), 0.002); end
  def test_resultados_intermedios_k43; assert_in_delta(0.0, (worksheet.resultados_intermedios_k43||0), 0.002); end
  def test_resultados_intermedios_l43; assert_in_delta(0.0, (worksheet.resultados_intermedios_l43||0), 0.002); end
  def test_resultados_intermedios_m43; assert_in_delta(0.0, (worksheet.resultados_intermedios_m43||0), 0.002); end
  def test_resultados_intermedios_r43; assert_equal("GDP. Millones CLP 2011", worksheet.resultados_intermedios_r43.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s43; assert_in_epsilon(138648398.80557212, worksheet.resultados_intermedios_s43, 0.002); end
  def test_resultados_intermedios_t43; assert_in_epsilon(156941071.94435257, worksheet.resultados_intermedios_t43, 0.002); end
  def test_resultados_intermedios_u43; assert_in_epsilon(185075953.52402893, worksheet.resultados_intermedios_u43, 0.002); end
  def test_resultados_intermedios_v43; assert_in_epsilon(217014325.1737365, worksheet.resultados_intermedios_v43, 0.002); end
  def test_resultados_intermedios_w43; assert_in_epsilon(250366651.2782681, worksheet.resultados_intermedios_w43, 0.002); end
  def test_resultados_intermedios_x43; assert_in_epsilon(284451648.6306586, worksheet.resultados_intermedios_x43, 0.002); end
  def test_resultados_intermedios_y43; assert_in_epsilon(319559337.3658547, worksheet.resultados_intermedios_y43, 0.002); end
  def test_resultados_intermedios_z43; assert_in_epsilon(354797473.50129086, worksheet.resultados_intermedios_z43, 0.002); end
  def test_resultados_intermedios_c44; assert_equal("R.07", worksheet.resultados_intermedios_c44.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d44; assert_equal("Almacenamiento", worksheet.resultados_intermedios_d44.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f44; assert_in_delta(0.0, (worksheet.resultados_intermedios_f44||0), 0.002); end
  def test_resultados_intermedios_g44; assert_in_delta(0.0, (worksheet.resultados_intermedios_g44||0), 0.002); end
  def test_resultados_intermedios_h44; assert_in_delta(0.0, (worksheet.resultados_intermedios_h44||0), 0.002); end
  def test_resultados_intermedios_i44; assert_in_delta(0.0, (worksheet.resultados_intermedios_i44||0), 0.002); end
  def test_resultados_intermedios_j44; assert_in_delta(0.0, (worksheet.resultados_intermedios_j44||0), 0.002); end
  def test_resultados_intermedios_k44; assert_in_delta(0.0, (worksheet.resultados_intermedios_k44||0), 0.002); end
  def test_resultados_intermedios_l44; assert_in_delta(0.0, (worksheet.resultados_intermedios_l44||0), 0.002); end
  def test_resultados_intermedios_m44; assert_in_delta(0.0, (worksheet.resultados_intermedios_m44||0), 0.002); end
  def test_resultados_intermedios_p44; assert_equal("'2015'!ano.balanceneto", worksheet.resultados_intermedios_p44.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_aa44; assert_in_delta(0.62405464883926, worksheet.resultados_intermedios_aa44, 0.002); end
  def test_resultados_intermedios_c45; assert_equal("W.01", worksheet.resultados_intermedios_c45.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d45; assert_equal("Residuos", worksheet.resultados_intermedios_d45.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f45; assert_in_delta(0.26623890102673253, worksheet.resultados_intermedios_f45, 0.002); end
  def test_resultados_intermedios_g45; assert_in_delta(0.35463923560444954, worksheet.resultados_intermedios_g45, 0.002); end
  def test_resultados_intermedios_h45; assert_in_delta(0.4166729130700315, worksheet.resultados_intermedios_h45, 0.002); end
  def test_resultados_intermedios_i45; assert_in_delta(0.41733218190020505, worksheet.resultados_intermedios_i45, 0.002); end
  def test_resultados_intermedios_j45; assert_in_delta(0.4179800763354362, worksheet.resultados_intermedios_j45, 0.002); end
  def test_resultados_intermedios_k45; assert_in_delta(0.41862659982364236, worksheet.resultados_intermedios_k45, 0.002); end
  def test_resultados_intermedios_l45; assert_in_delta(0.4192035421882092, worksheet.resultados_intermedios_l45, 0.002); end
  def test_resultados_intermedios_m45; assert_in_delta(0.4197616559644616, worksheet.resultados_intermedios_m45, 0.002); end
  def test_resultados_intermedios_t45; assert_in_delta(0.6852744520893214, worksheet.resultados_intermedios_t45, 0.002); end
  def test_resultados_intermedios_u45; assert_in_delta(0.6878163197383093, worksheet.resultados_intermedios_u45, 0.002); end
  def test_resultados_intermedios_v45; assert_in_delta(0.6737272530082633, worksheet.resultados_intermedios_v45, 0.002); end
  def test_resultados_intermedios_w45; assert_in_delta(0.6596547521650991, worksheet.resultados_intermedios_w45, 0.002); end
  def test_resultados_intermedios_x45; assert_in_delta(0.6524168451389281, worksheet.resultados_intermedios_x45, 0.002); end
  def test_resultados_intermedios_y45; assert_in_delta(0.6447315747985009, worksheet.resultados_intermedios_y45, 0.002); end
  def test_resultados_intermedios_z45; assert_in_delta(0.6360156419029073, worksheet.resultados_intermedios_z45, 0.002); end
  def test_resultados_intermedios_c46; assert_equal("A.01", worksheet.resultados_intermedios_c46.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d46; assert_equal("Agropecuario", worksheet.resultados_intermedios_d46.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f46; assert_in_delta(0.0, (worksheet.resultados_intermedios_f46||0), 0.002); end
  def test_resultados_intermedios_g46; assert_in_delta(0.0, (worksheet.resultados_intermedios_g46||0), 0.002); end
  def test_resultados_intermedios_h46; assert_in_delta(0.0, (worksheet.resultados_intermedios_h46||0), 0.002); end
  def test_resultados_intermedios_i46; assert_in_delta(0.0, (worksheet.resultados_intermedios_i46||0), 0.002); end
  def test_resultados_intermedios_j46; assert_in_delta(0.0, (worksheet.resultados_intermedios_j46||0), 0.002); end
  def test_resultados_intermedios_k46; assert_in_delta(0.0, (worksheet.resultados_intermedios_k46||0), 0.002); end
  def test_resultados_intermedios_l46; assert_in_delta(0.0, (worksheet.resultados_intermedios_l46||0), 0.002); end
  def test_resultados_intermedios_m46; assert_in_delta(0.0, (worksheet.resultados_intermedios_m46||0), 0.002); end
  def test_resultados_intermedios_r46; assert_equal("Crecimiento PIB", worksheet.resultados_intermedios_r46.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s46; assert_in_delta(1.0, worksheet.resultados_intermedios_s46, 0.002); end
  def test_resultados_intermedios_t46; assert_in_epsilon(1.1319356970319752, worksheet.resultados_intermedios_t46, 0.002); end
  def test_resultados_intermedios_u46; assert_in_epsilon(1.3348582105413462, worksheet.resultados_intermedios_u46, 0.002); end
  def test_resultados_intermedios_v46; assert_in_epsilon(1.5652133529364276, worksheet.resultados_intermedios_v46, 0.002); end
  def test_resultados_intermedios_w46; assert_in_epsilon(1.8057666257607452, worksheet.resultados_intermedios_w46, 0.002); end
  def test_resultados_intermedios_x46; assert_in_epsilon(2.051604281630022, worksheet.resultados_intermedios_x46, 0.002); end
  def test_resultados_intermedios_y46; assert_in_epsilon(2.3048180874701307, worksheet.resultados_intermedios_y46, 0.002); end
  def test_resultados_intermedios_z46; assert_in_epsilon(2.5589727437013283, worksheet.resultados_intermedios_z46, 0.002); end
  def test_resultados_intermedios_aa46; assert_in_delta(0.0, (worksheet.resultados_intermedios_aa46||0), 0.002); end
  def test_resultados_intermedios_c47; assert_equal("Y.01", worksheet.resultados_intermedios_c47.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d47; assert_equal("Biomasa sobreoferta  (importada)", worksheet.resultados_intermedios_d47.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f47; assert_in_delta(0.0, (worksheet.resultados_intermedios_f47||0), 0.002); end
  def test_resultados_intermedios_g47; assert_in_delta(0.0, (worksheet.resultados_intermedios_g47||0), 0.002); end
  def test_resultados_intermedios_h47; assert_in_delta(0.0, (worksheet.resultados_intermedios_h47||0), 0.002); end
  def test_resultados_intermedios_i47; assert_in_delta(0.0, (worksheet.resultados_intermedios_i47||0), 0.002); end
  def test_resultados_intermedios_j47; assert_in_delta(0.0, (worksheet.resultados_intermedios_j47||0), 0.002); end
  def test_resultados_intermedios_k47; assert_in_delta(0.0, (worksheet.resultados_intermedios_k47||0), 0.002); end
  def test_resultados_intermedios_l47; assert_in_delta(0.0, (worksheet.resultados_intermedios_l47||0), 0.002); end
  def test_resultados_intermedios_m47; assert_in_delta(0.0, (worksheet.resultados_intermedios_m47||0), 0.002); end
  def test_resultados_intermedios_s47; assert_equal("Reducción emisiones", worksheet.resultados_intermedios_s47.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_t47; assert_in_delta(0.0, (worksheet.resultados_intermedios_t47||0), 0.002); end
  def test_resultados_intermedios_u47; assert_in_delta(0.0, (worksheet.resultados_intermedios_u47||0), 0.002); end
  def test_resultados_intermedios_v47; assert_in_delta(0.0, (worksheet.resultados_intermedios_v47||0), 0.002); end
  def test_resultados_intermedios_w47; assert_in_delta(0.0, (worksheet.resultados_intermedios_w47||0), 0.002); end
  def test_resultados_intermedios_x47; assert_in_delta(0.0, (worksheet.resultados_intermedios_x47||0), 0.002); end
  def test_resultados_intermedios_y47; assert_in_delta(0.0, (worksheet.resultados_intermedios_y47||0), 0.002); end
  def test_resultados_intermedios_z47; assert_in_delta(0.0, (worksheet.resultados_intermedios_z47||0), 0.002); end
  def test_resultados_intermedios_c48; assert_equal("Y.04", worksheet.resultados_intermedios_c48.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d48; assert_equal("Carbón sobreoferta  (importada)", worksheet.resultados_intermedios_d48.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f48; assert_in_delta(0.0, (worksheet.resultados_intermedios_f48||0), 0.002); end
  def test_resultados_intermedios_g48; assert_in_delta(0.0, (worksheet.resultados_intermedios_g48||0), 0.002); end
  def test_resultados_intermedios_h48; assert_in_delta(0.0, (worksheet.resultados_intermedios_h48||0), 0.002); end
  def test_resultados_intermedios_i48; assert_in_delta(0.0, (worksheet.resultados_intermedios_i48||0), 0.002); end
  def test_resultados_intermedios_j48; assert_in_delta(0.0, (worksheet.resultados_intermedios_j48||0), 0.002); end
  def test_resultados_intermedios_k48; assert_in_delta(0.0, (worksheet.resultados_intermedios_k48||0), 0.002); end
  def test_resultados_intermedios_l48; assert_in_delta(0.0, (worksheet.resultados_intermedios_l48||0), 0.002); end
  def test_resultados_intermedios_m48; assert_in_delta(0.0, (worksheet.resultados_intermedios_m48||0), 0.002); end
  def test_resultados_intermedios_c49; assert_equal("Q.01", worksheet.resultados_intermedios_c49.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d49; assert_equal("Reservas de Carbón", worksheet.resultados_intermedios_d49.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f49; assert_in_delta(0.0, (worksheet.resultados_intermedios_f49||0), 0.002); end
  def test_resultados_intermedios_g49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_g49, 0.002); end
  def test_resultados_intermedios_h49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_h49, 0.002); end
  def test_resultados_intermedios_i49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_i49, 0.002); end
  def test_resultados_intermedios_j49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_j49, 0.002); end
  def test_resultados_intermedios_k49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_k49, 0.002); end
  def test_resultados_intermedios_l49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_l49, 0.002); end
  def test_resultados_intermedios_m49; assert_in_epsilon(25.5846950049427, worksheet.resultados_intermedios_m49, 0.002); end
  def test_resultados_intermedios_c50; assert_equal("Q.02", worksheet.resultados_intermedios_c50.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d50; assert_equal("Reservas de Petroleo", worksheet.resultados_intermedios_d50.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f50; assert_in_delta(0.0, (worksheet.resultados_intermedios_f50||0), 0.002); end
  def test_resultados_intermedios_g50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_g50, 0.002); end
  def test_resultados_intermedios_h50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_h50, 0.002); end
  def test_resultados_intermedios_i50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_i50, 0.002); end
  def test_resultados_intermedios_j50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_j50, 0.002); end
  def test_resultados_intermedios_k50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_k50, 0.002); end
  def test_resultados_intermedios_l50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_l50, 0.002); end
  def test_resultados_intermedios_m50; assert_in_epsilon(3.0761179275455, worksheet.resultados_intermedios_m50, 0.002); end
  def test_resultados_intermedios_c51; assert_equal("Y.05", worksheet.resultados_intermedios_c51.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d51; assert_equal("Carbón sobreoferta  (importada)", worksheet.resultados_intermedios_d51.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f51; assert_in_delta(0.0, (worksheet.resultados_intermedios_f51||0), 0.002); end
  def test_resultados_intermedios_g51; assert_in_delta(0.0, (worksheet.resultados_intermedios_g51||0), 0.002); end
  def test_resultados_intermedios_h51; assert_in_delta(0.0, (worksheet.resultados_intermedios_h51||0), 0.002); end
  def test_resultados_intermedios_i51; assert_in_delta(0.0, (worksheet.resultados_intermedios_i51||0), 0.002); end
  def test_resultados_intermedios_j51; assert_in_delta(0.0, (worksheet.resultados_intermedios_j51||0), 0.002); end
  def test_resultados_intermedios_k51; assert_in_delta(0.0, (worksheet.resultados_intermedios_k51||0), 0.002); end
  def test_resultados_intermedios_l51; assert_in_delta(0.0, (worksheet.resultados_intermedios_l51||0), 0.002); end
  def test_resultados_intermedios_m51; assert_in_delta(0.0, (worksheet.resultados_intermedios_m51||0), 0.002); end
  def test_resultados_intermedios_c52; assert_equal("Y.03", worksheet.resultados_intermedios_c52.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d52; assert_equal("Dervidados del Petroleo sobreoferta ", worksheet.resultados_intermedios_d52.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f52; assert_in_delta(0.0, (worksheet.resultados_intermedios_f52||0), 0.002); end
  def test_resultados_intermedios_g52; assert_in_delta(0.0, (worksheet.resultados_intermedios_g52||0), 0.002); end
  def test_resultados_intermedios_h52; assert_in_delta(0.0, (worksheet.resultados_intermedios_h52||0), 0.002); end
  def test_resultados_intermedios_i52; assert_in_delta(0.0, (worksheet.resultados_intermedios_i52||0), 0.002); end
  def test_resultados_intermedios_j52; assert_in_delta(0.0, (worksheet.resultados_intermedios_j52||0), 0.002); end
  def test_resultados_intermedios_k52; assert_in_delta(0.0, (worksheet.resultados_intermedios_k52||0), 0.002); end
  def test_resultados_intermedios_l52; assert_in_delta(0.0, (worksheet.resultados_intermedios_l52||0), 0.002); end
  def test_resultados_intermedios_m52; assert_in_delta(0.0, (worksheet.resultados_intermedios_m52||0), 0.002); end
  def test_resultados_intermedios_c53; assert_equal("Y.06", worksheet.resultados_intermedios_c53.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d53; assert_in_delta(0.0, (worksheet.resultados_intermedios_d53||0), 0.002); end
  def test_resultados_intermedios_f53; assert_in_delta(0.0, (worksheet.resultados_intermedios_f53||0), 0.002); end
  def test_resultados_intermedios_g53; assert_in_delta(0.0, (worksheet.resultados_intermedios_g53||0), 0.002); end
  def test_resultados_intermedios_h53; assert_in_delta(0.0, (worksheet.resultados_intermedios_h53||0), 0.002); end
  def test_resultados_intermedios_i53; assert_in_delta(0.0, (worksheet.resultados_intermedios_i53||0), 0.002); end
  def test_resultados_intermedios_j53; assert_in_delta(0.0, (worksheet.resultados_intermedios_j53||0), 0.002); end
  def test_resultados_intermedios_k53; assert_in_delta(0.0, (worksheet.resultados_intermedios_k53||0), 0.002); end
  def test_resultados_intermedios_l53; assert_in_delta(0.0, (worksheet.resultados_intermedios_l53||0), 0.002); end
  def test_resultados_intermedios_m53; assert_in_delta(0.0, (worksheet.resultados_intermedios_m53||0), 0.002); end
  def test_resultados_intermedios_c54; assert_equal("Q.03", worksheet.resultados_intermedios_c54.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d54; assert_equal("Reservas de Gas", worksheet.resultados_intermedios_d54.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f54; assert_in_delta(0.0, (worksheet.resultados_intermedios_f54||0), 0.002); end
  def test_resultados_intermedios_g54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_g54, 0.002); end
  def test_resultados_intermedios_h54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_h54, 0.002); end
  def test_resultados_intermedios_i54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_i54, 0.002); end
  def test_resultados_intermedios_j54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_j54, 0.002); end
  def test_resultados_intermedios_k54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_k54, 0.002); end
  def test_resultados_intermedios_l54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_l54, 0.002); end
  def test_resultados_intermedios_m54; assert_in_epsilon(10.934465313717508, worksheet.resultados_intermedios_m54, 0.002); end
  def test_resultados_intermedios_c56; assert_equal("V.03", worksheet.resultados_intermedios_c56.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d56; assert_equal("Hidrocarburo Sólido", worksheet.resultados_intermedios_d56.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f56; assert_in_epsilon(90.6741819972922, worksheet.resultados_intermedios_f56, 0.002); end
  def test_resultados_intermedios_g56; assert_in_epsilon(101.4592932255809, worksheet.resultados_intermedios_g56, 0.002); end
  def test_resultados_intermedios_h56; assert_in_epsilon(119.46423832489575, worksheet.resultados_intermedios_h56, 0.002); end
  def test_resultados_intermedios_i56; assert_in_epsilon(137.2718577993193, worksheet.resultados_intermedios_i56, 0.002); end
  def test_resultados_intermedios_j56; assert_in_epsilon(159.42441337764467, worksheet.resultados_intermedios_j56, 0.002); end
  def test_resultados_intermedios_k56; assert_in_epsilon(183.48940437287516, worksheet.resultados_intermedios_k56, 0.002); end
  def test_resultados_intermedios_l56; assert_in_epsilon(207.95509258643116, worksheet.resultados_intermedios_l56, 0.002); end
  def test_resultados_intermedios_m56; assert_in_epsilon(230.29484921441994, worksheet.resultados_intermedios_m56, 0.002); end
  def test_resultados_intermedios_r56; assert_equal("Crecimiento Emisiones", worksheet.resultados_intermedios_r56.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s56; assert_in_delta(1.0, worksheet.resultados_intermedios_s56, 0.002); end
  def test_resultados_intermedios_t56; assert_in_epsilon(1.136134351629776, worksheet.resultados_intermedios_t56, 0.002); end
  def test_resultados_intermedios_u56; assert_in_epsilon(1.3123652174710358, worksheet.resultados_intermedios_u56, 0.002); end
  def test_resultados_intermedios_v56; assert_in_epsilon(1.5066962196953502, worksheet.resultados_intermedios_v56, 0.002); end
  def test_resultados_intermedios_w56; assert_in_epsilon(1.7191835496625707, worksheet.resultados_intermedios_w56, 0.002); end
  def test_resultados_intermedios_x56; assert_in_epsilon(1.9302252627772865, worksheet.resultados_intermedios_x56, 0.002); end
  def test_resultados_intermedios_y56; assert_in_epsilon(2.1391434496096973, worksheet.resultados_intermedios_y56, 0.002); end
  def test_resultados_intermedios_z56; assert_in_epsilon(2.330363888644748, worksheet.resultados_intermedios_z56, 0.002); end
  def test_resultados_intermedios_c57; assert_equal("V.04", worksheet.resultados_intermedios_c57.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d57; assert_equal("Hidrocarburo Líquido", worksheet.resultados_intermedios_d57.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f57; assert_in_epsilon(155.1892287860105, worksheet.resultados_intermedios_f57, 0.002); end
  def test_resultados_intermedios_g57; assert_in_epsilon(171.46290983518537, worksheet.resultados_intermedios_g57, 0.002); end
  def test_resultados_intermedios_h57; assert_in_epsilon(199.7089576630182, worksheet.resultados_intermedios_h57, 0.002); end
  def test_resultados_intermedios_i57; assert_in_epsilon(232.82179625634126, worksheet.resultados_intermedios_i57, 0.002); end
  def test_resultados_intermedios_j57; assert_in_epsilon(264.762312761839, worksheet.resultados_intermedios_j57, 0.002); end
  def test_resultados_intermedios_k57; assert_in_epsilon(291.4785565871108, worksheet.resultados_intermedios_k57, 0.002); end
  def test_resultados_intermedios_l57; assert_in_epsilon(314.76614030973906, worksheet.resultados_intermedios_l57, 0.002); end
  def test_resultados_intermedios_m57; assert_in_epsilon(335.37561387009015, worksheet.resultados_intermedios_m57, 0.002); end
  def test_resultados_intermedios_r57; assert_equal("Emisiones", worksheet.resultados_intermedios_r57.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c58; assert_equal("V.05", worksheet.resultados_intermedios_c58.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d58; assert_equal("Hidrocarburo Gaseoso", worksheet.resultados_intermedios_d58.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f58; assert_in_epsilon(71.71414354736139, worksheet.resultados_intermedios_f58, 0.002); end
  def test_resultados_intermedios_g58; assert_in_epsilon(82.72146711426092, worksheet.resultados_intermedios_g58, 0.002); end
  def test_resultados_intermedios_h58; assert_in_epsilon(97.54825858566404, worksheet.resultados_intermedios_h58, 0.002); end
  def test_resultados_intermedios_i58; assert_in_epsilon(112.93808741081389, worksheet.resultados_intermedios_i58, 0.002); end
  def test_resultados_intermedios_j58; assert_in_epsilon(131.12397915064165, worksheet.resultados_intermedios_j58, 0.002); end
  def test_resultados_intermedios_k58; assert_in_epsilon(151.83587101940554, worksheet.resultados_intermedios_k58, 0.002); end
  def test_resultados_intermedios_l58; assert_in_epsilon(174.67904222238852, worksheet.resultados_intermedios_l58, 0.002); end
  def test_resultados_intermedios_m58; assert_in_epsilon(196.29094670538313, worksheet.resultados_intermedios_m58, 0.002); end
  def test_resultados_intermedios_r58; assert_equal("Energía", worksheet.resultados_intermedios_r58.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s58; assert_in_epsilon(79.08598958911165, worksheet.resultados_intermedios_s58, 0.002); end
  def test_resultados_intermedios_t58; assert_in_epsilon(91.36074880883055, worksheet.resultados_intermedios_t58, 0.002); end
  def test_resultados_intermedios_u58; assert_in_epsilon(107.44181037107711, worksheet.resultados_intermedios_u58, 0.002); end
  def test_resultados_intermedios_v58; assert_in_epsilon(125.0801788092269, worksheet.resultados_intermedios_v58, 0.002); end
  def test_resultados_intermedios_w58; assert_in_epsilon(144.4128378320546, worksheet.resultados_intermedios_w58, 0.002); end
  def test_resultados_intermedios_x58; assert_in_epsilon(163.5918147357916, worksheet.resultados_intermedios_x58, 0.002); end
  def test_resultados_intermedios_y58; assert_in_epsilon(182.57704893487744, worksheet.resultados_intermedios_y58, 0.002); end
  def test_resultados_intermedios_z58; assert_in_epsilon(199.8845108148071, worksheet.resultados_intermedios_z58, 0.002); end
  def test_resultados_intermedios_c59; assert_equal("C.01", worksheet.resultados_intermedios_c59.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d59; assert_equal("Carbón y  residuos fósiles", worksheet.resultados_intermedios_d59.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f59; assert_in_delta(0.0, (worksheet.resultados_intermedios_f59||0), 0.002); end
  def test_resultados_intermedios_g59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_g59, 0.002); end
  def test_resultados_intermedios_h59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_h59, 0.002); end
  def test_resultados_intermedios_i59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_i59, 0.002); end
  def test_resultados_intermedios_j59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_j59, 0.002); end
  def test_resultados_intermedios_k59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_k59, 0.002); end
  def test_resultados_intermedios_l59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_l59, 0.002); end
  def test_resultados_intermedios_m59; assert_in_epsilon(-25.5846950049427, worksheet.resultados_intermedios_m59, 0.002); end
  def test_resultados_intermedios_r59; assert_equal("Otros", worksheet.resultados_intermedios_r59.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s59; assert_in_epsilon(15.9262159354385, worksheet.resultados_intermedios_s59, 0.002); end
  def test_resultados_intermedios_t59; assert_in_epsilon(16.58588171171925, worksheet.resultados_intermedios_t59, 0.002); end
  def test_resultados_intermedios_u59; assert_in_epsilon(17.248903394551906, worksheet.resultados_intermedios_u59, 0.002); end
  def test_resultados_intermedios_v59; assert_in_epsilon(18.074352079530488, worksheet.resultados_intermedios_v59, 0.002); end
  def test_resultados_intermedios_w59; assert_in_epsilon(18.930582922911245, worksheet.resultados_intermedios_w59, 0.002); end
  def test_resultados_intermedios_x59; assert_in_epsilon(19.803144639882785, worksheet.resultados_intermedios_x59, 0.002); end
  def test_resultados_intermedios_y59; assert_in_epsilon(20.667688145934335, worksheet.resultados_intermedios_y59, 0.002); end
  def test_resultados_intermedios_z59; assert_in_epsilon(21.528501920097593, worksheet.resultados_intermedios_z59, 0.002); end
  def test_resultados_intermedios_c60; assert_equal("C.02", worksheet.resultados_intermedios_c60.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d60; assert_equal("Derivados del petróleo", worksheet.resultados_intermedios_d60.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f60; assert_in_delta(0.0, (worksheet.resultados_intermedios_f60||0), 0.002); end
  def test_resultados_intermedios_g60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_g60, 0.002); end
  def test_resultados_intermedios_h60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_h60, 0.002); end
  def test_resultados_intermedios_i60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_i60, 0.002); end
  def test_resultados_intermedios_j60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_j60, 0.002); end
  def test_resultados_intermedios_k60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_k60, 0.002); end
  def test_resultados_intermedios_l60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_l60, 0.002); end
  def test_resultados_intermedios_m60; assert_in_epsilon(-3.0761179275455, worksheet.resultados_intermedios_m60, 0.002); end
  def test_resultados_intermedios_c61; assert_equal("C.03", worksheet.resultados_intermedios_c61.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d61; assert_equal("Gas Natural", worksheet.resultados_intermedios_d61.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f61; assert_in_delta(0.0, (worksheet.resultados_intermedios_f61||0), 0.002); end
  def test_resultados_intermedios_g61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_g61, 0.002); end
  def test_resultados_intermedios_h61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_h61, 0.002); end
  def test_resultados_intermedios_i61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_i61, 0.002); end
  def test_resultados_intermedios_j61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_j61, 0.002); end
  def test_resultados_intermedios_k61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_k61, 0.002); end
  def test_resultados_intermedios_l61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_l61, 0.002); end
  def test_resultados_intermedios_m61; assert_in_epsilon(-10.934465313717508, worksheet.resultados_intermedios_m61, 0.002); end
  def test_resultados_intermedios_c62; assert_equal("V.06", worksheet.resultados_intermedios_c62.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d62; assert_equal("Blast furnace gas", worksheet.resultados_intermedios_d62.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f62; assert_in_delta(0.0, (worksheet.resultados_intermedios_f62||0), 0.002); end
  def test_resultados_intermedios_g62; assert_in_delta(0.0, (worksheet.resultados_intermedios_g62||0), 0.002); end
  def test_resultados_intermedios_h62; assert_in_delta(0.0, (worksheet.resultados_intermedios_h62||0), 0.002); end
  def test_resultados_intermedios_i62; assert_in_delta(0.0, (worksheet.resultados_intermedios_i62||0), 0.002); end
  def test_resultados_intermedios_j62; assert_in_delta(0.0, (worksheet.resultados_intermedios_j62||0), 0.002); end
  def test_resultados_intermedios_k62; assert_in_delta(0.0, (worksheet.resultados_intermedios_k62||0), 0.002); end
  def test_resultados_intermedios_l62; assert_in_delta(0.0, (worksheet.resultados_intermedios_l62||0), 0.002); end
  def test_resultados_intermedios_m62; assert_in_delta(0.0, (worksheet.resultados_intermedios_m62||0), 0.002); end
  def test_resultados_intermedios_c63; assert_equal("V.07", worksheet.resultados_intermedios_c63.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d63; assert_equal("Heat transport", worksheet.resultados_intermedios_d63.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f63; assert_in_delta(0.0, (worksheet.resultados_intermedios_f63||0), 0.002); end
  def test_resultados_intermedios_g63; assert_in_delta(0.0, (worksheet.resultados_intermedios_g63||0), 0.002); end
  def test_resultados_intermedios_h63; assert_in_delta(0.0, (worksheet.resultados_intermedios_h63||0), 0.002); end
  def test_resultados_intermedios_i63; assert_in_delta(0.0, (worksheet.resultados_intermedios_i63||0), 0.002); end
  def test_resultados_intermedios_j63; assert_in_delta(0.0, (worksheet.resultados_intermedios_j63||0), 0.002); end
  def test_resultados_intermedios_k63; assert_in_delta(0.0, (worksheet.resultados_intermedios_k63||0), 0.002); end
  def test_resultados_intermedios_l63; assert_in_delta(0.0, (worksheet.resultados_intermedios_l63||0), 0.002); end
  def test_resultados_intermedios_m63; assert_in_delta(0.0, (worksheet.resultados_intermedios_m63||0), 0.002); end
  def test_resultados_intermedios_c64; assert_equal("V.08", worksheet.resultados_intermedios_c64.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d64; assert_equal("Biomasa comestible", worksheet.resultados_intermedios_d64.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f64; assert_in_delta(0.0, (worksheet.resultados_intermedios_f64||0), 0.002); end
  def test_resultados_intermedios_g64; assert_in_delta(0.0, (worksheet.resultados_intermedios_g64||0), 0.002); end
  def test_resultados_intermedios_h64; assert_in_delta(0.0, (worksheet.resultados_intermedios_h64||0), 0.002); end
  def test_resultados_intermedios_i64; assert_in_delta(0.0, (worksheet.resultados_intermedios_i64||0), 0.002); end
  def test_resultados_intermedios_j64; assert_in_delta(0.0, (worksheet.resultados_intermedios_j64||0), 0.002); end
  def test_resultados_intermedios_k64; assert_in_delta(0.0, (worksheet.resultados_intermedios_k64||0), 0.002); end
  def test_resultados_intermedios_l64; assert_in_delta(0.0, (worksheet.resultados_intermedios_l64||0), 0.002); end
  def test_resultados_intermedios_m64; assert_in_delta(0.0, (worksheet.resultados_intermedios_m64||0), 0.002); end
  def test_resultados_intermedios_c65; assert_equal("V.13", worksheet.resultados_intermedios_c65.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d65; assert_equal("Cultivos para Energía (segunda generación)", worksheet.resultados_intermedios_d65.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f65; assert_in_delta(0.0, (worksheet.resultados_intermedios_f65||0), 0.002); end
  def test_resultados_intermedios_g65; assert_in_delta(0.0, (worksheet.resultados_intermedios_g65||0), 0.002); end
  def test_resultados_intermedios_h65; assert_in_delta(0.0, (worksheet.resultados_intermedios_h65||0), 0.002); end
  def test_resultados_intermedios_i65; assert_in_delta(0.0, (worksheet.resultados_intermedios_i65||0), 0.002); end
  def test_resultados_intermedios_j65; assert_in_delta(0.0, (worksheet.resultados_intermedios_j65||0), 0.002); end
  def test_resultados_intermedios_k65; assert_in_delta(0.0, (worksheet.resultados_intermedios_k65||0), 0.002); end
  def test_resultados_intermedios_l65; assert_in_delta(0.0, (worksheet.resultados_intermedios_l65||0), 0.002); end
  def test_resultados_intermedios_m65; assert_in_delta(0.0, (worksheet.resultados_intermedios_m65||0), 0.002); end
  def test_resultados_intermedios_c66; assert_equal("V.14", worksheet.resultados_intermedios_c66.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d66; assert_equal("Cultivos para Energía (primera generación)", worksheet.resultados_intermedios_d66.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f66; assert_in_delta(0.0, (worksheet.resultados_intermedios_f66||0), 0.002); end
  def test_resultados_intermedios_g66; assert_in_delta(0.0, (worksheet.resultados_intermedios_g66||0), 0.002); end
  def test_resultados_intermedios_h66; assert_in_delta(0.0, (worksheet.resultados_intermedios_h66||0), 0.002); end
  def test_resultados_intermedios_i66; assert_in_delta(0.0, (worksheet.resultados_intermedios_i66||0), 0.002); end
  def test_resultados_intermedios_j66; assert_in_delta(0.0, (worksheet.resultados_intermedios_j66||0), 0.002); end
  def test_resultados_intermedios_k66; assert_in_delta(0.0, (worksheet.resultados_intermedios_k66||0), 0.002); end
  def test_resultados_intermedios_l66; assert_in_delta(0.0, (worksheet.resultados_intermedios_l66||0), 0.002); end
  def test_resultados_intermedios_m66; assert_in_delta(0.0, (worksheet.resultados_intermedios_m66||0), 0.002); end
  def test_resultados_intermedios_c67; assert_equal("V.09", worksheet.resultados_intermedios_c67.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d67; assert_equal("Biomasa", worksheet.resultados_intermedios_d67.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f67; assert_in_epsilon(15.042851866876788, worksheet.resultados_intermedios_f67, 0.002); end
  def test_resultados_intermedios_g67; assert_in_epsilon(13.473032185258074, worksheet.resultados_intermedios_g67, 0.002); end
  def test_resultados_intermedios_h67; assert_in_epsilon(12.337851148176384, worksheet.resultados_intermedios_h67, 0.002); end
  def test_resultados_intermedios_i67; assert_in_epsilon(11.855724128264164, worksheet.resultados_intermedios_i67, 0.002); end
  def test_resultados_intermedios_j67; assert_in_epsilon(11.889735478123473, worksheet.resultados_intermedios_j67, 0.002); end
  def test_resultados_intermedios_k67; assert_in_epsilon(12.056385936741588, worksheet.resultados_intermedios_k67, 0.002); end
  def test_resultados_intermedios_l67; assert_in_epsilon(12.20784827110258, worksheet.resultados_intermedios_l67, 0.002); end
  def test_resultados_intermedios_m67; assert_in_epsilon(13.07292347760443, worksheet.resultados_intermedios_m67, 0.002); end
  def test_resultados_intermedios_c68; assert_equal("V.10", worksheet.resultados_intermedios_c68.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d68; assert_equal("Biomasa seca y residuos", worksheet.resultados_intermedios_d68.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f68; assert_in_delta(0.0, (worksheet.resultados_intermedios_f68||0), 0.002); end
  def test_resultados_intermedios_g68; assert_in_delta(0.0, (worksheet.resultados_intermedios_g68||0), 0.002); end
  def test_resultados_intermedios_h68; assert_in_delta(0.0, (worksheet.resultados_intermedios_h68||0), 0.002); end
  def test_resultados_intermedios_i68; assert_in_delta(0.0, (worksheet.resultados_intermedios_i68||0), 0.002); end
  def test_resultados_intermedios_j68; assert_in_delta(0.0, (worksheet.resultados_intermedios_j68||0), 0.002); end
  def test_resultados_intermedios_k68; assert_in_delta(0.0, (worksheet.resultados_intermedios_k68||0), 0.002); end
  def test_resultados_intermedios_l68; assert_in_delta(0.0, (worksheet.resultados_intermedios_l68||0), 0.002); end
  def test_resultados_intermedios_m68; assert_in_delta(0.0, (worksheet.resultados_intermedios_m68||0), 0.002); end
  def test_resultados_intermedios_c69; assert_equal("V.15", worksheet.resultados_intermedios_c69.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d69; assert_equal("Residuos gaseosos", worksheet.resultados_intermedios_d69.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f69; assert_in_delta(0.0, (worksheet.resultados_intermedios_f69||0), 0.002); end
  def test_resultados_intermedios_g69; assert_in_delta(0.0, (worksheet.resultados_intermedios_g69||0), 0.002); end
  def test_resultados_intermedios_h69; assert_in_delta(0.0, (worksheet.resultados_intermedios_h69||0), 0.002); end
  def test_resultados_intermedios_i69; assert_in_delta(0.0, (worksheet.resultados_intermedios_i69||0), 0.002); end
  def test_resultados_intermedios_j69; assert_in_delta(0.0, (worksheet.resultados_intermedios_j69||0), 0.002); end
  def test_resultados_intermedios_k69; assert_in_delta(0.0, (worksheet.resultados_intermedios_k69||0), 0.002); end
  def test_resultados_intermedios_l69; assert_in_delta(0.0, (worksheet.resultados_intermedios_l69||0), 0.002); end
  def test_resultados_intermedios_m69; assert_in_delta(0.0, (worksheet.resultados_intermedios_m69||0), 0.002); end
  def test_resultados_intermedios_c70; assert_equal("V.11", worksheet.resultados_intermedios_c70.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d70; assert_equal("Solar para uso térmico domestico", worksheet.resultados_intermedios_d70.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f70; assert_in_delta(0.0, (worksheet.resultados_intermedios_f70||0), 0.002); end
  def test_resultados_intermedios_g70; assert_in_delta(0.0, (worksheet.resultados_intermedios_g70||0), 0.002); end
  def test_resultados_intermedios_h70; assert_in_delta(0.0, (worksheet.resultados_intermedios_h70||0), 0.002); end
  def test_resultados_intermedios_i70; assert_in_delta(0.0, (worksheet.resultados_intermedios_i70||0), 0.002); end
  def test_resultados_intermedios_j70; assert_in_delta(0.0, (worksheet.resultados_intermedios_j70||0), 0.002); end
  def test_resultados_intermedios_k70; assert_in_delta(0.0, (worksheet.resultados_intermedios_k70||0), 0.002); end
  def test_resultados_intermedios_l70; assert_in_delta(0.0, (worksheet.resultados_intermedios_l70||0), 0.002); end
  def test_resultados_intermedios_m70; assert_in_delta(0.0, (worksheet.resultados_intermedios_m70||0), 0.002); end
  def test_resultados_intermedios_c71; assert_equal("V.12", worksheet.resultados_intermedios_c71.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d71; assert_equal("H2", worksheet.resultados_intermedios_d71.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f71; assert_in_delta(0.0, (worksheet.resultados_intermedios_f71||0), 0.002); end
  def test_resultados_intermedios_g71; assert_in_delta(0.0, (worksheet.resultados_intermedios_g71||0), 0.002); end
  def test_resultados_intermedios_h71; assert_in_delta(0.0, (worksheet.resultados_intermedios_h71||0), 0.002); end
  def test_resultados_intermedios_i71; assert_in_delta(0.0, (worksheet.resultados_intermedios_i71||0), 0.002); end
  def test_resultados_intermedios_j71; assert_in_delta(0.0, (worksheet.resultados_intermedios_j71||0), 0.002); end
  def test_resultados_intermedios_k71; assert_in_delta(0.0, (worksheet.resultados_intermedios_k71||0), 0.002); end
  def test_resultados_intermedios_l71; assert_in_delta(0.0, (worksheet.resultados_intermedios_l71||0), 0.002); end
  def test_resultados_intermedios_m71; assert_in_delta(0.0, (worksheet.resultados_intermedios_m71||0), 0.002); end
  def test_resultados_intermedios_r72; assert_equal("index", worksheet.resultados_intermedios_r72.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_s72; assert_in_delta(0.6852744520893214, worksheet.resultados_intermedios_s72, 0.002); end
  def test_resultados_intermedios_t72; assert_in_delta(0.6878163197383093, worksheet.resultados_intermedios_t72, 0.002); end
  def test_resultados_intermedios_u72; assert_in_delta(0.6737272530082633, worksheet.resultados_intermedios_u72, 0.002); end
  def test_resultados_intermedios_v72; assert_in_delta(0.6596547521650991, worksheet.resultados_intermedios_v72, 0.002); end
  def test_resultados_intermedios_w72; assert_in_delta(0.6524168451389281, worksheet.resultados_intermedios_w72, 0.002); end
  def test_resultados_intermedios_x72; assert_in_delta(0.6447315747985009, worksheet.resultados_intermedios_x72, 0.002); end
  def test_resultados_intermedios_y72; assert_in_delta(0.6360156419029073, worksheet.resultados_intermedios_y72, 0.002); end
  def test_resultados_intermedios_z72; assert_in_delta(0.62405464883926, worksheet.resultados_intermedios_z72, 0.002); end
  def test_resultados_intermedios_f73; assert_in_epsilon(359.29703906034297, worksheet.resultados_intermedios_f73, 0.002); end
  def test_resultados_intermedios_g73; assert_in_epsilon(402.6787059426214, worksheet.resultados_intermedios_g73, 0.002); end
  def test_resultados_intermedios_h73; assert_in_epsilon(466.1622979053426, worksheet.resultados_intermedios_h73, 0.002); end
  def test_resultados_intermedios_i73; assert_in_epsilon(534.455891254264, worksheet.resultados_intermedios_i73, 0.002); end
  def test_resultados_intermedios_j73; assert_in_epsilon(608.9358530969236, worksheet.resultados_intermedios_j73, 0.002); end
  def test_resultados_intermedios_k73; assert_in_epsilon(682.627147114416, worksheet.resultados_intermedios_k73, 0.002); end
  def test_resultados_intermedios_l73; assert_in_epsilon(755.2277754540186, worksheet.resultados_intermedios_l73, 0.002); end
  def test_resultados_intermedios_m73; assert_in_epsilon(822.4343470424858, worksheet.resultados_intermedios_m73, 0.002); end
  def test_resultados_intermedios_s74; assert_in_delta(0.3281623018732144, worksheet.resultados_intermedios_s74, 0.002); end
  def test_resultados_intermedios_c75; assert_equal("Perdidas por conversión, distribución y uso propio", worksheet.resultados_intermedios_c75.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c76; assert_equal("X.01", worksheet.resultados_intermedios_c76.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d76; assert_equal("Perdidas por conversión", worksheet.resultados_intermedios_d76.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f76; assert_in_epsilon(-56.88629539468827, worksheet.resultados_intermedios_f76, 0.002); end
  def test_resultados_intermedios_g76; assert_in_epsilon(-62.045579015031855, worksheet.resultados_intermedios_g76, 0.002); end
  def test_resultados_intermedios_h76; assert_in_epsilon(-74.3339935797182, worksheet.resultados_intermedios_h76, 0.002); end
  def test_resultados_intermedios_i76; assert_in_epsilon(-87.46257662437625, worksheet.resultados_intermedios_i76, 0.002); end
  def test_resultados_intermedios_j76; assert_in_epsilon(-103.68939742087011, worksheet.resultados_intermedios_j76, 0.002); end
  def test_resultados_intermedios_k76; assert_in_epsilon(-121.53740828468436, worksheet.resultados_intermedios_k76, 0.002); end
  def test_resultados_intermedios_l76; assert_in_epsilon(-140.01123155206523, worksheet.resultados_intermedios_l76, 0.002); end
  def test_resultados_intermedios_m76; assert_in_epsilon(-156.76394274971875, worksheet.resultados_intermedios_m76, 0.002); end
  def test_resultados_intermedios_c77; assert_equal("X.02", worksheet.resultados_intermedios_c77.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d77; assert_equal("Perdidas por distribución y uso propio", worksheet.resultados_intermedios_d77.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f77; assert_in_epsilon(-2.189076043208608, worksheet.resultados_intermedios_f77, 0.002); end
  def test_resultados_intermedios_g77; assert_in_epsilon(-2.281403860053931, worksheet.resultados_intermedios_g77, 0.002); end
  def test_resultados_intermedios_h77; assert_in_epsilon(-2.7314451135092335, worksheet.resultados_intermedios_h77, 0.002); end
  def test_resultados_intermedios_i77; assert_in_epsilon(-3.21225603817393, worksheet.resultados_intermedios_i77, 0.002); end
  def test_resultados_intermedios_j77; assert_in_epsilon(-3.8065343913664385, worksheet.resultados_intermedios_j77, 0.002); end
  def test_resultados_intermedios_k77; assert_in_epsilon(-4.460185937589314, worksheet.resultados_intermedios_k77, 0.002); end
  def test_resultados_intermedios_l77; assert_in_epsilon(-5.136756746264336, worksheet.resultados_intermedios_l77, 0.002); end
  def test_resultados_intermedios_m77; assert_in_epsilon(-5.7502948968922425, worksheet.resultados_intermedios_m77, 0.002); end
  def test_resultados_intermedios_d78; assert_equal("Perdidas", worksheet.resultados_intermedios_d78.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f78; assert_in_epsilon(-59.07537143789688, worksheet.resultados_intermedios_f78, 0.002); end
  def test_resultados_intermedios_g78; assert_in_epsilon(-64.32698287508579, worksheet.resultados_intermedios_g78, 0.002); end
  def test_resultados_intermedios_h78; assert_in_epsilon(-77.06543869322743, worksheet.resultados_intermedios_h78, 0.002); end
  def test_resultados_intermedios_i78; assert_in_epsilon(-90.67483266255019, worksheet.resultados_intermedios_i78, 0.002); end
  def test_resultados_intermedios_j78; assert_in_epsilon(-107.49593181223655, worksheet.resultados_intermedios_j78, 0.002); end
  def test_resultados_intermedios_k78; assert_in_epsilon(-125.99759422227368, worksheet.resultados_intermedios_k78, 0.002); end
  def test_resultados_intermedios_l78; assert_in_epsilon(-145.14798829832955, worksheet.resultados_intermedios_l78, 0.002); end
  def test_resultados_intermedios_m78; assert_in_epsilon(-162.51423764661098, worksheet.resultados_intermedios_m78, 0.002); end
  def test_resultados_intermedios_d80; assert_equal("Oferta Total", worksheet.resultados_intermedios_d80.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f80; assert_in_epsilon(359.29703906034297, worksheet.resultados_intermedios_f80, 0.002); end
  def test_resultados_intermedios_g80; assert_in_epsilon(402.6787059426214, worksheet.resultados_intermedios_g80, 0.002); end
  def test_resultados_intermedios_h80; assert_in_epsilon(466.1622979053426, worksheet.resultados_intermedios_h80, 0.002); end
  def test_resultados_intermedios_i80; assert_in_epsilon(534.455891254264, worksheet.resultados_intermedios_i80, 0.002); end
  def test_resultados_intermedios_j80; assert_in_epsilon(608.9358530969236, worksheet.resultados_intermedios_j80, 0.002); end
  def test_resultados_intermedios_k80; assert_in_epsilon(682.627147114416, worksheet.resultados_intermedios_k80, 0.002); end
  def test_resultados_intermedios_l80; assert_in_epsilon(755.2277754540186, worksheet.resultados_intermedios_l80, 0.002); end
  def test_resultados_intermedios_m80; assert_in_epsilon(822.4343470424858, worksheet.resultados_intermedios_m80, 0.002); end
  def test_resultados_intermedios_c82; assert_equal("V.01", worksheet.resultados_intermedios_c82.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d82; assert_equal("Electricidad (consumo final)", worksheet.resultados_intermedios_d82.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f82; assert_in_epsilon(67.57963331657376, worksheet.resultados_intermedios_f82, 0.002); end
  def test_resultados_intermedios_g82; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_g82, 0.002); end
  def test_resultados_intermedios_h82; assert_in_epsilon(91.52024444612704, worksheet.resultados_intermedios_h82, 0.002); end
  def test_resultados_intermedios_i82; assert_in_epsilon(103.6006457581674, worksheet.resultados_intermedios_i82, 0.002); end
  def test_resultados_intermedios_j82; assert_in_epsilon(117.65200581808284, worksheet.resultados_intermedios_j82, 0.002); end
  def test_resultados_intermedios_k82; assert_in_epsilon(132.75541227739603, worksheet.resultados_intermedios_k82, 0.002); end
  def test_resultados_intermedios_l82; assert_in_epsilon(148.13841553905652, worksheet.resultados_intermedios_l82, 0.002); end
  def test_resultados_intermedios_m82; assert_in_epsilon(162.18836791957614, worksheet.resultados_intermedios_m82, 0.002); end
  def test_resultados_intermedios_p82; assert_in_delta(0.0, (worksheet.resultados_intermedios_p82||0), 0.002); end
  def test_resultados_intermedios_c83; assert_equal("V.02", worksheet.resultados_intermedios_c83.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d83; assert_equal("Electricidad (suministrada a la red)", worksheet.resultados_intermedios_d83.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f83; assert_in_epsilon(-67.57963331657378, worksheet.resultados_intermedios_f83, 0.002); end
  def test_resultados_intermedios_g83; assert_in_epsilon(-78.97950956023004, worksheet.resultados_intermedios_g83, 0.002); end
  def test_resultados_intermedios_h83; assert_in_epsilon(-91.52024444612702, worksheet.resultados_intermedios_h83, 0.002); end
  def test_resultados_intermedios_i83; assert_in_epsilon(-103.6006457581674, worksheet.resultados_intermedios_i83, 0.002); end
  def test_resultados_intermedios_j83; assert_in_epsilon(-117.65200581808284, worksheet.resultados_intermedios_j83, 0.002); end
  def test_resultados_intermedios_k83; assert_in_epsilon(-132.75541227739603, worksheet.resultados_intermedios_k83, 0.002); end
  def test_resultados_intermedios_l83; assert_in_epsilon(-148.13841553905655, worksheet.resultados_intermedios_l83, 0.002); end
  def test_resultados_intermedios_m83; assert_in_epsilon(-162.18836791957614, worksheet.resultados_intermedios_m83, 0.002); end
  def test_resultados_intermedios_d85; assert_equal("Fuentes Primaria -  Demanda =", worksheet.resultados_intermedios_d85.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f85; assert_in_epsilon(59.07537143789688, worksheet.resultados_intermedios_f85, 0.002); end
  def test_resultados_intermedios_g85; assert_in_epsilon(64.32698287508583, worksheet.resultados_intermedios_g85, 0.002); end
  def test_resultados_intermedios_h85; assert_in_epsilon(77.0654386932274, worksheet.resultados_intermedios_h85, 0.002); end
  def test_resultados_intermedios_i85; assert_in_epsilon(90.6748326625501, worksheet.resultados_intermedios_i85, 0.002); end
  def test_resultados_intermedios_j85; assert_in_epsilon(107.49593181223668, worksheet.resultados_intermedios_j85, 0.002); end
  def test_resultados_intermedios_k85; assert_in_epsilon(125.99759422227362, worksheet.resultados_intermedios_k85, 0.002); end
  def test_resultados_intermedios_l85; assert_in_epsilon(145.14798829832955, worksheet.resultados_intermedios_l85, 0.002); end
  def test_resultados_intermedios_m85; assert_in_epsilon(162.51423764661092, worksheet.resultados_intermedios_m85, 0.002); end
  def test_resultados_intermedios_c86; assert_equal("Supply / demand not accounted for", worksheet.resultados_intermedios_c86.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c88; assert_equal("C.01", worksheet.resultados_intermedios_c88.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d88; assert_equal("Coal and fossil waste", worksheet.resultados_intermedios_d88.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f88; assert_in_delta(0.0, (worksheet.resultados_intermedios_f88||0), 0.002); end
  def test_resultados_intermedios_g88; assert_in_delta(0.0, (worksheet.resultados_intermedios_g88||0), 0.002); end
  def test_resultados_intermedios_h88; assert_in_delta(0.0, (worksheet.resultados_intermedios_h88||0), 0.002); end
  def test_resultados_intermedios_i88; assert_in_delta(0.0, (worksheet.resultados_intermedios_i88||0), 0.002); end
  def test_resultados_intermedios_j88; assert_in_delta(0.0, (worksheet.resultados_intermedios_j88||0), 0.002); end
  def test_resultados_intermedios_k88; assert_in_delta(0.0, (worksheet.resultados_intermedios_k88||0), 0.002); end
  def test_resultados_intermedios_l88; assert_in_delta(0.0, (worksheet.resultados_intermedios_l88||0), 0.002); end
  def test_resultados_intermedios_m88; assert_in_delta(0.0, (worksheet.resultados_intermedios_m88||0), 0.002); end
  def test_resultados_intermedios_c89; assert_equal("C.02", worksheet.resultados_intermedios_c89.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d89; assert_equal("Oil and petroleum products", worksheet.resultados_intermedios_d89.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f89; assert_in_delta(0.0, (worksheet.resultados_intermedios_f89||0), 0.002); end
  def test_resultados_intermedios_g89; assert_in_delta(0.0, (worksheet.resultados_intermedios_g89||0), 0.002); end
  def test_resultados_intermedios_h89; assert_in_delta(0.0, (worksheet.resultados_intermedios_h89||0), 0.002); end
  def test_resultados_intermedios_i89; assert_in_delta(0.0, (worksheet.resultados_intermedios_i89||0), 0.002); end
  def test_resultados_intermedios_j89; assert_in_delta(0.0, (worksheet.resultados_intermedios_j89||0), 0.002); end
  def test_resultados_intermedios_k89; assert_in_delta(0.0, (worksheet.resultados_intermedios_k89||0), 0.002); end
  def test_resultados_intermedios_l89; assert_in_delta(0.0, (worksheet.resultados_intermedios_l89||0), 0.002); end
  def test_resultados_intermedios_m89; assert_in_delta(0.0, (worksheet.resultados_intermedios_m89||0), 0.002); end
  def test_resultados_intermedios_c90; assert_equal("C.03", worksheet.resultados_intermedios_c90.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d90; assert_equal("Natural gas", worksheet.resultados_intermedios_d90.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f90; assert_in_delta(0.0, (worksheet.resultados_intermedios_f90||0), 0.002); end
  def test_resultados_intermedios_g90; assert_in_delta(0.0, (worksheet.resultados_intermedios_g90||0), 0.002); end
  def test_resultados_intermedios_h90; assert_in_delta(0.0, (worksheet.resultados_intermedios_h90||0), 0.002); end
  def test_resultados_intermedios_i90; assert_in_delta(0.0, (worksheet.resultados_intermedios_i90||0), 0.002); end
  def test_resultados_intermedios_j90; assert_in_delta(0.0, (worksheet.resultados_intermedios_j90||0), 0.002); end
  def test_resultados_intermedios_k90; assert_in_delta(0.0, (worksheet.resultados_intermedios_k90||0), 0.002); end
  def test_resultados_intermedios_l90; assert_in_delta(0.0, (worksheet.resultados_intermedios_l90||0), 0.002); end
  def test_resultados_intermedios_m90; assert_in_delta(0.0, (worksheet.resultados_intermedios_m90||0), 0.002); end
  def test_resultados_intermedios_c91; assert_equal("V.03", worksheet.resultados_intermedios_c91.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d91; assert_equal("Solid hydrocarbons", worksheet.resultados_intermedios_d91.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f91; assert_in_delta(0.0, (worksheet.resultados_intermedios_f91||0), 0.002); end
  def test_resultados_intermedios_g91; assert_in_delta(0.0, (worksheet.resultados_intermedios_g91||0), 0.002); end
  def test_resultados_intermedios_h91; assert_in_delta(0.0, (worksheet.resultados_intermedios_h91||0), 0.002); end
  def test_resultados_intermedios_i91; assert_in_delta(0.0, (worksheet.resultados_intermedios_i91||0), 0.002); end
  def test_resultados_intermedios_j91; assert_in_delta(0.0, (worksheet.resultados_intermedios_j91||0), 0.002); end
  def test_resultados_intermedios_k91; assert_in_delta(0.0, (worksheet.resultados_intermedios_k91||0), 0.002); end
  def test_resultados_intermedios_l91; assert_in_delta(0.0, (worksheet.resultados_intermedios_l91||0), 0.002); end
  def test_resultados_intermedios_m91; assert_in_delta(0.0, (worksheet.resultados_intermedios_m91||0), 0.002); end
  def test_resultados_intermedios_c92; assert_equal("V.04", worksheet.resultados_intermedios_c92.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d92; assert_equal("Liquid hydrocarbons", worksheet.resultados_intermedios_d92.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f92; assert_in_delta(0.0, (worksheet.resultados_intermedios_f92||0), 0.002); end
  def test_resultados_intermedios_g92; assert_in_delta(0.0, (worksheet.resultados_intermedios_g92||0), 0.002); end
  def test_resultados_intermedios_h92; assert_in_delta(0.0, (worksheet.resultados_intermedios_h92||0), 0.002); end
  def test_resultados_intermedios_i92; assert_in_delta(0.0, (worksheet.resultados_intermedios_i92||0), 0.002); end
  def test_resultados_intermedios_j92; assert_in_delta(0.0, (worksheet.resultados_intermedios_j92||0), 0.002); end
  def test_resultados_intermedios_k92; assert_in_delta(0.0, (worksheet.resultados_intermedios_k92||0), 0.002); end
  def test_resultados_intermedios_l92; assert_in_delta(0.0, (worksheet.resultados_intermedios_l92||0), 0.002); end
  def test_resultados_intermedios_m92; assert_in_delta(0.0, (worksheet.resultados_intermedios_m92||0), 0.002); end
  def test_resultados_intermedios_c93; assert_equal("V.05", worksheet.resultados_intermedios_c93.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d93; assert_equal("Gaseous hydrocarbons", worksheet.resultados_intermedios_d93.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f93; assert_in_delta(0.0, (worksheet.resultados_intermedios_f93||0), 0.002); end
  def test_resultados_intermedios_g93; assert_in_delta(0.0, (worksheet.resultados_intermedios_g93||0), 0.002); end
  def test_resultados_intermedios_h93; assert_in_delta(0.0, (worksheet.resultados_intermedios_h93||0), 0.002); end
  def test_resultados_intermedios_i93; assert_in_delta(0.0, (worksheet.resultados_intermedios_i93||0), 0.002); end
  def test_resultados_intermedios_j93; assert_in_delta(0.0, (worksheet.resultados_intermedios_j93||0), 0.002); end
  def test_resultados_intermedios_k93; assert_in_delta(0.0, (worksheet.resultados_intermedios_k93||0), 0.002); end
  def test_resultados_intermedios_l93; assert_in_delta(0.0, (worksheet.resultados_intermedios_l93||0), 0.002); end
  def test_resultados_intermedios_m93; assert_in_delta(0.0, (worksheet.resultados_intermedios_m93||0), 0.002); end
  def test_resultados_intermedios_c94; assert_equal("V.06", worksheet.resultados_intermedios_c94.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d94; assert_equal("Blast furnace gas", worksheet.resultados_intermedios_d94.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f94; assert_in_delta(0.0, (worksheet.resultados_intermedios_f94||0), 0.002); end
  def test_resultados_intermedios_g94; assert_in_delta(0.0, (worksheet.resultados_intermedios_g94||0), 0.002); end
  def test_resultados_intermedios_h94; assert_in_delta(0.0, (worksheet.resultados_intermedios_h94||0), 0.002); end
  def test_resultados_intermedios_i94; assert_in_delta(0.0, (worksheet.resultados_intermedios_i94||0), 0.002); end
  def test_resultados_intermedios_j94; assert_in_delta(0.0, (worksheet.resultados_intermedios_j94||0), 0.002); end
  def test_resultados_intermedios_k94; assert_in_delta(0.0, (worksheet.resultados_intermedios_k94||0), 0.002); end
  def test_resultados_intermedios_l94; assert_in_delta(0.0, (worksheet.resultados_intermedios_l94||0), 0.002); end
  def test_resultados_intermedios_m94; assert_in_delta(0.0, (worksheet.resultados_intermedios_m94||0), 0.002); end
  def test_resultados_intermedios_c95; assert_equal("V.08", worksheet.resultados_intermedios_c95.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d95; assert_equal("Edible biomass", worksheet.resultados_intermedios_d95.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f95; assert_in_delta(0.0, (worksheet.resultados_intermedios_f95||0), 0.002); end
  def test_resultados_intermedios_g95; assert_in_delta(0.0, (worksheet.resultados_intermedios_g95||0), 0.002); end
  def test_resultados_intermedios_h95; assert_in_delta(0.0, (worksheet.resultados_intermedios_h95||0), 0.002); end
  def test_resultados_intermedios_i95; assert_in_delta(0.0, (worksheet.resultados_intermedios_i95||0), 0.002); end
  def test_resultados_intermedios_j95; assert_in_delta(0.0, (worksheet.resultados_intermedios_j95||0), 0.002); end
  def test_resultados_intermedios_k95; assert_in_delta(0.0, (worksheet.resultados_intermedios_k95||0), 0.002); end
  def test_resultados_intermedios_l95; assert_in_delta(0.0, (worksheet.resultados_intermedios_l95||0), 0.002); end
  def test_resultados_intermedios_m95; assert_in_delta(0.0, (worksheet.resultados_intermedios_m95||0), 0.002); end
  def test_resultados_intermedios_c96; assert_equal("V.07", worksheet.resultados_intermedios_c96.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d96; assert_equal("Heat transport", worksheet.resultados_intermedios_d96.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f96; assert_in_delta(0.0, (worksheet.resultados_intermedios_f96||0), 0.002); end
  def test_resultados_intermedios_g96; assert_in_delta(0.0, (worksheet.resultados_intermedios_g96||0), 0.002); end
  def test_resultados_intermedios_h96; assert_in_delta(0.0, (worksheet.resultados_intermedios_h96||0), 0.002); end
  def test_resultados_intermedios_i96; assert_in_delta(0.0, (worksheet.resultados_intermedios_i96||0), 0.002); end
  def test_resultados_intermedios_j96; assert_in_delta(0.0, (worksheet.resultados_intermedios_j96||0), 0.002); end
  def test_resultados_intermedios_k96; assert_in_delta(0.0, (worksheet.resultados_intermedios_k96||0), 0.002); end
  def test_resultados_intermedios_l96; assert_in_delta(0.0, (worksheet.resultados_intermedios_l96||0), 0.002); end
  def test_resultados_intermedios_m96; assert_in_delta(0.0, (worksheet.resultados_intermedios_m96||0), 0.002); end
  def test_resultados_intermedios_c97; assert_equal("V.09", worksheet.resultados_intermedios_c97.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d97; assert_equal("Dry biomass and waste", worksheet.resultados_intermedios_d97.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f97; assert_in_delta(0.0, (worksheet.resultados_intermedios_f97||0), 0.002); end
  def test_resultados_intermedios_g97; assert_in_delta(0.0, (worksheet.resultados_intermedios_g97||0), 0.002); end
  def test_resultados_intermedios_h97; assert_in_delta(0.0, (worksheet.resultados_intermedios_h97||0), 0.002); end
  def test_resultados_intermedios_i97; assert_in_delta(0.0, (worksheet.resultados_intermedios_i97||0), 0.002); end
  def test_resultados_intermedios_j97; assert_in_delta(0.0, (worksheet.resultados_intermedios_j97||0), 0.002); end
  def test_resultados_intermedios_k97; assert_in_delta(0.0, (worksheet.resultados_intermedios_k97||0), 0.002); end
  def test_resultados_intermedios_l97; assert_in_delta(0.0, (worksheet.resultados_intermedios_l97||0), 0.002); end
  def test_resultados_intermedios_m97; assert_in_delta(0.0, (worksheet.resultados_intermedios_m97||0), 0.002); end
  def test_resultados_intermedios_c98; assert_equal("V.10", worksheet.resultados_intermedios_c98.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d98; assert_equal("Wet biomass and waste", worksheet.resultados_intermedios_d98.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f98; assert_in_delta(0.0, (worksheet.resultados_intermedios_f98||0), 0.002); end
  def test_resultados_intermedios_g98; assert_in_delta(0.0, (worksheet.resultados_intermedios_g98||0), 0.002); end
  def test_resultados_intermedios_h98; assert_in_delta(0.0, (worksheet.resultados_intermedios_h98||0), 0.002); end
  def test_resultados_intermedios_i98; assert_in_delta(0.0, (worksheet.resultados_intermedios_i98||0), 0.002); end
  def test_resultados_intermedios_j98; assert_in_delta(0.0, (worksheet.resultados_intermedios_j98||0), 0.002); end
  def test_resultados_intermedios_k98; assert_in_delta(0.0, (worksheet.resultados_intermedios_k98||0), 0.002); end
  def test_resultados_intermedios_l98; assert_in_delta(0.0, (worksheet.resultados_intermedios_l98||0), 0.002); end
  def test_resultados_intermedios_m98; assert_in_delta(0.0, (worksheet.resultados_intermedios_m98||0), 0.002); end
  def test_resultados_intermedios_c99; assert_equal("V.11", worksheet.resultados_intermedios_c99.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d99; assert_equal("Domestic solar thermal", worksheet.resultados_intermedios_d99.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f99; assert_in_delta(0.0, (worksheet.resultados_intermedios_f99||0), 0.002); end
  def test_resultados_intermedios_g99; assert_in_delta(0.0, (worksheet.resultados_intermedios_g99||0), 0.002); end
  def test_resultados_intermedios_h99; assert_in_delta(0.0, (worksheet.resultados_intermedios_h99||0), 0.002); end
  def test_resultados_intermedios_i99; assert_in_delta(0.0, (worksheet.resultados_intermedios_i99||0), 0.002); end
  def test_resultados_intermedios_j99; assert_in_delta(0.0, (worksheet.resultados_intermedios_j99||0), 0.002); end
  def test_resultados_intermedios_k99; assert_in_delta(0.0, (worksheet.resultados_intermedios_k99||0), 0.002); end
  def test_resultados_intermedios_l99; assert_in_delta(0.0, (worksheet.resultados_intermedios_l99||0), 0.002); end
  def test_resultados_intermedios_m99; assert_in_delta(0.0, (worksheet.resultados_intermedios_m99||0), 0.002); end
  def test_resultados_intermedios_c100; assert_equal("V.12", worksheet.resultados_intermedios_c100.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d100; assert_equal("H2", worksheet.resultados_intermedios_d100.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f100; assert_in_delta(0.0, (worksheet.resultados_intermedios_f100||0), 0.002); end
  def test_resultados_intermedios_g100; assert_in_delta(0.0, (worksheet.resultados_intermedios_g100||0), 0.002); end
  def test_resultados_intermedios_h100; assert_in_delta(0.0, (worksheet.resultados_intermedios_h100||0), 0.002); end
  def test_resultados_intermedios_i100; assert_in_delta(0.0, (worksheet.resultados_intermedios_i100||0), 0.002); end
  def test_resultados_intermedios_j100; assert_in_delta(0.0, (worksheet.resultados_intermedios_j100||0), 0.002); end
  def test_resultados_intermedios_k100; assert_in_delta(0.0, (worksheet.resultados_intermedios_k100||0), 0.002); end
  def test_resultados_intermedios_l100; assert_in_delta(0.0, (worksheet.resultados_intermedios_l100||0), 0.002); end
  def test_resultados_intermedios_m100; assert_in_delta(0.0, (worksheet.resultados_intermedios_m100||0), 0.002); end
  def test_resultados_intermedios_c101; assert_equal("V.13", worksheet.resultados_intermedios_c101.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d101; assert_equal("Energy crops (second generation)", worksheet.resultados_intermedios_d101.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f101; assert_in_delta(0.0, (worksheet.resultados_intermedios_f101||0), 0.002); end
  def test_resultados_intermedios_g101; assert_in_delta(0.0, (worksheet.resultados_intermedios_g101||0), 0.002); end
  def test_resultados_intermedios_h101; assert_in_delta(0.0, (worksheet.resultados_intermedios_h101||0), 0.002); end
  def test_resultados_intermedios_i101; assert_in_delta(0.0, (worksheet.resultados_intermedios_i101||0), 0.002); end
  def test_resultados_intermedios_j101; assert_in_delta(0.0, (worksheet.resultados_intermedios_j101||0), 0.002); end
  def test_resultados_intermedios_k101; assert_in_delta(0.0, (worksheet.resultados_intermedios_k101||0), 0.002); end
  def test_resultados_intermedios_l101; assert_in_delta(0.0, (worksheet.resultados_intermedios_l101||0), 0.002); end
  def test_resultados_intermedios_m101; assert_in_delta(0.0, (worksheet.resultados_intermedios_m101||0), 0.002); end
  def test_resultados_intermedios_d102; assert_equal("Total unaccounted supply / demand", worksheet.resultados_intermedios_d102.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f102; assert_in_delta(0.0, (worksheet.resultados_intermedios_f102||0), 0.002); end
  def test_resultados_intermedios_g102; assert_in_delta(0.0, (worksheet.resultados_intermedios_g102||0), 0.002); end
  def test_resultados_intermedios_h102; assert_in_delta(0.0, (worksheet.resultados_intermedios_h102||0), 0.002); end
  def test_resultados_intermedios_i102; assert_in_delta(0.0, (worksheet.resultados_intermedios_i102||0), 0.002); end
  def test_resultados_intermedios_j102; assert_in_delta(0.0, (worksheet.resultados_intermedios_j102||0), 0.002); end
  def test_resultados_intermedios_k102; assert_in_delta(0.0, (worksheet.resultados_intermedios_k102||0), 0.002); end
  def test_resultados_intermedios_l102; assert_in_delta(0.0, (worksheet.resultados_intermedios_l102||0), 0.002); end
  def test_resultados_intermedios_m102; assert_in_delta(0.0, (worksheet.resultados_intermedios_m102||0), 0.002); end
  def test_resultados_intermedios_d104; assert_equal("Supply, Demand, and Unaccounted supply", worksheet.resultados_intermedios_d104.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f104; assert_in_delta(2.2737367544323206e-13, worksheet.resultados_intermedios_f104, 0.002); end
  def test_resultados_intermedios_g104; assert_in_delta(4.547473508864641e-13, worksheet.resultados_intermedios_g104, 0.002); end
  def test_resultados_intermedios_h104; assert_in_delta(0.0, (worksheet.resultados_intermedios_h104||0), 0.002); end
  def test_resultados_intermedios_i104; assert_in_delta(-4.547473508864641e-13, worksheet.resultados_intermedios_i104, 0.002); end
  def test_resultados_intermedios_j104; assert_in_delta(0.0, (worksheet.resultados_intermedios_j104||0), 0.002); end
  def test_resultados_intermedios_k104; assert_in_delta(0.0, (worksheet.resultados_intermedios_k104||0), 0.002); end
  def test_resultados_intermedios_l104; assert_in_delta(-2.2737367544323206e-13, worksheet.resultados_intermedios_l104, 0.002); end
  def test_resultados_intermedios_m104; assert_in_delta(0.0, (worksheet.resultados_intermedios_m104||0), 0.002); end
  def test_resultados_intermedios_b107; assert_equal("Electricidad suminstrada a la red (neto después de perdidas)", worksheet.resultados_intermedios_b107.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c109; assert_equal("V.01", worksheet.resultados_intermedios_c109.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d109; assert_equal("Electricidad (consumo final)", worksheet.resultados_intermedios_d109.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f109; assert_in_epsilon(-67.57963331657376, worksheet.resultados_intermedios_f109, 0.002); end
  def test_resultados_intermedios_g109; assert_in_epsilon(-78.97950956023004, worksheet.resultados_intermedios_g109, 0.002); end
  def test_resultados_intermedios_h109; assert_in_epsilon(-91.52024444612704, worksheet.resultados_intermedios_h109, 0.002); end
  def test_resultados_intermedios_i109; assert_in_epsilon(-103.6006457581674, worksheet.resultados_intermedios_i109, 0.002); end
  def test_resultados_intermedios_j109; assert_in_epsilon(-117.65200581808284, worksheet.resultados_intermedios_j109, 0.002); end
  def test_resultados_intermedios_k109; assert_in_epsilon(-132.75541227739603, worksheet.resultados_intermedios_k109, 0.002); end
  def test_resultados_intermedios_l109; assert_in_epsilon(-148.13841553905652, worksheet.resultados_intermedios_l109, 0.002); end
  def test_resultados_intermedios_m109; assert_in_epsilon(-162.18836791957614, worksheet.resultados_intermedios_m109, 0.002); end
  def test_resultados_intermedios_c110; assert_equal("V.02", worksheet.resultados_intermedios_c110.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d110; assert_equal("Electricidad (suministrada a la red)", worksheet.resultados_intermedios_d110.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f110; assert_in_epsilon(67.57963331657378, worksheet.resultados_intermedios_f110, 0.002); end
  def test_resultados_intermedios_g110; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_g110, 0.002); end
  def test_resultados_intermedios_h110; assert_in_epsilon(91.52024444612702, worksheet.resultados_intermedios_h110, 0.002); end
  def test_resultados_intermedios_i110; assert_in_epsilon(103.6006457581674, worksheet.resultados_intermedios_i110, 0.002); end
  def test_resultados_intermedios_j110; assert_in_epsilon(117.65200581808284, worksheet.resultados_intermedios_j110, 0.002); end
  def test_resultados_intermedios_k110; assert_in_epsilon(132.75541227739603, worksheet.resultados_intermedios_k110, 0.002); end
  def test_resultados_intermedios_l110; assert_in_epsilon(148.13841553905655, worksheet.resultados_intermedios_l110, 0.002); end
  def test_resultados_intermedios_m110; assert_in_epsilon(162.18836791957614, worksheet.resultados_intermedios_m110, 0.002); end
  def test_resultados_intermedios_d111; assert_equal("Sobre Oferta", worksheet.resultados_intermedios_d111.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f111; assert_in_delta(0.0, (worksheet.resultados_intermedios_f111||0), 0.002); end
  def test_resultados_intermedios_g111; assert_in_delta(0.0, (worksheet.resultados_intermedios_g111||0), 0.002); end
  def test_resultados_intermedios_h111; assert_in_delta(0.0, (worksheet.resultados_intermedios_h111||0), 0.002); end
  def test_resultados_intermedios_i111; assert_in_delta(0.0, (worksheet.resultados_intermedios_i111||0), 0.002); end
  def test_resultados_intermedios_j111; assert_in_delta(0.0, (worksheet.resultados_intermedios_j111||0), 0.002); end
  def test_resultados_intermedios_k111; assert_in_delta(0.0, (worksheet.resultados_intermedios_k111||0), 0.002); end
  def test_resultados_intermedios_l111; assert_in_delta(0.0, (worksheet.resultados_intermedios_l111||0), 0.002); end
  def test_resultados_intermedios_m111; assert_in_delta(0.0, (worksheet.resultados_intermedios_m111||0), 0.002); end
  def test_resultados_intermedios_c113; assert_equal("X.01", worksheet.resultados_intermedios_c113.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d113; assert_equal("Perdidas por conversión", worksheet.resultados_intermedios_d113.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f113; assert_in_epsilon(56.88629539468827, worksheet.resultados_intermedios_f113, 0.002); end
  def test_resultados_intermedios_g113; assert_in_epsilon(62.045579015031855, worksheet.resultados_intermedios_g113, 0.002); end
  def test_resultados_intermedios_h113; assert_in_epsilon(74.3339935797182, worksheet.resultados_intermedios_h113, 0.002); end
  def test_resultados_intermedios_i113; assert_in_epsilon(87.46257662437625, worksheet.resultados_intermedios_i113, 0.002); end
  def test_resultados_intermedios_j113; assert_in_epsilon(103.68939742087011, worksheet.resultados_intermedios_j113, 0.002); end
  def test_resultados_intermedios_k113; assert_in_epsilon(121.53740828468436, worksheet.resultados_intermedios_k113, 0.002); end
  def test_resultados_intermedios_l113; assert_in_epsilon(140.01123155206523, worksheet.resultados_intermedios_l113, 0.002); end
  def test_resultados_intermedios_m113; assert_in_epsilon(156.76394274971875, worksheet.resultados_intermedios_m113, 0.002); end
  def test_resultados_intermedios_c114; assert_equal("X.02", worksheet.resultados_intermedios_c114.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d114; assert_equal("Perdidas por distribución y uso propio", worksheet.resultados_intermedios_d114.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f114; assert_in_epsilon(2.189076043208608, worksheet.resultados_intermedios_f114, 0.002); end
  def test_resultados_intermedios_g114; assert_in_epsilon(2.281403860053931, worksheet.resultados_intermedios_g114, 0.002); end
  def test_resultados_intermedios_h114; assert_in_epsilon(2.7314451135092335, worksheet.resultados_intermedios_h114, 0.002); end
  def test_resultados_intermedios_i114; assert_in_epsilon(3.21225603817393, worksheet.resultados_intermedios_i114, 0.002); end
  def test_resultados_intermedios_j114; assert_in_epsilon(3.8065343913664385, worksheet.resultados_intermedios_j114, 0.002); end
  def test_resultados_intermedios_k114; assert_in_epsilon(4.460185937589314, worksheet.resultados_intermedios_k114, 0.002); end
  def test_resultados_intermedios_l114; assert_in_epsilon(5.136756746264336, worksheet.resultados_intermedios_l114, 0.002); end
  def test_resultados_intermedios_m114; assert_in_epsilon(5.7502948968922425, worksheet.resultados_intermedios_m114, 0.002); end
  def test_resultados_intermedios_f115; assert_in_epsilon(59.07537143789688, worksheet.resultados_intermedios_f115, 0.002); end
  def test_resultados_intermedios_g115; assert_in_epsilon(64.32698287508579, worksheet.resultados_intermedios_g115, 0.002); end
  def test_resultados_intermedios_h115; assert_in_epsilon(77.06543869322743, worksheet.resultados_intermedios_h115, 0.002); end
  def test_resultados_intermedios_i115; assert_in_epsilon(90.67483266255019, worksheet.resultados_intermedios_i115, 0.002); end
  def test_resultados_intermedios_j115; assert_in_epsilon(107.49593181223655, worksheet.resultados_intermedios_j115, 0.002); end
  def test_resultados_intermedios_k115; assert_in_epsilon(125.99759422227368, worksheet.resultados_intermedios_k115, 0.002); end
  def test_resultados_intermedios_l115; assert_in_epsilon(145.14798829832955, worksheet.resultados_intermedios_l115, 0.002); end
  def test_resultados_intermedios_m115; assert_in_epsilon(162.51423764661098, worksheet.resultados_intermedios_m115, 0.002); end
  def test_resultados_intermedios_c118; assert_equal("Z.01", worksheet.resultados_intermedios_c118.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d118; assert_equal("Balance", worksheet.resultados_intermedios_d118.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d120; assert_equal("Balance neto (debe ser cero!)", worksheet.resultados_intermedios_d120.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f120; assert_in_delta(0.0, (worksheet.resultados_intermedios_f120||0), 0.002); end
  def test_resultados_intermedios_g120; assert_in_delta(0.0, (worksheet.resultados_intermedios_g120||0), 0.002); end
  def test_resultados_intermedios_h120; assert_in_delta(0.0, (worksheet.resultados_intermedios_h120||0), 0.002); end
  def test_resultados_intermedios_i120; assert_in_delta(0.0, (worksheet.resultados_intermedios_i120||0), 0.002); end
  def test_resultados_intermedios_j120; assert_in_delta(1.2789769243681803e-13, worksheet.resultados_intermedios_j120, 0.002); end
  def test_resultados_intermedios_k120; assert_in_delta(0.0, (worksheet.resultados_intermedios_k120||0), 0.002); end
  def test_resultados_intermedios_l120; assert_in_delta(0.0, (worksheet.resultados_intermedios_l120||0), 0.002); end
  def test_resultados_intermedios_m120; assert_in_delta(0.0, (worksheet.resultados_intermedios_m120||0), 0.002); end
  def test_resultados_intermedios_b122; assert_equal("Generación de Electricidad", worksheet.resultados_intermedios_b122.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d124; assert_equal("TWh", worksheet.resultados_intermedios_d124.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f124; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_f124, 0.002); end
  def test_resultados_intermedios_g124; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_g124, 0.002); end
  def test_resultados_intermedios_h124; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_h124, 0.002); end
  def test_resultados_intermedios_i124; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_i124, 0.002); end
  def test_resultados_intermedios_j124; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_j124, 0.002); end
  def test_resultados_intermedios_k124; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_k124, 0.002); end
  def test_resultados_intermedios_l124; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_l124, 0.002); end
  def test_resultados_intermedios_m124; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m124, 0.002); end
  def test_resultados_intermedios_c125; assert_equal("I.a", worksheet.resultados_intermedios_c125.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d125; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_d125.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e125; assert_equal("Combustible Gaseoso", worksheet.resultados_intermedios_e125.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f125; assert_in_epsilon(10.716366861978855, worksheet.resultados_intermedios_f125, 0.002); end
  def test_resultados_intermedios_g125; assert_in_epsilon(11.993360596902663, worksheet.resultados_intermedios_g125, 0.002); end
  def test_resultados_intermedios_h125; assert_in_epsilon(14.434262310558546, worksheet.resultados_intermedios_h125, 0.002); end
  def test_resultados_intermedios_i125; assert_in_epsilon(17.04205037653656, worksheet.resultados_intermedios_i125, 0.002); end
  def test_resultados_intermedios_j125; assert_in_epsilon(20.265255004021373, worksheet.resultados_intermedios_j125, 0.002); end
  def test_resultados_intermedios_k125; assert_in_epsilon(23.810483729297946, worksheet.resultados_intermedios_k125, 0.002); end
  def test_resultados_intermedios_l125; assert_in_epsilon(27.480020318721834, worksheet.resultados_intermedios_l125, 0.002); end
  def test_resultados_intermedios_m125; assert_in_epsilon(30.807684864500306, worksheet.resultados_intermedios_m125, 0.002); end
  def test_resultados_intermedios_c126; assert_equal("I.a", worksheet.resultados_intermedios_c126.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d126; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_d126.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e126; assert_equal("Combustible Sólido", worksheet.resultados_intermedios_e126.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f126; assert_in_epsilon(26.790917154947138, worksheet.resultados_intermedios_f126, 0.002); end
  def test_resultados_intermedios_g126; assert_in_epsilon(29.983401492256657, worksheet.resultados_intermedios_g126, 0.002); end
  def test_resultados_intermedios_h126; assert_in_epsilon(36.085655776396365, worksheet.resultados_intermedios_h126, 0.002); end
  def test_resultados_intermedios_i126; assert_in_epsilon(42.6051259413414, worksheet.resultados_intermedios_i126, 0.002); end
  def test_resultados_intermedios_j126; assert_in_epsilon(50.66313751005343, worksheet.resultados_intermedios_j126, 0.002); end
  def test_resultados_intermedios_k126; assert_in_epsilon(59.52620932324486, worksheet.resultados_intermedios_k126, 0.002); end
  def test_resultados_intermedios_l126; assert_in_epsilon(68.70005079680459, worksheet.resultados_intermedios_l126, 0.002); end
  def test_resultados_intermedios_m126; assert_in_epsilon(77.01921216125076, worksheet.resultados_intermedios_m126, 0.002); end
  def test_resultados_intermedios_c127; assert_equal("I.a", worksheet.resultados_intermedios_c127.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d127; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_d127.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e127; assert_equal("Combustible Liquido", worksheet.resultados_intermedios_e127.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f127; assert_in_epsilon(2.0093187866210354, worksheet.resultados_intermedios_f127, 0.002); end
  def test_resultados_intermedios_g127; assert_in_epsilon(2.2487551119192495, worksheet.resultados_intermedios_g127, 0.002); end
  def test_resultados_intermedios_h127; assert_in_epsilon(2.7064241832297276, worksheet.resultados_intermedios_h127, 0.002); end
  def test_resultados_intermedios_i127; assert_in_epsilon(3.195384445600605, worksheet.resultados_intermedios_i127, 0.002); end
  def test_resultados_intermedios_j127; assert_in_epsilon(3.799735313254008, worksheet.resultados_intermedios_j127, 0.002); end
  def test_resultados_intermedios_k127; assert_in_epsilon(4.464465699243365, worksheet.resultados_intermedios_k127, 0.002); end
  def test_resultados_intermedios_l127; assert_in_epsilon(5.152503809760344, worksheet.resultados_intermedios_l127, 0.002); end
  def test_resultados_intermedios_m127; assert_in_epsilon(5.776440912093808, worksheet.resultados_intermedios_m127, 0.002); end
  def test_resultados_intermedios_c128; assert_equal("I.a", worksheet.resultados_intermedios_c128.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d128; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_d128.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e128; assert_equal("Biomasa", worksheet.resultados_intermedios_e128.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_f128, 0.002); end
  def test_resultados_intermedios_g128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_g128, 0.002); end
  def test_resultados_intermedios_h128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_h128, 0.002); end
  def test_resultados_intermedios_i128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_i128, 0.002); end
  def test_resultados_intermedios_j128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_j128, 0.002); end
  def test_resultados_intermedios_k128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_k128, 0.002); end
  def test_resultados_intermedios_l128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_l128, 0.002); end
  def test_resultados_intermedios_m128; assert_in_epsilon(1.4025600000000003, worksheet.resultados_intermedios_m128, 0.002); end
  def test_resultados_intermedios_c129; assert_equal("III.a", worksheet.resultados_intermedios_c129.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d129; assert_equal("Plantas Eólicas", worksheet.resultados_intermedios_d129.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f129; assert_in_epsilon(2.6604444, worksheet.resultados_intermedios_f129, 0.002); end
  def test_resultados_intermedios_g129; assert_in_epsilon(4.6811184, worksheet.resultados_intermedios_g129, 0.002); end
  def test_resultados_intermedios_h129; assert_in_epsilon(4.960195199999999, worksheet.resultados_intermedios_h129, 0.002); end
  def test_resultados_intermedios_i129; assert_in_epsilon(5.239271999999999, worksheet.resultados_intermedios_i129, 0.002); end
  def test_resultados_intermedios_j129; assert_in_epsilon(5.518348799999999, worksheet.resultados_intermedios_j129, 0.002); end
  def test_resultados_intermedios_k129; assert_in_epsilon(5.797425599999999, worksheet.resultados_intermedios_k129, 0.002); end
  def test_resultados_intermedios_l129; assert_in_epsilon(6.076502399999998, worksheet.resultados_intermedios_l129, 0.002); end
  def test_resultados_intermedios_m129; assert_in_epsilon(6.3555791999999975, worksheet.resultados_intermedios_m129, 0.002); end
  def test_resultados_intermedios_c130; assert_equal("III.b.1", worksheet.resultados_intermedios_c130.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d130; assert_equal("Mini Hidráulica de Pasada", worksheet.resultados_intermedios_d130.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f130; assert_in_epsilon(1.8803070000000002, worksheet.resultados_intermedios_f130, 0.002); end
  def test_resultados_intermedios_g130; assert_in_epsilon(2.3142240000000003, worksheet.resultados_intermedios_g130, 0.002); end
  def test_resultados_intermedios_h130; assert_in_epsilon(2.748141, worksheet.resultados_intermedios_h130, 0.002); end
  def test_resultados_intermedios_i130; assert_in_epsilon(3.1820580000000005, worksheet.resultados_intermedios_i130, 0.002); end
  def test_resultados_intermedios_j130; assert_in_epsilon(3.567762, worksheet.resultados_intermedios_j130, 0.002); end
  def test_resultados_intermedios_k130; assert_in_epsilon(4.001679, worksheet.resultados_intermedios_k130, 0.002); end
  def test_resultados_intermedios_l130; assert_in_epsilon(4.435596000000001, worksheet.resultados_intermedios_l130, 0.002); end
  def test_resultados_intermedios_m130; assert_in_epsilon(4.821300000000001, worksheet.resultados_intermedios_m130, 0.002); end
  def test_resultados_intermedios_c131; assert_equal("III.b.2", worksheet.resultados_intermedios_c131.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d131; assert_equal("Hidráulica de Pasada", worksheet.resultados_intermedios_d131.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f131; assert_in_epsilon(6.381648, worksheet.resultados_intermedios_f131, 0.002); end
  def test_resultados_intermedios_g131; assert_in_epsilon(6.648572700000001, worksheet.resultados_intermedios_g131, 0.002); end
  def test_resultados_intermedios_h131; assert_in_epsilon(6.915497400000001, worksheet.resultados_intermedios_h131, 0.002); end
  def test_resultados_intermedios_i131; assert_in_epsilon(7.182422100000001, worksheet.resultados_intermedios_i131, 0.002); end
  def test_resultados_intermedios_j131; assert_in_epsilon(7.449346800000002, worksheet.resultados_intermedios_j131, 0.002); end
  def test_resultados_intermedios_k131; assert_in_epsilon(7.716271500000003, worksheet.resultados_intermedios_k131, 0.002); end
  def test_resultados_intermedios_l131; assert_in_epsilon(7.983196200000004, worksheet.resultados_intermedios_l131, 0.002); end
  def test_resultados_intermedios_m131; assert_in_epsilon(8.250120900000002, worksheet.resultados_intermedios_m131, 0.002); end
  def test_resultados_intermedios_c132; assert_equal("III.b.3", worksheet.resultados_intermedios_c132.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d132; assert_equal("Hidráulica de Embalse", worksheet.resultados_intermedios_d132.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f132; assert_in_epsilon(13.885344, worksheet.resultados_intermedios_f132, 0.002); end
  def test_resultados_intermedios_g132; assert_in_epsilon(14.1904008, worksheet.resultados_intermedios_g132, 0.002); end
  def test_resultados_intermedios_h132; assert_in_epsilon(14.4954576, worksheet.resultados_intermedios_h132, 0.002); end
  def test_resultados_intermedios_i132; assert_in_epsilon(14.800514399999997, worksheet.resultados_intermedios_i132, 0.002); end
  def test_resultados_intermedios_j132; assert_in_epsilon(15.105571199999996, worksheet.resultados_intermedios_j132, 0.002); end
  def test_resultados_intermedios_k132; assert_in_epsilon(15.410627999999996, worksheet.resultados_intermedios_k132, 0.002); end
  def test_resultados_intermedios_l132; assert_in_epsilon(15.715684799999996, worksheet.resultados_intermedios_l132, 0.002); end
  def test_resultados_intermedios_m132; assert_in_epsilon(16.020741599999994, worksheet.resultados_intermedios_m132, 0.002); end
  def test_resultados_intermedios_c133; assert_equal("III.c", worksheet.resultados_intermedios_c133.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d133; assert_equal("Mareomotriz y Undimotriz", worksheet.resultados_intermedios_d133.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f133; assert_in_delta(0.0, (worksheet.resultados_intermedios_f133||0), 0.002); end
  def test_resultados_intermedios_g133; assert_in_delta(0.0, (worksheet.resultados_intermedios_g133||0), 0.002); end
  def test_resultados_intermedios_h133; assert_in_delta(0.01341198, worksheet.resultados_intermedios_h133, 0.002); end
  def test_resultados_intermedios_i133; assert_in_delta(0.01932903, worksheet.resultados_intermedios_i133, 0.002); end
  def test_resultados_intermedios_j133; assert_in_delta(0.028993545000000003, worksheet.resultados_intermedios_j133, 0.002); end
  def test_resultados_intermedios_k133; assert_in_delta(0.0864836028, worksheet.resultados_intermedios_k133, 0.002); end
  def test_resultados_intermedios_l133; assert_in_delta(0.1770854724, worksheet.resultados_intermedios_l133, 0.002); end
  def test_resultados_intermedios_m133; assert_in_delta(0.3541709448, worksheet.resultados_intermedios_m133, 0.002); end
  def test_resultados_intermedios_c134; assert_equal("III.d", worksheet.resultados_intermedios_c134.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d134; assert_equal("Geotérmica", worksheet.resultados_intermedios_d134.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f134; assert_in_delta(0.0, (worksheet.resultados_intermedios_f134||0), 0.002); end
  def test_resultados_intermedios_g134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_g134, 0.002); end
  def test_resultados_intermedios_h134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_h134, 0.002); end
  def test_resultados_intermedios_i134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_i134, 0.002); end
  def test_resultados_intermedios_j134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_j134, 0.002); end
  def test_resultados_intermedios_k134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_k134, 0.002); end
  def test_resultados_intermedios_l134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_l134, 0.002); end
  def test_resultados_intermedios_m134; assert_in_delta(0.35064000000000006, worksheet.resultados_intermedios_m134, 0.002); end
  def test_resultados_intermedios_c135; assert_equal("III.e", worksheet.resultados_intermedios_c135.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d135; assert_equal("Plantas Solares", worksheet.resultados_intermedios_d135.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f135; assert_in_epsilon(1.551582, worksheet.resultados_intermedios_f135, 0.002); end
  def test_resultados_intermedios_g135; assert_in_epsilon(4.802803740000001, worksheet.resultados_intermedios_g135, 0.002); end
  def test_resultados_intermedios_h135; assert_in_epsilon(6.90664374, worksheet.resultados_intermedios_h135, 0.002); end
  def test_resultados_intermedios_i135; assert_in_epsilon(7.95856374, worksheet.resultados_intermedios_i135, 0.002); end
  def test_resultados_intermedios_j135; assert_in_epsilon(8.800099739999999, worksheet.resultados_intermedios_j135, 0.002); end
  def test_resultados_intermedios_k135; assert_in_epsilon(9.431251739999997, worksheet.resultados_intermedios_k135, 0.002); end
  def test_resultados_intermedios_l135; assert_in_epsilon(9.852019739999998, worksheet.resultados_intermedios_l135, 0.002); end
  def test_resultados_intermedios_m135; assert_in_epsilon(10.167595739999998, worksheet.resultados_intermedios_m135, 0.002); end
  def test_resultados_intermedios_c136; assert_equal("IV.a", worksheet.resultados_intermedios_c136.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d136; assert_equal("Solar de menor escala (GD)", worksheet.resultados_intermedios_d136.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f136; assert_in_delta(0.03490621199999999, worksheet.resultados_intermedios_f136, 0.002); end
  def test_resultados_intermedios_g136; assert_in_delta(0.00903348354701176, worksheet.resultados_intermedios_g136, 0.002); end
  def test_resultados_intermedios_h136; assert_in_delta(0.08468234287235894, worksheet.resultados_intermedios_h136, 0.002); end
  def test_resultados_intermedios_i136; assert_in_delta(0.20539354278862565, worksheet.resultados_intermedios_i136, 0.002); end
  def test_resultados_intermedios_j136; assert_in_delta(0.28257582941859183, worksheet.resultados_intermedios_j136, 0.002); end
  def test_resultados_intermedios_k136; assert_in_delta(0.33868748298622414, worksheet.resultados_intermedios_k136, 0.002); end
  def test_resultados_intermedios_l136; assert_in_delta(0.3933524591815665, worksheet.resultados_intermedios_l136, 0.002); end
  def test_resultados_intermedios_m136; assert_in_delta(0.44255994096679807, worksheet.resultados_intermedios_m136, 0.002); end
  def test_resultados_intermedios_c137; assert_equal("V.a", worksheet.resultados_intermedios_c137.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d137; assert_equal("Residuos", worksheet.resultados_intermedios_d137.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f137; assert_in_delta(0.26280000000000003, worksheet.resultados_intermedios_f137, 0.002); end
  def test_resultados_intermedios_g137; assert_in_delta(0.3504, worksheet.resultados_intermedios_g137, 0.002); end
  def test_resultados_intermedios_h137; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_h137, 0.002); end
  def test_resultados_intermedios_i137; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_i137, 0.002); end
  def test_resultados_intermedios_j137; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_j137, 0.002); end
  def test_resultados_intermedios_k137; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_k137, 0.002); end
  def test_resultados_intermedios_l137; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_l137, 0.002); end
  def test_resultados_intermedios_m137; assert_in_delta(0.41172000000000003, worksheet.resultados_intermedios_m137, 0.002); end
  def test_resultados_intermedios_c138; assert_equal("V.b", worksheet.resultados_intermedios_c138.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d138; assert_equal("Agropecuario", worksheet.resultados_intermedios_d138.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f138; assert_in_delta(0.0034389010267325154, worksheet.resultados_intermedios_f138, 0.002); end
  def test_resultados_intermedios_g138; assert_in_delta(0.004239235604449544, worksheet.resultados_intermedios_g138, 0.002); end
  def test_resultados_intermedios_h138; assert_in_delta(0.004952913070031461, worksheet.resultados_intermedios_h138, 0.002); end
  def test_resultados_intermedios_i138; assert_in_delta(0.005612181900205029, worksheet.resultados_intermedios_i138, 0.002); end
  def test_resultados_intermedios_j138; assert_in_delta(0.00626007633543619, worksheet.resultados_intermedios_j138, 0.002); end
  def test_resultados_intermedios_k138; assert_in_delta(0.006906599823642307, worksheet.resultados_intermedios_k138, 0.002); end
  def test_resultados_intermedios_l138; assert_in_delta(0.007483542188209202, worksheet.resultados_intermedios_l138, 0.002); end
  def test_resultados_intermedios_m138; assert_in_delta(0.008041655964461538, worksheet.resultados_intermedios_m138, 0.002); end
  def test_resultados_intermedios_d140; assert_equal("Total", worksheet.resultados_intermedios_d140.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f140; assert_in_epsilon(67.57963331657375, worksheet.resultados_intermedios_f140, 0.002); end
  def test_resultados_intermedios_g140; assert_in_epsilon(78.97950956023004, worksheet.resultados_intermedios_g140, 0.002); end
  def test_resultados_intermedios_h140; assert_in_epsilon(91.52024444612702, worksheet.resultados_intermedios_h140, 0.002); end
  def test_resultados_intermedios_i140; assert_in_epsilon(103.60064575816739, worksheet.resultados_intermedios_i140, 0.002); end
  def test_resultados_intermedios_j140; assert_in_epsilon(117.65200581808283, worksheet.resultados_intermedios_j140, 0.002); end
  def test_resultados_intermedios_k140; assert_in_epsilon(132.75541227739603, worksheet.resultados_intermedios_k140, 0.002); end
  def test_resultados_intermedios_l140; assert_in_epsilon(148.13841553905652, worksheet.resultados_intermedios_l140, 0.002); end
  def test_resultados_intermedios_m140; assert_in_epsilon(162.18836791957608, worksheet.resultados_intermedios_m140, 0.002); end
  def test_resultados_intermedios_d144; assert_equal("GW Capacidad Instalada", worksheet.resultados_intermedios_d144.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f144; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_f144, 0.002); end
  def test_resultados_intermedios_g144; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_g144, 0.002); end
  def test_resultados_intermedios_h144; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_h144, 0.002); end
  def test_resultados_intermedios_i144; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_i144, 0.002); end
  def test_resultados_intermedios_j144; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_j144, 0.002); end
  def test_resultados_intermedios_k144; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_k144, 0.002); end
  def test_resultados_intermedios_l144; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_l144, 0.002); end
  def test_resultados_intermedios_m144; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m144, 0.002); end
  def test_resultados_intermedios_c145; assert_equal("I.a", worksheet.resultados_intermedios_c145.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d145; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_d145.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f145; assert_in_epsilon(7.9144049950311555, worksheet.resultados_intermedios_f145, 0.002); end
  def test_resultados_intermedios_g145; assert_in_epsilon(7.967679192518579, worksheet.resultados_intermedios_g145, 0.002); end
  def test_resultados_intermedios_h145; assert_in_epsilon(9.50786144253673, worksheet.resultados_intermedios_h145, 0.002); end
  def test_resultados_intermedios_i145; assert_in_epsilon(11.153347153230419, worksheet.resultados_intermedios_i145, 0.002); end
  def test_resultados_intermedios_j145; assert_in_epsilon(13.187153974560031, worksheet.resultados_intermedios_j145, 0.002); end
  def test_resultados_intermedios_k145; assert_in_epsilon(15.424154474980524, worksheet.resultados_intermedios_k145, 0.002); end
  def test_resultados_intermedios_l145; assert_in_epsilon(17.739591876332433, worksheet.resultados_intermedios_l145, 0.002); end
  def test_resultados_intermedios_m145; assert_in_epsilon(19.83931176212267, worksheet.resultados_intermedios_m145, 0.002); end
  def test_resultados_intermedios_c146; assert_equal("III.a", worksheet.resultados_intermedios_c146.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d146; assert_equal("Plantas Eólicas", worksheet.resultados_intermedios_d146.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f146; assert_in_epsilon(1.0105, worksheet.resultados_intermedios_f146, 0.002); end
  def test_resultados_intermedios_g146; assert_in_epsilon(1.778, worksheet.resultados_intermedios_g146, 0.002); end
  def test_resultados_intermedios_h146; assert_in_epsilon(1.884, worksheet.resultados_intermedios_h146, 0.002); end
  def test_resultados_intermedios_i146; assert_in_epsilon(1.9899999999999998, worksheet.resultados_intermedios_i146, 0.002); end
  def test_resultados_intermedios_j146; assert_in_epsilon(2.0959999999999996, worksheet.resultados_intermedios_j146, 0.002); end
  def test_resultados_intermedios_k146; assert_in_epsilon(2.2019999999999995, worksheet.resultados_intermedios_k146, 0.002); end
  def test_resultados_intermedios_l146; assert_in_epsilon(2.3079999999999994, worksheet.resultados_intermedios_l146, 0.002); end
  def test_resultados_intermedios_m146; assert_in_epsilon(2.4139999999999993, worksheet.resultados_intermedios_m146, 0.002); end
  def test_resultados_intermedios_c147; assert_equal("III.b.1", worksheet.resultados_intermedios_c147.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d147; assert_equal("Mini Hidráulica de Pasada", worksheet.resultados_intermedios_d147.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f147; assert_in_delta(0.39, worksheet.resultados_intermedios_f147, 0.002); end
  def test_resultados_intermedios_g147; assert_in_delta(0.48, worksheet.resultados_intermedios_g147, 0.002); end
  def test_resultados_intermedios_h147; assert_in_delta(0.57, worksheet.resultados_intermedios_h147, 0.002); end
  def test_resultados_intermedios_i147; assert_in_delta(0.66, worksheet.resultados_intermedios_i147, 0.002); end
  def test_resultados_intermedios_j147; assert_in_delta(0.74, worksheet.resultados_intermedios_j147, 0.002); end
  def test_resultados_intermedios_k147; assert_in_delta(0.83, worksheet.resultados_intermedios_k147, 0.002); end
  def test_resultados_intermedios_l147; assert_in_delta(0.92, worksheet.resultados_intermedios_l147, 0.002); end
  def test_resultados_intermedios_m147; assert_in_delta(1.0, worksheet.resultados_intermedios_m147, 0.002); end
  def test_resultados_intermedios_c148; assert_equal("III.b.2", worksheet.resultados_intermedios_c148.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d148; assert_equal("Hidráulica de Pasada", worksheet.resultados_intermedios_d148.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f148; assert_in_epsilon(2.08, worksheet.resultados_intermedios_f148, 0.002); end
  def test_resultados_intermedios_g148; assert_in_epsilon(2.1670000000000003, worksheet.resultados_intermedios_g148, 0.002); end
  def test_resultados_intermedios_h148; assert_in_epsilon(2.2540000000000004, worksheet.resultados_intermedios_h148, 0.002); end
  def test_resultados_intermedios_i148; assert_in_epsilon(2.3410000000000006, worksheet.resultados_intermedios_i148, 0.002); end
  def test_resultados_intermedios_j148; assert_in_epsilon(2.428000000000001, worksheet.resultados_intermedios_j148, 0.002); end
  def test_resultados_intermedios_k148; assert_in_epsilon(2.515000000000001, worksheet.resultados_intermedios_k148, 0.002); end
  def test_resultados_intermedios_l148; assert_in_epsilon(2.602000000000001, worksheet.resultados_intermedios_l148, 0.002); end
  def test_resultados_intermedios_m148; assert_in_epsilon(2.6890000000000014, worksheet.resultados_intermedios_m148, 0.002); end
  def test_resultados_intermedios_c149; assert_equal("III.b.3", worksheet.resultados_intermedios_c149.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d149; assert_equal("Hidráulica de Embalse", worksheet.resultados_intermedios_d149.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f149; assert_in_epsilon(3.96, worksheet.resultados_intermedios_f149, 0.002); end
  def test_resultados_intermedios_g149; assert_in_epsilon(4.047, worksheet.resultados_intermedios_g149, 0.002); end
  def test_resultados_intermedios_h149; assert_in_epsilon(4.1339999999999995, worksheet.resultados_intermedios_h149, 0.002); end
  def test_resultados_intermedios_i149; assert_in_epsilon(4.220999999999999, worksheet.resultados_intermedios_i149, 0.002); end
  def test_resultados_intermedios_j149; assert_in_epsilon(4.307999999999999, worksheet.resultados_intermedios_j149, 0.002); end
  def test_resultados_intermedios_k149; assert_in_epsilon(4.394999999999999, worksheet.resultados_intermedios_k149, 0.002); end
  def test_resultados_intermedios_l149; assert_in_epsilon(4.481999999999998, worksheet.resultados_intermedios_l149, 0.002); end
  def test_resultados_intermedios_m149; assert_in_epsilon(4.568999999999998, worksheet.resultados_intermedios_m149, 0.002); end
  def test_resultados_intermedios_c150; assert_equal("III.c", worksheet.resultados_intermedios_c150.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d150; assert_equal("Mareomotriz y Undimotriz", worksheet.resultados_intermedios_d150.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f150; assert_in_delta(0.0, (worksheet.resultados_intermedios_f150||0), 0.002); end
  def test_resultados_intermedios_g150; assert_in_delta(0.0, (worksheet.resultados_intermedios_g150||0), 0.002); end
  def test_resultados_intermedios_h150; assert_in_delta(0.005, worksheet.resultados_intermedios_h150, 0.002); end
  def test_resultados_intermedios_i150; assert_in_delta(0.007, worksheet.resultados_intermedios_i150, 0.002); end
  def test_resultados_intermedios_j150; assert_in_delta(0.0105, worksheet.resultados_intermedios_j150, 0.002); end
  def test_resultados_intermedios_k150; assert_in_delta(0.0261, worksheet.resultados_intermedios_k150, 0.002); end
  def test_resultados_intermedios_l150; assert_in_delta(0.0522, worksheet.resultados_intermedios_l150, 0.002); end
  def test_resultados_intermedios_m150; assert_in_delta(0.1044, worksheet.resultados_intermedios_m150, 0.002); end
  def test_resultados_intermedios_c151; assert_equal("III.d", worksheet.resultados_intermedios_c151.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d151; assert_equal("Geotérmica", worksheet.resultados_intermedios_d151.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f151; assert_in_delta(0.0, (worksheet.resultados_intermedios_f151||0), 0.002); end
  def test_resultados_intermedios_g151; assert_in_delta(0.05, worksheet.resultados_intermedios_g151, 0.002); end
  def test_resultados_intermedios_h151; assert_in_delta(0.05, worksheet.resultados_intermedios_h151, 0.002); end
  def test_resultados_intermedios_i151; assert_in_delta(0.05, worksheet.resultados_intermedios_i151, 0.002); end
  def test_resultados_intermedios_j151; assert_in_delta(0.05, worksheet.resultados_intermedios_j151, 0.002); end
  def test_resultados_intermedios_k151; assert_in_delta(0.05, worksheet.resultados_intermedios_k151, 0.002); end
  def test_resultados_intermedios_l151; assert_in_delta(0.05, worksheet.resultados_intermedios_l151, 0.002); end
  def test_resultados_intermedios_m151; assert_in_delta(0.05, worksheet.resultados_intermedios_m151, 0.002); end
  def test_resultados_intermedios_c152; assert_equal("III.e", worksheet.resultados_intermedios_c152.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d152; assert_equal("Plantas Solares", worksheet.resultados_intermedios_d152.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f152; assert_in_delta(0.59, worksheet.resultados_intermedios_f152, 0.002); end
  def test_resultados_intermedios_g152; assert_in_epsilon(1.79, worksheet.resultados_intermedios_g152, 0.002); end
  def test_resultados_intermedios_h152; assert_in_epsilon(2.59, worksheet.resultados_intermedios_h152, 0.002); end
  def test_resultados_intermedios_i152; assert_in_epsilon(2.9899999999999998, worksheet.resultados_intermedios_i152, 0.002); end
  def test_resultados_intermedios_j152; assert_in_epsilon(3.3099999999999996, worksheet.resultados_intermedios_j152, 0.002); end
  def test_resultados_intermedios_k152; assert_in_epsilon(3.5499999999999994, worksheet.resultados_intermedios_k152, 0.002); end
  def test_resultados_intermedios_l152; assert_in_epsilon(3.7099999999999995, worksheet.resultados_intermedios_l152, 0.002); end
  def test_resultados_intermedios_m152; assert_in_epsilon(3.8299999999999996, worksheet.resultados_intermedios_m152, 0.002); end
  def test_resultados_intermedios_c153; assert_equal("IV.a", worksheet.resultados_intermedios_c153.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d153; assert_equal("Solar de menor escala (GD)", worksheet.resultados_intermedios_d153.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f153; assert_in_delta(0.022, worksheet.resultados_intermedios_f153, 0.002); end
  def test_resultados_intermedios_g153; assert_in_delta(0.005693446141742871, worksheet.resultados_intermedios_g153, 0.002); end
  def test_resultados_intermedios_h153; assert_in_delta(0.0533719196798523, worksheet.resultados_intermedios_h153, 0.002); end
  def test_resultados_intermedios_i153; assert_in_delta(0.12945139797322508, worksheet.resultados_intermedios_i153, 0.002); end
  def test_resultados_intermedios_j153; assert_in_delta(0.17809632987987983, worksheet.resultados_intermedios_j153, 0.002); end
  def test_resultados_intermedios_k153; assert_in_delta(0.21346127805838486, worksheet.resultados_intermedios_k153, 0.002); end
  def test_resultados_intermedios_l153; assert_in_delta(0.24791444290759665, worksheet.resultados_intermedios_l153, 0.002); end
  def test_resultados_intermedios_m153; assert_in_delta(0.27892796563745037, worksheet.resultados_intermedios_m153, 0.002); end
  def test_resultados_intermedios_c155; assert_equal("V.a", worksheet.resultados_intermedios_c155.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d155; assert_equal("Residuos", worksheet.resultados_intermedios_d155.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f155; assert_in_delta(0.0, (worksheet.resultados_intermedios_f155||0), 0.002); end
  def test_resultados_intermedios_g155; assert_in_delta(0.0, (worksheet.resultados_intermedios_g155||0), 0.002); end
  def test_resultados_intermedios_h155; assert_in_delta(0.0, (worksheet.resultados_intermedios_h155||0), 0.002); end
  def test_resultados_intermedios_i155; assert_in_delta(0.0, (worksheet.resultados_intermedios_i155||0), 0.002); end
  def test_resultados_intermedios_j155; assert_in_delta(0.0, (worksheet.resultados_intermedios_j155||0), 0.002); end
  def test_resultados_intermedios_k155; assert_in_delta(0.0, (worksheet.resultados_intermedios_k155||0), 0.002); end
  def test_resultados_intermedios_l155; assert_in_delta(0.0, (worksheet.resultados_intermedios_l155||0), 0.002); end
  def test_resultados_intermedios_m155; assert_in_delta(0.0, (worksheet.resultados_intermedios_m155||0), 0.002); end
  def test_resultados_intermedios_c156; assert_equal("V.b", worksheet.resultados_intermedios_c156.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d156; assert_equal("Agropecuario", worksheet.resultados_intermedios_d156.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f156; assert_in_delta(0.0, (worksheet.resultados_intermedios_f156||0), 0.002); end
  def test_resultados_intermedios_g156; assert_in_delta(0.0, (worksheet.resultados_intermedios_g156||0), 0.002); end
  def test_resultados_intermedios_h156; assert_in_delta(0.0, (worksheet.resultados_intermedios_h156||0), 0.002); end
  def test_resultados_intermedios_i156; assert_in_delta(0.0, (worksheet.resultados_intermedios_i156||0), 0.002); end
  def test_resultados_intermedios_j156; assert_in_delta(0.0, (worksheet.resultados_intermedios_j156||0), 0.002); end
  def test_resultados_intermedios_k156; assert_in_delta(0.0, (worksheet.resultados_intermedios_k156||0), 0.002); end
  def test_resultados_intermedios_l156; assert_in_delta(0.0, (worksheet.resultados_intermedios_l156||0), 0.002); end
  def test_resultados_intermedios_m156; assert_in_delta(0.0, (worksheet.resultados_intermedios_m156||0), 0.002); end
  def test_resultados_intermedios_d159; assert_equal("Total generation", worksheet.resultados_intermedios_d159.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f159; assert_in_epsilon(15.966904995031156, worksheet.resultados_intermedios_f159, 0.002); end
  def test_resultados_intermedios_g159; assert_in_epsilon(18.28537263866032, worksheet.resultados_intermedios_g159, 0.002); end
  def test_resultados_intermedios_h159; assert_in_epsilon(21.048233362216582, worksheet.resultados_intermedios_h159, 0.002); end
  def test_resultados_intermedios_i159; assert_in_epsilon(23.541798551203645, worksheet.resultados_intermedios_i159, 0.002); end
  def test_resultados_intermedios_j159; assert_in_epsilon(26.30775030443991, worksheet.resultados_intermedios_j159, 0.002); end
  def test_resultados_intermedios_k159; assert_in_epsilon(29.20571575303891, worksheet.resultados_intermedios_k159, 0.002); end
  def test_resultados_intermedios_l159; assert_in_epsilon(32.111706319240035, worksheet.resultados_intermedios_l159, 0.002); end
  def test_resultados_intermedios_m159; assert_in_epsilon(34.77463972776012, worksheet.resultados_intermedios_m159, 0.002); end
  def test_resultados_intermedios_b162; assert_equal("Emisiones", worksheet.resultados_intermedios_b162.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c164; assert_equal("Emissions as % of base year, adjusted so that 2007 matches actuals", worksheet.resultados_intermedios_c164.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d165; assert_equal("IPCC Sector", worksheet.resultados_intermedios_d165.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f165; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_f165, 0.002); end
  def test_resultados_intermedios_g165; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_g165, 0.002); end
  def test_resultados_intermedios_h165; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_h165, 0.002); end
  def test_resultados_intermedios_i165; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_i165, 0.002); end
  def test_resultados_intermedios_j165; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_j165, 0.002); end
  def test_resultados_intermedios_k165; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_k165, 0.002); end
  def test_resultados_intermedios_l165; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_l165, 0.002); end
  def test_resultados_intermedios_m165; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m165, 0.002); end
  def test_resultados_intermedios_c166; assert_equal("1A", worksheet.resultados_intermedios_c166.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d166; assert_equal("Fuel Combustion", worksheet.resultados_intermedios_d166.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c167; assert_equal("1B", worksheet.resultados_intermedios_c167.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d167; assert_equal("Fugitive Emissions from Fuels", worksheet.resultados_intermedios_d167.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c168; assert_in_delta(1.0, worksheet.resultados_intermedios_c168, 0.002); end
  def test_resultados_intermedios_d168; assert_equal("Fuel Combustion", worksheet.resultados_intermedios_d168.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f168; assert_in_delta(0.5666142690799937, worksheet.resultados_intermedios_f168, 0.002); end
  def test_resultados_intermedios_g168; assert_in_delta(0.49756796056738867, worksheet.resultados_intermedios_g168, 0.002); end
  def test_resultados_intermedios_h168; assert_in_delta(0.383120650406557, worksheet.resultados_intermedios_h168, 0.002); end
  def test_resultados_intermedios_i168; assert_in_delta(0.27389784555316077, worksheet.resultados_intermedios_i168, 0.002); end
  def test_resultados_intermedios_j168; assert_in_delta(0.21541899939474124, worksheet.resultados_intermedios_j168, 0.002); end
  def test_resultados_intermedios_k168; assert_in_delta(0.16926561435766743, worksheet.resultados_intermedios_k168, 0.002); end
  def test_resultados_intermedios_l168; assert_in_delta(0.14483788951662166, worksheet.resultados_intermedios_l168, 0.002); end
  def test_resultados_intermedios_m168; assert_in_delta(0.12298007749339059, worksheet.resultados_intermedios_m168, 0.002); end
  def test_resultados_intermedios_c169; assert_in_epsilon(2.0, worksheet.resultados_intermedios_c169, 0.002); end
  def test_resultados_intermedios_d169; assert_equal("Industrial Processes", worksheet.resultados_intermedios_d169.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f169; assert_in_delta(0.031015353852233273, worksheet.resultados_intermedios_f169, 0.002); end
  def test_resultados_intermedios_g169; assert_in_delta(0.02859934167746278, worksheet.resultados_intermedios_g169, 0.002); end
  def test_resultados_intermedios_h169; assert_in_delta(0.02650266982023434, worksheet.resultados_intermedios_h169, 0.002); end
  def test_resultados_intermedios_i169; assert_in_delta(0.024677906404740515, worksheet.resultados_intermedios_i169, 0.002); end
  def test_resultados_intermedios_j169; assert_in_delta(0.023085021706885575, worksheet.resultados_intermedios_j169, 0.002); end
  def test_resultados_intermedios_k169; assert_in_delta(0.021690206098606876, worksheet.resultados_intermedios_k169, 0.002); end
  def test_resultados_intermedios_l169; assert_in_delta(0.020464878723503537, worksheet.resultados_intermedios_l169, 0.002); end
  def test_resultados_intermedios_m169; assert_in_delta(0.019384855987054535, worksheet.resultados_intermedios_m169, 0.002); end
  def test_resultados_intermedios_c170; assert_in_epsilon(3.0, worksheet.resultados_intermedios_c170, 0.002); end
  def test_resultados_intermedios_d170; assert_equal("Solvent and Other Product Use", worksheet.resultados_intermedios_d170.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f170; assert_in_delta(0.0, (worksheet.resultados_intermedios_f170||0), 0.002); end
  def test_resultados_intermedios_g170; assert_in_delta(0.0, (worksheet.resultados_intermedios_g170||0), 0.002); end
  def test_resultados_intermedios_h170; assert_in_delta(0.0, (worksheet.resultados_intermedios_h170||0), 0.002); end
  def test_resultados_intermedios_i170; assert_in_delta(0.0, (worksheet.resultados_intermedios_i170||0), 0.002); end
  def test_resultados_intermedios_j170; assert_in_delta(0.0, (worksheet.resultados_intermedios_j170||0), 0.002); end
  def test_resultados_intermedios_k170; assert_in_delta(0.0, (worksheet.resultados_intermedios_k170||0), 0.002); end
  def test_resultados_intermedios_l170; assert_in_delta(0.0, (worksheet.resultados_intermedios_l170||0), 0.002); end
  def test_resultados_intermedios_m170; assert_in_delta(0.0, (worksheet.resultados_intermedios_m170||0), 0.002); end
  def test_resultados_intermedios_c171; assert_in_epsilon(4.0, worksheet.resultados_intermedios_c171, 0.002); end
  def test_resultados_intermedios_d171; assert_equal("Agriculture", worksheet.resultados_intermedios_d171.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f171; assert_in_delta(0.05049177286433997, worksheet.resultados_intermedios_f171, 0.002); end
  def test_resultados_intermedios_g171; assert_in_delta(0.04693251857542914, worksheet.resultados_intermedios_g171, 0.002); end
  def test_resultados_intermedios_h171; assert_in_delta(0.04624310938769958, worksheet.resultados_intermedios_h171, 0.002); end
  def test_resultados_intermedios_i171; assert_in_delta(0.04556434943713425, worksheet.resultados_intermedios_i171, 0.002); end
  def test_resultados_intermedios_j171; assert_in_delta(0.044896066341011086, worksheet.resultados_intermedios_j171, 0.002); end
  def test_resultados_intermedios_k171; assert_in_delta(0.0442380906207574, worksheet.resultados_intermedios_k171, 0.002); end
  def test_resultados_intermedios_l171; assert_in_delta(0.04359025565145329, worksheet.resultados_intermedios_l171, 0.002); end
  def test_resultados_intermedios_m171; assert_in_delta(0.042952397612233774, worksheet.resultados_intermedios_m171, 0.002); end
  def test_resultados_intermedios_c172; assert_in_epsilon(5.0, worksheet.resultados_intermedios_c172, 0.002); end
  def test_resultados_intermedios_d172; assert_equal("LULUCF", worksheet.resultados_intermedios_d172.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f172; assert_in_delta(0.00634281969044122, worksheet.resultados_intermedios_f172, 0.002); end
  def test_resultados_intermedios_g172; assert_in_delta(0.009293334141555806, worksheet.resultados_intermedios_g172, 0.002); end
  def test_resultados_intermedios_h172; assert_in_delta(0.011385702638130627, worksheet.resultados_intermedios_h172, 0.002); end
  def test_resultados_intermedios_i172; assert_in_delta(0.011023128415900701, worksheet.resultados_intermedios_i172, 0.002); end
  def test_resultados_intermedios_j172; assert_in_delta(0.009784390024853453, worksheet.resultados_intermedios_j172, 0.002); end
  def test_resultados_intermedios_k172; assert_in_delta(0.006449923524873488, worksheet.resultados_intermedios_k172, 0.002); end
  def test_resultados_intermedios_l172; assert_in_delta(0.003196676164413437, worksheet.resultados_intermedios_l172, 0.002); end
  def test_resultados_intermedios_m172; assert_in_delta(0.000870060929393205, worksheet.resultados_intermedios_m172, 0.002); end
  def test_resultados_intermedios_c173; assert_in_epsilon(6.0, worksheet.resultados_intermedios_c173, 0.002); end
  def test_resultados_intermedios_d173; assert_equal("Waste", worksheet.resultados_intermedios_d173.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f173; assert_in_delta(0.016596039207458665, worksheet.resultados_intermedios_f173, 0.002); end
  def test_resultados_intermedios_g173; assert_in_delta(0.01372850110434167, worksheet.resultados_intermedios_g173, 0.002); end
  def test_resultados_intermedios_h173; assert_in_delta(0.01103301161196881, worksheet.resultados_intermedios_h173, 0.002); end
  def test_resultados_intermedios_i173; assert_in_delta(0.008653761114286621, worksheet.resultados_intermedios_i173, 0.002); end
  def test_resultados_intermedios_j173; assert_in_delta(0.007324159328432021, worksheet.resultados_intermedios_j173, 0.002); end
  def test_resultados_intermedios_k173; assert_in_delta(0.006127480985154122, worksheet.resultados_intermedios_k173, 0.002); end
  def test_resultados_intermedios_l173; assert_in_delta(0.00511874976725104, worksheet.resultados_intermedios_l173, 0.002); end
  def test_resultados_intermedios_m173; assert_in_delta(0.004194433834729677, worksheet.resultados_intermedios_m173, 0.002); end
  def test_resultados_intermedios_c174; assert_in_epsilon(7.0, worksheet.resultados_intermedios_c174, 0.002); end
  def test_resultados_intermedios_d174; assert_equal("Other", worksheet.resultados_intermedios_d174.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f174; assert_in_delta(0.0, (worksheet.resultados_intermedios_f174||0), 0.002); end
  def test_resultados_intermedios_g174; assert_in_delta(0.0, (worksheet.resultados_intermedios_g174||0), 0.002); end
  def test_resultados_intermedios_h174; assert_in_delta(0.0, (worksheet.resultados_intermedios_h174||0), 0.002); end
  def test_resultados_intermedios_i174; assert_in_delta(0.0, (worksheet.resultados_intermedios_i174||0), 0.002); end
  def test_resultados_intermedios_j174; assert_in_delta(0.0, (worksheet.resultados_intermedios_j174||0), 0.002); end
  def test_resultados_intermedios_k174; assert_in_delta(0.0, (worksheet.resultados_intermedios_k174||0), 0.002); end
  def test_resultados_intermedios_l174; assert_in_delta(0.0, (worksheet.resultados_intermedios_l174||0), 0.002); end
  def test_resultados_intermedios_m174; assert_in_delta(0.0, (worksheet.resultados_intermedios_m174||0), 0.002); end
  def test_resultados_intermedios_c175; assert_equal("X1", worksheet.resultados_intermedios_c175.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d175; assert_equal("Int'l Aviation & Shipping", worksheet.resultados_intermedios_d175.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f175; assert_in_delta(0.06678526920979913, worksheet.resultados_intermedios_f175, 0.002); end
  def test_resultados_intermedios_g175; assert_in_delta(0.07492530397813844, worksheet.resultados_intermedios_g175, 0.002); end
  def test_resultados_intermedios_h175; assert_in_delta(0.08062608061523933, worksheet.resultados_intermedios_h175, 0.002); end
  def test_resultados_intermedios_i175; assert_in_delta(0.08604500503866754, worksheet.resultados_intermedios_i175, 0.002); end
  def test_resultados_intermedios_j175; assert_in_delta(0.0929796579098647, worksheet.resultados_intermedios_j175, 0.002); end
  def test_resultados_intermedios_k175; assert_in_delta(0.0978014262914467, worksheet.resultados_intermedios_k175, 0.002); end
  def test_resultados_intermedios_l175; assert_in_delta(0.10206898654018598, worksheet.resultados_intermedios_l175, 0.002); end
  def test_resultados_intermedios_m175; assert_in_delta(0.10371382535343145, worksheet.resultados_intermedios_m175, 0.002); end
  def test_resultados_intermedios_c176; assert_equal("X2", worksheet.resultados_intermedios_c176.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d176; assert_equal("Bioenergy credit", worksheet.resultados_intermedios_d176.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f176; assert_in_delta(-0.017453519657635558, worksheet.resultados_intermedios_f176, 0.002); end
  def test_resultados_intermedios_g176; assert_in_delta(-0.02773299341495334, worksheet.resultados_intermedios_g176, 0.002); end
  def test_resultados_intermedios_h176; assert_in_delta(-0.040816383413641556, worksheet.resultados_intermedios_h176, 0.002); end
  def test_resultados_intermedios_i176; assert_in_delta(-0.04727435965597488, worksheet.resultados_intermedios_i176, 0.002); end
  def test_resultados_intermedios_j176; assert_in_delta(-0.053673039043582636, worksheet.resultados_intermedios_j176, 0.002); end
  def test_resultados_intermedios_k176; assert_in_delta(-0.06052434169369507, worksheet.resultados_intermedios_k176, 0.002); end
  def test_resultados_intermedios_l176; assert_in_delta(-0.06772194363999141, worksheet.resultados_intermedios_l176, 0.002); end
  def test_resultados_intermedios_m176; assert_in_delta(-0.0748942403233331, worksheet.resultados_intermedios_m176, 0.002); end
  def test_resultados_intermedios_c177; assert_equal("X3", worksheet.resultados_intermedios_c177.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d177; assert_equal("Carbon capture", worksheet.resultados_intermedios_d177.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f177; assert_in_delta(-0.0036276582386970545, worksheet.resultados_intermedios_f177, 0.002); end
  def test_resultados_intermedios_g177; assert_in_delta(-0.008545692153965634, worksheet.resultados_intermedios_g177, 0.002); end
  def test_resultados_intermedios_h177; assert_in_delta(-0.008780202343815213, worksheet.resultados_intermedios_h177, 0.002); end
  def test_resultados_intermedios_i177; assert_in_delta(-0.008968344538278985, worksheet.resultados_intermedios_i177, 0.002); end
  def test_resultados_intermedios_j177; assert_in_delta(-0.009841987398096915, worksheet.resultados_intermedios_j177, 0.002); end
  def test_resultados_intermedios_k177; assert_in_delta(-0.011412441542302683, worksheet.resultados_intermedios_k177, 0.002); end
  def test_resultados_intermedios_l177; assert_in_delta(-0.012966712827513958, worksheet.resultados_intermedios_l177, 0.002); end
  def test_resultados_intermedios_m177; assert_in_delta(-0.01492064372170406, worksheet.resultados_intermedios_m177, 0.002); end
  def test_resultados_intermedios_d178; assert_equal("Total", worksheet.resultados_intermedios_d178.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f178; assert_in_delta(0.7167643460079334, worksheet.resultados_intermedios_f178, 0.002); end
  def test_resultados_intermedios_g178; assert_in_delta(0.6347682744753974, worksheet.resultados_intermedios_g178, 0.002); end
  def test_resultados_intermedios_h178; assert_in_delta(0.5093146387223728, worksheet.resultados_intermedios_h178, 0.002); end
  def test_resultados_intermedios_i178; assert_in_delta(0.39361929176963645, worksheet.resultados_intermedios_i178, 0.002); end
  def test_resultados_intermedios_j178; assert_in_delta(0.3299732682641085, worksheet.resultados_intermedios_j178, 0.002); end
  def test_resultados_intermedios_k178; assert_in_delta(0.2736359586425082, worksheet.resultados_intermedios_k178, 0.002); end
  def test_resultados_intermedios_l178; assert_in_delta(0.23858877989592361, worksheet.resultados_intermedios_l178, 0.002); end
  def test_resultados_intermedios_m178; assert_in_delta(0.20428076716519608, worksheet.resultados_intermedios_m178, 0.002); end
  def test_resultados_intermedios_c180; assert_equal("Excluding international bunkers", worksheet.resultados_intermedios_c180.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f180; assert_in_delta(0.6687716682560517, worksheet.resultados_intermedios_f180, 0.002); end
  def test_resultados_intermedios_g180; assert_in_delta(0.5760294918803305, worksheet.resultados_intermedios_g180, 0.002); end
  def test_resultados_intermedios_h180; assert_in_delta(0.4410830631347058, worksheet.resultados_intermedios_h180, 0.002); end
  def test_resultados_intermedios_i180; assert_in_delta(0.3164670620830142, worksheet.resultados_intermedios_i180, 0.002); end
  def test_resultados_intermedios_j180; assert_in_delta(0.24384571414728232, worksheet.resultados_intermedios_j180, 0.002); end
  def test_resultados_intermedios_k180; assert_in_delta(0.18091836758302815, worksheet.resultados_intermedios_k180, 0.002); end
  def test_resultados_intermedios_l180; assert_in_delta(0.14046693687779055, worksheet.resultados_intermedios_l180, 0.002); end
  def test_resultados_intermedios_m180; assert_in_delta(0.10347459456414333, worksheet.resultados_intermedios_m180, 0.002); end
  def test_resultados_intermedios_e182; assert_equal("Adjustment factor:", worksheet.resultados_intermedios_e182.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l182; assert_equal("% reduction 1990-2050", worksheet.resultados_intermedios_l182.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m182; assert_in_delta(0.795719232834804, worksheet.resultados_intermedios_m182, 0.002); end
  def test_resultados_intermedios_d183; assert_equal("Mt CO2e", worksheet.resultados_intermedios_d183.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c184; assert_equal("Emisiones por sector", worksheet.resultados_intermedios_c184.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f184; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_f184, 0.002); end
  def test_resultados_intermedios_g184; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_g184, 0.002); end
  def test_resultados_intermedios_h184; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_h184, 0.002); end
  def test_resultados_intermedios_i184; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_i184, 0.002); end
  def test_resultados_intermedios_j184; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_j184, 0.002); end
  def test_resultados_intermedios_k184; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_k184, 0.002); end
  def test_resultados_intermedios_l184; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_l184, 0.002); end
  def test_resultados_intermedios_m184; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m184, 0.002); end
  def test_resultados_intermedios_c185; assert_equal("I.a", worksheet.resultados_intermedios_c185.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d185; assert_equal("Termoelectricidad", worksheet.resultados_intermedios_d185.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f185; assert_in_epsilon(28.282873684358243, worksheet.resultados_intermedios_f185, 0.002); end
  def test_resultados_intermedios_g185; assert_in_epsilon(31.0104170487364, worksheet.resultados_intermedios_g185, 0.002); end
  def test_resultados_intermedios_h185; assert_in_epsilon(37.321690649147655, worksheet.resultados_intermedios_h185, 0.002); end
  def test_resultados_intermedios_i185; assert_in_epsilon(44.064470943903444, worksheet.resultados_intermedios_i185, 0.002); end
  def test_resultados_intermedios_j185; assert_in_epsilon(52.39849199864721, worksheet.resultados_intermedios_j185, 0.002); end
  def test_resultados_intermedios_k185; assert_in_epsilon(61.56514886814706, worksheet.resultados_intermedios_k185, 0.002); end
  def test_resultados_intermedios_l185; assert_in_epsilon(71.05322013009346, worksheet.resultados_intermedios_l185, 0.002); end
  def test_resultados_intermedios_m185; assert_in_epsilon(79.65733609318178, worksheet.resultados_intermedios_m185, 0.002); end
  def test_resultados_intermedios_c186; assert_equal("III.a", worksheet.resultados_intermedios_c186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d186; assert_equal("Plantas Eólicas", worksheet.resultados_intermedios_d186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f186; assert_equal("-", worksheet.resultados_intermedios_f186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g186; assert_equal("-", worksheet.resultados_intermedios_g186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h186; assert_equal("-", worksheet.resultados_intermedios_h186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i186; assert_equal("-", worksheet.resultados_intermedios_i186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j186; assert_equal("-", worksheet.resultados_intermedios_j186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k186; assert_equal("-", worksheet.resultados_intermedios_k186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l186; assert_equal("-", worksheet.resultados_intermedios_l186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m186; assert_equal("-", worksheet.resultados_intermedios_m186.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c187; assert_equal("III.b.1", worksheet.resultados_intermedios_c187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d187; assert_equal("Mini Hidráulica de Pasada", worksheet.resultados_intermedios_d187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f187; assert_equal("-", worksheet.resultados_intermedios_f187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g187; assert_equal("-", worksheet.resultados_intermedios_g187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h187; assert_equal("-", worksheet.resultados_intermedios_h187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i187; assert_equal("-", worksheet.resultados_intermedios_i187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j187; assert_equal("-", worksheet.resultados_intermedios_j187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k187; assert_equal("-", worksheet.resultados_intermedios_k187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l187; assert_equal("-", worksheet.resultados_intermedios_l187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m187; assert_equal("-", worksheet.resultados_intermedios_m187.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c188; assert_equal("III.b.2", worksheet.resultados_intermedios_c188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d188; assert_equal("Hidráulica de Pasada", worksheet.resultados_intermedios_d188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f188; assert_equal("-", worksheet.resultados_intermedios_f188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g188; assert_equal("-", worksheet.resultados_intermedios_g188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h188; assert_equal("-", worksheet.resultados_intermedios_h188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i188; assert_equal("-", worksheet.resultados_intermedios_i188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j188; assert_equal("-", worksheet.resultados_intermedios_j188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k188; assert_equal("-", worksheet.resultados_intermedios_k188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l188; assert_equal("-", worksheet.resultados_intermedios_l188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m188; assert_equal("-", worksheet.resultados_intermedios_m188.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c189; assert_equal("III.b.3", worksheet.resultados_intermedios_c189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d189; assert_equal("Hidráulica de Embalse", worksheet.resultados_intermedios_d189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f189; assert_equal("-", worksheet.resultados_intermedios_f189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g189; assert_equal("-", worksheet.resultados_intermedios_g189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h189; assert_equal("-", worksheet.resultados_intermedios_h189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i189; assert_equal("-", worksheet.resultados_intermedios_i189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j189; assert_equal("-", worksheet.resultados_intermedios_j189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k189; assert_equal("-", worksheet.resultados_intermedios_k189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l189; assert_equal("-", worksheet.resultados_intermedios_l189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m189; assert_equal("-", worksheet.resultados_intermedios_m189.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c190; assert_equal("III.c", worksheet.resultados_intermedios_c190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d190; assert_equal("Mareomotriz y Undimotriz", worksheet.resultados_intermedios_d190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f190; assert_equal("-", worksheet.resultados_intermedios_f190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g190; assert_equal("-", worksheet.resultados_intermedios_g190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h190; assert_equal("-", worksheet.resultados_intermedios_h190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i190; assert_equal("-", worksheet.resultados_intermedios_i190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j190; assert_equal("-", worksheet.resultados_intermedios_j190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k190; assert_equal("-", worksheet.resultados_intermedios_k190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l190; assert_equal("-", worksheet.resultados_intermedios_l190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m190; assert_equal("-", worksheet.resultados_intermedios_m190.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c191; assert_equal("III.d", worksheet.resultados_intermedios_c191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d191; assert_equal("Geotérmica", worksheet.resultados_intermedios_d191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f191; assert_equal("-", worksheet.resultados_intermedios_f191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g191; assert_equal("-", worksheet.resultados_intermedios_g191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h191; assert_equal("-", worksheet.resultados_intermedios_h191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i191; assert_equal("-", worksheet.resultados_intermedios_i191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j191; assert_equal("-", worksheet.resultados_intermedios_j191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k191; assert_equal("-", worksheet.resultados_intermedios_k191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l191; assert_equal("-", worksheet.resultados_intermedios_l191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m191; assert_equal("-", worksheet.resultados_intermedios_m191.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c192; assert_equal("III.e", worksheet.resultados_intermedios_c192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d192; assert_equal("Plantas Solares", worksheet.resultados_intermedios_d192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f192; assert_equal("-", worksheet.resultados_intermedios_f192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g192; assert_equal("-", worksheet.resultados_intermedios_g192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h192; assert_equal("-", worksheet.resultados_intermedios_h192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i192; assert_equal("-", worksheet.resultados_intermedios_i192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j192; assert_equal("-", worksheet.resultados_intermedios_j192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k192; assert_equal("-", worksheet.resultados_intermedios_k192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l192; assert_equal("-", worksheet.resultados_intermedios_l192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m192; assert_equal("-", worksheet.resultados_intermedios_m192.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c193; assert_equal("IV.a", worksheet.resultados_intermedios_c193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d193; assert_equal("Solar de menor escala (GD)", worksheet.resultados_intermedios_d193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f193; assert_equal("-", worksheet.resultados_intermedios_f193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g193; assert_equal("-", worksheet.resultados_intermedios_g193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h193; assert_equal("-", worksheet.resultados_intermedios_h193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i193; assert_equal("-", worksheet.resultados_intermedios_i193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j193; assert_equal("-", worksheet.resultados_intermedios_j193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k193; assert_equal("-", worksheet.resultados_intermedios_k193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l193; assert_equal("-", worksheet.resultados_intermedios_l193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m193; assert_equal("-", worksheet.resultados_intermedios_m193.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c194; assert_equal("IV.c", worksheet.resultados_intermedios_c194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d194; assert_equal("Eólico de menor escala (GD)", worksheet.resultados_intermedios_d194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f194; assert_equal("-", worksheet.resultados_intermedios_f194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g194; assert_equal("-", worksheet.resultados_intermedios_g194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h194; assert_equal("-", worksheet.resultados_intermedios_h194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i194; assert_equal("-", worksheet.resultados_intermedios_i194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j194; assert_equal("-", worksheet.resultados_intermedios_j194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k194; assert_equal("-", worksheet.resultados_intermedios_k194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l194; assert_equal("-", worksheet.resultados_intermedios_l194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m194; assert_equal("-", worksheet.resultados_intermedios_m194.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c195; assert_equal("V.a", worksheet.resultados_intermedios_c195.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d195; assert_equal("Residuos", worksheet.resultados_intermedios_d195.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f195; assert_in_epsilon(3.109643151780735, worksheet.resultados_intermedios_f195, 0.002); end
  def test_resultados_intermedios_g195; assert_in_epsilon(3.7985207352657593, worksheet.resultados_intermedios_g195, 0.002); end
  def test_resultados_intermedios_h195; assert_in_epsilon(4.470377260836178, worksheet.resultados_intermedios_h195, 0.002); end
  def test_resultados_intermedios_i195; assert_in_epsilon(5.161089721535043, worksheet.resultados_intermedios_i195, 0.002); end
  def test_resultados_intermedios_j195; assert_in_epsilon(5.829810437822885, worksheet.resultados_intermedios_j195, 0.002); end
  def test_resultados_intermedios_k195; assert_in_epsilon(6.494138205442351, worksheet.resultados_intermedios_k195, 0.002); end
  def test_resultados_intermedios_l195; assert_in_epsilon(7.145379054205324, worksheet.resultados_intermedios_l195, 0.002); end
  def test_resultados_intermedios_m195; assert_in_epsilon(7.796091713576472, worksheet.resultados_intermedios_m195, 0.002); end
  def test_resultados_intermedios_c196; assert_equal("V.b", worksheet.resultados_intermedios_c196.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d196; assert_equal("Agropecuario", worksheet.resultados_intermedios_d196.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f196; assert_in_epsilon(12.816572783657763, worksheet.resultados_intermedios_f196, 0.002); end
  def test_resultados_intermedios_g196; assert_in_epsilon(12.78736097645349, worksheet.resultados_intermedios_g196, 0.002); end
  def test_resultados_intermedios_h196; assert_in_epsilon(12.77852613371573, worksheet.resultados_intermedios_h196, 0.002); end
  def test_resultados_intermedios_i196; assert_in_epsilon(12.913262357995444, worksheet.resultados_intermedios_i196, 0.002); end
  def test_resultados_intermedios_j196; assert_in_epsilon(13.100772485088362, worksheet.resultados_intermedios_j196, 0.002); end
  def test_resultados_intermedios_k196; assert_in_epsilon(13.309006434440434, worksheet.resultados_intermedios_k196, 0.002); end
  def test_resultados_intermedios_l196; assert_in_epsilon(13.522309091729012, worksheet.resultados_intermedios_l196, 0.002); end
  def test_resultados_intermedios_m196; assert_in_epsilon(13.732410206521122, worksheet.resultados_intermedios_m196, 0.002); end
  def test_resultados_intermedios_c197; assert_equal("X.a", worksheet.resultados_intermedios_c197.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d197; assert_equal("Residencial", worksheet.resultados_intermedios_d197.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f197; assert_in_epsilon(6.082129133163526, worksheet.resultados_intermedios_f197, 0.002); end
  def test_resultados_intermedios_g197; assert_in_epsilon(7.25504189081435, worksheet.resultados_intermedios_g197, 0.002); end
  def test_resultados_intermedios_h197; assert_in_epsilon(8.639321741507763, worksheet.resultados_intermedios_h197, 0.002); end
  def test_resultados_intermedios_i197; assert_in_epsilon(10.113707400902864, worksheet.resultados_intermedios_i197, 0.002); end
  def test_resultados_intermedios_j197; assert_in_epsilon(11.713850659765072, worksheet.resultados_intermedios_j197, 0.002); end
  def test_resultados_intermedios_k197; assert_in_epsilon(13.704434327263904, worksheet.resultados_intermedios_k197, 0.002); end
  def test_resultados_intermedios_l197; assert_in_epsilon(16.19100270698397, worksheet.resultados_intermedios_l197, 0.002); end
  def test_resultados_intermedios_m197; assert_in_epsilon(18.75215737326751, worksheet.resultados_intermedios_m197, 0.002); end
  def test_resultados_intermedios_c198; assert_equal("X.b", worksheet.resultados_intermedios_c198.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d198; assert_equal("Comercial y Púbico", worksheet.resultados_intermedios_d198.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f198; assert_in_epsilon(2.006872315215893, worksheet.resultados_intermedios_f198, 0.002); end
  def test_resultados_intermedios_g198; assert_in_epsilon(2.1992460143489043, worksheet.resultados_intermedios_g198, 0.002); end
  def test_resultados_intermedios_h198; assert_in_epsilon(2.5620733079933875, worksheet.resultados_intermedios_h198, 0.002); end
  def test_resultados_intermedios_i198; assert_in_epsilon(2.9902471723562, worksheet.resultados_intermedios_i198, 0.002); end
  def test_resultados_intermedios_j198; assert_in_epsilon(3.431569865310332, worksheet.resultados_intermedios_j198, 0.002); end
  def test_resultados_intermedios_k198; assert_in_epsilon(3.8868286697186196, worksheet.resultados_intermedios_k198, 0.002); end
  def test_resultados_intermedios_l198; assert_in_epsilon(4.367296580493904, worksheet.resultados_intermedios_l198, 0.002); end
  def test_resultados_intermedios_m198; assert_in_epsilon(4.672695092978926, worksheet.resultados_intermedios_m198, 0.002); end
  def test_resultados_intermedios_c199; assert_equal("XI.a", worksheet.resultados_intermedios_c199.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d199; assert_equal("Procesos Industriales", worksheet.resultados_intermedios_d199.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f199; assert_in_epsilon(17.2290066718996, worksheet.resultados_intermedios_f199, 0.002); end
  def test_resultados_intermedios_g199; assert_in_epsilon(20.12425513445127, worksheet.resultados_intermedios_g199, 0.002); end
  def test_resultados_intermedios_h199; assert_in_epsilon(22.83763189901457, worksheet.resultados_intermedios_h199, 0.002); end
  def test_resultados_intermedios_i199; assert_in_epsilon(24.989807423534224, worksheet.resultados_intermedios_i199, 0.002); end
  def test_resultados_intermedios_j199; assert_in_epsilon(27.724367626797086, worksheet.resultados_intermedios_j199, 0.002); end
  def test_resultados_intermedios_k199; assert_in_epsilon(30.574886721331566, worksheet.resultados_intermedios_k199, 0.002); end
  def test_resultados_intermedios_l199; assert_in_epsilon(33.29370571092587, worksheet.resultados_intermedios_l199, 0.002); end
  def test_resultados_intermedios_m199; assert_in_epsilon(35.839428050646156, worksheet.resultados_intermedios_m199, 0.002); end
  def test_resultados_intermedios_c200; assert_equal("XII.a", worksheet.resultados_intermedios_c200.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d200; assert_equal("Transporte de pasajeros", worksheet.resultados_intermedios_d200.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f200; assert_in_epsilon(20.71456213078961, worksheet.resultados_intermedios_f200, 0.002); end
  def test_resultados_intermedios_g200; assert_in_epsilon(22.269016509379114, worksheet.resultados_intermedios_g200, 0.002); end
  def test_resultados_intermedios_h200; assert_in_epsilon(26.461293293978482, worksheet.resultados_intermedios_h200, 0.002); end
  def test_resultados_intermedios_i200; assert_in_epsilon(32.15864431861531, worksheet.resultados_intermedios_i200, 0.002); end
  def test_resultados_intermedios_j200; assert_in_epsilon(37.05270632781145, worksheet.resultados_intermedios_j200, 0.002); end
  def test_resultados_intermedios_k200; assert_in_epsilon(40.32853366014827, worksheet.resultados_intermedios_k200, 0.002); end
  def test_resultados_intermedios_l200; assert_in_epsilon(42.64642784048093, worksheet.resultados_intermedios_l200, 0.002); end
  def test_resultados_intermedios_m200; assert_in_epsilon(44.50114987079411, worksheet.resultados_intermedios_m200, 0.002); end
  def test_resultados_intermedios_c201; assert_equal("XII.b", worksheet.resultados_intermedios_c201.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d201; assert_equal("Transporte de carga", worksheet.resultados_intermedios_d201.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f201; assert_in_epsilon(4.15442722318817, worksheet.resultados_intermedios_f201, 0.002); end
  def test_resultados_intermedios_g201; assert_in_epsilon(4.4754231594602185, worksheet.resultados_intermedios_g201, 0.002); end
  def test_resultados_intermedios_h201; assert_in_epsilon(4.877757901706274, worksheet.resultados_intermedios_h201, 0.002); end
  def test_resultados_intermedios_i201; assert_in_epsilon(5.3144001358687, worksheet.resultados_intermedios_i201, 0.002); end
  def test_resultados_intermedios_j201; assert_in_epsilon(5.763621187589338, worksheet.resultados_intermedios_j201, 0.002); end
  def test_resultados_intermedios_k201; assert_in_epsilon(6.248510909657842, worksheet.resultados_intermedios_k201, 0.002); end
  def test_resultados_intermedios_l201; assert_in_epsilon(6.770777603344281, worksheet.resultados_intermedios_l201, 0.002); end
  def test_resultados_intermedios_m201; assert_in_epsilon(7.320366416794851, worksheet.resultados_intermedios_m201, 0.002); end
  def test_resultados_intermedios_c202; assert_equal("XV.b", worksheet.resultados_intermedios_c202.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d202; assert_equal("Producción nacional combustibles fósiles", worksheet.resultados_intermedios_d202.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f202; assert_in_delta(0.6161184304966076, worksheet.resultados_intermedios_f202, 0.002); end
  def test_resultados_intermedios_g202; assert_in_epsilon(4.027349051640296, worksheet.resultados_intermedios_g202, 0.002); end
  def test_resultados_intermedios_h202; assert_in_epsilon(4.742041577728964, worksheet.resultados_intermedios_h202, 0.002); end
  def test_resultados_intermedios_i202; assert_in_epsilon(5.448901414046144, worksheet.resultados_intermedios_i202, 0.002); end
  def test_resultados_intermedios_j202; assert_in_epsilon(6.328230166134116, worksheet.resultados_intermedios_j202, 0.002); end
  def test_resultados_intermedios_k202; assert_in_epsilon(7.283471579524307, worksheet.resultados_intermedios_k202, 0.002); end
  def test_resultados_intermedios_l202; assert_in_epsilon(8.254618362555012, worksheet.resultados_intermedios_l202, 0.002); end
  def test_resultados_intermedios_m202; assert_in_epsilon(9.141377917143764, worksheet.resultados_intermedios_m202, 0.002); end
  def test_resultados_intermedios_d204; assert_equal("Total ", worksheet.resultados_intermedios_d204.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f204; assert_in_epsilon(95.01220552455014, worksheet.resultados_intermedios_f204, 0.002); end
  def test_resultados_intermedios_g204; assert_in_epsilon(107.9466305205498, worksheet.resultados_intermedios_g204, 0.002); end
  def test_resultados_intermedios_h204; assert_in_epsilon(124.69071376562901, worksheet.resultados_intermedios_h204, 0.002); end
  def test_resultados_intermedios_i204; assert_in_epsilon(143.15453088875736, worksheet.resultados_intermedios_i204, 0.002); end
  def test_resultados_intermedios_j204; assert_in_epsilon(163.34342075496588, worksheet.resultados_intermedios_j204, 0.002); end
  def test_resultados_intermedios_k204; assert_in_epsilon(183.39495937567438, worksheet.resultados_intermedios_k204, 0.002); end
  def test_resultados_intermedios_l204; assert_in_epsilon(203.24473708081175, worksheet.resultados_intermedios_l204, 0.002); end
  def test_resultados_intermedios_m204; assert_in_epsilon(221.4130127349047, worksheet.resultados_intermedios_m204, 0.002); end
  def test_resultados_intermedios_c206; assert_equal("Modelled emissions", worksheet.resultados_intermedios_c206.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f206; assert_in_epsilon(5427.224155211201, worksheet.resultados_intermedios_f206, 0.002); end
  def test_resultados_intermedios_g206; assert_in_epsilon(8035.741203226789, worksheet.resultados_intermedios_g206, 0.002); end
  def test_resultados_intermedios_h206; assert_in_epsilon(10221.972317208581, worksheet.resultados_intermedios_h206, 0.002); end
  def test_resultados_intermedios_i206; assert_in_epsilon(11940.871629683525, worksheet.resultados_intermedios_i206, 0.002); end
  def test_resultados_intermedios_j206; assert_in_epsilon(13329.72099306255, worksheet.resultados_intermedios_j206, 0.002); end
  def test_resultados_intermedios_k206; assert_in_epsilon(14487.008785473108, worksheet.resultados_intermedios_k206, 0.002); end
  def test_resultados_intermedios_l206; assert_in_epsilon(15474.073242213417, worksheet.resultados_intermedios_l206, 0.002); end
  def test_resultados_intermedios_m206; assert_in_epsilon(16325.923814654952, worksheet.resultados_intermedios_m206, 0.002); end
  def test_resultados_intermedios_d208; assert_equal("IPCC Sector", worksheet.resultados_intermedios_d208.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m208; assert_equal("Mt CO2e", worksheet.resultados_intermedios_m208.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c209; assert_equal("1A", worksheet.resultados_intermedios_c209.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d209; assert_equal("Fuel Combustion", worksheet.resultados_intermedios_d209.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f209; assert_in_epsilon(432.9486351160864, worksheet.resultados_intermedios_f209, 0.002); end
  def test_resultados_intermedios_g209; assert_in_epsilon(380.2013435880565, worksheet.resultados_intermedios_g209, 0.002); end
  def test_resultados_intermedios_h209; assert_in_epsilon(291.751832880052, worksheet.resultados_intermedios_h209, 0.002); end
  def test_resultados_intermedios_i209; assert_in_epsilon(208.7639772796904, worksheet.resultados_intermedios_i209, 0.002); end
  def test_resultados_intermedios_j209; assert_in_epsilon(164.1631998370255, worksheet.resultados_intermedios_j209, 0.002); end
  def test_resultados_intermedios_k209; assert_in_epsilon(128.93215009688996, worksheet.resultados_intermedios_k209, 0.002); end
  def test_resultados_intermedios_l209; assert_in_epsilon(110.28821991261275, worksheet.resultados_intermedios_l209, 0.002); end
  def test_resultados_intermedios_m209; assert_in_epsilon(93.5776790247781, worksheet.resultados_intermedios_m209, 0.002); end
  def test_resultados_intermedios_c210; assert_equal("1B", worksheet.resultados_intermedios_c210.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d210; assert_equal("Fugitive Emissions from Fuels", worksheet.resultados_intermedios_d210.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f210; assert_in_epsilon(9.860442600393736, worksheet.resultados_intermedios_f210, 0.002); end
  def test_resultados_intermedios_g210; assert_in_epsilon(8.648040805067335, worksheet.resultados_intermedios_g210, 0.002); end
  def test_resultados_intermedios_h210; assert_in_epsilon(7.656973283837122, worksheet.resultados_intermedios_h210, 0.002); end
  def test_resultados_intermedios_i210; assert_in_epsilon(5.287201796428684, worksheet.resultados_intermedios_i210, 0.002); end
  def test_resultados_intermedios_j210; assert_in_epsilon(4.186758238466292, worksheet.resultados_intermedios_j210, 0.002); end
  def test_resultados_intermedios_k210; assert_in_epsilon(3.3489354192435696, worksheet.resultados_intermedios_k210, 0.002); end
  def test_resultados_intermedios_l210; assert_in_epsilon(2.9025975007802494, worksheet.resultados_intermedios_l210, 0.002); end
  def test_resultados_intermedios_m210; assert_in_epsilon(2.5312572728735185, worksheet.resultados_intermedios_m210, 0.002); end
  def test_resultados_intermedios_c211; assert_in_delta(1.0, worksheet.resultados_intermedios_c211, 0.002); end
  def test_resultados_intermedios_d211; assert_equal("Fuel Combustion", worksheet.resultados_intermedios_d211.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f211; assert_in_epsilon(442.80907771648015, worksheet.resultados_intermedios_f211, 0.002); end
  def test_resultados_intermedios_g211; assert_in_epsilon(388.84938439312384, worksheet.resultados_intermedios_g211, 0.002); end
  def test_resultados_intermedios_h211; assert_in_epsilon(299.40880616388915, worksheet.resultados_intermedios_h211, 0.002); end
  def test_resultados_intermedios_i211; assert_in_epsilon(214.0511790761191, worksheet.resultados_intermedios_i211, 0.002); end
  def test_resultados_intermedios_j211; assert_in_epsilon(168.3499580754918, worksheet.resultados_intermedios_j211, 0.002); end
  def test_resultados_intermedios_k211; assert_in_epsilon(132.28108551613352, worksheet.resultados_intermedios_k211, 0.002); end
  def test_resultados_intermedios_l211; assert_in_epsilon(113.19081741339299, worksheet.resultados_intermedios_l211, 0.002); end
  def test_resultados_intermedios_m211; assert_in_epsilon(96.10893629765162, worksheet.resultados_intermedios_m211, 0.002); end
  def test_resultados_intermedios_c212; assert_in_epsilon(2.0, worksheet.resultados_intermedios_c212, 0.002); end
  def test_resultados_intermedios_d212; assert_equal("Industrial Processes", worksheet.resultados_intermedios_d212.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f212; assert_in_epsilon(24.23850048227213, worksheet.resultados_intermedios_f212, 0.002); end
  def test_resultados_intermedios_g212; assert_in_epsilon(22.350386854990937, worksheet.resultados_intermedios_g212, 0.002); end
  def test_resultados_intermedios_h212; assert_in_epsilon(20.7118377007649, worksheet.resultados_intermedios_h212, 0.002); end
  def test_resultados_intermedios_i212; assert_in_epsilon(19.285785006437997, worksheet.resultados_intermedios_i212, 0.002); end
  def test_resultados_intermedios_j212; assert_in_epsilon(18.040945540762166, worksheet.resultados_intermedios_j212, 0.002); end
  def test_resultados_intermedios_k212; assert_in_epsilon(16.95089707782936, worksheet.resultados_intermedios_k212, 0.002); end
  def test_resultados_intermedios_l212; assert_in_epsilon(15.9933036770291, worksheet.resultados_intermedios_l212, 0.002); end
  def test_resultados_intermedios_m212; assert_in_epsilon(15.149265858115129, worksheet.resultados_intermedios_m212, 0.002); end
  def test_resultados_intermedios_c213; assert_in_epsilon(3.0, worksheet.resultados_intermedios_c213, 0.002); end
  def test_resultados_intermedios_d213; assert_equal("Solvent and Other Product Use", worksheet.resultados_intermedios_d213.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f213; assert_in_delta(0.0, (worksheet.resultados_intermedios_f213||0), 0.002); end
  def test_resultados_intermedios_g213; assert_in_delta(0.0, (worksheet.resultados_intermedios_g213||0), 0.002); end
  def test_resultados_intermedios_h213; assert_in_delta(0.0, (worksheet.resultados_intermedios_h213||0), 0.002); end
  def test_resultados_intermedios_i213; assert_in_delta(0.0, (worksheet.resultados_intermedios_i213||0), 0.002); end
  def test_resultados_intermedios_j213; assert_in_delta(0.0, (worksheet.resultados_intermedios_j213||0), 0.002); end
  def test_resultados_intermedios_k213; assert_in_delta(0.0, (worksheet.resultados_intermedios_k213||0), 0.002); end
  def test_resultados_intermedios_l213; assert_in_delta(0.0, (worksheet.resultados_intermedios_l213||0), 0.002); end
  def test_resultados_intermedios_m213; assert_in_delta(0.0, (worksheet.resultados_intermedios_m213||0), 0.002); end
  def test_resultados_intermedios_c214; assert_in_epsilon(4.0, worksheet.resultados_intermedios_c214, 0.002); end
  def test_resultados_intermedios_d214; assert_equal("Agriculture", worksheet.resultados_intermedios_d214.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f214; assert_in_epsilon(39.459322848736605, worksheet.resultados_intermedios_f214, 0.002); end
  def test_resultados_intermedios_g214; assert_in_epsilon(36.67776545592671, worksheet.resultados_intermedios_g214, 0.002); end
  def test_resultados_intermedios_h214; assert_in_epsilon(36.13899214355766, worksheet.resultados_intermedios_h214, 0.002); end
  def test_resultados_intermedios_i214; assert_in_epsilon(35.60854121052921, worksheet.resultados_intermedios_i214, 0.002); end
  def test_resultados_intermedios_j214; assert_in_epsilon(35.086277939736014, worksheet.resultados_intermedios_j214, 0.002); end
  def test_resultados_intermedios_k214; assert_in_epsilon(34.57206988366562, worksheet.resultados_intermedios_k214, 0.002); end
  def test_resultados_intermedios_l214; assert_in_epsilon(34.065786824935344, worksheet.resultados_intermedios_l214, 0.002); end
  def test_resultados_intermedios_m214; assert_in_epsilon(33.567300737531575, worksheet.resultados_intermedios_m214, 0.002); end
  def test_resultados_intermedios_c215; assert_in_epsilon(5.0, worksheet.resultados_intermedios_c215, 0.002); end
  def test_resultados_intermedios_d215; assert_equal("LULUCF", worksheet.resultados_intermedios_d215.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f215; assert_in_epsilon(4.956913883948951, worksheet.resultados_intermedios_f215, 0.002); end
  def test_resultados_intermedios_g215; assert_in_epsilon(7.262741065125612, worksheet.resultados_intermedios_g215, 0.002); end
  def test_resultados_intermedios_h215; assert_in_epsilon(8.897927142800105, worksheet.resultados_intermedios_h215, 0.002); end
  def test_resultados_intermedios_i215; assert_in_epsilon(8.614575371214668, worksheet.resultados_intermedios_i215, 0.002); end
  def test_resultados_intermedios_j215; assert_in_epsilon(7.6465012608286695, worksheet.resultados_intermedios_j215, 0.002); end
  def test_resultados_intermedios_k215; assert_in_epsilon(5.0406155355537665, worksheet.resultados_intermedios_k215, 0.002); end
  def test_resultados_intermedios_l215; assert_in_epsilon(2.49820257160225, worksheet.resultados_intermedios_l215, 0.002); end
  def test_resultados_intermedios_m215; assert_in_delta(0.679952656905922, worksheet.resultados_intermedios_m215, 0.002); end
  def test_resultados_intermedios_c216; assert_in_epsilon(6.0, worksheet.resultados_intermedios_c216, 0.002); end
  def test_resultados_intermedios_d216; assert_equal("Waste", worksheet.resultados_intermedios_d216.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f216; assert_in_epsilon(12.969805414772946, worksheet.resultados_intermedios_f216, 0.002); end
  def test_resultados_intermedios_g216; assert_in_epsilon(10.72882425342694, worksheet.resultados_intermedios_g216, 0.002); end
  def test_resultados_intermedios_h216; assert_in_epsilon(8.62229908940291, worksheet.resultados_intermedios_h216, 0.002); end
  def test_resultados_intermedios_i216; assert_in_epsilon(6.762914714481023, worksheet.resultados_intermedios_i216, 0.002); end
  def test_resultados_intermedios_j216; assert_in_epsilon(5.723830856814635, worksheet.resultados_intermedios_j216, 0.002); end
  def test_resultados_intermedios_k216; assert_in_epsilon(4.788626675722327, worksheet.resultados_intermedios_k216, 0.002); end
  def test_resultados_intermedios_l216; assert_in_epsilon(4.000303181877479, worksheet.resultados_intermedios_l216, 0.002); end
  def test_resultados_intermedios_m216; assert_in_epsilon(3.277950237496105, worksheet.resultados_intermedios_m216, 0.002); end
  def test_resultados_intermedios_c217; assert_in_epsilon(7.0, worksheet.resultados_intermedios_c217, 0.002); end
  def test_resultados_intermedios_d217; assert_equal("Other", worksheet.resultados_intermedios_d217.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f217; assert_in_delta(0.0, (worksheet.resultados_intermedios_f217||0), 0.002); end
  def test_resultados_intermedios_g217; assert_in_delta(0.0, (worksheet.resultados_intermedios_g217||0), 0.002); end
  def test_resultados_intermedios_h217; assert_in_delta(0.0, (worksheet.resultados_intermedios_h217||0), 0.002); end
  def test_resultados_intermedios_i217; assert_in_delta(0.0, (worksheet.resultados_intermedios_i217||0), 0.002); end
  def test_resultados_intermedios_j217; assert_in_delta(0.0, (worksheet.resultados_intermedios_j217||0), 0.002); end
  def test_resultados_intermedios_k217; assert_in_delta(0.0, (worksheet.resultados_intermedios_k217||0), 0.002); end
  def test_resultados_intermedios_l217; assert_in_delta(0.0, (worksheet.resultados_intermedios_l217||0), 0.002); end
  def test_resultados_intermedios_m217; assert_in_delta(0.0, (worksheet.resultados_intermedios_m217||0), 0.002); end
  def test_resultados_intermedios_c218; assert_equal("X1", worksheet.resultados_intermedios_c218.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d218; assert_equal("Int'l Aviation & Shipping", worksheet.resultados_intermedios_d218.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f218; assert_in_epsilon(52.19269100274443, worksheet.resultados_intermedios_f218, 0.002); end
  def test_resultados_intermedios_g218; assert_in_epsilon(58.554128553904185, worksheet.resultados_intermedios_g218, 0.002); end
  def test_resultados_intermedios_h218; assert_in_epsilon(63.00928576171873, worksheet.resultados_intermedios_h218, 0.002); end
  def test_resultados_intermedios_i218; assert_in_epsilon(67.24417545140071, worksheet.resultados_intermedios_i218, 0.002); end
  def test_resultados_intermedios_j218; assert_in_epsilon(72.66360699371727, worksheet.resultados_intermedios_j218, 0.002); end
  def test_resultados_intermedios_k218; assert_in_epsilon(76.43181920884129, worksheet.resultados_intermedios_k218, 0.002); end
  def test_resultados_intermedios_l218; assert_in_epsilon(79.76691774229698, worksheet.resultados_intermedios_l218, 0.002); end
  def test_resultados_intermedios_m218; assert_in_epsilon(81.05235935157397, worksheet.resultados_intermedios_m218, 0.002); end
  def test_resultados_intermedios_c219; assert_equal("X2", worksheet.resultados_intermedios_c219.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d219; assert_equal("Bioenergy credit", worksheet.resultados_intermedios_d219.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f219; assert_in_epsilon(-13.639926426584488, worksheet.resultados_intermedios_f219, 0.002); end
  def test_resultados_intermedios_g219; assert_in_epsilon(-21.67333564742786, worksheet.resultados_intermedios_g219, 0.002); end
  def test_resultados_intermedios_h219; assert_in_epsilon(-31.898005541694566, worksheet.resultados_intermedios_h219, 0.002); end
  def test_resultados_intermedios_i219; assert_in_epsilon(-36.944914276318826, worksheet.resultados_intermedios_i219, 0.002); end
  def test_resultados_intermedios_j219; assert_in_epsilon(-41.945482516209076, worksheet.resultados_intermedios_j219, 0.002); end
  def test_resultados_intermedios_k219; assert_in_epsilon(-47.29977585685994, worksheet.resultados_intermedios_k219, 0.002); end
  def test_resultados_intermedios_l219; assert_in_epsilon(-52.924702113632094, worksheet.resultados_intermedios_l219, 0.002); end
  def test_resultados_intermedios_m219; assert_in_epsilon(-58.529852306224804, worksheet.resultados_intermedios_m219, 0.002); end
  def test_resultados_intermedios_c220; assert_equal("X3", worksheet.resultados_intermedios_c220.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d220; assert_equal("Carbon capture", worksheet.resultados_intermedios_d220.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f220; assert_in_epsilon(-2.8350150827586207, worksheet.resultados_intermedios_f220, 0.002); end
  def test_resultados_intermedios_g220; assert_in_epsilon(-6.678458816949153, worksheet.resultados_intermedios_g220, 0.002); end
  def test_resultados_intermedios_h220; assert_in_epsilon(-6.861728541255634, worksheet.resultados_intermedios_h220, 0.002); end
  def test_resultados_intermedios_i220; assert_in_epsilon(-7.008761675005211, worksheet.resultados_intermedios_i220, 0.002); end
  def test_resultados_intermedios_j220; assert_in_epsilon(-7.691513610705139, worksheet.resultados_intermedios_j220, 0.002); end
  def test_resultados_intermedios_k220; assert_in_epsilon(-8.918823597657838, worksheet.resultados_intermedios_k220, 0.002); end
  def test_resultados_intermedios_l220; assert_in_epsilon(-10.13348667955147, worksheet.resultados_intermedios_l220, 0.002); end
  def test_resultados_intermedios_m220; assert_in_epsilon(-11.660483764504702, worksheet.resultados_intermedios_m220, 0.002); end
  def test_resultados_intermedios_d221; assert_equal("Total", worksheet.resultados_intermedios_d221.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f221; assert_in_epsilon(560.1513698396121, worksheet.resultados_intermedios_f221, 0.002); end
  def test_resultados_intermedios_g221; assert_in_epsilon(496.0714361121212, worksheet.resultados_intermedios_g221, 0.002); end
  def test_resultados_intermedios_h221; assert_in_epsilon(398.0294139191833, worksheet.resultados_intermedios_h221, 0.002); end
  def test_resultados_intermedios_i221; assert_in_epsilon(307.61349487885866, worksheet.resultados_intermedios_i221, 0.002); end
  def test_resultados_intermedios_j221; assert_in_epsilon(257.8741245404363, worksheet.resultados_intermedios_j221, 0.002); end
  def test_resultados_intermedios_k221; assert_in_epsilon(213.84651444322807, worksheet.resultados_intermedios_k221, 0.002); end
  def test_resultados_intermedios_l221; assert_in_epsilon(186.45714261795058, worksheet.resultados_intermedios_l221, 0.002); end
  def test_resultados_intermedios_m221; assert_in_epsilon(159.64542906854481, worksheet.resultados_intermedios_m221, 0.002); end
  def test_resultados_intermedios_n221; assert_equal("REFERENCED - All costs", worksheet.resultados_intermedios_n221.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c223; assert_equal("Excluding international bunkers", worksheet.resultados_intermedios_c223.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f223; assert_in_epsilon(507.9586788368677, worksheet.resultados_intermedios_f223, 0.002); end
  def test_resultados_intermedios_g223; assert_in_epsilon(437.517307558217, worksheet.resultados_intermedios_g223, 0.002); end
  def test_resultados_intermedios_h223; assert_in_epsilon(335.02012815746457, worksheet.resultados_intermedios_h223, 0.002); end
  def test_resultados_intermedios_i223; assert_in_epsilon(240.36931942745795, worksheet.resultados_intermedios_i223, 0.002); end
  def test_resultados_intermedios_j223; assert_in_epsilon(185.21051754671902, worksheet.resultados_intermedios_j223, 0.002); end
  def test_resultados_intermedios_k223; assert_in_epsilon(137.41469523438678, worksheet.resultados_intermedios_k223, 0.002); end
  def test_resultados_intermedios_l223; assert_in_epsilon(106.6902248756536, worksheet.resultados_intermedios_l223, 0.002); end
  def test_resultados_intermedios_m223; assert_in_epsilon(78.59306971697085, worksheet.resultados_intermedios_m223, 0.002); end
  def test_resultados_intermedios_n223; assert_equal("REFERENCED - All costs", worksheet.resultados_intermedios_n223.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c226; assert_equal("Please note: emissions by sector need to account for bio-energy, which is accounted for separately (in V). ", worksheet.resultados_intermedios_c226.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c227; assert_equal("Cumulative emissions are estimates based on a linear trajectory between the 5 year time periods", worksheet.resultados_intermedios_c227.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c230; assert_equal("Targets", worksheet.resultados_intermedios_c230.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g230; assert_equal("2050 target", worksheet.resultados_intermedios_g230.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h230; assert_equal("2020 target", worksheet.resultados_intermedios_h230.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j230; assert_equal("Actuals, as % of 2007, modelled", worksheet.resultados_intermedios_j230.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g231; assert_equal("% of 2007", worksheet.resultados_intermedios_g231.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h231; assert_equal("% of 2007", worksheet.resultados_intermedios_h231.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k231; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_k231, 0.002); end
  def test_resultados_intermedios_l231; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_l231, 0.002); end
  def test_resultados_intermedios_m231; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m231, 0.002); end
  def test_resultados_intermedios_d232; assert_equal("Kyoto agreed sectors", worksheet.resultados_intermedios_d232.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d233; assert_equal("International bunkers (CO2 only)", worksheet.resultados_intermedios_d233.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g233; assert_in_epsilon(159.917234, worksheet.resultados_intermedios_g233, 0.002); end
  def test_resultados_intermedios_h233; assert_in_epsilon(527.7268722, worksheet.resultados_intermedios_h233, 0.002); end
  def test_resultados_intermedios_d234; assert_equal("Total", worksheet.resultados_intermedios_d234.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g234; assert_in_epsilon(187.77578959575553, worksheet.resultados_intermedios_g234, 0.002); end
  def test_resultados_intermedios_h234; assert_in_epsilon(619.6601056659932, worksheet.resultados_intermedios_h234, 0.002); end
  def test_resultados_intermedios_k234; assert_in_delta(0.7453487717899937, worksheet.resultados_intermedios_k234, 0.002); end
  def test_resultados_intermedios_l234; assert_in_delta(0.4621901683977698, worksheet.resultados_intermedios_l234, 0.002); end
  def test_resultados_intermedios_m234; assert_in_delta(0.23986772028380246, worksheet.resultados_intermedios_m234, 0.002); end
  def test_resultados_intermedios_d235; assert_equal("Target, for chart", worksheet.resultados_intermedios_d235.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f235; assert_in_delta(0.2, worksheet.resultados_intermedios_f235, 0.002); end
  def test_resultados_intermedios_g235; assert_in_delta(0.2, worksheet.resultados_intermedios_g235, 0.002); end
  def test_resultados_intermedios_h235; assert_in_delta(0.2, worksheet.resultados_intermedios_h235, 0.002); end
  def test_resultados_intermedios_i235; assert_in_delta(0.2, worksheet.resultados_intermedios_i235, 0.002); end
  def test_resultados_intermedios_j235; assert_in_delta(0.2, worksheet.resultados_intermedios_j235, 0.002); end
  def test_resultados_intermedios_k235; assert_in_delta(0.2, worksheet.resultados_intermedios_k235, 0.002); end
  def test_resultados_intermedios_l235; assert_in_delta(0.2, worksheet.resultados_intermedios_l235, 0.002); end
  def test_resultados_intermedios_m235; assert_in_delta(0.2, worksheet.resultados_intermedios_m235, 0.002); end
  def test_resultados_intermedios_d236; assert_equal("Dummy, for chart", worksheet.resultados_intermedios_d236.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f236; assert_in_delta(0.0, (worksheet.resultados_intermedios_f236||0), 0.002); end
  def test_resultados_intermedios_g236; assert_in_delta(0.0, (worksheet.resultados_intermedios_g236||0), 0.002); end
  def test_resultados_intermedios_h236; assert_in_delta(0.0, (worksheet.resultados_intermedios_h236||0), 0.002); end
  def test_resultados_intermedios_i236; assert_in_delta(0.0, (worksheet.resultados_intermedios_i236||0), 0.002); end
  def test_resultados_intermedios_j236; assert_in_delta(0.0, (worksheet.resultados_intermedios_j236||0), 0.002); end
  def test_resultados_intermedios_k236; assert_in_delta(0.0, (worksheet.resultados_intermedios_k236||0), 0.002); end
  def test_resultados_intermedios_l236; assert_in_delta(0.0, (worksheet.resultados_intermedios_l236||0), 0.002); end
  def test_resultados_intermedios_m236; assert_in_delta(0.0, (worksheet.resultados_intermedios_m236||0), 0.002); end
  def test_resultados_intermedios_b239; assert_equal("Bio-energy - Production and Use", worksheet.resultados_intermedios_b239.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_b241; assert_equal("Production", worksheet.resultados_intermedios_b241.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c243; assert_equal("Domestic", worksheet.resultados_intermedios_c243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f243; assert_equal("2015", worksheet.resultados_intermedios_f243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g243; assert_equal("2020", worksheet.resultados_intermedios_g243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h243; assert_equal("2025", worksheet.resultados_intermedios_h243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i243; assert_equal("2030", worksheet.resultados_intermedios_i243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j243; assert_equal("2035", worksheet.resultados_intermedios_j243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k243; assert_equal("2040", worksheet.resultados_intermedios_k243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l243; assert_equal("2045", worksheet.resultados_intermedios_l243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m243; assert_equal("2050", worksheet.resultados_intermedios_m243.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c244; assert_equal("V.a", worksheet.resultados_intermedios_c244.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d244; assert_equal("V.03", worksheet.resultados_intermedios_d244.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e244; assert_equal("Solid hydrocarbons", worksheet.resultados_intermedios_e244.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f244; assert_in_delta(0.0, (worksheet.resultados_intermedios_f244||0), 0.002); end
  def test_resultados_intermedios_g244; assert_in_delta(0.0, (worksheet.resultados_intermedios_g244||0), 0.002); end
  def test_resultados_intermedios_h244; assert_in_delta(0.0, (worksheet.resultados_intermedios_h244||0), 0.002); end
  def test_resultados_intermedios_i244; assert_in_delta(0.0, (worksheet.resultados_intermedios_i244||0), 0.002); end
  def test_resultados_intermedios_j244; assert_in_delta(0.0, (worksheet.resultados_intermedios_j244||0), 0.002); end
  def test_resultados_intermedios_k244; assert_in_delta(0.0, (worksheet.resultados_intermedios_k244||0), 0.002); end
  def test_resultados_intermedios_l244; assert_in_delta(0.0, (worksheet.resultados_intermedios_l244||0), 0.002); end
  def test_resultados_intermedios_m244; assert_in_delta(0.0, (worksheet.resultados_intermedios_m244||0), 0.002); end
  def test_resultados_intermedios_c245; assert_equal("V.a", worksheet.resultados_intermedios_c245.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d245; assert_equal("V.04", worksheet.resultados_intermedios_d245.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e245; assert_equal("Liquid hydrocarbons", worksheet.resultados_intermedios_e245.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f245; assert_in_epsilon(26.202749932203808, worksheet.resultados_intermedios_f245, 0.002); end
  def test_resultados_intermedios_g245; assert_in_epsilon(50.06362287621169, worksheet.resultados_intermedios_g245, 0.002); end
  def test_resultados_intermedios_h245; assert_in_epsilon(82.2861409399604, worksheet.resultados_intermedios_h245, 0.002); end
  def test_resultados_intermedios_i245; assert_in_epsilon(94.09485634602832, worksheet.resultados_intermedios_i245, 0.002); end
  def test_resultados_intermedios_j245; assert_in_epsilon(105.10832228263747, worksheet.resultados_intermedios_j245, 0.002); end
  def test_resultados_intermedios_k245; assert_in_epsilon(117.69564767637186, worksheet.resultados_intermedios_k245, 0.002); end
  def test_resultados_intermedios_l245; assert_in_epsilon(131.53283350583075, worksheet.resultados_intermedios_l245, 0.002); end
  def test_resultados_intermedios_m245; assert_in_epsilon(145.46661356696768, worksheet.resultados_intermedios_m245, 0.002); end
  def test_resultados_intermedios_c246; assert_equal("V.a", worksheet.resultados_intermedios_c246.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d246; assert_equal("V.05", worksheet.resultados_intermedios_d246.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e246; assert_equal("Gaseous hydrocarbons", worksheet.resultados_intermedios_e246.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f246; assert_in_epsilon(11.254146912530599, worksheet.resultados_intermedios_f246, 0.002); end
  def test_resultados_intermedios_g246; assert_in_epsilon(9.711299711845593, worksheet.resultados_intermedios_g246, 0.002); end
  def test_resultados_intermedios_h246; assert_in_epsilon(8.716547040987356, worksheet.resultados_intermedios_h246, 0.002); end
  def test_resultados_intermedios_i246; assert_in_epsilon(7.317932983051717, worksheet.resultados_intermedios_i246, 0.002); end
  def test_resultados_intermedios_j246; assert_in_epsilon(6.747970406804519, worksheet.resultados_intermedios_j246, 0.002); end
  def test_resultados_intermedios_k246; assert_in_epsilon(5.962030854901393, worksheet.resultados_intermedios_k246, 0.002); end
  def test_resultados_intermedios_l246; assert_in_epsilon(4.9487424290318085, worksheet.resultados_intermedios_l246, 0.002); end
  def test_resultados_intermedios_m246; assert_in_epsilon(3.6967332308852345, worksheet.resultados_intermedios_m246, 0.002); end
  def test_resultados_intermedios_c248; assert_equal("Imports", worksheet.resultados_intermedios_c248.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c249; assert_equal("V.b", worksheet.resultados_intermedios_c249.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d249; assert_equal("V.03", worksheet.resultados_intermedios_d249.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e249; assert_equal("Solid hydrocarbons", worksheet.resultados_intermedios_e249.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f249; assert_in_epsilon(10.74104418604651, worksheet.resultados_intermedios_f249, 0.002); end
  def test_resultados_intermedios_g249; assert_in_epsilon(14.706609302325582, worksheet.resultados_intermedios_g249, 0.002); end
  def test_resultados_intermedios_h249; assert_in_epsilon(18.67217441860465, worksheet.resultados_intermedios_h249, 0.002); end
  def test_resultados_intermedios_i249; assert_in_epsilon(22.63773953488372, worksheet.resultados_intermedios_i249, 0.002); end
  def test_resultados_intermedios_j249; assert_in_epsilon(26.603304651162794, worksheet.resultados_intermedios_j249, 0.002); end
  def test_resultados_intermedios_k249; assert_in_epsilon(30.56886976744186, worksheet.resultados_intermedios_k249, 0.002); end
  def test_resultados_intermedios_l249; assert_in_epsilon(34.534434883720934, worksheet.resultados_intermedios_l249, 0.002); end
  def test_resultados_intermedios_m249; assert_in_epsilon(38.5, worksheet.resultados_intermedios_m249, 0.002); end
  def test_resultados_intermedios_c250; assert_equal("V.b", worksheet.resultados_intermedios_c250.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d250; assert_equal("V.04", worksheet.resultados_intermedios_d250.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e250; assert_equal("Liquid hydrocarbons", worksheet.resultados_intermedios_e250.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f250; assert_in_epsilon(6.840937209302327, worksheet.resultados_intermedios_f250, 0.002); end
  def test_resultados_intermedios_g250; assert_in_epsilon(11.363660465116281, worksheet.resultados_intermedios_g250, 0.002); end
  def test_resultados_intermedios_h250; assert_in_epsilon(15.886383720930235, worksheet.resultados_intermedios_h250, 0.002); end
  def test_resultados_intermedios_i250; assert_in_epsilon(20.409106976744187, worksheet.resultados_intermedios_i250, 0.002); end
  def test_resultados_intermedios_j250; assert_in_epsilon(24.93183023255814, worksheet.resultados_intermedios_j250, 0.002); end
  def test_resultados_intermedios_k250; assert_in_epsilon(29.4545534883721, worksheet.resultados_intermedios_k250, 0.002); end
  def test_resultados_intermedios_l250; assert_in_epsilon(33.97727674418605, worksheet.resultados_intermedios_l250, 0.002); end
  def test_resultados_intermedios_m250; assert_in_epsilon(38.5, worksheet.resultados_intermedios_m250, 0.002); end
  def test_resultados_intermedios_c251; assert_equal("V.b", worksheet.resultados_intermedios_c251.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d251; assert_equal("V.05", worksheet.resultados_intermedios_d251.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e251; assert_equal("Gaseous hydrocarbons", worksheet.resultados_intermedios_e251.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f251; assert_in_delta(0.0, (worksheet.resultados_intermedios_f251||0), 0.002); end
  def test_resultados_intermedios_g251; assert_in_delta(0.0, (worksheet.resultados_intermedios_g251||0), 0.002); end
  def test_resultados_intermedios_h251; assert_in_delta(0.0, (worksheet.resultados_intermedios_h251||0), 0.002); end
  def test_resultados_intermedios_i251; assert_in_delta(0.0, (worksheet.resultados_intermedios_i251||0), 0.002); end
  def test_resultados_intermedios_j251; assert_in_delta(0.0, (worksheet.resultados_intermedios_j251||0), 0.002); end
  def test_resultados_intermedios_k251; assert_in_delta(0.0, (worksheet.resultados_intermedios_k251||0), 0.002); end
  def test_resultados_intermedios_l251; assert_in_delta(0.0, (worksheet.resultados_intermedios_l251||0), 0.002); end
  def test_resultados_intermedios_m251; assert_in_delta(0.0, (worksheet.resultados_intermedios_m251||0), 0.002); end
  def test_resultados_intermedios_c253; assert_equal("Total", worksheet.resultados_intermedios_c253.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c254; assert_equal("V.b", worksheet.resultados_intermedios_c254.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d254; assert_equal("V.03", worksheet.resultados_intermedios_d254.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e254; assert_equal("Solid hydrocarbons", worksheet.resultados_intermedios_e254.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f254; assert_in_epsilon(10.74104418604651, worksheet.resultados_intermedios_f254, 0.002); end
  def test_resultados_intermedios_g254; assert_in_epsilon(14.706609302325582, worksheet.resultados_intermedios_g254, 0.002); end
  def test_resultados_intermedios_h254; assert_in_epsilon(18.67217441860465, worksheet.resultados_intermedios_h254, 0.002); end
  def test_resultados_intermedios_i254; assert_in_epsilon(22.63773953488372, worksheet.resultados_intermedios_i254, 0.002); end
  def test_resultados_intermedios_j254; assert_in_epsilon(26.603304651162794, worksheet.resultados_intermedios_j254, 0.002); end
  def test_resultados_intermedios_k254; assert_in_epsilon(30.56886976744186, worksheet.resultados_intermedios_k254, 0.002); end
  def test_resultados_intermedios_l254; assert_in_epsilon(34.534434883720934, worksheet.resultados_intermedios_l254, 0.002); end
  def test_resultados_intermedios_m254; assert_in_epsilon(38.5, worksheet.resultados_intermedios_m254, 0.002); end
  def test_resultados_intermedios_c255; assert_equal("V.b", worksheet.resultados_intermedios_c255.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d255; assert_equal("V.04", worksheet.resultados_intermedios_d255.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e255; assert_equal("Liquid hydrocarbons", worksheet.resultados_intermedios_e255.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f255; assert_in_epsilon(33.04368714150613, worksheet.resultados_intermedios_f255, 0.002); end
  def test_resultados_intermedios_g255; assert_in_epsilon(61.42728334132797, worksheet.resultados_intermedios_g255, 0.002); end
  def test_resultados_intermedios_h255; assert_in_epsilon(98.17252466089064, worksheet.resultados_intermedios_h255, 0.002); end
  def test_resultados_intermedios_i255; assert_in_epsilon(114.5039633227725, worksheet.resultados_intermedios_i255, 0.002); end
  def test_resultados_intermedios_j255; assert_in_epsilon(130.04015251519562, worksheet.resultados_intermedios_j255, 0.002); end
  def test_resultados_intermedios_k255; assert_in_epsilon(147.15020116474398, worksheet.resultados_intermedios_k255, 0.002); end
  def test_resultados_intermedios_l255; assert_in_epsilon(165.5101102500168, worksheet.resultados_intermedios_l255, 0.002); end
  def test_resultados_intermedios_m255; assert_in_epsilon(183.96661356696768, worksheet.resultados_intermedios_m255, 0.002); end
  def test_resultados_intermedios_c256; assert_equal("V.b", worksheet.resultados_intermedios_c256.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d256; assert_equal("V.05", worksheet.resultados_intermedios_d256.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e256; assert_equal("Gaseous hydrocarbons", worksheet.resultados_intermedios_e256.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f256; assert_in_epsilon(11.254146912530599, worksheet.resultados_intermedios_f256, 0.002); end
  def test_resultados_intermedios_g256; assert_in_epsilon(9.711299711845593, worksheet.resultados_intermedios_g256, 0.002); end
  def test_resultados_intermedios_h256; assert_in_epsilon(8.716547040987356, worksheet.resultados_intermedios_h256, 0.002); end
  def test_resultados_intermedios_i256; assert_in_epsilon(7.317932983051717, worksheet.resultados_intermedios_i256, 0.002); end
  def test_resultados_intermedios_j256; assert_in_epsilon(6.747970406804519, worksheet.resultados_intermedios_j256, 0.002); end
  def test_resultados_intermedios_k256; assert_in_epsilon(5.962030854901393, worksheet.resultados_intermedios_k256, 0.002); end
  def test_resultados_intermedios_l256; assert_in_epsilon(4.9487424290318085, worksheet.resultados_intermedios_l256, 0.002); end
  def test_resultados_intermedios_m256; assert_in_epsilon(3.6967332308852345, worksheet.resultados_intermedios_m256, 0.002); end
  def test_resultados_intermedios_b258; assert_equal("Hydro-carbon use by sector and Bio-energy share", worksheet.resultados_intermedios_b258.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c260; assert_equal("Solid Hydrocarbon consumption", worksheet.resultados_intermedios_c260.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f260; assert_in_epsilon(401.81950615003086, worksheet.resultados_intermedios_f260, 0.002); end
  def test_resultados_intermedios_g260; assert_in_epsilon(347.3032940337924, worksheet.resultados_intermedios_g260, 0.002); end
  def test_resultados_intermedios_h260; assert_in_epsilon(208.96305807225957, worksheet.resultados_intermedios_h260, 0.002); end
  def test_resultados_intermedios_i260; assert_in_epsilon(96.69217075789368, worksheet.resultados_intermedios_i260, 0.002); end
  def test_resultados_intermedios_j260; assert_in_epsilon(73.3970838972625, worksheet.resultados_intermedios_j260, 0.002); end
  def test_resultados_intermedios_k260; assert_in_epsilon(55.55732601851044, worksheet.resultados_intermedios_k260, 0.002); end
  def test_resultados_intermedios_l260; assert_in_epsilon(51.819550852894636, worksheet.resultados_intermedios_l260, 0.002); end
  def test_resultados_intermedios_m260; assert_in_epsilon(48.35142043505953, worksheet.resultados_intermedios_m260, 0.002); end
  def test_resultados_intermedios_c261; assert_equal("V", worksheet.resultados_intermedios_c261.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d261; assert_equal("Share of solid biomass to total solid hydrocarbon consumption", worksheet.resultados_intermedios_d261.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f261; assert_in_delta(0.026731017339004026, worksheet.resultados_intermedios_f261, 0.002); end
  def test_resultados_intermedios_g261; assert_in_delta(0.04234514775691888, worksheet.resultados_intermedios_g261, 0.002); end
  def test_resultados_intermedios_h261; assert_in_delta(0.08935634169436686, worksheet.resultados_intermedios_h261, 0.002); end
  def test_resultados_intermedios_i261; assert_in_delta(0.23412174281996498, worksheet.resultados_intermedios_i261, 0.002); end
  def test_resultados_intermedios_j261; assert_in_delta(0.36245724269373897, worksheet.resultados_intermedios_j261, 0.002); end
  def test_resultados_intermedios_k261; assert_in_delta(0.5502221211520693, worksheet.resultados_intermedios_k261, 0.002); end
  def test_resultados_intermedios_l261; assert_in_delta(0.6664363992995096, worksheet.resultados_intermedios_l261, 0.002); end
  def test_resultados_intermedios_m261; assert_in_delta(0.7962537533247672, worksheet.resultados_intermedios_m261, 0.002); end
  def test_resultados_intermedios_c262; assert_equal("I.b", worksheet.resultados_intermedios_c262.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d262; assert_equal("CCS Power", worksheet.resultados_intermedios_d262.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f262; assert_in_epsilon(6.773727272727275, worksheet.resultados_intermedios_f262, 0.002); end
  def test_resultados_intermedios_g262; assert_in_epsilon(20.697500000000005, worksheet.resultados_intermedios_g262, 0.002); end
  def test_resultados_intermedios_h262; assert_in_epsilon(20.24755434782609, worksheet.resultados_intermedios_h262, 0.002); end
  def test_resultados_intermedios_i262; assert_in_epsilon(19.81675531914894, worksheet.resultados_intermedios_i262, 0.002); end
  def test_resultados_intermedios_j262; assert_in_epsilon(19.40390625, worksheet.resultados_intermedios_j262, 0.002); end
  def test_resultados_intermedios_k262; assert_in_epsilon(19.403906250000002, worksheet.resultados_intermedios_k262, 0.002); end
  def test_resultados_intermedios_l262; assert_in_epsilon(19.007908163265306, worksheet.resultados_intermedios_l262, 0.002); end
  def test_resultados_intermedios_m262; assert_in_epsilon(18.627750000000002, worksheet.resultados_intermedios_m262, 0.002); end
  def test_resultados_intermedios_c263; assert_equal("I.a", worksheet.resultados_intermedios_c263.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d263; assert_equal("Biomass/Coal power stations", worksheet.resultados_intermedios_d263.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f263; assert_in_epsilon(337.1329263676626, worksheet.resultados_intermedios_f263, 0.002); end
  def test_resultados_intermedios_g263; assert_in_epsilon(273.841074, worksheet.resultados_intermedios_g263, 0.002); end
  def test_resultados_intermedios_h263; assert_in_epsilon(140.6206656, worksheet.resultados_intermedios_h263, 0.002); end
  def test_resultados_intermedios_i263; assert_in_epsilon(33.13548, worksheet.resultados_intermedios_i263, 0.002); end
  def test_resultados_intermedios_j263; assert_in_epsilon(14.200920000000002, worksheet.resultados_intermedios_j263, 0.002); end
  def test_resultados_intermedios_k263; assert_in_delta(0.0, (worksheet.resultados_intermedios_k263||0), 0.002); end
  def test_resultados_intermedios_l263; assert_in_delta(0.0, (worksheet.resultados_intermedios_l263||0), 0.002); end
  def test_resultados_intermedios_m263; assert_in_delta(0.0, (worksheet.resultados_intermedios_m263||0), 0.002); end
  def test_resultados_intermedios_c264; assert_equal("XI", worksheet.resultados_intermedios_c264.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d264; assert_equal("Industry", worksheet.resultados_intermedios_d264.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f264; assert_in_epsilon(48.36813537490875, worksheet.resultados_intermedios_f264, 0.002); end
  def test_resultados_intermedios_g264; assert_in_epsilon(44.87747769556346, worksheet.resultados_intermedios_g264, 0.002); end
  def test_resultados_intermedios_h264; assert_in_epsilon(41.648958515160665, worksheet.resultados_intermedios_h264, 0.002); end
  def test_resultados_intermedios_i264; assert_in_epsilon(38.66255288000327, worksheet.resultados_intermedios_i264, 0.002); end
  def test_resultados_intermedios_j264; assert_in_epsilon(35.899779258611986, worksheet.resultados_intermedios_j264, 0.002); end
  def test_resultados_intermedios_k264; assert_in_epsilon(33.34357985111558, worksheet.resultados_intermedios_k264, 0.002); end
  def test_resultados_intermedios_l264; assert_in_epsilon(30.978210228781464, worksheet.resultados_intermedios_l264, 0.002); end
  def test_resultados_intermedios_m264; assert_in_epsilon(28.789137572850585, worksheet.resultados_intermedios_m264, 0.002); end
  def test_resultados_intermedios_c265; assert_equal("IX", worksheet.resultados_intermedios_c265.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d265; assert_equal("Heating", worksheet.resultados_intermedios_d265.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f265; assert_in_epsilon(8.643396651285908, worksheet.resultados_intermedios_f265, 0.002); end
  def test_resultados_intermedios_g265; assert_in_epsilon(6.980813353800752, worksheet.resultados_intermedios_g265, 0.002); end
  def test_resultados_intermedios_h265; assert_in_epsilon(5.534342123862718, worksheet.resultados_intermedios_h265, 0.002); end
  def test_resultados_intermedios_i265; assert_in_epsilon(4.183717704387894, worksheet.resultados_intermedios_i265, 0.002); end
  def test_resultados_intermedios_j265; assert_in_epsilon(2.9885965323331054, worksheet.resultados_intermedios_j265, 0.002); end
  def test_resultados_intermedios_k265; assert_in_epsilon(1.895741059113595, worksheet.resultados_intermedios_k265, 0.002); end
  def test_resultados_intermedios_l265; assert_in_delta(0.9091166006027733, worksheet.resultados_intermedios_l265, 0.002); end
  def test_resultados_intermedios_m265; assert_in_delta(0.0, (worksheet.resultados_intermedios_m265||0), 0.002); end
  def test_resultados_intermedios_c267; assert_equal("Liquid Hydrocarbon consumption", worksheet.resultados_intermedios_c267.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f267; assert_in_epsilon(797.1725007071111, worksheet.resultados_intermedios_f267, 0.002); end
  def test_resultados_intermedios_g267; assert_in_epsilon(756.3190481346747, worksheet.resultados_intermedios_g267, 0.002); end
  def test_resultados_intermedios_h267; assert_in_epsilon(660.8335843447198, worksheet.resultados_intermedios_h267, 0.002); end
  def test_resultados_intermedios_i267; assert_in_epsilon(579.2355857944353, worksheet.resultados_intermedios_i267, 0.002); end
  def test_resultados_intermedios_j267; assert_in_epsilon(574.5074720205653, worksheet.resultados_intermedios_j267, 0.002); end
  def test_resultados_intermedios_k267; assert_in_epsilon(564.1749314351256, worksheet.resultados_intermedios_k267, 0.002); end
  def test_resultados_intermedios_l267; assert_in_epsilon(547.0965942259105, worksheet.resultados_intermedios_l267, 0.002); end
  def test_resultados_intermedios_m267; assert_in_epsilon(525.0614401439013, worksheet.resultados_intermedios_m267, 0.002); end
  def test_resultados_intermedios_c268; assert_equal("V", worksheet.resultados_intermedios_c268.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d268; assert_equal("Share of Bioliquids to total liquid hydrocarbon consumption", worksheet.resultados_intermedios_d268.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f268; assert_in_delta(0.04145111266657542, worksheet.resultados_intermedios_f268, 0.002); end
  def test_resultados_intermedios_g268; assert_in_delta(0.08121874424930503, worksheet.resultados_intermedios_g268, 0.002); end
  def test_resultados_intermedios_h268; assert_in_delta(0.14855861897248784, worksheet.resultados_intermedios_h268, 0.002); end
  def test_resultados_intermedios_i268; assert_in_delta(0.1976811613977888, worksheet.resultados_intermedios_i268, 0.002); end
  def test_resultados_intermedios_j268; assert_in_delta(0.22635067226861177, worksheet.resultados_intermedios_j268, 0.002); end
  def test_resultados_intermedios_k268; assert_in_delta(0.26082371435829166, worksheet.resultados_intermedios_k268, 0.002); end
  def test_resultados_intermedios_l268; assert_in_delta(0.3025244755621223, worksheet.resultados_intermedios_l268, 0.002); end
  def test_resultados_intermedios_m268; assert_in_delta(0.3503715936873002, worksheet.resultados_intermedios_m268, 0.002); end
  def test_resultados_intermedios_c269; assert_equal("XII", worksheet.resultados_intermedios_c269.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d269; assert_equal("Transport", worksheet.resultados_intermedios_d269.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f269; assert_in_epsilon(657.9840738517192, worksheet.resultados_intermedios_f269, 0.002); end
  def test_resultados_intermedios_g269; assert_in_epsilon(629.2464612787279, worksheet.resultados_intermedios_g269, 0.002); end
  def test_resultados_intermedios_h269; assert_in_epsilon(544.4207265881987, worksheet.resultados_intermedios_h269, 0.002); end
  def test_resultados_intermedios_i269; assert_in_epsilon(472.3055075944491, worksheet.resultados_intermedios_i269, 0.002); end
  def test_resultados_intermedios_j269; assert_in_epsilon(475.9738649722375, worksheet.resultados_intermedios_j269, 0.002); end
  def test_resultados_intermedios_k269; assert_in_epsilon(473.15722053338015, worksheet.resultados_intermedios_k269, 0.002); end
  def test_resultados_intermedios_l269; assert_in_epsilon(462.8250397225207, worksheet.resultados_intermedios_l269, 0.002); end
  def test_resultados_intermedios_m269; assert_in_epsilon(446.88848884793435, worksheet.resultados_intermedios_m269, 0.002); end
  def test_resultados_intermedios_c270; assert_equal("XI", worksheet.resultados_intermedios_c270.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d270; assert_equal("Industry", worksheet.resultados_intermedios_d270.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f270; assert_in_epsilon(69.47053676060315, worksheet.resultados_intermedios_f270, 0.002); end
  def test_resultados_intermedios_g270; assert_in_epsilon(62.77626881228207, worksheet.resultados_intermedios_g270, 0.002); end
  def test_resultados_intermedios_h270; assert_in_epsilon(56.70032590670939, worksheet.resultados_intermedios_h270, 0.002); end
  def test_resultados_intermedios_i270; assert_in_epsilon(51.18674468966112, worksheet.resultados_intermedios_i270, 0.002); end
  def test_resultados_intermedios_j270; assert_in_epsilon(46.184547169703876, worksheet.resultados_intermedios_j270, 0.002); end
  def test_resultados_intermedios_k270; assert_in_epsilon(41.64730221130011, worksheet.resultados_intermedios_k270, 0.002); end
  def test_resultados_intermedios_l270; assert_in_epsilon(37.53272522695671, worksheet.resultados_intermedios_l270, 0.002); end
  def test_resultados_intermedios_m270; assert_in_epsilon(33.802312764392745, worksheet.resultados_intermedios_m270, 0.002); end
  def test_resultados_intermedios_c271; assert_equal("XV.a", worksheet.resultados_intermedios_c271.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d271; assert_equal("Petroleum refineries", worksheet.resultados_intermedios_d271.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f271; assert_in_epsilon(50.22299177401591, worksheet.resultados_intermedios_f271, 0.002); end
  def test_resultados_intermedios_g271; assert_in_epsilon(47.636958248593686, worksheet.resultados_intermedios_g271, 0.002); end
  def test_resultados_intermedios_h271; assert_in_epsilon(45.61302133938901, worksheet.resultados_intermedios_h271, 0.002); end
  def test_resultados_intermedios_i271; assert_in_epsilon(44.04693754034375, worksheet.resultados_intermedios_i271, 0.002); end
  def test_resultados_intermedios_j271; assert_in_epsilon(42.83513175011493, worksheet.resultados_intermedios_j271, 0.002); end
  def test_resultados_intermedios_k271; assert_in_epsilon(41.89745952968376, worksheet.resultados_intermedios_k271, 0.002); end
  def test_resultados_intermedios_l271; assert_in_epsilon(41.17190663989083, worksheet.resultados_intermedios_l271, 0.002); end
  def test_resultados_intermedios_m271; assert_in_epsilon(40.61048764462101, worksheet.resultados_intermedios_m271, 0.002); end
  def test_resultados_intermedios_c273; assert_equal("Gaseous Hydrocarbon consumption", worksheet.resultados_intermedios_c273.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f273; assert_in_epsilon(848.782308526944, worksheet.resultados_intermedios_f273, 0.002); end
  def test_resultados_intermedios_g273; assert_in_epsilon(746.0198776434229, worksheet.resultados_intermedios_g273, 0.002); end
  def test_resultados_intermedios_h273; assert_in_epsilon(654.6500108043689, worksheet.resultados_intermedios_h273, 0.002); end
  def test_resultados_intermedios_i273; assert_in_epsilon(529.0438356547465, worksheet.resultados_intermedios_i273, 0.002); end
  def test_resultados_intermedios_j273; assert_in_epsilon(362.16376168704164, worksheet.resultados_intermedios_j273, 0.002); end
  def test_resultados_intermedios_k273; assert_in_epsilon(236.95837486664576, worksheet.resultados_intermedios_k273, 0.002); end
  def test_resultados_intermedios_l273; assert_in_epsilon(186.27124686423645, worksheet.resultados_intermedios_l273, 0.002); end
  def test_resultados_intermedios_m273; assert_in_epsilon(139.56835755398455, worksheet.resultados_intermedios_m273, 0.002); end
  def test_resultados_intermedios_c274; assert_equal("V", worksheet.resultados_intermedios_c274.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d274; assert_equal("Share of Biogas to total gaseous hydrocarbon consumption", worksheet.resultados_intermedios_d274.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f274; assert_in_delta(0.013259167632819887, worksheet.resultados_intermedios_f274, 0.002); end
  def test_resultados_intermedios_g274; assert_in_delta(0.013017481172917659, worksheet.resultados_intermedios_g274, 0.002); end
  def test_resultados_intermedios_h274; assert_in_delta(0.013314819975756708, worksheet.resultados_intermedios_h274, 0.002); end
  def test_resultados_intermedios_i274; assert_in_delta(0.013832375485473745, worksheet.resultados_intermedios_i274, 0.002); end
  def test_resultados_intermedios_j274; assert_in_delta(0.01863237330916525, worksheet.resultados_intermedios_j274, 0.002); end
  def test_resultados_intermedios_k274; assert_in_delta(0.025160667388340566, worksheet.resultados_intermedios_k274, 0.002); end
  def test_resultados_intermedios_l274; assert_in_delta(0.02656739841677601, worksheet.resultados_intermedios_l274, 0.002); end
  def test_resultados_intermedios_m274; assert_in_delta(0.02648690072501105, worksheet.resultados_intermedios_m274, 0.002); end
  def test_resultados_intermedios_c275; assert_equal("IX.a", worksheet.resultados_intermedios_c275.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d275; assert_equal("Domestic space heating and hot water", worksheet.resultados_intermedios_d275.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f275; assert_in_epsilon(307.9172510912178, worksheet.resultados_intermedios_f275, 0.002); end
  def test_resultados_intermedios_g275; assert_in_epsilon(257.2025830912882, worksheet.resultados_intermedios_g275, 0.002); end
  def test_resultados_intermedios_h275; assert_in_epsilon(213.35842139748758, worksheet.resultados_intermedios_h275, 0.002); end
  def test_resultados_intermedios_i275; assert_in_epsilon(172.0051217604622, worksheet.resultados_intermedios_i275, 0.002); end
  def test_resultados_intermedios_j275; assert_in_epsilon(135.62775566894865, worksheet.resultados_intermedios_j275, 0.002); end
  def test_resultados_intermedios_k275; assert_in_epsilon(102.21702282212392, worksheet.resultados_intermedios_k275, 0.002); end
  def test_resultados_intermedios_l275; assert_in_epsilon(72.30378687224078, worksheet.resultados_intermedios_l275, 0.002); end
  def test_resultados_intermedios_m275; assert_in_epsilon(44.728684489913036, worksheet.resultados_intermedios_m275, 0.002); end
  def test_resultados_intermedios_c276; assert_equal("IX.c", worksheet.resultados_intermedios_c276.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d276; assert_equal("Commercial heating and cooling", worksheet.resultados_intermedios_d276.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f276; assert_in_epsilon(74.9428879863531, worksheet.resultados_intermedios_f276, 0.002); end
  def test_resultados_intermedios_g276; assert_in_epsilon(62.49813821201373, worksheet.resultados_intermedios_g276, 0.002); end
  def test_resultados_intermedios_h276; assert_in_epsilon(50.79957529629567, worksheet.resultados_intermedios_h276, 0.002); end
  def test_resultados_intermedios_i276; assert_in_epsilon(39.74615702410077, worksheet.resultados_intermedios_i276, 0.002); end
  def test_resultados_intermedios_j276; assert_in_epsilon(29.24067722811602, worksheet.resultados_intermedios_j276, 0.002); end
  def test_resultados_intermedios_k276; assert_in_epsilon(19.188945321768852, worksheet.resultados_intermedios_k276, 0.002); end
  def test_resultados_intermedios_l276; assert_in_epsilon(9.498987882353585, worksheet.resultados_intermedios_l276, 0.002); end
  def test_resultados_intermedios_m276; assert_in_delta(0.08026608473685735, worksheet.resultados_intermedios_m276, 0.002); end
  def test_resultados_intermedios_c277; assert_equal("XI", worksheet.resultados_intermedios_c277.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d277; assert_equal("Industry", worksheet.resultados_intermedios_d277.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f277; assert_in_epsilon(130.1420347053535, worksheet.resultados_intermedios_f277, 0.002); end
  def test_resultados_intermedios_g277; assert_in_epsilon(119.06919337237203, worksheet.resultados_intermedios_g277, 0.002); end
  def test_resultados_intermedios_h277; assert_in_epsilon(108.94349553413329, worksheet.resultados_intermedios_h277, 0.002); end
  def test_resultados_intermedios_i277; assert_in_epsilon(98.23592996641193, worksheet.resultados_intermedios_i277, 0.002); end
  def test_resultados_intermedios_j277; assert_in_epsilon(88.52719931364766, worksheet.resultados_intermedios_j277, 0.002); end
  def test_resultados_intermedios_k277; assert_in_epsilon(79.72626678330107, worksheet.resultados_intermedios_k277, 0.002); end
  def test_resultados_intermedios_l277; assert_in_epsilon(71.7502481255772, worksheet.resultados_intermedios_l277, 0.002); end
  def test_resultados_intermedios_m277; assert_in_epsilon(64.52369169795907, worksheet.resultados_intermedios_m277, 0.002); end
  def test_resultados_intermedios_c278; assert_equal("I.a", worksheet.resultados_intermedios_c278.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d278; assert_equal("Biomass/Coal power stations", worksheet.resultados_intermedios_d278.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f278; assert_in_epsilon(266.59281185633097, worksheet.resultados_intermedios_f278, 0.002); end
  def test_resultados_intermedios_g278; assert_in_epsilon(248.20257181178476, worksheet.resultados_intermedios_g278, 0.002); end
  def test_resultados_intermedios_h278; assert_in_epsilon(230.52653446262863, worksheet.resultados_intermedios_h278, 0.002); end
  def test_resultados_intermedios_i278; assert_in_epsilon(174.38213305110253, worksheet.resultados_intermedios_i278, 0.002); end
  def test_resultados_intermedios_j278; assert_in_epsilon(69.02895558051483, worksheet.resultados_intermedios_j278, 0.002); end
  def test_resultados_intermedios_k278; assert_in_delta(0.0, (worksheet.resultados_intermedios_k278||0), 0.002); end
  def test_resultados_intermedios_l278; assert_in_delta(0.0, (worksheet.resultados_intermedios_l278||0), 0.002); end
  def test_resultados_intermedios_m278; assert_in_delta(0.0, (worksheet.resultados_intermedios_m278||0), 0.002); end
  def test_resultados_intermedios_c279; assert_equal("I.b", worksheet.resultados_intermedios_c279.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d279; assert_equal("CCS Power", worksheet.resultados_intermedios_d279.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f279; assert_in_epsilon(5.781025862068966, worksheet.resultados_intermedios_f279, 0.002); end
  def test_resultados_intermedios_g279; assert_in_epsilon(5.683042372881357, worksheet.resultados_intermedios_g279, 0.002); end
  def test_resultados_intermedios_h279; assert_in_epsilon(5.588325, worksheet.resultados_intermedios_h279, 0.002); end
  def test_resultados_intermedios_i279; assert_in_epsilon(5.4967131147540975, worksheet.resultados_intermedios_i279, 0.002); end
  def test_resultados_intermedios_j279; assert_in_epsilon(5.408056451612903, worksheet.resultados_intermedios_j279, 0.002); end
  def test_resultados_intermedios_k279; assert_in_epsilon(5.322214285714286, worksheet.resultados_intermedios_k279, 0.002); end
  def test_resultados_intermedios_l279; assert_in_epsilon(5.2390546874999995, worksheet.resultados_intermedios_l279, 0.002); end
  def test_resultados_intermedios_m279; assert_in_epsilon(5.158453846153846, worksheet.resultados_intermedios_m279, 0.002); end
  def test_resultados_intermedios_d281; assert_equal("Bio type", worksheet.resultados_intermedios_d281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e281; assert_equal("Column1", worksheet.resultados_intermedios_e281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f281; assert_equal("2015", worksheet.resultados_intermedios_f281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g281; assert_equal("2020", worksheet.resultados_intermedios_g281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h281; assert_equal("2025", worksheet.resultados_intermedios_h281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i281; assert_equal("2030", worksheet.resultados_intermedios_i281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j281; assert_equal("2035", worksheet.resultados_intermedios_j281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k281; assert_equal("2040", worksheet.resultados_intermedios_k281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l281; assert_equal("2045", worksheet.resultados_intermedios_l281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m281; assert_equal("2050", worksheet.resultados_intermedios_m281.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d282; assert_equal("Solid", worksheet.resultados_intermedios_d282.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f282; assert_in_delta(0.026731017339004026, worksheet.resultados_intermedios_f282, 0.002); end
  def test_resultados_intermedios_g282; assert_in_delta(0.04234514775691888, worksheet.resultados_intermedios_g282, 0.002); end
  def test_resultados_intermedios_h282; assert_in_delta(0.08935634169436686, worksheet.resultados_intermedios_h282, 0.002); end
  def test_resultados_intermedios_i282; assert_in_delta(0.23412174281996498, worksheet.resultados_intermedios_i282, 0.002); end
  def test_resultados_intermedios_j282; assert_in_delta(0.36245724269373897, worksheet.resultados_intermedios_j282, 0.002); end
  def test_resultados_intermedios_k282; assert_in_delta(0.5502221211520693, worksheet.resultados_intermedios_k282, 0.002); end
  def test_resultados_intermedios_l282; assert_in_delta(0.6664363992995096, worksheet.resultados_intermedios_l282, 0.002); end
  def test_resultados_intermedios_m282; assert_in_delta(0.7962537533247672, worksheet.resultados_intermedios_m282, 0.002); end
  def test_resultados_intermedios_d283; assert_equal("Liquid", worksheet.resultados_intermedios_d283.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f283; assert_in_delta(0.04145111266657542, worksheet.resultados_intermedios_f283, 0.002); end
  def test_resultados_intermedios_g283; assert_in_delta(0.08121874424930503, worksheet.resultados_intermedios_g283, 0.002); end
  def test_resultados_intermedios_h283; assert_in_delta(0.14855861897248784, worksheet.resultados_intermedios_h283, 0.002); end
  def test_resultados_intermedios_i283; assert_in_delta(0.1976811613977888, worksheet.resultados_intermedios_i283, 0.002); end
  def test_resultados_intermedios_j283; assert_in_delta(0.22635067226861177, worksheet.resultados_intermedios_j283, 0.002); end
  def test_resultados_intermedios_k283; assert_in_delta(0.26082371435829166, worksheet.resultados_intermedios_k283, 0.002); end
  def test_resultados_intermedios_l283; assert_in_delta(0.3025244755621223, worksheet.resultados_intermedios_l283, 0.002); end
  def test_resultados_intermedios_m283; assert_in_delta(0.3503715936873002, worksheet.resultados_intermedios_m283, 0.002); end
  def test_resultados_intermedios_d284; assert_equal("Gas", worksheet.resultados_intermedios_d284.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f284; assert_in_delta(0.013259167632819887, worksheet.resultados_intermedios_f284, 0.002); end
  def test_resultados_intermedios_g284; assert_in_delta(0.013017481172917659, worksheet.resultados_intermedios_g284, 0.002); end
  def test_resultados_intermedios_h284; assert_in_delta(0.013314819975756708, worksheet.resultados_intermedios_h284, 0.002); end
  def test_resultados_intermedios_i284; assert_in_delta(0.013832375485473745, worksheet.resultados_intermedios_i284, 0.002); end
  def test_resultados_intermedios_j284; assert_in_delta(0.01863237330916525, worksheet.resultados_intermedios_j284, 0.002); end
  def test_resultados_intermedios_k284; assert_in_delta(0.025160667388340566, worksheet.resultados_intermedios_k284, 0.002); end
  def test_resultados_intermedios_l284; assert_in_delta(0.02656739841677601, worksheet.resultados_intermedios_l284, 0.002); end
  def test_resultados_intermedios_m284; assert_in_delta(0.02648690072501105, worksheet.resultados_intermedios_m284, 0.002); end
  def test_resultados_intermedios_b286; assert_equal("Electricity Generation Emissions", worksheet.resultados_intermedios_b286.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c289; assert_equal("Emissions from Electricity Generation, excluding CHP", worksheet.resultados_intermedios_c289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f289; assert_equal("2015", worksheet.resultados_intermedios_f289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g289; assert_equal("2020", worksheet.resultados_intermedios_g289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h289; assert_equal("2025", worksheet.resultados_intermedios_h289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i289; assert_equal("2030", worksheet.resultados_intermedios_i289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j289; assert_equal("2035", worksheet.resultados_intermedios_j289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k289; assert_equal("2040", worksheet.resultados_intermedios_k289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l289; assert_equal("2045", worksheet.resultados_intermedios_l289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m289; assert_equal("2050", worksheet.resultados_intermedios_m289.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c290; assert_equal("Power Generation", worksheet.resultados_intermedios_c290.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f290; assert_in_epsilon(157.49802847205476, worksheet.resultados_intermedios_f290, 0.002); end
  def test_resultados_intermedios_g290; assert_in_epsilon(138.6973089610978, worksheet.resultados_intermedios_g290, 0.002); end
  def test_resultados_intermedios_h290; assert_in_epsilon(93.75776415180125, worksheet.resultados_intermedios_h290, 0.002); end
  def test_resultados_intermedios_i290; assert_in_epsilon(49.73708297231498, worksheet.resultados_intermedios_i290, 0.002); end
  def test_resultados_intermedios_j290; assert_in_epsilon(24.225772900468016, worksheet.resultados_intermedios_j290, 0.002); end
  def test_resultados_intermedios_k290; assert_in_epsilon(7.0302633484101795, worksheet.resultados_intermedios_k290, 0.002); end
  def test_resultados_intermedios_l290; assert_in_epsilon(6.891492165582478, worksheet.resultados_intermedios_l290, 0.002); end
  def test_resultados_intermedios_m290; assert_in_epsilon(6.7581299990587445, worksheet.resultados_intermedios_m290, 0.002); end
  def test_resultados_intermedios_c291; assert_equal("CCS in Power", worksheet.resultados_intermedios_c291.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f291; assert_in_epsilon(-2.8350150827586207, worksheet.resultados_intermedios_f291, 0.002); end
  def test_resultados_intermedios_g291; assert_in_epsilon(-6.678458816949153, worksheet.resultados_intermedios_g291, 0.002); end
  def test_resultados_intermedios_h291; assert_in_epsilon(-6.538048685217391, worksheet.resultados_intermedios_h291, 0.002); end
  def test_resultados_intermedios_i291; assert_in_epsilon(-6.403460266271363, worksheet.resultados_intermedios_i291, 0.002); end
  def test_resultados_intermedios_j291; assert_in_epsilon(-6.274336960887095, worksheet.resultados_intermedios_j291, 0.002); end
  def test_resultados_intermedios_k291; assert_in_epsilon(-6.260121498214285, worksheet.resultados_intermedios_k291, 0.002); end
  def test_resultados_intermedios_l291; assert_in_epsilon(-6.136579599107142, worksheet.resultados_intermedios_l291, 0.002); end
  def test_resultados_intermedios_m291; assert_in_epsilon(-6.017852256923077, worksheet.resultados_intermedios_m291, 0.002); end
  def test_resultados_intermedios_c292; assert_equal("Bioenergy in Gas Power", worksheet.resultados_intermedios_c292.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f292; assert_in_delta(-0.6531089173520611, worksheet.resultados_intermedios_f292, 0.002); end
  def test_resultados_intermedios_g292; assert_in_delta(-0.5969722619588301, worksheet.resultados_intermedios_g292, 0.002); end
  def test_resultados_intermedios_h292; assert_in_delta(-0.5671228387854605, worksheet.resultados_intermedios_h292, 0.002); end
  def test_resultados_intermedios_i292; assert_in_delta(-0.44567643554120656, worksheet.resultados_intermedios_i292, 0.002); end
  def test_resultados_intermedios_j292; assert_in_delta(-0.2376404665051677, worksheet.resultados_intermedios_j292, 0.002); end
  def test_resultados_intermedios_k292; assert_in_delta(0.0, (worksheet.resultados_intermedios_k292||0), 0.002); end
  def test_resultados_intermedios_l292; assert_in_delta(0.0, (worksheet.resultados_intermedios_l292||0), 0.002); end
  def test_resultados_intermedios_m292; assert_in_delta(0.0, (worksheet.resultados_intermedios_m292||0), 0.002); end
  def test_resultados_intermedios_c293; assert_equal("Bioenergy in Solid BM Power", worksheet.resultados_intermedios_c293.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f293; assert_in_epsilon(-2.808409269819531, worksheet.resultados_intermedios_f293, 0.002); end
  def test_resultados_intermedios_g293; assert_in_epsilon(-3.613649128655354, worksheet.resultados_intermedios_g293, 0.002); end
  def test_resultados_intermedios_h293; assert_in_epsilon(-3.9157798689954073, worksheet.resultados_intermedios_h293, 0.002); end
  def test_resultados_intermedios_i293; assert_in_epsilon(-2.4175683113530386, worksheet.resultados_intermedios_i293, 0.002); end
  def test_resultados_intermedios_j293; assert_in_epsilon(-1.6040466815053784, worksheet.resultados_intermedios_j293, 0.002); end
  def test_resultados_intermedios_k293; assert_in_delta(0.0, (worksheet.resultados_intermedios_k293||0), 0.002); end
  def test_resultados_intermedios_l293; assert_in_delta(0.0, (worksheet.resultados_intermedios_l293||0), 0.002); end
  def test_resultados_intermedios_m293; assert_in_delta(0.0, (worksheet.resultados_intermedios_m293||0), 0.002); end
  def test_resultados_intermedios_c294; assert_equal("Bioenergy in Solid HC CCS Power", worksheet.resultados_intermedios_c294.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f294; assert_in_delta(-0.05642699652305854, worksheet.resultados_intermedios_f294, 0.002); end
  def test_resultados_intermedios_g294; assert_in_delta(-0.27312740834614246, worksheet.resultados_intermedios_g294, 0.002); end
  def test_resultados_intermedios_h294; assert_in_delta(-0.563821578950113, worksheet.resultados_intermedios_h294, 0.002); end
  def test_resultados_intermedios_i294; assert_in_epsilon(-1.4458326752294293, worksheet.resultados_intermedios_i294, 0.002); end
  def test_resultados_intermedios_j294; assert_in_epsilon(-2.1917433115991054, worksheet.resultados_intermedios_j294, 0.002); end
  def test_resultados_intermedios_k294; assert_in_epsilon(-3.3271390715397944, worksheet.resultados_intermedios_k294, 0.002); end
  def test_resultados_intermedios_l294; assert_in_epsilon(-3.9476330310808754, worksheet.resultados_intermedios_l294, 0.002); end
  def test_resultados_intermedios_m294; assert_in_epsilon(-4.622273436189701, worksheet.resultados_intermedios_m294, 0.002); end
  def test_resultados_intermedios_c295; assert_equal("Bioenergy in Gas CCS Power", worksheet.resultados_intermedios_c295.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f295; assert_in_delta(-0.014162570684744686, worksheet.resultados_intermedios_f295, 0.002); end
  def test_resultados_intermedios_g295; assert_in_delta(-0.013668749019730256, worksheet.resultados_intermedios_g295, 0.002); end
  def test_resultados_intermedios_h295; assert_in_delta(-0.013747947694800134, worksheet.resultados_intermedios_h295, 0.002); end
  def test_resultados_intermedios_i295; assert_in_delta(-0.014048202446625139, worksheet.resultados_intermedios_i295, 0.002); end
  def test_resultados_intermedios_j295; assert_in_delta(-0.01861788357131605, worksheet.resultados_intermedios_j295, 0.002); end
  def test_resultados_intermedios_k295; assert_in_delta(-0.02474203573454523, worksheet.resultados_intermedios_k295, 0.002); end
  def test_resultados_intermedios_l295; assert_in_delta(-0.025717152331418965, worksheet.resultados_intermedios_l295, 0.002); end
  def test_resultados_intermedios_m295; assert_in_delta(-0.02524478113129698, worksheet.resultados_intermedios_m295, 0.002); end
  def test_resultados_intermedios_c296; assert_equal("Total Emissions from Power", worksheet.resultados_intermedios_c296.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f296; assert_in_epsilon(151.13090563491676, worksheet.resultados_intermedios_f296, 0.002); end
  def test_resultados_intermedios_g296; assert_in_epsilon(127.5214325961686, worksheet.resultados_intermedios_g296, 0.002); end
  def test_resultados_intermedios_h296; assert_in_epsilon(82.15924323215809, worksheet.resultados_intermedios_h296, 0.002); end
  def test_resultados_intermedios_i296; assert_in_epsilon(39.01049708147331, worksheet.resultados_intermedios_i296, 0.002); end
  def test_resultados_intermedios_j296; assert_in_epsilon(13.899387596399954, worksheet.resultados_intermedios_j296, 0.002); end
  def test_resultados_intermedios_k296; assert_in_epsilon(-2.581739257078445, worksheet.resultados_intermedios_k296, 0.002); end
  def test_resultados_intermedios_l296; assert_in_epsilon(-3.218437616936958, worksheet.resultados_intermedios_l296, 0.002); end
  def test_resultados_intermedios_m296; assert_in_epsilon(-3.9072404751853305, worksheet.resultados_intermedios_m296, 0.002); end
  def test_resultados_intermedios_c298; assert_equal("Emissions reclassified", worksheet.resultados_intermedios_c298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f298; assert_equal("2015", worksheet.resultados_intermedios_f298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_g298; assert_equal("2020", worksheet.resultados_intermedios_g298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_h298; assert_equal("2025", worksheet.resultados_intermedios_h298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_i298; assert_equal("2030", worksheet.resultados_intermedios_i298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_j298; assert_equal("2035", worksheet.resultados_intermedios_j298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_k298; assert_equal("2040", worksheet.resultados_intermedios_k298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_l298; assert_equal("2045", worksheet.resultados_intermedios_l298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m298; assert_equal("2050", worksheet.resultados_intermedios_m298.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c299; assert_in_delta(1.0, worksheet.resultados_intermedios_c299, 0.002); end
  def test_resultados_intermedios_d299; assert_equal("Fuel Combustion", worksheet.resultados_intermedios_d299.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f299; assert_in_epsilon(157.49802847205476, worksheet.resultados_intermedios_f299, 0.002); end
  def test_resultados_intermedios_g299; assert_in_epsilon(138.6973089610978, worksheet.resultados_intermedios_g299, 0.002); end
  def test_resultados_intermedios_h299; assert_in_epsilon(93.75776415180125, worksheet.resultados_intermedios_h299, 0.002); end
  def test_resultados_intermedios_i299; assert_in_epsilon(49.73708297231498, worksheet.resultados_intermedios_i299, 0.002); end
  def test_resultados_intermedios_j299; assert_in_epsilon(24.225772900468016, worksheet.resultados_intermedios_j299, 0.002); end
  def test_resultados_intermedios_k299; assert_in_epsilon(7.0302633484101795, worksheet.resultados_intermedios_k299, 0.002); end
  def test_resultados_intermedios_l299; assert_in_epsilon(6.891492165582478, worksheet.resultados_intermedios_l299, 0.002); end
  def test_resultados_intermedios_m299; assert_in_epsilon(6.7581299990587445, worksheet.resultados_intermedios_m299, 0.002); end
  def test_resultados_intermedios_c300; assert_equal("X2", worksheet.resultados_intermedios_c300.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d300; assert_equal("Bioenergy credit", worksheet.resultados_intermedios_d300.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f300; assert_in_epsilon(-3.532107754379395, worksheet.resultados_intermedios_f300, 0.002); end
  def test_resultados_intermedios_g300; assert_in_epsilon(-4.497417547980057, worksheet.resultados_intermedios_g300, 0.002); end
  def test_resultados_intermedios_h300; assert_in_epsilon(-5.060472234425781, worksheet.resultados_intermedios_h300, 0.002); end
  def test_resultados_intermedios_i300; assert_in_epsilon(-4.3231256245703, worksheet.resultados_intermedios_i300, 0.002); end
  def test_resultados_intermedios_j300; assert_in_epsilon(-4.052048343180968, worksheet.resultados_intermedios_j300, 0.002); end
  def test_resultados_intermedios_k300; assert_in_epsilon(-3.3518811072743397, worksheet.resultados_intermedios_k300, 0.002); end
  def test_resultados_intermedios_l300; assert_in_epsilon(-3.973350183412294, worksheet.resultados_intermedios_l300, 0.002); end
  def test_resultados_intermedios_m300; assert_in_epsilon(-4.647518217320998, worksheet.resultados_intermedios_m300, 0.002); end
  def test_resultados_intermedios_c301; assert_equal("X3", worksheet.resultados_intermedios_c301.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d301; assert_equal("Carbon capture", worksheet.resultados_intermedios_d301.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f301; assert_in_epsilon(-2.8350150827586207, worksheet.resultados_intermedios_f301, 0.002); end
  def test_resultados_intermedios_g301; assert_in_epsilon(-6.678458816949153, worksheet.resultados_intermedios_g301, 0.002); end
  def test_resultados_intermedios_h301; assert_in_epsilon(-6.538048685217391, worksheet.resultados_intermedios_h301, 0.002); end
  def test_resultados_intermedios_i301; assert_in_epsilon(-6.403460266271363, worksheet.resultados_intermedios_i301, 0.002); end
  def test_resultados_intermedios_j301; assert_in_epsilon(-6.274336960887095, worksheet.resultados_intermedios_j301, 0.002); end
  def test_resultados_intermedios_k301; assert_in_epsilon(-6.260121498214285, worksheet.resultados_intermedios_k301, 0.002); end
  def test_resultados_intermedios_l301; assert_in_epsilon(-6.136579599107142, worksheet.resultados_intermedios_l301, 0.002); end
  def test_resultados_intermedios_m301; assert_in_epsilon(-6.017852256923077, worksheet.resultados_intermedios_m301, 0.002); end
  def test_resultados_intermedios_d302; assert_equal("Total", worksheet.resultados_intermedios_d302.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f302; assert_in_epsilon(151.13090563491676, worksheet.resultados_intermedios_f302, 0.002); end
  def test_resultados_intermedios_g302; assert_in_epsilon(127.5214325961686, worksheet.resultados_intermedios_g302, 0.002); end
  def test_resultados_intermedios_h302; assert_in_epsilon(82.15924323215809, worksheet.resultados_intermedios_h302, 0.002); end
  def test_resultados_intermedios_i302; assert_in_epsilon(39.01049708147331, worksheet.resultados_intermedios_i302, 0.002); end
  def test_resultados_intermedios_j302; assert_in_epsilon(13.899387596399954, worksheet.resultados_intermedios_j302, 0.002); end
  def test_resultados_intermedios_k302; assert_in_epsilon(-2.581739257078445, worksheet.resultados_intermedios_k302, 0.002); end
  def test_resultados_intermedios_l302; assert_in_epsilon(-3.218437616936958, worksheet.resultados_intermedios_l302, 0.002); end
  def test_resultados_intermedios_m302; assert_in_epsilon(-3.9072404751853305, worksheet.resultados_intermedios_m302, 0.002); end
  def test_resultados_intermedios_c304; assert_equal("Emissions intensity", worksheet.resultados_intermedios_c304.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e304; assert_equal("MtCO2e/TWh", worksheet.resultados_intermedios_e304.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f304; assert_in_delta(0.4591409171872114, worksheet.resultados_intermedios_f304, 0.002); end
  def test_resultados_intermedios_g304; assert_in_delta(0.39084550257867906, worksheet.resultados_intermedios_g304, 0.002); end
  def test_resultados_intermedios_h304; assert_in_delta(0.2429612777722116, worksheet.resultados_intermedios_h304, 0.002); end
  def test_resultados_intermedios_i304; assert_in_delta(0.11181952226694088, worksheet.resultados_intermedios_i304, 0.002); end
  def test_resultados_intermedios_j304; assert_in_delta(0.03991216257741391, worksheet.resultados_intermedios_j304, 0.002); end
  def test_resultados_intermedios_k304; assert_in_delta(-0.006889748455343862, worksheet.resultados_intermedios_k304, 0.002); end
  def test_resultados_intermedios_l304; assert_in_delta(-0.00728569852397616, worksheet.resultados_intermedios_l304, 0.002); end
  def test_resultados_intermedios_m304; assert_in_delta(-0.007489028616598307, worksheet.resultados_intermedios_m304, 0.002); end
  def test_resultados_intermedios_e305; assert_equal("gCO2e/KWh", worksheet.resultados_intermedios_e305.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f305; assert_in_epsilon(459.1409171872114, worksheet.resultados_intermedios_f305, 0.002); end
  def test_resultados_intermedios_g305; assert_in_epsilon(390.8455025786791, worksheet.resultados_intermedios_g305, 0.002); end
  def test_resultados_intermedios_h305; assert_in_epsilon(242.96127777221162, worksheet.resultados_intermedios_h305, 0.002); end
  def test_resultados_intermedios_i305; assert_in_epsilon(111.81952226694088, worksheet.resultados_intermedios_i305, 0.002); end
  def test_resultados_intermedios_j305; assert_in_epsilon(39.91216257741391, worksheet.resultados_intermedios_j305, 0.002); end
  def test_resultados_intermedios_k305; assert_in_epsilon(-6.889748455343862, worksheet.resultados_intermedios_k305, 0.002); end
  def test_resultados_intermedios_l305; assert_in_epsilon(-7.28569852397616, worksheet.resultados_intermedios_l305, 0.002); end
  def test_resultados_intermedios_m305; assert_in_epsilon(-7.489028616598307, worksheet.resultados_intermedios_m305, 0.002); end
  def test_resultados_intermedios_c307; assert_equal("Note: Emissions from CHP are excluded, while emissions from district heating are included.", worksheet.resultados_intermedios_c307.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_b310; assert_equal("Primary supply, format for web-based interface", worksheet.resultados_intermedios_b310.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c312; assert_equal("N.01", worksheet.resultados_intermedios_c312.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d312; assert_equal("Nuclear fission", worksheet.resultados_intermedios_d312.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e312; assert_in_delta(0.0, (worksheet.resultados_intermedios_e312||0), 0.002); end
  def test_resultados_intermedios_f312; assert_in_epsilon(134.9964, worksheet.resultados_intermedios_f312, 0.002); end
  def test_resultados_intermedios_g312; assert_in_epsilon(145.71040000000005, worksheet.resultados_intermedios_g312, 0.002); end
  def test_resultados_intermedios_h312; assert_in_epsilon(299.992, worksheet.resultados_intermedios_h312, 0.002); end
  def test_resultados_intermedios_i312; assert_in_epsilon(544.2711999999999, worksheet.resultados_intermedios_i312, 0.002); end
  def test_resultados_intermedios_j312; assert_in_epsilon(762.8367999999999, worksheet.resultados_intermedios_j312, 0.002); end
  def test_resultados_intermedios_k312; assert_in_epsilon(1007.1160000000002, worksheet.resultados_intermedios_k312, 0.002); end
  def test_resultados_intermedios_l312; assert_in_epsilon(1251.3952000000002, worksheet.resultados_intermedios_l312, 0.002); end
  def test_resultados_intermedios_m312; assert_in_epsilon(1495.6744000000006, worksheet.resultados_intermedios_m312, 0.002); end
  def test_resultados_intermedios_c313; assert_equal("R.01", worksheet.resultados_intermedios_c313.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d313; assert_equal("Solar", worksheet.resultados_intermedios_d313.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e313; assert_in_delta(0.0, (worksheet.resultados_intermedios_e313||0), 0.002); end
  def test_resultados_intermedios_f313; assert_in_delta(0.013604831999999999, worksheet.resultados_intermedios_f313, 0.002); end
  def test_resultados_intermedios_g313; assert_in_delta(0.0, (worksheet.resultados_intermedios_g313||0), 0.002); end
  def test_resultados_intermedios_h313; assert_in_delta(0.0, (worksheet.resultados_intermedios_h313||0), 0.002); end
  def test_resultados_intermedios_i313; assert_in_delta(0.0, (worksheet.resultados_intermedios_i313||0), 0.002); end
  def test_resultados_intermedios_j313; assert_in_delta(0.0, (worksheet.resultados_intermedios_j313||0), 0.002); end
  def test_resultados_intermedios_k313; assert_in_delta(0.0, (worksheet.resultados_intermedios_k313||0), 0.002); end
  def test_resultados_intermedios_l313; assert_in_delta(0.0, (worksheet.resultados_intermedios_l313||0), 0.002); end
  def test_resultados_intermedios_m313; assert_in_delta(0.0, (worksheet.resultados_intermedios_m313||0), 0.002); end
  def test_resultados_intermedios_c314; assert_equal("R.02", worksheet.resultados_intermedios_c314.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d314; assert_equal("Wind", worksheet.resultados_intermedios_d314.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e314; assert_in_delta(0.0, (worksheet.resultados_intermedios_e314||0), 0.002); end
  def test_resultados_intermedios_f314; assert_in_epsilon(31.4730081, worksheet.resultados_intermedios_f314, 0.002); end
  def test_resultados_intermedios_g314; assert_in_epsilon(49.262518116, worksheet.resultados_intermedios_g314, 0.002); end
  def test_resultados_intermedios_h314; assert_in_epsilon(63.37414764000001, worksheet.resultados_intermedios_h314, 0.002); end
  def test_resultados_intermedios_i314; assert_in_epsilon(57.43939032, worksheet.resultados_intermedios_i314, 0.002); end
  def test_resultados_intermedios_j314; assert_in_epsilon(43.742515319999995, worksheet.resultados_intermedios_j314, 0.002); end
  def test_resultados_intermedios_k314; assert_in_epsilon(28.818400320000002, worksheet.resultados_intermedios_k314, 0.002); end
  def test_resultados_intermedios_l314; assert_in_epsilon(15.86663532, worksheet.resultados_intermedios_l314, 0.002); end
  def test_resultados_intermedios_m314; assert_in_epsilon(15.86663532, worksheet.resultados_intermedios_m314, 0.002); end
  def test_resultados_intermedios_c315; assert_equal("R.03", worksheet.resultados_intermedios_c315.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d315; assert_equal("Tidal", worksheet.resultados_intermedios_d315.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e315; assert_in_delta(0.0, (worksheet.resultados_intermedios_e315||0), 0.002); end
  def test_resultados_intermedios_f315; assert_in_delta(0.020013698630136998, worksheet.resultados_intermedios_f315, 0.002); end
  def test_resultados_intermedios_g315; assert_in_delta(0.050034246575342486, worksheet.resultados_intermedios_g315, 0.002); end
  def test_resultados_intermedios_h315; assert_in_delta(0.12508561643835608, worksheet.resultados_intermedios_h315, 0.002); end
  def test_resultados_intermedios_i315; assert_in_delta(0.12508561643835608, worksheet.resultados_intermedios_i315, 0.002); end
  def test_resultados_intermedios_j315; assert_in_delta(0.0, (worksheet.resultados_intermedios_j315||0), 0.002); end
  def test_resultados_intermedios_k315; assert_in_delta(0.0, (worksheet.resultados_intermedios_k315||0), 0.002); end
  def test_resultados_intermedios_l315; assert_in_delta(0.0, (worksheet.resultados_intermedios_l315||0), 0.002); end
  def test_resultados_intermedios_m315; assert_in_delta(0.0, (worksheet.resultados_intermedios_m315||0), 0.002); end
  def test_resultados_intermedios_c316; assert_equal("R.04", worksheet.resultados_intermedios_c316.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d316; assert_equal("Wave", worksheet.resultados_intermedios_d316.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e316; assert_in_delta(0.0, (worksheet.resultados_intermedios_e316||0), 0.002); end
  def test_resultados_intermedios_f316; assert_in_delta(0.0030020547945205484, worksheet.resultados_intermedios_f316, 0.002); end
  def test_resultados_intermedios_g316; assert_in_delta(0.1584417808219177, worksheet.resultados_intermedios_g316, 0.002); end
  def test_resultados_intermedios_h316; assert_in_delta(0.39610445205479383, worksheet.resultados_intermedios_h316, 0.002); end
  def test_resultados_intermedios_i316; assert_in_delta(0.39610445205479383, worksheet.resultados_intermedios_i316, 0.002); end
  def test_resultados_intermedios_j316; assert_in_delta(0.0, (worksheet.resultados_intermedios_j316||0), 0.002); end
  def test_resultados_intermedios_k316; assert_in_delta(0.0, (worksheet.resultados_intermedios_k316||0), 0.002); end
  def test_resultados_intermedios_l316; assert_in_delta(0.0, (worksheet.resultados_intermedios_l316||0), 0.002); end
  def test_resultados_intermedios_m316; assert_in_delta(0.0, (worksheet.resultados_intermedios_m316||0), 0.002); end
  def test_resultados_intermedios_c317; assert_equal("R.05", worksheet.resultados_intermedios_c317.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d317; assert_equal("Geothermal", worksheet.resultados_intermedios_d317.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e317; assert_in_delta(0.0, (worksheet.resultados_intermedios_e317||0), 0.002); end
  def test_resultados_intermedios_f317; assert_in_delta(0.0, (worksheet.resultados_intermedios_f317||0), 0.002); end
  def test_resultados_intermedios_g317; assert_in_delta(0.0, (worksheet.resultados_intermedios_g317||0), 0.002); end
  def test_resultados_intermedios_h317; assert_in_delta(0.0, (worksheet.resultados_intermedios_h317||0), 0.002); end
  def test_resultados_intermedios_i317; assert_in_delta(0.0, (worksheet.resultados_intermedios_i317||0), 0.002); end
  def test_resultados_intermedios_j317; assert_in_delta(0.0, (worksheet.resultados_intermedios_j317||0), 0.002); end
  def test_resultados_intermedios_k317; assert_in_delta(0.0, (worksheet.resultados_intermedios_k317||0), 0.002); end
  def test_resultados_intermedios_l317; assert_in_delta(0.0, (worksheet.resultados_intermedios_l317||0), 0.002); end
  def test_resultados_intermedios_m317; assert_in_delta(0.0, (worksheet.resultados_intermedios_m317||0), 0.002); end
  def test_resultados_intermedios_c318; assert_equal("R.06", worksheet.resultados_intermedios_c318.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d318; assert_equal("Hydro", worksheet.resultados_intermedios_d318.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e318; assert_in_delta(0.0, (worksheet.resultados_intermedios_e318||0), 0.002); end
  def test_resultados_intermedios_f318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_f318, 0.002); end
  def test_resultados_intermedios_g318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_g318, 0.002); end
  def test_resultados_intermedios_h318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_h318, 0.002); end
  def test_resultados_intermedios_i318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_i318, 0.002); end
  def test_resultados_intermedios_j318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_j318, 0.002); end
  def test_resultados_intermedios_k318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_k318, 0.002); end
  def test_resultados_intermedios_l318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_l318, 0.002); end
  def test_resultados_intermedios_m318; assert_in_epsilon(5.329728000000001, worksheet.resultados_intermedios_m318, 0.002); end
  def test_resultados_intermedios_c319; assert_equal("Y.02", worksheet.resultados_intermedios_c319.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d319; assert_equal("Electricity oversupply (imports)", worksheet.resultados_intermedios_d319.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e319; assert_in_delta(0.0, (worksheet.resultados_intermedios_e319||0), 0.002); end
  def test_resultados_intermedios_f319; assert_in_delta(0.0, (worksheet.resultados_intermedios_f319||0), 0.002); end
  def test_resultados_intermedios_g319; assert_in_delta(0.0, (worksheet.resultados_intermedios_g319||0), 0.002); end
  def test_resultados_intermedios_h319; assert_in_delta(0.0, (worksheet.resultados_intermedios_h319||0), 0.002); end
  def test_resultados_intermedios_i319; assert_in_delta(0.0, (worksheet.resultados_intermedios_i319||0), 0.002); end
  def test_resultados_intermedios_j319; assert_in_delta(0.0, (worksheet.resultados_intermedios_j319||0), 0.002); end
  def test_resultados_intermedios_k319; assert_in_delta(0.0, (worksheet.resultados_intermedios_k319||0), 0.002); end
  def test_resultados_intermedios_l319; assert_in_delta(0.0, (worksheet.resultados_intermedios_l319||0), 0.002); end
  def test_resultados_intermedios_m319; assert_in_delta(0.0, (worksheet.resultados_intermedios_m319||0), 0.002); end
  def test_resultados_intermedios_c320; assert_equal("R.07", worksheet.resultados_intermedios_c320.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d320; assert_equal("Environmental heat", worksheet.resultados_intermedios_d320.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e320; assert_in_delta(0.0, (worksheet.resultados_intermedios_e320||0), 0.002); end
  def test_resultados_intermedios_f320; assert_in_delta(0.0, (worksheet.resultados_intermedios_f320||0), 0.002); end
  def test_resultados_intermedios_g320; assert_in_epsilon(26.710275840124822, worksheet.resultados_intermedios_g320, 0.002); end
  def test_resultados_intermedios_h320; assert_in_epsilon(51.08986411209551, worksheet.resultados_intermedios_h320, 0.002); end
  def test_resultados_intermedios_i320; assert_in_epsilon(72.98473337154611, worksheet.resultados_intermedios_i320, 0.002); end
  def test_resultados_intermedios_j320; assert_in_epsilon(93.28802595156434, worksheet.resultados_intermedios_j320, 0.002); end
  def test_resultados_intermedios_k320; assert_in_epsilon(111.80176894736846, worksheet.resultados_intermedios_k320, 0.002); end
  def test_resultados_intermedios_l320; assert_in_epsilon(129.55617773939002, worksheet.resultados_intermedios_l320, 0.002); end
  def test_resultados_intermedios_m320; assert_in_epsilon(146.26559002704465, worksheet.resultados_intermedios_m320, 0.002); end
  def test_resultados_intermedios_d321; assert_equal("Bioenergy", worksheet.resultados_intermedios_d321.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e321; assert_in_delta(0.0, (worksheet.resultados_intermedios_e321||0), 0.002); end
  def test_resultados_intermedios_f321; assert_in_epsilon(112.5380772602856, worksheet.resultados_intermedios_f321, 0.002); end
  def test_resultados_intermedios_g321; assert_in_epsilon(188.2000595732631, worksheet.resultados_intermedios_g321, 0.002); end
  def test_resultados_intermedios_h321; assert_in_epsilon(243.38739650450407, worksheet.resultados_intermedios_h321, 0.002); end
  def test_resultados_intermedios_i321; assert_in_epsilon(276.16640720975766, worksheet.resultados_intermedios_i321, 0.002); end
  def test_resultados_intermedios_j321; assert_in_epsilon(308.0176014160299, worksheet.resultados_intermedios_j321, 0.002); end
  def test_resultados_intermedios_k321; assert_in_epsilon(343.18077644969964, worksheet.resultados_intermedios_k321, 0.002); end
  def test_resultados_intermedios_l321; assert_in_epsilon(380.9151540145698, worksheet.resultados_intermedios_l321, 0.002); end
  def test_resultados_intermedios_m321; assert_in_epsilon(418.6662002759773, worksheet.resultados_intermedios_m321, 0.002); end
  def test_resultados_intermedios_d322; assert_equal("Coal", worksheet.resultados_intermedios_d322.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e322; assert_in_delta(0.0, (worksheet.resultados_intermedios_e322||0), 0.002); end
  def test_resultados_intermedios_f322; assert_in_epsilon(382.62970915148435, worksheet.resultados_intermedios_f322, 0.002); end
  def test_resultados_intermedios_g322; assert_in_epsilon(322.9846116481334, worksheet.resultados_intermedios_g322, 0.002); end
  def test_resultados_intermedios_h322; assert_in_epsilon(181.52101669948826, worksheet.resultados_intermedios_h322, 0.002); end
  def test_resultados_intermedios_i322; assert_in_epsilon(66.08816329800996, worksheet.resultados_intermedios_i322, 0.002); end
  def test_resultados_intermedios_j322; assert_in_epsilon(39.515968366933045, worksheet.resultados_intermedios_j322, 0.002); end
  def test_resultados_intermedios_k322; assert_in_epsilon(18.369007105235248, worksheet.resultados_intermedios_k322, 0.002); end
  def test_resultados_intermedios_l322; assert_in_epsilon(11.2939332441737, worksheet.resultados_intermedios_l322, 0.002); end
  def test_resultados_intermedios_m322; assert_in_epsilon(4.458408818392861, worksheet.resultados_intermedios_m322, 0.002); end
  def test_resultados_intermedios_d323; assert_equal("Oil", worksheet.resultados_intermedios_d323.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e323; assert_in_delta(0.0, (worksheet.resultados_intermedios_e323||0), 0.002); end
  def test_resultados_intermedios_f323; assert_in_epsilon(764.128813565605, worksheet.resultados_intermedios_f323, 0.002); end
  def test_resultados_intermedios_g323; assert_in_epsilon(694.8917647933467, worksheet.resultados_intermedios_g323, 0.002); end
  def test_resultados_intermedios_h323; assert_in_epsilon(562.6610596838292, worksheet.resultados_intermedios_h323, 0.002); end
  def test_resultados_intermedios_i323; assert_in_epsilon(464.73162247166283, worksheet.resultados_intermedios_i323, 0.002); end
  def test_resultados_intermedios_j323; assert_in_epsilon(444.4673195053697, worksheet.resultados_intermedios_j323, 0.002); end
  def test_resultados_intermedios_k323; assert_in_epsilon(417.0247302703816, worksheet.resultados_intermedios_k323, 0.002); end
  def test_resultados_intermedios_l323; assert_in_epsilon(381.5864839758937, worksheet.resultados_intermedios_l323, 0.002); end
  def test_resultados_intermedios_m323; assert_in_epsilon(341.09482657693366, worksheet.resultados_intermedios_m323, 0.002); end
  def test_resultados_intermedios_d324; assert_equal("Natural gas", worksheet.resultados_intermedios_d324.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e324; assert_in_delta(0.0, (worksheet.resultados_intermedios_e324||0), 0.002); end
  def test_resultados_intermedios_f324; assert_in_epsilon(847.1809754290331, worksheet.resultados_intermedios_f324, 0.002); end
  def test_resultados_intermedios_g324; assert_in_epsilon(744.7947995759703, worksheet.resultados_intermedios_g324, 0.002); end
  def test_resultados_intermedios_h324; assert_in_epsilon(655.1827410157117, worksheet.resultados_intermedios_h324, 0.002); end
  def test_resultados_intermedios_i324; assert_in_epsilon(530.7380988087289, worksheet.resultados_intermedios_i324, 0.002); end
  def test_resultados_intermedios_j324; assert_in_epsilon(363.1496941507182, worksheet.resultados_intermedios_j324, 0.002); end
  def test_resultados_intermedios_k324; assert_in_epsilon(236.54672560812912, worksheet.resultados_intermedios_k324, 0.002); end
  def test_resultados_intermedios_l324; assert_in_epsilon(183.96234863091902, worksheet.resultados_intermedios_l324, 0.002); end
  def test_resultados_intermedios_m324; assert_in_epsilon(137.43759374644708, worksheet.resultados_intermedios_m324, 0.002); end
  def test_resultados_intermedios_d325; assert_equal("Total used in UK", worksheet.resultados_intermedios_d325.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_e325; assert_in_delta(0.0, (worksheet.resultados_intermedios_e325||0), 0.002); end
  def test_resultados_intermedios_f325; assert_in_epsilon(2278.3133320918328, worksheet.resultados_intermedios_f325, 0.002); end
  def test_resultados_intermedios_g325; assert_in_epsilon(2178.0926335742356, worksheet.resultados_intermedios_g325, 0.002); end
  def test_resultados_intermedios_h325; assert_in_epsilon(2063.059143724122, worksheet.resultados_intermedios_h325, 0.002); end
  def test_resultados_intermedios_i325; assert_in_epsilon(2018.2705335481985, worksheet.resultados_intermedios_i325, 0.002); end
  def test_resultados_intermedios_j325; assert_in_epsilon(2060.347652710615, worksheet.resultados_intermedios_j325, 0.002); end
  def test_resultados_intermedios_k325; assert_in_epsilon(2140.723518526552, worksheet.resultados_intermedios_k325, 0.002); end
  def test_resultados_intermedios_l325; assert_in_epsilon(2267.9931498746732, worksheet.resultados_intermedios_l325, 0.002); end
  def test_resultados_intermedios_m325; assert_in_epsilon(2395.6781001787945, worksheet.resultados_intermedios_m325, 0.002); end
  def test_resultados_intermedios_d326; assert_equal("Imported energy", worksheet.resultados_intermedios_d326.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f326; assert_in_epsilon(875.8714528848053, worksheet.resultados_intermedios_f326, 0.002); end
  def test_resultados_intermedios_g326; assert_in_epsilon(921.6122497735834, worksheet.resultados_intermedios_g326, 0.002); end
  def test_resultados_intermedios_h326; assert_in_epsilon(921.2591987341871, worksheet.resultados_intermedios_h326, 0.002); end
  def test_resultados_intermedios_i326; assert_in_epsilon(1055.0828680715474, worksheet.resultados_intermedios_i326, 0.002); end
  def test_resultados_intermedios_j326; assert_in_epsilon(1212.0180932235587, worksheet.resultados_intermedios_j326, 0.002); end
  def test_resultados_intermedios_k326; assert_in_epsilon(1403.483246360041, worksheet.resultados_intermedios_k326, 0.002); end
  def test_resultados_intermedios_l326; assert_in_epsilon(1639.991049145729, worksheet.resultados_intermedios_l326, 0.002); end
  def test_resultados_intermedios_m326; assert_in_epsilon(1861.27091843427, worksheet.resultados_intermedios_m326, 0.002); end
  def test_resultados_intermedios_l327; assert_equal("% imported", worksheet.resultados_intermedios_l327.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_m327; assert_in_delta(0.7769286359028617, worksheet.resultados_intermedios_m327, 0.002); end
  def test_resultados_intermedios_d328; assert_equal("Primary demand", worksheet.resultados_intermedios_d328.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f328; assert_in_epsilon(2278.3133320918328, worksheet.resultados_intermedios_f328, 0.002); end
  def test_resultados_intermedios_g328; assert_in_epsilon(2178.092633574236, worksheet.resultados_intermedios_g328, 0.002); end
  def test_resultados_intermedios_h328; assert_in_epsilon(2063.059143724122, worksheet.resultados_intermedios_h328, 0.002); end
  def test_resultados_intermedios_i328; assert_in_epsilon(2018.2705335481983, worksheet.resultados_intermedios_i328, 0.002); end
  def test_resultados_intermedios_j328; assert_in_epsilon(2060.347652710615, worksheet.resultados_intermedios_j328, 0.002); end
  def test_resultados_intermedios_k328; assert_in_epsilon(2140.723518526552, worksheet.resultados_intermedios_k328, 0.002); end
  def test_resultados_intermedios_l328; assert_in_epsilon(2267.993149874673, worksheet.resultados_intermedios_l328, 0.002); end
  def test_resultados_intermedios_m328; assert_in_epsilon(2395.6781001787945, worksheet.resultados_intermedios_m328, 0.002); end
  def test_resultados_intermedios_b331; assert_equal("Electricity, format for web-based interface", worksheet.resultados_intermedios_b331.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c333; assert_equal("V.01", worksheet.resultados_intermedios_c333.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f333; assert_in_epsilon(2015.0, worksheet.resultados_intermedios_f333, 0.002); end
  def test_resultados_intermedios_g333; assert_in_epsilon(2020.0, worksheet.resultados_intermedios_g333, 0.002); end
  def test_resultados_intermedios_h333; assert_in_epsilon(2025.0, worksheet.resultados_intermedios_h333, 0.002); end
  def test_resultados_intermedios_i333; assert_in_epsilon(2030.0, worksheet.resultados_intermedios_i333, 0.002); end
  def test_resultados_intermedios_j333; assert_in_epsilon(2035.0, worksheet.resultados_intermedios_j333, 0.002); end
  def test_resultados_intermedios_k333; assert_in_epsilon(2040.0, worksheet.resultados_intermedios_k333, 0.002); end
  def test_resultados_intermedios_l333; assert_in_epsilon(2045.0, worksheet.resultados_intermedios_l333, 0.002); end
  def test_resultados_intermedios_m333; assert_in_epsilon(2050.0, worksheet.resultados_intermedios_m333, 0.002); end
  def test_resultados_intermedios_n333; assert_equal("TWh", worksheet.resultados_intermedios_n333.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_c335; assert_equal("VIII.a", worksheet.resultados_intermedios_c335.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d335; assert_equal("H2 Production for Transport", worksheet.resultados_intermedios_d335.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f335; assert_in_delta(0.0, (worksheet.resultados_intermedios_f335||0), 0.002); end
  def test_resultados_intermedios_g335; assert_in_delta(0.0, (worksheet.resultados_intermedios_g335||0), 0.002); end
  def test_resultados_intermedios_h335; assert_in_delta(0.0, (worksheet.resultados_intermedios_h335||0), 0.002); end
  def test_resultados_intermedios_i335; assert_in_delta(0.0, (worksheet.resultados_intermedios_i335||0), 0.002); end
  def test_resultados_intermedios_j335; assert_in_delta(0.0, (worksheet.resultados_intermedios_j335||0), 0.002); end
  def test_resultados_intermedios_k335; assert_in_delta(0.0, (worksheet.resultados_intermedios_k335||0), 0.002); end
  def test_resultados_intermedios_l335; assert_in_delta(0.0, (worksheet.resultados_intermedios_l335||0), 0.002); end
  def test_resultados_intermedios_m335; assert_in_delta(0.0, (worksheet.resultados_intermedios_m335||0), 0.002); end
  def test_resultados_intermedios_c336; assert_equal("VI.a", worksheet.resultados_intermedios_c336.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d336; assert_equal("Agriculture and land use", worksheet.resultados_intermedios_d336.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f336; assert_in_epsilon(4.27679109684669, worksheet.resultados_intermedios_f336, 0.002); end
  def test_resultados_intermedios_g336; assert_in_epsilon(4.302333601756302, worksheet.resultados_intermedios_g336, 0.002); end
  def test_resultados_intermedios_h336; assert_in_epsilon(4.327876106665914, worksheet.resultados_intermedios_h336, 0.002); end
  def test_resultados_intermedios_i336; assert_in_epsilon(4.353418611575525, worksheet.resultados_intermedios_i336, 0.002); end
  def test_resultados_intermedios_j336; assert_in_epsilon(4.404503621394748, worksheet.resultados_intermedios_j336, 0.002); end
  def test_resultados_intermedios_k336; assert_in_epsilon(4.455588631213971, worksheet.resultados_intermedios_k336, 0.002); end
  def test_resultados_intermedios_l336; assert_in_epsilon(4.506673641033195, worksheet.resultados_intermedios_l336, 0.002); end
  def test_resultados_intermedios_m336; assert_in_epsilon(4.557758650852418, worksheet.resultados_intermedios_m336, 0.002); end
  def test_resultados_intermedios_c337; assert_equal("IV.b", worksheet.resultados_intermedios_c337.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d337; assert_equal("Solar thermal", worksheet.resultados_intermedios_d337.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f337; assert_in_delta(0.0, (worksheet.resultados_intermedios_f337||0), 0.002); end
  def test_resultados_intermedios_g337; assert_in_delta(0.0, (worksheet.resultados_intermedios_g337||0), 0.002); end
  def test_resultados_intermedios_h337; assert_in_delta(0.0, (worksheet.resultados_intermedios_h337||0), 0.002); end
  def test_resultados_intermedios_i337; assert_in_delta(0.0, (worksheet.resultados_intermedios_i337||0), 0.002); end
  def test_resultados_intermedios_j337; assert_in_delta(0.0, (worksheet.resultados_intermedios_j337||0), 0.002); end
  def test_resultados_intermedios_k337; assert_in_delta(0.0, (worksheet.resultados_intermedios_k337||0), 0.002); end
  def test_resultados_intermedios_l337; assert_in_delta(0.0, (worksheet.resultados_intermedios_l337||0), 0.002); end
  def test_resultados_intermedios_m337; assert_in_delta(0.0, (worksheet.resultados_intermedios_m337||0), 0.002); end
  def test_resultados_intermedios_c338; assert_equal("IX.a", worksheet.resultados_intermedios_c338.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d338; assert_equal("Domestic space heating and hot water", worksheet.resultados_intermedios_d338.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f338; assert_in_epsilon(18.799387716546846, worksheet.resultados_intermedios_f338, 0.002); end
  def test_resultados_intermedios_g338; assert_in_epsilon(26.506266092040867, worksheet.resultados_intermedios_g338, 0.002); end
  def test_resultados_intermedios_h338; assert_in_epsilon(33.63108846427504, worksheet.resultados_intermedios_h338, 0.002); end
  def test_resultados_intermedios_i338; assert_in_epsilon(39.783227755117835, worksheet.resultados_intermedios_i338, 0.002); end
  def test_resultados_intermedios_j338; assert_in_epsilon(45.57072160233259, worksheet.resultados_intermedios_j338, 0.002); end
  def test_resultados_intermedios_k338; assert_in_epsilon(50.72554827150682, worksheet.resultados_intermedios_k338, 0.002); end
  def test_resultados_intermedios_l338; assert_in_epsilon(55.703470971760105, worksheet.resultados_intermedios_l338, 0.002); end
  def test_resultados_intermedios_m338; assert_in_epsilon(60.29099317900859, worksheet.resultados_intermedios_m338, 0.002); end
  def test_resultados_intermedios_c339; assert_equal("IX.c", worksheet.resultados_intermedios_c339.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d339; assert_equal("Commercial heating and cooling", worksheet.resultados_intermedios_d339.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f339; assert_in_epsilon(25.622593678781335, worksheet.resultados_intermedios_f339, 0.002); end
  def test_resultados_intermedios_g339; assert_in_epsilon(26.070919424435566, worksheet.resultados_intermedios_g339, 0.002); end
  def test_resultados_intermedios_h339; assert_in_epsilon(26.645959007913262, worksheet.resultados_intermedios_h339, 0.002); end
  def test_resultados_intermedios_i339; assert_in_epsilon(27.349752170583066, worksheet.resultados_intermedios_i339, 0.002); end
  def test_resultados_intermedios_j339; assert_in_epsilon(28.18576294225938, worksheet.resultados_intermedios_j339, 0.002); end
  def test_resultados_intermedios_k339; assert_in_epsilon(29.158883159556222, worksheet.resultados_intermedios_k339, 0.002); end
  def test_resultados_intermedios_l339; assert_in_epsilon(30.275450308029814, worksheet.resultados_intermedios_l339, 0.002); end
  def test_resultados_intermedios_m339; assert_in_epsilon(31.54327949039369, worksheet.resultados_intermedios_m339, 0.002); end
  def test_resultados_intermedios_c340; assert_equal("X.a", worksheet.resultados_intermedios_c340.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d340; assert_equal("Domestic lighting, appliances, and cooking", worksheet.resultados_intermedios_d340.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f340; assert_in_epsilon(64.48974118489127, worksheet.resultados_intermedios_f340, 0.002); end
  def test_resultados_intermedios_g340; assert_in_epsilon(60.34321241319122, worksheet.resultados_intermedios_g340, 0.002); end
  def test_resultados_intermedios_h340; assert_in_epsilon(56.57375809126889, worksheet.resultados_intermedios_h340, 0.002); end
  def test_resultados_intermedios_i340; assert_in_epsilon(53.1387483122741, worksheet.resultados_intermedios_i340, 0.002); end
  def test_resultados_intermedios_j340; assert_in_epsilon(50.10695716975989, worksheet.resultados_intermedios_j340, 0.002); end
  def test_resultados_intermedios_k340; assert_in_epsilon(47.23262611851316, worksheet.resultados_intermedios_k340, 0.002); end
  def test_resultados_intermedios_l340; assert_in_epsilon(44.5922119776748, worksheet.resultados_intermedios_l340, 0.002); end
  def test_resultados_intermedios_m340; assert_in_epsilon(42.16083157626388, worksheet.resultados_intermedios_m340, 0.002); end
  def test_resultados_intermedios_c341; assert_equal("X.b", worksheet.resultados_intermedios_c341.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d341; assert_equal("Commercial lighting, appliances, and catering", worksheet.resultados_intermedios_d341.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f341; assert_in_epsilon(67.80277210239619, worksheet.resultados_intermedios_f341, 0.002); end
  def test_resultados_intermedios_g341; assert_in_epsilon(64.30864644522038, worksheet.resultados_intermedios_g341, 0.002); end
  def test_resultados_intermedios_h341; assert_in_epsilon(61.253276038768476, worksheet.resultados_intermedios_h341, 0.002); end
  def test_resultados_intermedios_i341; assert_in_epsilon(58.59905948027118, worksheet.resultados_intermedios_i341, 0.002); end
  def test_resultados_intermedios_j341; assert_in_epsilon(56.31264286452081, worksheet.resultados_intermedios_j341, 0.002); end
  def test_resultados_intermedios_k341; assert_in_epsilon(54.36447462382884, worksheet.resultados_intermedios_k341, 0.002); end
  def test_resultados_intermedios_l341; assert_in_epsilon(52.72841159324616, worksheet.resultados_intermedios_l341, 0.002); end
  def test_resultados_intermedios_m341; assert_in_epsilon(51.38137033451741, worksheet.resultados_intermedios_m341, 0.002); end
  def test_resultados_intermedios_c342; assert_equal("XI.a", worksheet.resultados_intermedios_c342.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d342; assert_equal("Industrial processes", worksheet.resultados_intermedios_d342.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f342; assert_in_epsilon(107.20154680727816, worksheet.resultados_intermedios_f342, 0.002); end
  def test_resultados_intermedios_g342; assert_in_epsilon(102.8263293319119, worksheet.resultados_intermedios_g342, 0.002); end
  def test_resultados_intermedios_h342; assert_in_epsilon(98.54846930552482, worksheet.resultados_intermedios_h342, 0.002); end
  def test_resultados_intermedios_i342; assert_in_epsilon(95.82591680036151, worksheet.resultados_intermedios_i342, 0.002); end
  def test_resultados_intermedios_j342; assert_in_epsilon(93.01171306412289, worksheet.resultados_intermedios_j342, 0.002); end
  def test_resultados_intermedios_k342; assert_in_epsilon(90.13512309776011, worksheet.resultados_intermedios_k342, 0.002); end
  def test_resultados_intermedios_l342; assert_in_epsilon(87.22144393283925, worksheet.resultados_intermedios_l342, 0.002); end
  def test_resultados_intermedios_m342; assert_in_epsilon(84.292444477136, worksheet.resultados_intermedios_m342, 0.002); end
  def test_resultados_intermedios_c343; assert_equal("XII.a", worksheet.resultados_intermedios_c343.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d343; assert_equal("Domestic passenger transport", worksheet.resultados_intermedios_d343.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f343; assert_in_epsilon(9.330860687920513, worksheet.resultados_intermedios_f343, 0.002); end
  def test_resultados_intermedios_g343; assert_in_epsilon(10.93277312733619, worksheet.resultados_intermedios_g343, 0.002); end
  def test_resultados_intermedios_h343; assert_in_epsilon(25.53281945160659, worksheet.resultados_intermedios_h343, 0.002); end
  def test_resultados_intermedios_i343; assert_in_epsilon(37.990907445651544, worksheet.resultados_intermedios_i343, 0.002); end
  def test_resultados_intermedios_j343; assert_in_epsilon(38.843781754291996, worksheet.resultados_intermedios_j343, 0.002); end
  def test_resultados_intermedios_k343; assert_in_epsilon(39.30644690838852, worksheet.resultados_intermedios_k343, 0.002); end
  def test_resultados_intermedios_l343; assert_in_epsilon(42.43263737622438, worksheet.resultados_intermedios_l343, 0.002); end
  def test_resultados_intermedios_m343; assert_in_epsilon(45.4975439994592, worksheet.resultados_intermedios_m343, 0.002); end
  def test_resultados_intermedios_c344; assert_equal("XII.b", worksheet.resultados_intermedios_c344.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d344; assert_equal("Domestic freight", worksheet.resultados_intermedios_d344.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f344; assert_in_delta(0.128666002003076, worksheet.resultados_intermedios_f344, 0.002); end
  def test_resultados_intermedios_g344; assert_in_delta(0.145740427687365, worksheet.resultados_intermedios_g344, 0.002); end
  def test_resultados_intermedios_h344; assert_in_delta(0.35986670869882903, worksheet.resultados_intermedios_h344, 0.002); end
  def test_resultados_intermedios_i344; assert_in_delta(0.6055253886502021, worksheet.resultados_intermedios_i344, 0.002); end
  def test_resultados_intermedios_j344; assert_in_delta(0.8760820277183811, worksheet.resultados_intermedios_j344, 0.002); end
  def test_resultados_intermedios_k344; assert_in_epsilon(1.207658636254754, worksheet.resultados_intermedios_k344, 0.002); end
  def test_resultados_intermedios_l344; assert_in_epsilon(1.682298645605885, worksheet.resultados_intermedios_l344, 0.002); end
  def test_resultados_intermedios_m344; assert_in_epsilon(2.1334592707445137, worksheet.resultados_intermedios_m344, 0.002); end
  def test_resultados_intermedios_c345; assert_equal("XIV.a", worksheet.resultados_intermedios_c345.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d345; assert_equal("Geosequestration", worksheet.resultados_intermedios_d345.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f345; assert_in_delta(0.0, (worksheet.resultados_intermedios_f345||0), 0.002); end
  def test_resultados_intermedios_g345; assert_in_delta(0.0, (worksheet.resultados_intermedios_g345||0), 0.002); end
  def test_resultados_intermedios_h345; assert_in_delta(0.0, (worksheet.resultados_intermedios_h345||0), 0.002); end
  def test_resultados_intermedios_i345; assert_in_delta(0.0, (worksheet.resultados_intermedios_i345||0), 0.002); end
  def test_resultados_intermedios_j345; assert_in_delta(0.0, (worksheet.resultados_intermedios_j345||0), 0.002); end
  def test_resultados_intermedios_k345; assert_in_delta(0.0, (worksheet.resultados_intermedios_k345||0), 0.002); end
  def test_resultados_intermedios_l345; assert_in_delta(0.0, (worksheet.resultados_intermedios_l345||0), 0.002); end
  def test_resultados_intermedios_m345; assert_in_delta(0.0, (worksheet.resultados_intermedios_m345||0), 0.002); end
  def test_resultados_intermedios_c346; assert_equal("XV.a", worksheet.resultados_intermedios_c346.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d346; assert_equal("Petroleum refineries", worksheet.resultados_intermedios_d346.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f346; assert_in_epsilon(6.127455410129972, worksheet.resultados_intermedios_f346, 0.002); end
  def test_resultados_intermedios_g346; assert_in_epsilon(5.811946425969373, worksheet.resultados_intermedios_g346, 0.002); end
  def test_resultados_intermedios_h346; assert_in_epsilon(5.565016031621894, worksheet.resultados_intermedios_h346, 0.002); end
  def test_resultados_intermedios_i346; assert_in_epsilon(5.373945999586455, worksheet.resultados_intermedios_i346, 0.002); end
  def test_resultados_intermedios_j346; assert_in_epsilon(5.226099651069918, worksheet.resultados_intermedios_j346, 0.002); end
  def test_resultados_intermedios_k346; assert_in_epsilon(5.1116989649088405, worksheet.resultados_intermedios_k346, 0.002); end
  def test_resultados_intermedios_l346; assert_in_epsilon(5.0231778947204795, worksheet.resultados_intermedios_l346, 0.002); end
  def test_resultados_intermedios_m346; assert_in_epsilon(4.9546819780416245, worksheet.resultados_intermedios_m346, 0.002); end
  def test_resultados_intermedios_c347; assert_equal("XV.b", worksheet.resultados_intermedios_c347.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d347; assert_equal("Indigenous fossil-fuel production", worksheet.resultados_intermedios_d347.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f347; assert_in_epsilon(1.3823848986645149, worksheet.resultados_intermedios_f347, 0.002); end
  def test_resultados_intermedios_g347; assert_in_epsilon(1.2990989147526122, worksheet.resultados_intermedios_g347, 0.002); end
  def test_resultados_intermedios_h347; assert_in_epsilon(1.2339158553677942, worksheet.resultados_intermedios_h347, 0.002); end
  def test_resultados_intermedios_i347; assert_in_delta(0.6779996494278734, worksheet.resultados_intermedios_i347, 0.002); end
  def test_resultados_intermedios_j347; assert_in_delta(0.6389721439616136, worksheet.resultados_intermedios_j347, 0.002); end
  def test_resultados_intermedios_k347; assert_in_delta(0.6087734041936447, worksheet.resultados_intermedios_k347, 0.002); end
  def test_resultados_intermedios_l347; assert_in_delta(0.5854061950246674, worksheet.resultados_intermedios_l347, 0.002); end
  def test_resultados_intermedios_m347; assert_in_delta(0.5673250940071375, worksheet.resultados_intermedios_m347, 0.002); end
  def test_resultados_intermedios_c348; assert_equal("XVII.a", worksheet.resultados_intermedios_c348.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_d348; assert_equal("District heating effective demand", worksheet.resultados_intermedios_d348.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f348; assert_in_epsilon(1.1169688155296071, worksheet.resultados_intermedios_f348, 0.002); end
  def test_resultados_intermedios_g348; assert_in_epsilon(1.0384843167650863, worksheet.resultados_intermedios_g348, 0.002); end
  def test_resultados_intermedios_h348; assert_in_delta(0.9666467614694886, worksheet.resultados_intermedios_h348, 0.002); end
  def test_resultados_intermedios_i348; assert_in_delta(0.9008229104380325, worksheet.resultados_intermedios_i348, 0.002); end
  def test_resultados_intermedios_j348; assert_in_delta(0.8404132547517993, worksheet.resultados_intermedios_j348, 0.002); end
  def test_resultados_intermedios_k348; assert_in_delta(0.7848960944896686, worksheet.resultados_intermedios_k348, 0.002); end
  def test_resultados_intermedios_l348; assert_in_delta(0.7338143760519278, worksheet.resultados_intermedios_l348, 0.002); end
  def test_resultados_intermedios_m348; assert_in_delta(0.6867651639653732, worksheet.resultados_intermedios_m348, 0.002); end
  def test_resultados_intermedios_d349; assert_equal("Total", worksheet.resultados_intermedios_d349.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f349; assert_in_epsilon(306.2791684009881, worksheet.resultados_intermedios_f349, 0.002); end
  def test_resultados_intermedios_g349; assert_in_epsilon(303.58575052106687, worksheet.resultados_intermedios_g349, 0.002); end
  def test_resultados_intermedios_h349; assert_in_epsilon(314.6386918231809, worksheet.resultados_intermedios_h349, 0.002); end
  def test_resultados_intermedios_i349; assert_in_epsilon(324.59932452393736, worksheet.resultados_intermedios_i349, 0.002); end
  def test_resultados_intermedios_j349; assert_in_epsilon(324.01765009618407, worksheet.resultados_intermedios_j349, 0.002); end
  def test_resultados_intermedios_k349; assert_in_epsilon(323.09171791061453, worksheet.resultados_intermedios_k349, 0.002); end
  def test_resultados_intermedios_l349; assert_in_epsilon(325.48499691221076, worksheet.resultados_intermedios_l349, 0.002); end
  def test_resultados_intermedios_m349; assert_in_epsilon(328.06645321438987, worksheet.resultados_intermedios_m349, 0.002); end
  def test_resultados_intermedios_d351; assert_equal("Transport", worksheet.resultados_intermedios_d351.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f351; assert_in_epsilon(9.459526689923589, worksheet.resultados_intermedios_f351, 0.002); end
  def test_resultados_intermedios_g351; assert_in_epsilon(11.078513555023555, worksheet.resultados_intermedios_g351, 0.002); end
  def test_resultados_intermedios_h351; assert_in_epsilon(25.892686160305416, worksheet.resultados_intermedios_h351, 0.002); end
  def test_resultados_intermedios_i351; assert_in_epsilon(38.596432834301744, worksheet.resultados_intermedios_i351, 0.002); end
  def test_resultados_intermedios_j351; assert_in_epsilon(39.71986378201038, worksheet.resultados_intermedios_j351, 0.002); end
  def test_resultados_intermedios_k351; assert_in_epsilon(40.51410554464328, worksheet.resultados_intermedios_k351, 0.002); end
  def test_resultados_intermedios_l351; assert_in_epsilon(44.11493602183026, worksheet.resultados_intermedios_l351, 0.002); end
  def test_resultados_intermedios_m351; assert_in_epsilon(47.63100327020371, worksheet.resultados_intermedios_m351, 0.002); end
  def test_resultados_intermedios_d352; assert_equal("Industry", worksheet.resultados_intermedios_d352.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f352; assert_in_epsilon(118.98817821291934, worksheet.resultados_intermedios_f352, 0.002); end
  def test_resultados_intermedios_g352; assert_in_epsilon(114.23970827439018, worksheet.resultados_intermedios_g352, 0.002); end
  def test_resultados_intermedios_h352; assert_in_epsilon(109.67527729918042, worksheet.resultados_intermedios_h352, 0.002); end
  def test_resultados_intermedios_i352; assert_in_epsilon(106.23128106095136, worksheet.resultados_intermedios_i352, 0.002); end
  def test_resultados_intermedios_j352; assert_in_epsilon(103.28128848054916, worksheet.resultados_intermedios_j352, 0.002); end
  def test_resultados_intermedios_k352; assert_in_epsilon(100.31118409807657, worksheet.resultados_intermedios_k352, 0.002); end
  def test_resultados_intermedios_l352; assert_in_epsilon(97.33670166361759, worksheet.resultados_intermedios_l352, 0.002); end
  def test_resultados_intermedios_m352; assert_in_epsilon(94.37221020003719, worksheet.resultados_intermedios_m352, 0.002); end
  def test_resultados_intermedios_d353; assert_equal("Heating and cooling", worksheet.resultados_intermedios_d353.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f353; assert_in_epsilon(45.53895021085779, worksheet.resultados_intermedios_f353, 0.002); end
  def test_resultados_intermedios_g353; assert_in_epsilon(53.61566983324152, worksheet.resultados_intermedios_g353, 0.002); end
  def test_resultados_intermedios_h353; assert_in_epsilon(61.24369423365779, worksheet.resultados_intermedios_h353, 0.002); end
  def test_resultados_intermedios_i353; assert_in_epsilon(68.03380283613895, worksheet.resultados_intermedios_i353, 0.002); end
  def test_resultados_intermedios_j353; assert_in_epsilon(74.59689779934376, worksheet.resultados_intermedios_j353, 0.002); end
  def test_resultados_intermedios_k353; assert_in_epsilon(80.6693275255527, worksheet.resultados_intermedios_k353, 0.002); end
  def test_resultados_intermedios_l353; assert_in_epsilon(86.71273565584184, worksheet.resultados_intermedios_l353, 0.002); end
  def test_resultados_intermedios_m353; assert_in_epsilon(92.52103783336766, worksheet.resultados_intermedios_m353, 0.002); end
  def test_resultados_intermedios_d354; assert_equal("Lighting & appliances", worksheet.resultados_intermedios_d354.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f354; assert_in_epsilon(132.29251328728748, worksheet.resultados_intermedios_f354, 0.002); end
  def test_resultados_intermedios_g354; assert_in_epsilon(124.6518588584116, worksheet.resultados_intermedios_g354, 0.002); end
  def test_resultados_intermedios_h354; assert_in_epsilon(117.82703413003736, worksheet.resultados_intermedios_h354, 0.002); end
  def test_resultados_intermedios_i354; assert_in_epsilon(111.73780779254528, worksheet.resultados_intermedios_i354, 0.002); end
  def test_resultados_intermedios_j354; assert_in_epsilon(106.4196000342807, worksheet.resultados_intermedios_j354, 0.002); end
  def test_resultados_intermedios_k354; assert_in_epsilon(101.59710074234201, worksheet.resultados_intermedios_k354, 0.002); end
  def test_resultados_intermedios_l354; assert_in_epsilon(97.32062357092096, worksheet.resultados_intermedios_l354, 0.002); end
  def test_resultados_intermedios_m354; assert_in_epsilon(93.5422019107813, worksheet.resultados_intermedios_m354, 0.002); end
  def test_resultados_intermedios_d355; assert_equal("Total", worksheet.resultados_intermedios_d355.to_s.gsub(/[\n\r]+/,'')); end
  def test_resultados_intermedios_f355; assert_in_epsilon(306.27916840098817, worksheet.resultados_intermedios_f355, 0.002); end
  def test_resultados_intermedios_g355; assert_in_epsilon(303.58575052106687, worksheet.resultados_intermedios_g355, 0.002); end
  def test_resultados_intermedios_h355; assert_in_epsilon(314.638691823181, worksheet.resultados_intermedios_h355, 0.002); end
  def test_resultados_intermedios_i355; assert_in_epsilon(324.5993245239373, worksheet.resultados_intermedios_i355, 0.002); end
  def test_resultados_intermedios_j355; assert_in_epsilon(324.017650096184, worksheet.resultados_intermedios_j355, 0.002); end
  def test_resultados_intermedios_k355; assert_in_epsilon(323.09171791061453, worksheet.resultados_intermedios_k355, 0.002); end
  def test_resultados_intermedios_l355; assert_in_epsilon(325.48499691221065, worksheet.resultados_intermedios_l355, 0.002); end
  def test_resultados_intermedios_m355; assert_in_epsilon(328.06645321438987, worksheet.resultados_intermedios_m355, 0.002); end
end
