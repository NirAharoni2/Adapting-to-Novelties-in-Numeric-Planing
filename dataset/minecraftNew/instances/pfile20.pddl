;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_20)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.6497985164194754)
		(= (value_axe a1) 0.368837944755369)
		(= (value_axe a2) 0.23121430464696746)
		(= (value_axe a3) 0.7238965482646474)

        (= (value_pickaxe p0) 0.2652729736699617)
		(= (value_pickaxe p1) 0.6823156909768401)
		(= (value_pickaxe p2) 0.12476122390794198)

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

