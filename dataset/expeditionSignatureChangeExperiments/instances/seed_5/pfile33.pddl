;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_33)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 143.38290780058736)

        (= (sled_supplies s0) 0.3639475374835094)

        (= (factor_value f0) 3.934507223596352)
		(= (factor_value f1) 1.9208204360099685)
		(= (factor_value f2) 8.080763758808587)
		(= (factor_value f3) 3.971302111151158)

        (= (dummy_1_value d1_0) 0.5381039942107801)

        (= (dummy_2_value d2_0) 9.570719654577019)
		(= (dummy_2_value d2_1) 2.239370856521331)

        (= (dummy_3_value d3_0) 52.41398368599866)

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

