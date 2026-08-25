;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)
	(:domain PolyCraft)
	(:objects
		a0 a1 - axe
		p0 p1 - pickaxe
		s0 s1 s2 s3 s4 - shovel
		h0 h1 h2 h3 - hoe
	)
  (:init

        (= (value_axe a0) 0.10653719911035897)
		(= (value_axe a1) 0.8052548720121778)

        (= (value_pickaxe p0) 0.5619308138656953)
		(= (value_pickaxe p1) 0.32127810318715033)

        (= (value_shovel s0) 3.1451125233288053)
		(= (value_shovel s1) 1.9613109740476609)
		(= (value_shovel s2) 4.4840323904996815)
		(= (value_shovel s3) 3.262496463944378)
		(= (value_shovel s4) 1.2382500949849493)

        (= (value_hoe h0) 20.84779586848434)
		(= (value_hoe h1) 24.779192292276772)
		(= (value_hoe h2) 10.557857457916777)
		(= (value_hoe h3) 12.433245040570283)

        (= (trees_in_map) 24)

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

