;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.7626721407900984)
		(= (value_axe a1) 0.9415157321373185)

        (= (value_pickaxe p0) 0.18923933374231605)
		(= (value_pickaxe p1) 0.07145258168979474)
		(= (value_pickaxe p2) 0.08118332561678665)

        (= (value_shovel s0) 4.641590196261278)
		(= (value_shovel s1) 1.3857695116074524)
		(= (value_shovel s2) 6.563097344741366)

        (= (value_hoe h0) 10.789697818396114)
		(= (value_hoe h1) 17.958572451778064)

        (= (trees_in_map) 25)

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

