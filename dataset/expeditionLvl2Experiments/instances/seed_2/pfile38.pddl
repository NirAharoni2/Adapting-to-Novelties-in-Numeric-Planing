;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_38)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.808818070170275)

        (= (sled_supplies s0) 6.045099242528795)

        (= (factor_value f0) 0.8774011148573602)
		(= (factor_value f1) 0.7099102329825483)

        (= (dummy_1_value d1_0) 0.7526883582940239)
		(= (dummy_1_value d1_1) 0.948923111877178)
		(= (dummy_1_value d1_2) 0.8735093734047968)
		(= (dummy_1_value d1_3) 0.8265349144492857)
		(= (dummy_1_value d1_4) 0.9794198438034816)

        (= (dummy_2_value d2_0) 2.054516068800469)
		(= (dummy_2_value d2_1) 6.381993972906118)
		(= (dummy_2_value d2_2) 6.618039769616491)
		(= (dummy_2_value d2_3) 5.091583190943191)
		(= (dummy_2_value d2_4) 9.668776137211522)

        (= (dummy_3_value d3_0) 96.77974060527725)
		(= (dummy_3_value d3_1) 39.66569049508947)

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

