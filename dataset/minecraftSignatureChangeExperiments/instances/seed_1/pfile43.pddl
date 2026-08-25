;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_43)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9128847372842237)
		(= (value_axe a1) 0.9276172424974835)
		(= (value_axe a2) 0.9697521431783417)
		(= (value_axe a3) 0.8156292877315128)
		(= (value_axe a4) 0.9254432251913127)

        (= (value_pickaxe p0) 0.9222893236500579)
		(= (value_pickaxe p1) 0.8013676781661853)
		(= (value_pickaxe p2) 0.13458121604268347)
		(= (value_pickaxe p3) 0.5237117222858407)

        (= (value_shovel s0) 5.029228091029045)
		(= (value_shovel s1) 7.947482695903105)
		(= (value_shovel s2) 6.487639849763769)
		(= (value_shovel s3) 5.920413516584688)
		(= (value_shovel s4) 6.2265432579110715)

        (= (value_hoe h0) 17.231555281669536)
		(= (value_hoe h1) 28.846271156804335)
		(= (value_hoe h2) 22.870017792304576)
		(= (value_hoe h3) 18.051492170600334)
		(= (value_hoe h4) 19.29143154595217)

        (= (trees_in_map) 30)

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

