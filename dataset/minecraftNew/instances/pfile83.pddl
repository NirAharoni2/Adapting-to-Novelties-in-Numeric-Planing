;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_83)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.5687246367762844)
		(= (value_axe a1) 0.8156801001562275)
		(= (value_axe a2) 0.902479730930075)
		(= (value_axe a3) 0.23985137421202019)
		(= (value_axe a4) 0.8051695071185061)

        (= (value_pickaxe p0) 0.8042071182179237)
		(= (value_pickaxe p1) 0.9269531029504767)
		(= (value_pickaxe p2) 0.0764817922636104)

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

