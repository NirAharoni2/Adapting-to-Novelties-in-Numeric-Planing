;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.48237247997852206)
		(= (value_axe a1) 0.7822114391355307)
		(= (value_axe a2) 0.7054671277746281)
		(= (value_axe a3) 0.10742093410965381)
		(= (value_axe a4) 0.18123692091167298)

        (= (value_pickaxe p0) 0.5537301714951927)
		(= (value_pickaxe p1) 0.5758578906926416)
		(= (value_pickaxe p2) 0.39185425161735965)
		(= (value_pickaxe p3) 0.09985464264337762)

        (= (value_shovel s0) 2.8959021619234813)
		(= (value_shovel s1) 1.3743098162694367)
		(= (value_shovel s2) 1.9556666411070207)

        (= (value_hoe h0) 19.573979899989336)
		(= (value_hoe h1) 15.425361282705708)
		(= (value_hoe h2) 23.908920551672782)
		(= (value_hoe h3) 20.294423752145374)
		(= (value_hoe h4) 27.504965861568248)

        (= (trees_in_map) 32)

		(= (count_log_in_inventory) 0)

        (= (count_planks_in_inventory) 0)

        (= (count_stick_in_inventory) 0)

		(= (count_sack_polyisoprene_pellets_in_inventory) 0)

        (= (count_tree_tap_in_inventory) 0)

        (= (count_pogo_stick) 0)
	)
	(:goal
		(and
			(= (count_pogo_stick) 1)
		)
	)
)

