;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5132028866074317)
		(= (value_axe a1) 0.28479830977787)
		(= (value_axe a2) 0.6636846925169987)

        (= (value_pickaxe p0) 0.3498116509427087)
		(= (value_pickaxe p1) 0.25933470130713254)
		(= (value_pickaxe p2) 0.48481619745730864)
		(= (value_pickaxe p3) 0.9505595518535259)
		(= (value_pickaxe p4) 0.3484038542161305)

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

