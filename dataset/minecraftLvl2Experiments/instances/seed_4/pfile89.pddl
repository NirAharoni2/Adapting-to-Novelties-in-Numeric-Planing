;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 p2 p3 p4 - pickaxe
		s0 s1 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.7045639089754465)
		(= (value_axe a1) 0.7232201069954589)

        (= (value_pickaxe p0) 0.4798358102153033)
		(= (value_pickaxe p1) 0.4250377504273932)
		(= (value_pickaxe p2) 0.18151828081108023)
		(= (value_pickaxe p3) 0.8961299327870921)
		(= (value_pickaxe p4) 0.36126368097114536)

        (= (value_shovel s0) 6.3101050755689645)
		(= (value_shovel s1) 4.386414034842475)

        (= (value_hoe h0) 21.693889382373776)
		(= (value_hoe h1) 18.409982117085725)
		(= (value_hoe h2) 17.982928961530575)
		(= (value_hoe h3) 10.727900591935263)

        (= (trees_in_map) 33)

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

