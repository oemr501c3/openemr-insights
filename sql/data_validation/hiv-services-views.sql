#-------------------------------------------------------

create or replace view hiv_encounter_vw as

	select 
		distinct a.encounter_id

	from 
		fact_client_services as a

	join dim_service as b on (b.service_key = a.service_key)

	where 
		b.ippf2 in ('2121010000800',
					'2121010112000',
					'2121010123000',
					'2121010124000',
					'2122020000000',
					'2122020200000',
					'2123030000000',
					'2123030000800',
					'2123030301301',
					'2123030301501',
					'2123030301502',
					'2123030301509',
					'2124040000000',
					'2124040401101',
					'2125050000000',
					'2125050502000',
					'2125050503101',
					'2125050503102',
					'2125050503103',
					'2125050503104',
					'2125050503105',
					'2125050503106',
					'2125050503888',
					'2125050504000')

	order by 1;

#-------------------------------------------------------

create or replace view hiv_encounter_services_vw as

	select 
		distinct b.service_key, b.type_group_desc, b.code_text, count(b.service_key) as services_count

	from fact_client_services as a

	join dim_service as b on (b.service_key = a.service_key)

	join hiv_encounter_vw as z on (a.encounter_id = z.encounter_id)

	where b.service_key <> 1

	group by b.service_key, b.type_group_desc, b.code_text

	order by 1;

