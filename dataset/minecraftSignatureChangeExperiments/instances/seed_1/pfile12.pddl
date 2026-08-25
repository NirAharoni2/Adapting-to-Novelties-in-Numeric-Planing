;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_12)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6002088301322496)
		(= (value_axe a1) 0.8411321957058551)
		(= (value_axe a2) 0.3681079994056491)

        (= (value_pickaxe p0) 0.34028523500198804)
		(= (value_pickaxe p1) 0.29121528741113467)
		(= (value_pickaxe p2) 0.8674198235869027)

        (= (value_shovel s0) 5.227877702241979)
		(= (value_shovel s1) 7.680152200205329)
		(= (value_shovel s2) 7.2108557330187395)
		(= (value_shovel s3) 1.9474218417681706)

        (= (value_hoe h0) 21.02340948138433)
		(= (value_hoe h1) 12.085499960292271)
		(= (value_hoe h2) 10.782755971938212)
		(= (value_hoe h3) 11.463868376646971)

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

