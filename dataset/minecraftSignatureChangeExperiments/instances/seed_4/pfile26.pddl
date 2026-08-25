;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_26)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 s3 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.6321900904536703)
		(= (value_axe a1) 0.4026272969994087)
		(= (value_axe a2) 0.1728650585733118)

        (= (value_pickaxe p0) 0.4936943946397825)
		(= (value_pickaxe p1) 0.06392044390768548)
		(= (value_pickaxe p2) 0.5106281553412654)
		(= (value_pickaxe p3) 0.508928524693638)

        (= (value_shovel s0) 4.91894189890569)
		(= (value_shovel s1) 2.980129119171547)
		(= (value_shovel s2) 2.4530835593636997)
		(= (value_shovel s3) 5.923642576201368)

        (= (value_hoe h0) 16.436899330447496)
		(= (value_hoe h1) 14.294177296451537)
		(= (value_hoe h2) 19.572197182030493)
		(= (value_hoe h3) 18.744304766034038)
		(= (value_hoe h4) 29.43487111865656)

        (= (trees_in_map) 30)

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

