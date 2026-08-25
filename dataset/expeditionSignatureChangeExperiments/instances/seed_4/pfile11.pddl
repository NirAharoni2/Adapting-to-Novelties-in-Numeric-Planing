;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_11)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 13.99174435281348)

        (= (sled_supplies s0) 1.5590857014414983)

        (= (factor_value f0) 0.5836884840265026)

        (= (dummy_1_value d1_0) 0.9371435760066682)
		(= (dummy_1_value d1_1) 0.5881754707795577)

        (= (dummy_2_value d2_0) 2.343762665532478)
		(= (dummy_2_value d2_1) 5.448297059076969)
		(= (dummy_2_value d2_2) 4.047264183517543)

        (= (dummy_3_value d3_0) 54.64444011749543)
		(= (dummy_3_value d3_1) 90.50316135200134)
		(= (dummy_3_value d3_2) 71.34065909461734)
		(= (dummy_3_value d3_3) 1.5506502774531148)

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

