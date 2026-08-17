;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_84)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.61772081743244)

        (= (sled_supplies s0) 3.946786184919116)

        (= (factor_value f0) 0.7547706410600576)

        (= (dummy_1_value d1_0) 0.9937885008764291)
		(= (dummy_1_value d1_1) 0.9967981519770603)
		(= (dummy_1_value d1_2) 0.5616705503866595)
		(= (dummy_1_value d1_3) 0.6310367775645962)
		(= (dummy_1_value d1_4) 0.9957093379248236)

        (= (dummy_2_value d2_0) 3.9694956033285744)
		(= (dummy_2_value d2_1) 2.624307410784169)

        (= (dummy_3_value d3_0) 91.26550209084064)
		(= (dummy_3_value d3_1) 62.104967687248276)
		(= (dummy_3_value d3_2) 31.50762253396997)
		(= (dummy_3_value d3_3) 55.88427474314834)
		(= (dummy_3_value d3_4) 43.31329889848047)

        (= (waypoint_supplies w0_0) 1000)
		(= (waypoint_supplies w0_1) 0.0)
		(= (waypoint_supplies w0_2) 0.0)
		(= (waypoint_supplies w0_3) 0.0)
		(= (waypoint_supplies w0_4) 0.0)

		(is_next w0_0 w0_1)
		(is_next w0_1 w0_2)
		(is_next w0_2 w0_3)
		(is_next w0_3 w0_4)
	)
	(:goal
		(and
			(at s0 w0_4)
		)
	)
)

