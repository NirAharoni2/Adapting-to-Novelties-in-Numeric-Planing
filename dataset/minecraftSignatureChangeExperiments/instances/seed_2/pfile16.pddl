;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.15601814196179242)
		(= (value_axe a1) 0.9866863038386309)
		(= (value_axe a2) 0.968858799008856)
		(= (value_axe a3) 0.4237098850023333)
		(= (value_axe a4) 0.32884363469855005)

        (= (value_pickaxe p0) 0.24860097255829583)
		(= (value_pickaxe p1) 0.5141659547184446)
		(= (value_pickaxe p2) 0.16956591527832032)

        (= (value_shovel s0) 2.1025781946374975)
		(= (value_shovel s1) 7.631701334734398)
		(= (value_shovel s2) 2.6411293508793685)
		(= (value_shovel s3) 7.121277451261365)

        (= (value_hoe h0) 17.17106428486343)
		(= (value_hoe h1) 25.286754306173382)

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

