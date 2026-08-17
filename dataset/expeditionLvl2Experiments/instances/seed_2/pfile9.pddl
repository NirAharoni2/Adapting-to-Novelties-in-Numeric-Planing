;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_9)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.634905670888298)

        (= (sled_supplies s0) 1.6220337399324853)

        (= (factor_value f0) 0.555587483614988)
		(= (factor_value f1) 0.8618848364346525)
		(= (factor_value f2) 0.6204327572208317)

        (= (dummy_1_value d1_0) 0.5498865433774955)
		(= (dummy_1_value d1_1) 0.5908800391502127)
		(= (dummy_1_value d1_2) 0.6157627146885705)
		(= (dummy_1_value d1_3) 0.6086768173591797)
		(= (dummy_1_value d1_4) 0.7603681820239487)

        (= (dummy_2_value d2_0) 5.179628000294562)

        (= (dummy_3_value d3_0) 31.662881016863885)
		(= (dummy_3_value d3_1) 64.5341170103868)

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

