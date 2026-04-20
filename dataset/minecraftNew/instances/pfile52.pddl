;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.987172867201652)
		(= (value_axe a1) 0.103422205759518)
		(= (value_axe a2) 0.5754014201608534)
		(= (value_axe a3) 0.11426437563922298)
		(= (value_axe a4) 0.513544066444854)

        (= (value_pickaxe p0) 0.15262078197963846)
		(= (value_pickaxe p1) 0.15283137379440825)
		(= (value_pickaxe p2) 0.2948615876968249)
		(= (value_pickaxe p3) 0.5543199273910222)
		(= (value_pickaxe p4) 0.8976937008889323)

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

