;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.7793779631084484)
		(= (value_axe a1) 0.13509053863709874)
		(= (value_axe a2) 0.398200699453785)

        (= (value_pickaxe p0) 0.40836629730364704)
		(= (value_pickaxe p1) 0.5249314838238829)
		(= (value_pickaxe p2) 0.6479607785998808)

        (= (trees_in_map) 39)

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

