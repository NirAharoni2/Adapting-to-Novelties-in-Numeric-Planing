;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 a4 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 - hoe
	)
  (:init

        (= (value_axe a0) 0.10248681602567233)
		(= (value_axe a1) 0.5152291321320495)
		(= (value_axe a2) 0.5113284003962864)
		(= (value_axe a3) 0.12972492942256642)
		(= (value_axe a4) 0.9225410152101894)

        (= (value_pickaxe p0) 0.9785034275373752)
		(= (value_pickaxe p1) 0.06830583675388724)
		(= (value_pickaxe p2) 0.003171001914415661)
		(= (value_pickaxe p3) 0.0617972941915782)

        (= (value_shovel s0) 6.122112952252532)
		(= (value_shovel s1) 6.967649781311113)
		(= (value_shovel s2) 1.463166165240812)

        (= (value_hoe h0) 10.179245775174428)
		(= (value_hoe h1) 20.758932879437488)

        (= (trees_in_map) 30)

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

