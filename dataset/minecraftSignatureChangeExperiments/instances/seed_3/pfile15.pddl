;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_15)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 - hoe
	)
  (:init

        (= (value_axe a0) 0.5555259436628887)
		(= (value_axe a1) 0.7160428220260103)
		(= (value_axe a2) 0.3802380621082537)
		(= (value_axe a3) 0.0799012300873857)

        (= (value_pickaxe p0) 0.17855614455760682)
		(= (value_pickaxe p1) 0.3732745756269831)
		(= (value_pickaxe p2) 0.6044348675777851)
		(= (value_pickaxe p3) 0.7826218347350036)
		(= (value_pickaxe p4) 0.3802646818509431)

        (= (value_shovel s0) 6.608126366913879)
		(= (value_shovel s1) 5.36048557017564)

        (= (value_hoe h0) 18.631871946612712)
		(= (value_hoe h1) 17.44840288571183)
		(= (value_hoe h2) 19.923032039410415)

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

