;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_62)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.488412740025707)

        (= (sled_supplies s0) 4.381138971338576)

        (= (factor_value f0) 0.7497467736459036)
		(= (factor_value f1) 0.7398289620967701)
		(= (factor_value f2) 0.62381977491234)

        (= (dummy_1_value d1_0) 0.9623083947971722)
		(= (dummy_1_value d1_1) 0.707094810978871)
		(= (dummy_1_value d1_2) 0.5057939291858125)
		(= (dummy_1_value d1_3) 0.7367751099970072)
		(= (dummy_1_value d1_4) 0.5023542160473662)

        (= (dummy_2_value d2_0) 7.376476143105522)
		(= (dummy_2_value d2_1) 8.821325073543779)

        (= (dummy_3_value d3_0) 90.66188563648994)
		(= (dummy_3_value d3_1) 5.7453323237552505)

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

