;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_16)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.08256011162415733)
		(= (value_axe a1) 0.14393827077290033)
		(= (value_axe a2) 0.8090222598770068)
		(= (value_axe a3) 0.1776687077087632)

        (= (value_pickaxe p0) 0.9019132997060115)
		(= (value_pickaxe p1) 0.3719881564191514)
		(= (value_pickaxe p2) 0.5759824797056238)
		(= (value_pickaxe p3) 0.35044085737292974)

        (= (value_shovel s0) 5.3458101986547275)
		(= (value_shovel s1) 1.6542704965131652)
		(= (value_shovel s2) 3.817832123635529)

        (= (value_hoe h0) 28.72376157407245)
		(= (value_hoe h1) 13.593512524611901)
		(= (value_hoe h2) 23.085051830395102)
		(= (value_hoe h3) 16.533450361285027)
		(= (value_hoe h4) 16.01160286117856)

        (= (trees_in_map) 20)

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

