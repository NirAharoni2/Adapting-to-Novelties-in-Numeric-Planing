;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_27)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.8468836769136345)
		(= (value_axe a1) 0.11213088148521311)
		(= (value_axe a2) 0.27048751406460114)
		(= (value_axe a3) 0.0996487042418257)
		(= (value_axe a4) 0.11268477562336998)

        (= (value_pickaxe p0) 0.7789830633248863)
		(= (value_pickaxe p1) 0.7272893273241281)

        (= (value_shovel s0) 2.2939215070546743)
		(= (value_shovel s1) 2.324186660123187)
		(= (value_shovel s2) 3.9165873579013657)
		(= (value_shovel s3) 6.203222153621116)

        (= (value_hoe h0) 26.31496354690342)
		(= (value_hoe h1) 24.97400837070885)
		(= (value_hoe h2) 21.83832594869942)
		(= (value_hoe h3) 12.929423132467633)
		(= (value_hoe h4) 17.968388467758242)

        (= (trees_in_map) 26)

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

