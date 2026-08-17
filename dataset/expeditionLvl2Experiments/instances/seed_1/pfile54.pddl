;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.565745377987719)

        (= (sled_supplies s0) 2.726649893560717)

        (= (factor_value f0) 0.7394617648608219)

        (= (dummy_1_value d1_0) 0.9890470561328428)
		(= (dummy_1_value d1_1) 0.619596525197311)
		(= (dummy_1_value d1_2) 0.5060841665448661)
		(= (dummy_1_value d1_3) 0.977628994208884)
		(= (dummy_1_value d1_4) 0.6560038606316945)

        (= (dummy_2_value d2_0) 3.502653207677875)

        (= (dummy_3_value d3_0) 42.14034567403132)
		(= (dummy_3_value d3_1) 59.901706562838974)
		(= (dummy_3_value d3_2) 98.62534200850754)
		(= (dummy_3_value d3_3) 71.04494389031552)

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

