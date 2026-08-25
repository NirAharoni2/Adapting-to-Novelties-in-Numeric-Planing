;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.579782903485771)
		(= (value_axe a1) 0.6450915272392206)
		(= (value_axe a2) 0.625432454224778)

        (= (value_pickaxe p0) 0.742198715079656)
		(= (value_pickaxe p1) 0.702643623365602)
		(= (value_pickaxe p2) 0.4751504923379397)

        (= (value_shovel s0) 1.3345408227713416)
		(= (value_shovel s1) 6.40555835536704)
		(= (value_shovel s2) 6.76157270797879)

        (= (value_hoe h0) 26.709514430830872)
		(= (value_hoe h1) 21.961954878648413)
		(= (value_hoe h2) 10.763386590634859)
		(= (value_hoe h3) 13.917693793347844)
		(= (value_hoe h4) 12.166873982610992)

        (= (trees_in_map) 40)

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

