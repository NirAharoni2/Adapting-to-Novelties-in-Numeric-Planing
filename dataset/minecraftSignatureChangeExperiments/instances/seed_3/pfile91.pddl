;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_91)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.24141596645460117)
		(= (value_axe a1) 0.9074713788816542)
		(= (value_axe a2) 0.5355692007995022)

        (= (value_pickaxe p0) 0.29178270948161644)
		(= (value_pickaxe p1) 0.344809351609773)
		(= (value_pickaxe p2) 0.7509607954076358)
		(= (value_pickaxe p3) 0.17170873504846162)

        (= (value_shovel s0) 3.609409537282623)
		(= (value_shovel s1) 2.2894775755441463)
		(= (value_shovel s2) 3.7060914718205353)
		(= (value_shovel s3) 3.122722284194439)
		(= (value_shovel s4) 4.188971123341847)

        (= (value_hoe h0) 29.311937981668205)
		(= (value_hoe h1) 20.204645310436007)
		(= (value_hoe h2) 26.41725185760031)
		(= (value_hoe h3) 28.42883215849823)
		(= (value_hoe h4) 22.517615012980407)

        (= (trees_in_map) 20)

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

