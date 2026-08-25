;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_69)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.722937400754981)
		(= (value_axe a1) 0.16669811751668695)

        (= (value_pickaxe p0) 0.13320139040138246)
		(= (value_pickaxe p1) 0.5616650559568753)
		(= (value_pickaxe p2) 0.8267235481613889)
		(= (value_pickaxe p3) 0.7705993394157906)

        (= (value_shovel s0) 5.455515780603873)
		(= (value_shovel s1) 7.944572094910664)
		(= (value_shovel s2) 6.621312289858292)
		(= (value_shovel s3) 4.876739063660242)
		(= (value_shovel s4) 5.892173541846785)

        (= (value_hoe h0) 23.97090068296926)
		(= (value_hoe h1) 26.167523741829307)
		(= (value_hoe h2) 19.907880994218388)
		(= (value_hoe h3) 15.568614655731754)

        (= (trees_in_map) 24)

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

