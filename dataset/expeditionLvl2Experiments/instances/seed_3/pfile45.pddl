;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_45)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.16152520718849)

        (= (sled_supplies s0) 1.0053299780446476)

        (= (factor_value f0) 0.7205954951266)
		(= (factor_value f1) 0.573168995195873)
		(= (factor_value f2) 0.8001926288699125)
		(= (factor_value f3) 0.6615822108694758)
		(= (factor_value f4) 0.7531939132648826)

        (= (dummy_1_value d1_0) 0.6867548251029838)
		(= (dummy_1_value d1_1) 0.6590641013944699)
		(= (dummy_1_value d1_2) 0.6792199116293585)

        (= (dummy_2_value d2_0) 6.409331067941629)
		(= (dummy_2_value d2_1) 9.82449815055945)
		(= (dummy_2_value d2_2) 9.425360009790413)
		(= (dummy_2_value d2_3) 8.759674915775332)
		(= (dummy_2_value d2_4) 8.517034285307854)

        (= (dummy_3_value d3_0) 29.392588217821732)
		(= (dummy_3_value d3_1) 97.6951103542893)
		(= (dummy_3_value d3_2) 27.70566605071724)

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

