;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_90)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.953414165144606)

        (= (sled_supplies s0) 6.984890348036748)

        (= (factor_value f0) 0.6808166700113065)

        (= (dummy_1_value d1_0) 0.527931767911)
		(= (dummy_1_value d1_1) 0.7197484111239937)
		(= (dummy_1_value d1_2) 0.9240792987109097)
		(= (dummy_1_value d1_3) 0.9899881304337719)

        (= (dummy_2_value d2_0) 6.930439027854383)

        (= (dummy_3_value d3_0) 86.78314164065729)

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

