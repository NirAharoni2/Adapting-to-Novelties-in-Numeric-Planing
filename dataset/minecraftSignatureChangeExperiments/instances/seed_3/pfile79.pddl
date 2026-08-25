;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_79)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.6762533746643663)
		(= (value_axe a1) 0.9261623180345083)

        (= (value_pickaxe p0) 0.42171146472376075)
		(= (value_pickaxe p1) 0.7109375099298272)
		(= (value_pickaxe p2) 0.5605351238154672)
		(= (value_pickaxe p3) 0.39090019787807884)
		(= (value_pickaxe p4) 0.46541619556674185)

        (= (value_shovel s0) 5.211438019320795)
		(= (value_shovel s1) 1.2021861468273323)

        (= (value_hoe h0) 16.11237294691641)
		(= (value_hoe h1) 24.761268889181736)
		(= (value_hoe h2) 15.16245794098329)
		(= (value_hoe h3) 19.462980441416207)

        (= (trees_in_map) 28)

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

