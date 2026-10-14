;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_31)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 11.123415032192115)

        (= (sled_supplies s0) 0.7852638156399172)

        (= (factor_value f0) 4.418868444430978)
		(= (factor_value f1) 1.441405429890152)
		(= (factor_value f2) 1.1297969598566076)

        (= (dummy_1_value d1_0) 0.8810010385405957)
		(= (dummy_1_value d1_1) 0.662162089771255)

        (= (dummy_2_value d2_0) 4.054315067716509)
		(= (dummy_2_value d2_1) 3.4937582924706385)

        (= (dummy_3_value d3_0) 59.13746441118119)
		(= (dummy_3_value d3_1) 12.700866285151793)
		(= (dummy_3_value d3_2) 64.47437393439861)
		(= (dummy_3_value d3_3) 7.969755303689393)
		(= (dummy_3_value d3_4) 95.56516822805776)

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

