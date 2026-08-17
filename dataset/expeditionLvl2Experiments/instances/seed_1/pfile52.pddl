;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_52)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.168095681679555)

        (= (sled_supplies s0) 1.2702288526319971)

        (= (factor_value f0) 0.7857143226574275)
		(= (factor_value f1) 0.9633854712041344)
		(= (factor_value f2) 0.9198735882536129)

        (= (dummy_1_value d1_0) 0.5749406181720731)
		(= (dummy_1_value d1_1) 0.6880603597112634)
		(= (dummy_1_value d1_2) 0.5544862516187472)
		(= (dummy_1_value d1_3) 0.5131119104191721)

        (= (dummy_2_value d2_0) 1.6712736299048907)
		(= (dummy_2_value d2_1) 2.646689818271805)

        (= (dummy_3_value d3_0) 76.8416406759972)
		(= (dummy_3_value d3_1) 67.05492090211777)
		(= (dummy_3_value d3_2) 79.98922675609084)
		(= (dummy_3_value d3_3) 29.561838111861643)

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

