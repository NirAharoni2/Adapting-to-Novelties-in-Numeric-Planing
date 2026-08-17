;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_54)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.230652586313392)

        (= (sled_supplies s0) 4.902404942645117)

        (= (factor_value f0) 0.5022993219430467)

        (= (dummy_1_value d1_0) 0.9960606710764706)
		(= (dummy_1_value d1_1) 0.833021299012821)
		(= (dummy_1_value d1_2) 0.8957080990118607)
		(= (dummy_1_value d1_3) 0.9190978539152004)
		(= (dummy_1_value d1_4) 0.6804652253773416)

        (= (dummy_2_value d2_0) 7.3472485642408305)
		(= (dummy_2_value d2_1) 6.826227809083493)
		(= (dummy_2_value d2_2) 1.5417719379685768)

        (= (dummy_3_value d3_0) 54.35005197434914)
		(= (dummy_3_value d3_1) 93.05610404119763)
		(= (dummy_3_value d3_2) 56.08046190993045)

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

