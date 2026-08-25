;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_25)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.8250708344096667)
		(= (value_axe a1) 0.5946450262510113)
		(= (value_axe a2) 0.541147725914816)
		(= (value_axe a3) 0.4688975038961023)
		(= (value_axe a4) 0.9007001157893135)

        (= (value_pickaxe p0) 0.3598215231027493)
		(= (value_pickaxe p1) 0.20212933366132924)

        (= (value_shovel s0) 4.489159730563445)
		(= (value_shovel s1) 7.795012578333911)
		(= (value_shovel s2) 6.487157526838923)
		(= (value_shovel s3) 3.319320661998243)

        (= (value_hoe h0) 12.827349069773785)
		(= (value_hoe h1) 17.208240218486818)
		(= (value_hoe h2) 11.782829663558289)

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

