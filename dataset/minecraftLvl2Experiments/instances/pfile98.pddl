;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_98)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9556673945789176)
		(= (value_axe a1) 0.009544496872768815)

        (= (value_pickaxe p0) 0.37791249791371784)
		(= (value_pickaxe p1) 0.015600398523143655)
		(= (value_pickaxe p2) 0.7736062601372715)

        (= (value_shovel s0) 3.471887024871468)
		(= (value_shovel s1) 7.0717387079360225)
		(= (value_shovel s2) 3.8406190417379973)

        (= (value_hoe h0) 19.248528985267882)
		(= (value_hoe h1) 11.669519700308227)
		(= (value_hoe h2) 11.30130000657938)

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

