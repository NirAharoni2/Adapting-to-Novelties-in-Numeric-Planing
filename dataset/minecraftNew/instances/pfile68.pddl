;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_68)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 p4 - pickaxe

	)
  (:init

        (= (value_axe a0) 0.21697354807652347)
		(= (value_axe a1) 0.6400841923567635)
		(= (value_axe a2) 0.9362334292485368)
		(= (value_axe a3) 0.07460904212696606)
		(= (value_axe a4) 0.5301359511015431)

        (= (value_pickaxe p0) 0.7654670917204047)
		(= (value_pickaxe p1) 0.6106932141326908)
		(= (value_pickaxe p2) 0.06791143431862712)
		(= (value_pickaxe p3) 0.695420362012889)
		(= (value_pickaxe p4) 0.866646340085066)

        (= (trees_in_map) 40)

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

