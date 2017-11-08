class Calculator < ApplicationRecord
	require 'array'
	require 'model'
 	
	# This connect to model.rb which connects to model.c which is a translation of model.xlsx
 	def self.workbook
 		@workbook ||= Model.new 
 	end

	def self.set_values(values)

		# Data to return; contains the data of charts
		data = {}
		# Make a hash with the value of each lever choice
		values = Hash[ values.each_with_index.map { |v, i| [ "choicenumber_#{i}", v] } ]

		# Is nedded to reset the workbook before to make changes.
		workbook.reset()

		# Set the choices in model.c
		workbook.set_control_f51(values["choicenumber_0"])
		workbook.set_control_f53(values["choicenumber_1"])
		workbook.set_control_f55(values["choicenumber_2"])
		workbook.set_control_f56(values["choicenumber_3"])
		workbook.set_control_f57(values["choicenumber_4"])
		workbook.set_control_f59(values["choicenumber_5"])
		workbook.set_control_f60(values["choicenumber_6"])
		workbook.set_control_f62(values["choicenumber_7"])
		workbook.set_control_f64(values["choicenumber_8"])
		workbook.set_control_f65(values["choicenumber_9"])
		workbook.set_control_f67(values["choicenumber_10"])
		workbook.set_control_f50(values["choicenumber_11"])
		workbook.set_control_f69(values["choicenumber_12"])
		workbook.set_control_f71(values["choicenumber_13"])
		workbook.set_control_f72(values["choicenumber_14"])
		workbook.set_control_f76(values["choicenumber_15"])
		workbook.set_control_f77(values["choicenumber_16"])
		workbook.set_control_f78(values["choicenumber_17"])
		workbook.set_control_f79(values["choicenumber_18"])
		workbook.set_control_f81(values["choicenumber_19"])
		workbook.set_control_f82(values["choicenumber_20"])
		workbook.set_control_f83(values["choicenumber_21"])
		workbook.set_control_f85(values["choicenumber_22"])
		workbook.set_control_f86(values["choicenumber_23"])
		workbook.set_control_f87(values["choicenumber_24"])
		workbook.set_control_f89(values["choicenumber_25"])
		workbook.set_control_f44(values["choicenumber_26"])
		workbook.set_control_f45(values["choicenumber_27"])

		# Build data charts
		data[:chart_energy_supply] = data_energy_supply
		data[:chart_energy_demand] = data_energy_demand
		data[:chart_sector_emisions] = data_sector_emisions
		data[:chart_electricity_supplied] = data_electricity_supplied
		data[:chart_electricity_demanded] = data_electricity_demanded

		# data[:percentage_energy_supply] = data_energy_supply_percentages
		# data[:reduction_percentages] = data_reduction_percentages

		return data

	end

	private
		# Building data chart as excel datasheet
		def self.data_energy_supply

			# Row head
			row_head = [
				workbook.resultados_intermedios_r3, workbook.resultados_intermedios_r5,
				workbook.resultados_intermedios_r6, workbook.resultados_intermedios_r7, 
				workbook.resultados_intermedios_r9, workbook.resultados_intermedios_r10,
				workbook.resultados_intermedios_r11, workbook.resultados_intermedios_r12,
				workbook.resultados_intermedios_r13, workbook.resultados_intermedios_r14, 
				workbook.resultados_intermedios_r15
			]
			# Row year 2015
			row_year_2015 = [
				workbook.resultados_intermedios_s3, workbook.resultados_intermedios_s5, 
				workbook.resultados_intermedios_s6,	workbook.resultados_intermedios_s7,
				workbook.resultados_intermedios_s9, workbook.resultados_intermedios_s10,
				workbook.resultados_intermedios_s11, workbook.resultados_intermedios_s12,
				workbook.resultados_intermedios_s13, workbook.resultados_intermedios_s14,
				workbook.resultados_intermedios_s15
			]
			# Row year 2020
			row_year_2020 = [
				workbook.resultados_intermedios_t3, workbook.resultados_intermedios_t5, 
				workbook.resultados_intermedios_t6, workbook.resultados_intermedios_t7,
				workbook.resultados_intermedios_t9, workbook.resultados_intermedios_t10,
				workbook.resultados_intermedios_t11, workbook.resultados_intermedios_t12,
				workbook.resultados_intermedios_t13, workbook.resultados_intermedios_t14,
				workbook.resultados_intermedios_t15
			]
			# Row year 2025
			row_year_2025 = [
				workbook.resultados_intermedios_u3, workbook.resultados_intermedios_u5, 
				workbook.resultados_intermedios_u6,	workbook.resultados_intermedios_u7,
				workbook.resultados_intermedios_u9, workbook.resultados_intermedios_u10,
				workbook.resultados_intermedios_u11, workbook.resultados_intermedios_u12,
				workbook.resultados_intermedios_u13, workbook.resultados_intermedios_u14,
				workbook.resultados_intermedios_u15
			]
			# Row year 2030
			row_year_2030 = [
				workbook.resultados_intermedios_v3, workbook.resultados_intermedios_v5, 
				workbook.resultados_intermedios_v6,	workbook.resultados_intermedios_v7,
				workbook.resultados_intermedios_v9, workbook.resultados_intermedios_v10,
				workbook.resultados_intermedios_v11, workbook.resultados_intermedios_v12,
				workbook.resultados_intermedios_v13, workbook.resultados_intermedios_v14,
				workbook.resultados_intermedios_v15
			]
			# Row year 2035
			row_year_2035 = [
				workbook.resultados_intermedios_w3, workbook.resultados_intermedios_w5, 
				workbook.resultados_intermedios_w6,	workbook.resultados_intermedios_w7,
				workbook.resultados_intermedios_w9, workbook.resultados_intermedios_w10,
				workbook.resultados_intermedios_w11, workbook.resultados_intermedios_w12,
				workbook.resultados_intermedios_w13, workbook.resultados_intermedios_w14,
				workbook.resultados_intermedios_w15
			]
			# Row year 2040
			row_year_2040 = [
				workbook.resultados_intermedios_x3,	workbook.resultados_intermedios_x5, 
				workbook.resultados_intermedios_x6,	workbook.resultados_intermedios_x7,
				workbook.resultados_intermedios_x9, workbook.resultados_intermedios_x10,
				workbook.resultados_intermedios_x11, workbook.resultados_intermedios_x12,
				workbook.resultados_intermedios_x13, workbook.resultados_intermedios_x14,
				workbook.resultados_intermedios_x15
			] 
			# Row year 2045
			row_year_2045 = [
				workbook.resultados_intermedios_y3, workbook.resultados_intermedios_y5, 
				workbook.resultados_intermedios_y6,	workbook.resultados_intermedios_y7,
				workbook.resultados_intermedios_y9, workbook.resultados_intermedios_y10,
				workbook.resultados_intermedios_y11, workbook.resultados_intermedios_y12,
				workbook.resultados_intermedios_y13, workbook.resultados_intermedios_y14,
				workbook.resultados_intermedios_y15
			]
			# Row year 2050
			row_year_2050 = [
				workbook.resultados_intermedios_z3, workbook.resultados_intermedios_z5, 
				workbook.resultados_intermedios_z6,	workbook.resultados_intermedios_z7,
				workbook.resultados_intermedios_z9, workbook.resultados_intermedios_z10,
				workbook.resultados_intermedios_z11, workbook.resultados_intermedios_z12,
				workbook.resultados_intermedios_z13, workbook.resultados_intermedios_z14,
				workbook.resultados_intermedios_z15
			]

			return chart = [row_head, row_year_2015, row_year_2020, 
				row_year_2025, row_year_2030, row_year_2035, 
				row_year_2040, row_year_2045, row_year_2050]
		end

		# Building data chart as excel datasheet
		def self.data_energy_demand

			# Row head from AC3 to AC6 plus AC10
			row_head = [
				workbook.resultados_intermedios_ac3, workbook.resultados_intermedios_ac4,
				workbook.resultados_intermedios_ac5, workbook.resultados_intermedios_ac6
			]
			# Row year 2015 from AD3 to AD6 plus AD10
			row_year_2015 = [
				workbook.resultados_intermedios_ad3, workbook.resultados_intermedios_ad4,
				workbook.resultados_intermedios_ad5, workbook.resultados_intermedios_ad6
			]
			# Row year 2020 from AE3 to AE6 plus AE10
			row_year_2020 = [
				workbook.resultados_intermedios_ae3, workbook.resultados_intermedios_ae4,
				workbook.resultados_intermedios_ae5, workbook.resultados_intermedios_ae6
			]
			# Row year 2025 from AF3 to AF6 plus AF10
			row_year_2025 = [
				workbook.resultados_intermedios_af3, workbook.resultados_intermedios_af4,
				workbook.resultados_intermedios_af5, workbook.resultados_intermedios_af6
			]
			# Row year 2030 from AG3 to AG6 plus AG10
			row_year_2030 = [
				workbook.resultados_intermedios_ag3, workbook.resultados_intermedios_ag4,
				workbook.resultados_intermedios_ag5, workbook.resultados_intermedios_ag6
			]
			# Row year 2035 from AH3 to AH6 plus AH10
			row_year_2035 = [
				workbook.resultados_intermedios_ah3, workbook.resultados_intermedios_ah4,
				workbook.resultados_intermedios_ah5, workbook.resultados_intermedios_ah6
			]
			# Row year 2040 from AI3 to AI6 plus AI10
			row_year_2040 = [
				workbook.resultados_intermedios_ai3, workbook.resultados_intermedios_ai4,
				workbook.resultados_intermedios_ai5, workbook.resultados_intermedios_ai6
			]
			# Row year 2045 from AJ3 to AJ6 plus AJ10
			row_year_2045 = [
				workbook.resultados_intermedios_aj3, workbook.resultados_intermedios_aj4,
				workbook.resultados_intermedios_aj5, workbook.resultados_intermedios_aj6
			]
			# Row year 2050 from AK3 to AK6 plus AK10
			row_year_2050 = [
				workbook.resultados_intermedios_ak3, workbook.resultados_intermedios_ak4,
				workbook.resultados_intermedios_ak5, workbook.resultados_intermedios_ak6
			]

			return chart = [row_head, row_year_2015, row_year_2020, 
				row_year_2025, row_year_2030, row_year_2035, 
				row_year_2040, row_year_2045, row_year_2050]
		end
		
		# Building data chart as excel datasheet
		def self.data_sector_emisions

			# Row head from R27 to R35 plus R40
			row_head = [
				workbook.resultados_intermedios_r27, workbook.resultados_intermedios_r28,
				workbook.resultados_intermedios_r29, workbook.resultados_intermedios_r30,
				workbook.resultados_intermedios_r31, workbook.resultados_intermedios_r32,
				workbook.resultados_intermedios_r33, workbook.resultados_intermedios_r34
			]
			# Row year 2015 from S27 to S35 plus S40
			row_year_2015 = [
				workbook.resultados_intermedios_s27, workbook.resultados_intermedios_s28,
				workbook.resultados_intermedios_s29, workbook.resultados_intermedios_s30,
				workbook.resultados_intermedios_s31, workbook.resultados_intermedios_s32,
				workbook.resultados_intermedios_s33, workbook.resultados_intermedios_s34
			]
			# Row year 2020 from T27 to T35 plus T40
			row_year_2020 = [
				workbook.resultados_intermedios_t27, workbook.resultados_intermedios_t28,
				workbook.resultados_intermedios_t29, workbook.resultados_intermedios_t30,
				workbook.resultados_intermedios_t31, workbook.resultados_intermedios_t32,
				workbook.resultados_intermedios_t33, workbook.resultados_intermedios_t34
			]
			# Row year 2025 from U27 to U35 plus U40
			row_year_2025 = [
				workbook.resultados_intermedios_u27, workbook.resultados_intermedios_u28,
				workbook.resultados_intermedios_u29, workbook.resultados_intermedios_u30,
				workbook.resultados_intermedios_u31, workbook.resultados_intermedios_u32,
				workbook.resultados_intermedios_u33, workbook.resultados_intermedios_u34
			]
			# Row year 2030 from V27 to V35 plus V40
			row_year_2030 = [
				workbook.resultados_intermedios_v27, workbook.resultados_intermedios_v28,
				workbook.resultados_intermedios_v29, workbook.resultados_intermedios_v30,
				workbook.resultados_intermedios_v31, workbook.resultados_intermedios_v32,
				workbook.resultados_intermedios_v33, workbook.resultados_intermedios_v34
			]
			# Row year 2035 from W27 to W35 plus W40
			row_year_2035 = [
				workbook.resultados_intermedios_w27, workbook.resultados_intermedios_w28,
				workbook.resultados_intermedios_w29, workbook.resultados_intermedios_w30,
				workbook.resultados_intermedios_w31, workbook.resultados_intermedios_w32,
				workbook.resultados_intermedios_w33, workbook.resultados_intermedios_w34
			]
			# Row year 2040 from X27 to X35 plus X40
			row_year_2040 = [
				workbook.resultados_intermedios_x27, workbook.resultados_intermedios_x28,
				workbook.resultados_intermedios_x29, workbook.resultados_intermedios_x30,
				workbook.resultados_intermedios_x31, workbook.resultados_intermedios_x32,
				workbook.resultados_intermedios_x33, workbook.resultados_intermedios_x34
			]
			# Row year 2045 from Y27 to Y35 plus Y40
			row_year_2045 = [
				workbook.resultados_intermedios_y27, workbook.resultados_intermedios_y28,
				workbook.resultados_intermedios_y29, workbook.resultados_intermedios_y30,
				workbook.resultados_intermedios_y31, workbook.resultados_intermedios_y32,
				workbook.resultados_intermedios_y33, workbook.resultados_intermedios_y34
			]
			# Row year 2050 from Z27 to Z35 plus Z40
			row_year_2050 = [
				workbook.resultados_intermedios_z27, workbook.resultados_intermedios_z28,
				workbook.resultados_intermedios_z29, workbook.resultados_intermedios_z30,
				workbook.resultados_intermedios_z31, workbook.resultados_intermedios_z32,
				workbook.resultados_intermedios_z33, workbook.resultados_intermedios_z34
			]

			return chart = [row_head, row_year_2015, row_year_2020, 
				row_year_2025, row_year_2030, row_year_2035, 
				row_year_2040, row_year_2045, row_year_2050]
		end

		# Building data chart as excel datasheet
		def self.data_electricity_supplied

			# Row head from AN3 to AN19 plus AN37
			row_head = [
				workbook.resultados_intermedios_an3, workbook.resultados_intermedios_an4,
				workbook.resultados_intermedios_an5, workbook.resultados_intermedios_an6,
				workbook.resultados_intermedios_an7, workbook.resultados_intermedios_an8,
				workbook.resultados_intermedios_an9, workbook.resultados_intermedios_an12,
				workbook.resultados_intermedios_an13, workbook.resultados_intermedios_an14,
				workbook.resultados_intermedios_an16, workbook.resultados_intermedios_an17
			]
			# Row year 2015 from AO3 to AO19 plus AO37
			row_year_2015 = [
				workbook.resultados_intermedios_ao3, workbook.resultados_intermedios_ao4,
				workbook.resultados_intermedios_ao5, workbook.resultados_intermedios_ao6,
				workbook.resultados_intermedios_ao7, workbook.resultados_intermedios_ao8,
				workbook.resultados_intermedios_ao9, workbook.resultados_intermedios_ao12,
				workbook.resultados_intermedios_ao13, workbook.resultados_intermedios_ao14,
				workbook.resultados_intermedios_ao16, workbook.resultados_intermedios_ao17
			]
			# Row year 2020 from AP3 to AP19 plus AP37
			row_year_2020 = [
				workbook.resultados_intermedios_ap3, workbook.resultados_intermedios_ap4,
				workbook.resultados_intermedios_ap5, workbook.resultados_intermedios_ap6,
				workbook.resultados_intermedios_ap7, workbook.resultados_intermedios_ap8,
				workbook.resultados_intermedios_ap9, workbook.resultados_intermedios_ap12,
				workbook.resultados_intermedios_ap13, workbook.resultados_intermedios_ap14,
				workbook.resultados_intermedios_ap16, workbook.resultados_intermedios_ap17
			]
			# Row year 2025 from AQ3 to AQ19 plus AQ37
			row_year_2025 = [
				workbook.resultados_intermedios_aq3, workbook.resultados_intermedios_aq4,
				workbook.resultados_intermedios_aq5, workbook.resultados_intermedios_aq6,
				workbook.resultados_intermedios_aq7, workbook.resultados_intermedios_aq8,
				workbook.resultados_intermedios_aq9, workbook.resultados_intermedios_aq12,
				workbook.resultados_intermedios_aq13, workbook.resultados_intermedios_aq14,
				workbook.resultados_intermedios_aq16, workbook.resultados_intermedios_aq17
			]
			# Row year 2030 from AR3 to AR19 plus AR37
			row_year_2030 = [
				workbook.resultados_intermedios_ar3, workbook.resultados_intermedios_ar4,
				workbook.resultados_intermedios_ar5, workbook.resultados_intermedios_ar6,
				workbook.resultados_intermedios_ar7, workbook.resultados_intermedios_ar8,
				workbook.resultados_intermedios_ar9, workbook.resultados_intermedios_ar12,
				workbook.resultados_intermedios_ar13, workbook.resultados_intermedios_ar14,
				workbook.resultados_intermedios_ar16, workbook.resultados_intermedios_ar17
			]
			# Row year 2035 from AS3 to AS19 plus AS37
			row_year_2035 = [
				workbook.resultados_intermedios_as3, workbook.resultados_intermedios_as4,
				workbook.resultados_intermedios_as5, workbook.resultados_intermedios_as6,
				workbook.resultados_intermedios_as7, workbook.resultados_intermedios_as8,
				workbook.resultados_intermedios_as9, workbook.resultados_intermedios_as12,
				workbook.resultados_intermedios_as13, workbook.resultados_intermedios_as14,
				workbook.resultados_intermedios_as16, workbook.resultados_intermedios_as17
			]
			# Row year 2040 from AT3 to AT19 plus AT37
			row_year_2040 = [
				workbook.resultados_intermedios_at3, workbook.resultados_intermedios_at4,
				workbook.resultados_intermedios_at5, workbook.resultados_intermedios_at6,
				workbook.resultados_intermedios_at7, workbook.resultados_intermedios_at8,
				workbook.resultados_intermedios_at9, workbook.resultados_intermedios_at12,
				workbook.resultados_intermedios_at13, workbook.resultados_intermedios_at14,
				workbook.resultados_intermedios_at16, workbook.resultados_intermedios_at17
			]
			# Row year 2045 from AU3 to AU19 plus AU37
			row_year_2045 = [
				workbook.resultados_intermedios_au3, workbook.resultados_intermedios_au4,
				workbook.resultados_intermedios_au5, workbook.resultados_intermedios_au6,
				workbook.resultados_intermedios_au7, workbook.resultados_intermedios_au8,
				workbook.resultados_intermedios_au9, workbook.resultados_intermedios_au12,
				workbook.resultados_intermedios_au13, workbook.resultados_intermedios_au14,
				workbook.resultados_intermedios_au16, workbook.resultados_intermedios_au17
			]
			# Row year 2050 from AV3 to AV19 plus AV37
			row_year_2050 = [
				workbook.resultados_intermedios_av3, workbook.resultados_intermedios_av4,
				workbook.resultados_intermedios_av5, workbook.resultados_intermedios_av6,
				workbook.resultados_intermedios_av7, workbook.resultados_intermedios_av8,
				workbook.resultados_intermedios_av9, workbook.resultados_intermedios_av12,
				workbook.resultados_intermedios_av13, workbook.resultados_intermedios_av14,
				workbook.resultados_intermedios_av16, workbook.resultados_intermedios_av17
			]

			return chart = [row_head, row_year_2015, row_year_2020, 
				row_year_2025, row_year_2030, row_year_2035, 
				row_year_2040, row_year_2045, row_year_2050]
		end

		# Building data chart as excel datasheet
		def self.data_electricity_demanded

			# Row head from AY3 to AY4 plus AY6
			row_head = [
				workbook.resultados_intermedios_ay3, workbook.resultados_intermedios_ay4
			]
			# Row year 2015 from AZ3 to AZ4 plus AZ6
			row_year_2015 = [
				workbook.resultados_intermedios_az3, workbook.resultados_intermedios_az4
			]
			# Row year 2020 from BA3 to BA4 plus BA6
			row_year_2020 = [
				workbook.resultados_intermedios_ba3, workbook.resultados_intermedios_ba4
			]
			# Row year 2025 from BB3 to BB4 plus BB6
			row_year_2025 = [
				workbook.resultados_intermedios_bb3, workbook.resultados_intermedios_bb4
			]
			# Row year 2030 from BC3 to BC4 plus BC6
			row_year_2030 = [
				workbook.resultados_intermedios_bc3, workbook.resultados_intermedios_bc4
			]
			# Row year 2035 from BD3 to BD4 plus BD6
			row_year_2035 = [
				workbook.resultados_intermedios_bd3, workbook.resultados_intermedios_bd4
			]
			# Row year 2040 from BE3 to BE4 plus BE6
			row_year_2040 = [
				workbook.resultados_intermedios_be3, workbook.resultados_intermedios_be4
			]
			# Row year 2045 from BF3 to BF4 plus BF6
			row_year_2045 = [
				workbook.resultados_intermedios_bf3, workbook.resultados_intermedios_bf4
			]
			# Row year 2050 from BG3 to BG4 plus BG6
			row_year_2050 = [
				workbook.resultados_intermedios_bg3, workbook.resultados_intermedios_bg4
			]

			return chart = [row_head, row_year_2015, row_year_2020, 
				row_year_2025, row_year_2030, row_year_2035, 
				row_year_2040, row_year_2045, row_year_2050]
		end

		# Extra methods in case of... 
		# ---------------------------------------

		# Get the values of chart in percentages
		def self.data_energy_supply_percentages
			data = {
				:percentage2015 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_s5*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_s6*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_s7*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_s8*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_s9*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_s10*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_s11*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_s12*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_s13*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_s14*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_s15*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_s16*100)/workbook.resultados_intermedios_s19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_s17*100)/workbook.resultados_intermedios_s19
				}, 
				:percentage2020 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_t5*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_t6*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_t7*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_t8*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_t9*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_t10*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_t11*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_t12*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_t13*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_t14*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_t15*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_t16*100)/workbook.resultados_intermedios_t19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_t17*100)/workbook.resultados_intermedios_t19
				},
				:percentage2025 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_u5*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_u6*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_u7*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_u8*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_u9*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_u10*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_u11*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_u12*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_u13*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_u14*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_u15*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_u16*100)/workbook.resultados_intermedios_u19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_u17*100)/workbook.resultados_intermedios_u19
				},
				:percentage2030 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_v5*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_v6*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_v7*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_v8*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_v9*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_v10*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_v11*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_v12*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_v13*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_v14*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_v15*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_v16*100)/workbook.resultados_intermedios_v19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_v17*100)/workbook.resultados_intermedios_v19
				},
				:percentage2035 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_w5*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_w6*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_w7*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_w8*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_w9*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_w10*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_w11*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_w12*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_w13*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_w14*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_w15*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_w16*100)/workbook.resultados_intermedios_w19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_w17*100)/workbook.resultados_intermedios_w19
				},
				:percentage2040 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_x5*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_x6*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_x7*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_x8*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_x9*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_x10*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_x11*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_x12*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_x13*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_x14*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_x15*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_x16*100)/workbook.resultados_intermedios_x19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_x17*100)/workbook.resultados_intermedios_x19
				},
				:percentage2045 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_y5*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_y6*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_y7*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_y8*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_y9*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_y10*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_y11*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_y12*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_y13*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_y14*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_y15*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_y16*100)/workbook.resultados_intermedios_y19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_y17*100)/workbook.resultados_intermedios_y19
				},
				:percentage2050 => {
					workbook.resultados_intermedios_r5 => (workbook.resultados_intermedios_z5*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r6 => (workbook.resultados_intermedios_z6*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r7 => (workbook.resultados_intermedios_z7*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r8 => (workbook.resultados_intermedios_z8*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r9 => (workbook.resultados_intermedios_z9*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r10 => (workbook.resultados_intermedios_z10*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r11 => (workbook.resultados_intermedios_z11*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r12 => (workbook.resultados_intermedios_z12*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r13 => (workbook.resultados_intermedios_z13*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r14 => (workbook.resultados_intermedios_z14*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r15 => (workbook.resultados_intermedios_z15*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r16 => (workbook.resultados_intermedios_z16*100)/workbook.resultados_intermedios_z19,
					workbook.resultados_intermedios_r17 => (workbook.resultados_intermedios_z17*100)/workbook.resultados_intermedios_z19
				}
			}
			return data
		end

		# Get the values of chart in percentages
		def self.data_energy_demand_percentages
			data = {
				:percentage2015 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_ad4*100)/workbook.resultados_intermedios_ad8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_ad5*100)/workbook.resultados_intermedios_ad8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_ad6*100)/workbook.resultados_intermedios_ad8
				}, 
				:percentage2020 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_ae4*100)/workbook.resultados_intermedios_ae8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_ae5*100)/workbook.resultados_intermedios_ae8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_ae6*100)/workbook.resultados_intermedios_ae8
				},
				:percentage2025 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_af4*100)/workbook.resultados_intermedios_af8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_af5*100)/workbook.resultados_intermedios_af8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_af6*100)/workbook.resultados_intermedios_af8
				},
				:percentage2030 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_ag4*100)/workbook.resultados_intermedios_ag8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_ag5*100)/workbook.resultados_intermedios_ag8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_ag6*100)/workbook.resultados_intermedios_ag8
				},
				:percentage2035 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_ah4*100)/workbook.resultados_intermedios_ah8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_ah5*100)/workbook.resultados_intermedios_ah8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_ah6*100)/workbook.resultados_intermedios_ah8
				},
				:percentage2040 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_ai4*100)/workbook.resultados_intermedios_ai8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_ai5*100)/workbook.resultados_intermedios_ai8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_ai6*100)/workbook.resultados_intermedios_ai8
				},
				:percentage2045 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_aj4*100)/workbook.resultados_intermedios_aj8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_aj5*100)/workbook.resultados_intermedios_aj8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_aj6*100)/workbook.resultados_intermedios_aj8
				},
				:percentage2050 => {
					workbook.resultados_intermedios_ac4 => (workbook.resultados_intermedios_ak4*100)/workbook.resultados_intermedios_ak8,
					workbook.resultados_intermedios_ac5 => (workbook.resultados_intermedios_ak5*100)/workbook.resultados_intermedios_ak8,
					workbook.resultados_intermedios_ac6 => (workbook.resultados_intermedios_ak6*100)/workbook.resultados_intermedios_ak8
				}
			}
			return data
		end

		# Get the values of chart in percentages
		def self.data_sector_emisions_percentages
			data = {
				:percentage2015 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_s28*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_s29*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_s30*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_s31*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_s32*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_s33*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_s34*100)/workbook.resultados_intermedios_s37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_s35*100)/workbook.resultados_intermedios_s37
				}, 
				:percentage2020 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_t28*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_t29*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_t30*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_t31*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_t32*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_t33*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_t34*100)/workbook.resultados_intermedios_t37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_t35*100)/workbook.resultados_intermedios_t37
				},
				:percentage2025 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_u28*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_u29*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_u30*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_u31*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_u32*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_u33*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_u34*100)/workbook.resultados_intermedios_u37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_u35*100)/workbook.resultados_intermedios_u37
				},
				:percentage2030 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_v28*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_v29*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_v30*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_v31*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_v32*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_v33*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_v34*100)/workbook.resultados_intermedios_v37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_v35*100)/workbook.resultados_intermedios_v37
				},
				:percentage2035 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_w28*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_w29*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_w30*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_w31*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_w32*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_w33*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_w34*100)/workbook.resultados_intermedios_w37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_w35*100)/workbook.resultados_intermedios_w37
				},
				:percentage2040 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_x28*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_x29*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_x30*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_x31*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_x32*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_x33*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_x34*100)/workbook.resultados_intermedios_x37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_x35*100)/workbook.resultados_intermedios_x37
				},
				:percentage2045 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_y28*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_y29*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_y30*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_y31*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_y32*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_y33*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_y34*100)/workbook.resultados_intermedios_y37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_y35*100)/workbook.resultados_intermedios_y37
				},
				:percentage2050 => {
					workbook.resultados_intermedios_r28 => (workbook.resultados_intermedios_z28*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r29 => (workbook.resultados_intermedios_z29*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r30 => (workbook.resultados_intermedios_z30*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r31 => (workbook.resultados_intermedios_z31*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r32 => (workbook.resultados_intermedios_z32*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r33 => (workbook.resultados_intermedios_z33*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r34 => (workbook.resultados_intermedios_z34*100)/workbook.resultados_intermedios_z37,
					workbook.resultados_intermedios_r35 => (workbook.resultados_intermedios_z35*100)/workbook.resultados_intermedios_z37
				}
			}
			return data
		end		

		# Get the values of chart in percentages
		def self.data_sector_emisions_percentages
			data = {
				:percentage2015 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_ao4*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_ao5*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_ao7*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_ao8*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_ao9*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_ao10*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_ao11*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_ao12*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_ao13*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_ao14*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_ao15*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_ao18*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_ao17*100)/workbook.resultados_intermedios_ao21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_ao18*100)/workbook.resultados_intermedios_ao21
				}, 
				:percentage2020 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_ap4*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_ap5*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_ap7*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_ap8*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_ap9*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_ap10*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_ap11*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_ap12*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_ap13*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_ap14*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_ap15*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_ap18*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_ap17*100)/workbook.resultados_intermedios_ap21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_ap18*100)/workbook.resultados_intermedios_ap21
				},
				:percentage2025 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_aq4*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_aq5*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_aq7*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_aq8*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_aq9*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_aq10*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_aq11*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_aq12*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_aq13*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_aq14*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_aq15*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_aq18*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_aq17*100)/workbook.resultados_intermedios_aq21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_aq18*100)/workbook.resultados_intermedios_aq21
				},
				:percentage2030 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_ar4*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_ar5*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_ar7*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_ar8*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_ar9*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_ar10*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_ar11*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_ar12*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_ar13*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_ar14*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_ar15*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_ar18*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_ar17*100)/workbook.resultados_intermedios_ar21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_ar18*100)/workbook.resultados_intermedios_ar21
				},
				:percentage2035 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_as4*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_as5*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_as7*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_as8*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_as9*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_as10*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_as11*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_as12*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_as13*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_as14*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_as15*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_as18*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_as17*100)/workbook.resultados_intermedios_as21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_as18*100)/workbook.resultados_intermedios_as21
				},
				:percentage2040 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_at4*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_at5*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_at7*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_at8*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_at9*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_at10*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_at11*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_at12*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_at13*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_at14*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_at15*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_at18*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_at17*100)/workbook.resultados_intermedios_at21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_at18*100)/workbook.resultados_intermedios_at21
				},
				:percentage2045 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_au4*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_au5*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_au7*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_au8*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_au9*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_au10*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_au11*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_au12*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_au13*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_au14*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_au15*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_au18*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_au17*100)/workbook.resultados_intermedios_au21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_au18*100)/workbook.resultados_intermedios_au21
				},
				:percentage2050 => {
					workbook.resultados_intermedios_an4 => (workbook.resultados_intermedios_av4*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an5 => (workbook.resultados_intermedios_av5*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an7 => (workbook.resultados_intermedios_av7*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an8 => (workbook.resultados_intermedios_av8*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an9 => (workbook.resultados_intermedios_av9*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an10 => (workbook.resultados_intermedios_av10*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an11 => (workbook.resultados_intermedios_av11*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an12 => (workbook.resultados_intermedios_av12*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an13 => (workbook.resultados_intermedios_av13*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an14 => (workbook.resultados_intermedios_av14*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an15 => (workbook.resultados_intermedios_av15*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an16 => (workbook.resultados_intermedios_av18*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an17 => (workbook.resultados_intermedios_av17*100)/workbook.resultados_intermedios_av21,
					workbook.resultados_intermedios_an18 => (workbook.resultados_intermedios_av18*100)/workbook.resultados_intermedios_av21
				}
			}
			return data
		end	

		# There are not percentages for the electricity demanded because there are only one variable.

		# Get the values of reduction
		def self.data_reduction_percentages
			data = {
				:renewable => {
					"2015" => workbook.resultados_intermedios_ao27,
					"2020" => workbook.resultados_intermedios_ap27,
					"2025" => workbook.resultados_intermedios_aq27,
					"2030" => workbook.resultados_intermedios_ar27,
					"2035" => workbook.resultados_intermedios_as27,
					"2040" => workbook.resultados_intermedios_at27,
					"2045" => workbook.resultados_intermedios_au27,
					"2050" => workbook.resultados_intermedios_av27
				},
				:demand => {
					"2015" => workbook.resultados_intermedios_ad12,
					"2020" => workbook.resultados_intermedios_ae12,
					"2025" => workbook.resultados_intermedios_af12,
					"2030" => workbook.resultados_intermedios_ag12,
					"2035" => workbook.resultados_intermedios_ah12,
					"2040" => workbook.resultados_intermedios_ai12,
					"2045" => workbook.resultados_intermedios_aj12,
					"2050" => workbook.resultados_intermedios_ak12
				},
				:emisions => {
					"2015" => workbook.resultados_intermedios_s41,
					"2020" => workbook.resultados_intermedios_t41,
					"2025" => workbook.resultados_intermedios_u41,
					"2030" => workbook.resultados_intermedios_v41,
					"2035" => workbook.resultados_intermedios_w41,
					"2040" => workbook.resultados_intermedios_x41,
					"2045" => workbook.resultados_intermedios_y41,
					"2050" => workbook.resultados_intermedios_z41
				},
				:electricity_supplied => {
					"2015" => workbook.resultados_intermedios_ao39,
					"2020" => workbook.resultados_intermedios_ap39,
					"2025" => workbook.resultados_intermedios_aq39,
					"2030" => workbook.resultados_intermedios_ar39,
					"2035" => workbook.resultados_intermedios_as39,
					"2040" => workbook.resultados_intermedios_at39,
					"2045" => workbook.resultados_intermedios_au39,
					"2050" => workbook.resultados_intermedios_av39
				},
				:electricity_demanded => {
					"2015" => workbook.resultados_intermedios_az8,
					"2020" => workbook.resultados_intermedios_ba8,
					"2025" => workbook.resultados_intermedios_bb8,
					"2030" => workbook.resultados_intermedios_bc8,
					"2035" => workbook.resultados_intermedios_bd8,
					"2040" => workbook.resultados_intermedios_be8,
					"2045" => workbook.resultados_intermedios_bf8,
					"2050" => workbook.resultados_intermedios_bg8
				}
			}
			return data
		end

		# --------------------------------------------
		# Building data chart to use with d3 (example)
		def self.data_energy_supply_d3
			#
			data = [
				{ year: 2015, 
					fision_nuclear: workbook.resultados_intermedios_s4, 
					solar: workbook.resultados_intermedios_s5, 
					viento: workbook.resultados_intermedios_s6, 
					mareomotriz: workbook.resultados_intermedios_s7, 
					undimotriz: workbook.resultados_intermedios_s8, 
					geotermia: workbook.resultados_intermedios_s9, 
					hidro: workbook.resultados_intermedios_s10, 
					residuos: workbook.resultados_intermedios_s11, 
					hidrocarburo_solido: workbook.resultados_intermedios_s12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_s13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_s14, 
					biomasa: workbook.resultados_intermedios_s15, 
					almacenamiento: workbook.resultados_intermedios_s16, 
					h2: workbook.resultados_intermedios_s17}, 
				{ year: 2020, 
					fision_nuclear: workbook.resultados_intermedios_t4, 
					solar: workbook.resultados_intermedios_t5, 
					viento: workbook.resultados_intermedios_t6, 
					mareomotriz: workbook.resultados_intermedios_t7, 
					undimotriz: workbook.resultados_intermedios_t8, 
					geotermia: workbook.resultados_intermedios_t9, 
					hidro: workbook.resultados_intermedios_t10, 
					residuos: workbook.resultados_intermedios_t11, 
					hidrocarburo_solido: workbook.resultados_intermedios_t12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_t13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_t14, 
					biomasa: workbook.resultados_intermedios_t15, 
					almacenamiento: workbook.resultados_intermedios_t16, 
					h2: workbook.resultados_intermedios_t17},
				{ year: 2025, fision_nuclear: workbook.resultados_intermedios_u4, 
					solar: workbook.resultados_intermedios_u5, 
					viento: workbook.resultados_intermedios_u6, 
					mareomotriz: workbook.resultados_intermedios_u7, 
					undimotriz: workbook.resultados_intermedios_u8, 
					geotermia: workbook.resultados_intermedios_u9, 
					hidro: workbook.resultados_intermedios_u10, 
					residuos: workbook.resultados_intermedios_u11, 
					hidrocarburo_solido: workbook.resultados_intermedios_u12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_u13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_u14, 
					biomasa: workbook.resultados_intermedios_u15, 
					almacenamiento: workbook.resultados_intermedios_u16, 
					h2: workbook.resultados_intermedios_u17}, 
				{ year: 2030, fision_nuclear: workbook.resultados_intermedios_v4, 
					solar: workbook.resultados_intermedios_v5, 
					viento: workbook.resultados_intermedios_v6, 
					mareomotriz: workbook.resultados_intermedios_v7, 
					undimotriz: workbook.resultados_intermedios_v8, 
					geotermia: workbook.resultados_intermedios_v9, 
					hidro: workbook.resultados_intermedios_v10, 
					residuos: workbook.resultados_intermedios_v11, 
					hidrocarburo_solido: workbook.resultados_intermedios_v12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_v13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_v14, 
					biomasa: workbook.resultados_intermedios_v15, 
					almacenamiento: workbook.resultados_intermedios_v16, 
					h2: workbook.resultados_intermedios_v17},
				{ year: 2035, fision_nuclear: workbook.resultados_intermedios_w4, 
					solar: workbook.resultados_intermedios_w5, 
					viento: workbook.resultados_intermedios_w6, 
					mareomotriz: workbook.resultados_intermedios_w7, 
					undimotriz: workbook.resultados_intermedios_w8, 
					geotermia: workbook.resultados_intermedios_w9, 
					hidro: workbook.resultados_intermedios_w10, 
					residuos: workbook.resultados_intermedios_w11, 
					hidrocarburo_solido: workbook.resultados_intermedios_w12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_w13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_w14, 
					biomasa: workbook.resultados_intermedios_w15, 
					almacenamiento: workbook.resultados_intermedios_w16, 
					h2: workbook.resultados_intermedios_w17},
				{ year: 2040, fision_nuclear: workbook.resultados_intermedios_x4, 
					solar: workbook.resultados_intermedios_x5, 
					viento: workbook.resultados_intermedios_x6, 
					mareomotriz: workbook.resultados_intermedios_x7, 
					undimotriz: workbook.resultados_intermedios_x8, 
					geotermia: workbook.resultados_intermedios_x9, 
					hidro: workbook.resultados_intermedios_x10, 
					residuos: workbook.resultados_intermedios_x11, 
					hidrocarburo_solido: workbook.resultados_intermedios_x12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_x13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_x14, 
					biomasa: workbook.resultados_intermedios_x15, 
					almacenamiento: workbook.resultados_intermedios_x16, 
					h2: workbook.resultados_intermedios_x17},
				{ year: 2045, fision_nuclear: workbook.resultados_intermedios_y4, 
					solar: workbook.resultados_intermedios_y5, 
					viento: workbook.resultados_intermedios_y6, 
					mareomotriz: workbook.resultados_intermedios_y7, 
					undimotriz: workbook.resultados_intermedios_y8, 
					geotermia: workbook.resultados_intermedios_y9, 
					hidro: workbook.resultados_intermedios_y10, 
					residuos: workbook.resultados_intermedios_y11, 
					hidrocarburo_solido: workbook.resultados_intermedios_y12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_y13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_y14, 
					biomasa: workbook.resultados_intermedios_y15, 
					almacenamiento: workbook.resultados_intermedios_y16, 
					h2: workbook.resultados_intermedios_y17}, 
				{ year: 2050, fision_nuclear: workbook.resultados_intermedios_z4, 
					solar: workbook.resultados_intermedios_z5, 
					viento: workbook.resultados_intermedios_z6, 
					mareomotriz: workbook.resultados_intermedios_z7, 
					undimotriz: workbook.resultados_intermedios_z8, 
					geotermia: workbook.resultados_intermedios_z9, 
					hidro: workbook.resultados_intermedios_z10, 
					residuos: workbook.resultados_intermedios_z11, 
					hidrocarburo_solido: workbook.resultados_intermedios_z12, 
					hidrocarburo_liquido: workbook.resultados_intermedios_z13, 
					hidrocarburo_gaseoso: workbook.resultados_intermedios_z14, 
					biomasa: workbook.resultados_intermedios_z15, 
					almacenamiento: workbook.resultados_intermedios_z16, 
					h2: workbook.resultados_intermedios_z17}
			]

			return data
		end
end
