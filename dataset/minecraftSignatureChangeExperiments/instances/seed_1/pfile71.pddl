;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.39131807320958134)
		(= (value_axe a1) 0.19583743872172898)
		(= (value_axe a2) 0.6254050875808675)
		(= (value_axe a3) 0.07714940721601782)
		(= (value_axe a4) 0.7861899485237686)

        (= (value_pickaxe p0) 0.05752485268012175)
		(= (value_pickaxe p1) 0.7463473111792467)
		(= (value_pickaxe p2) 0.38262914432029493)

        (= (value_shovel s0) 5.776880033032468)
		(= (value_shovel s1) 5.137037829893295)
		(= (value_shovel s2) 1.9042297281981857)

        (= (value_hoe h0) 20.77004202400887)
		(= (value_hoe h1) 11.483350981394045)
		(= (value_hoe h2) 14.824366249132087)
		(= (value_hoe h3) 17.63337822845981)
		(= (value_hoe h4) 15.713423371674377)

        (= (trees_in_map) 32)

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

