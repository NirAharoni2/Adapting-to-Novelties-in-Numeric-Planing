;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.181125329292442)

        (= (sled_supplies s0) 0.6522702339849576)

        (= (factor_value f0) 0.7563238491839666)
		(= (factor_value f1) 0.9755514546517142)
		(= (factor_value f2) 0.6465959100361932)
		(= (factor_value f3) 0.6758090884183421)
		(= (factor_value f4) 0.5645798758383912)

        (= (dummy_1_value d1_0) 0.7046213962621608)
		(= (dummy_1_value d1_1) 0.7819600650753697)
		(= (dummy_1_value d1_2) 0.7691928348296981)

        (= (dummy_2_value d2_0) 5.207250440709385)

        (= (dummy_3_value d3_0) 16.52076946942379)
		(= (dummy_3_value d3_1) 38.89189017431478)
		(= (dummy_3_value d3_2) 48.226099206239326)
		(= (dummy_3_value d3_3) 20.71658129119645)
		(= (dummy_3_value d3_4) 14.16532104650422)

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

