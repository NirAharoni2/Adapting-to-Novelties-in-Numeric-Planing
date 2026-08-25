;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.219038164310136)
		(= (value_axe a1) 0.6859572319726135)
		(= (value_axe a2) 0.6308651620035047)

        (= (value_pickaxe p0) 0.04186170538118772)
		(= (value_pickaxe p1) 0.47158550455987414)
		(= (value_pickaxe p2) 0.22624259565580995)

        (= (value_shovel s0) 1.3790010753472817)
		(= (value_shovel s1) 1.934688193915798)
		(= (value_shovel s2) 3.2214558927406634)
		(= (value_shovel s3) 2.270830492516108)
		(= (value_shovel s4) 2.35352071254138)

        (= (value_hoe h0) 10.713151010198857)
		(= (value_hoe h1) 19.306603275403354)
		(= (value_hoe h2) 17.6059770081228)

        (= (trees_in_map) 39)

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

