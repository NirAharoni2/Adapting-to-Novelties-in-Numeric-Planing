;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_80)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5896864342008491)
		(= (value_axe a1) 0.6492511324698264)
		(= (value_axe a2) 0.5866594999161117)
		(= (value_axe a3) 0.15269781055959408)
		(= (value_axe a4) 0.6876648943992677)

        (= (value_pickaxe p0) 0.1515806687932122)
		(= (value_pickaxe p1) 0.3460342557655953)
		(= (value_pickaxe p2) 0.9076402955218659)
		(= (value_pickaxe p3) 0.685058034599686)

        (= (value_shovel s0) 4.030893928497177)
		(= (value_shovel s1) 1.0255463310684345)
		(= (value_shovel s2) 1.0009499204020305)
		(= (value_shovel s3) 3.9473419229694207)
		(= (value_shovel s4) 7.609140755462176)

        (= (value_hoe h0) 27.676461022070416)
		(= (value_hoe h1) 29.542626339657456)
		(= (value_hoe h2) 20.745109071545123)

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

