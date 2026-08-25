;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain PolyCraft)
	(:objects
		a0 a1 a2 a3 - axe
		p0 p1 p2 p3 - pickaxe
		s0 s1 s2 - shovel
		h0 h1 h2 h3 h4 - hoe
	)
  (:init

        (= (value_axe a0) 0.44511280975139567)
		(= (value_axe a1) 0.8829507486663271)
		(= (value_axe a2) 0.7833048368232226)
		(= (value_axe a3) 0.3985133110208686)

        (= (value_pickaxe p0) 0.9193026638001399)
		(= (value_pickaxe p1) 0.23171350804409319)
		(= (value_pickaxe p2) 0.32164562881061853)
		(= (value_pickaxe p3) 0.4147962650990621)

        (= (value_shovel s0) 4.109394125125224)
		(= (value_shovel s1) 7.288658163923051)
		(= (value_shovel s2) 3.5567782930276044)

        (= (value_hoe h0) 18.381611657562726)
		(= (value_hoe h1) 27.80950273326345)
		(= (value_hoe h2) 23.31420332669647)
		(= (value_hoe h3) 13.1992555823893)
		(= (value_hoe h4) 17.413601978857944)

        (= (trees_in_map) 36)

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

