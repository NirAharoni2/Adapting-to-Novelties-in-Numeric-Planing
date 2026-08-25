;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.9173756193484481)
		(= (value_axe a1) 0.9400898416238018)
		(= (value_axe a2) 0.0342118098014057)

        (= (value_pickaxe p0) 0.30472301506683275)
		(= (value_pickaxe p1) 0.6069324957691097)
		(= (value_pickaxe p2) 0.9465394571002984)
		(= (value_pickaxe p3) 0.08777946939552494)
		(= (value_pickaxe p4) 0.2934335334905279)

        (= (value_shovel s0) 6.949339344288721)
		(= (value_shovel s1) 1.8027156930591846)
		(= (value_shovel s2) 3.7290438401016703)
		(= (value_shovel s3) 3.339274248150106)

        (= (value_hoe h0) 23.600955274453145)
		(= (value_hoe h1) 28.570388019502964)
		(= (value_hoe h2) 13.492619967083089)
		(= (value_hoe h3) 24.795889238194214)
		(= (value_hoe h4) 24.67902219084858)

        (= (trees_in_map) 37)

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

