;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_50)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.9354295054991894)
		(= (value_axe a1) 0.9620518696455346)
		(= (value_axe a2) 0.6919191313920509)
		(= (value_axe a3) 0.3903862659757803)

        (= (value_pickaxe p0) 0.5437776530471314)
		(= (value_pickaxe p1) 0.6507731093755184)

        (= (value_shovel s0) 5.29161450751104)
		(= (value_shovel s1) 2.323689527331634)
		(= (value_shovel s2) 7.192377734949781)

        (= (value_hoe h0) 20.814747474059097)
		(= (value_hoe h1) 11.42599445750881)
		(= (value_hoe h2) 16.12469673620419)

        (= (trees_in_map) 22)

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

