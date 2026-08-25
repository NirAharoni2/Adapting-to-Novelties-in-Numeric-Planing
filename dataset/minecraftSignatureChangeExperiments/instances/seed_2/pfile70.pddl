;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_70)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6532807675864667)
		(= (value_axe a1) 0.2920150648185883)

        (= (value_pickaxe p0) 0.7752165268796609)
		(= (value_pickaxe p1) 0.9610065543083972)

        (= (value_shovel s0) 7.997232270525699)
		(= (value_shovel s1) 1.297355028658548)
		(= (value_shovel s2) 3.1734071361187794)

        (= (value_hoe h0) 11.79065599970851)
		(= (value_hoe h1) 19.4961041958599)
		(= (value_hoe h2) 23.15025465787751)
		(= (value_hoe h3) 22.16498204566723)

        (= (trees_in_map) 31)

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

