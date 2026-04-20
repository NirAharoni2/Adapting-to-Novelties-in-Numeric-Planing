;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_47)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.14886901285795318)
		(= (value_axe a1) 0.35382459540477385)
		(= (value_axe a2) 0.6706803322982703)
		(= (value_axe a3) 0.006470447071947549)
		(= (value_axe a4) 0.5757514187506916)

        (= (value_pickaxe p0) 0.8388855483247517)
		(= (value_pickaxe p1) 0.5757036844475741)
		(= (value_pickaxe p2) 0.6510142923234429)

        (= (trees_in_map) 25)

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

