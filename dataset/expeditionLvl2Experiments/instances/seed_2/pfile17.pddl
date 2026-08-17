;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_17)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.699972737584472)

        (= (sled_supplies s0) 4.680580288930984)

        (= (factor_value f0) 0.8937111453467499)

        (= (dummy_1_value d1_0) 0.9320120502992107)
		(= (dummy_1_value d1_1) 0.5674351269531229)
		(= (dummy_1_value d1_2) 0.5812850724886454)
		(= (dummy_1_value d1_3) 0.6908317096244385)
		(= (dummy_1_value d1_4) 0.7323283466535714)

        (= (dummy_2_value d2_0) 3.653369846959657)
		(= (dummy_2_value d2_1) 1.093602139829795)
		(= (dummy_2_value d2_2) 6.016795055616854)

        (= (dummy_3_value d3_0) 96.72446221247442)
		(= (dummy_3_value d3_1) 37.27950860088845)

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

