;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_24)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 10.174275621535786)

        (= (sled_supplies s0) 0.8593735752786497)

        (= (factor_value f0) 0.6622086749649547)

        (= (dummy_1_value d1_0) 0.664070355653571)
		(= (dummy_1_value d1_1) 0.9914616710321648)

        (= (dummy_2_value d2_0) 6.4612412720474985)

        (= (dummy_3_value d3_0) 37.06402096631122)
		(= (dummy_3_value d3_1) 99.02081955278845)

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

