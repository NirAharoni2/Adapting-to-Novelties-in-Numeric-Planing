;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_64)
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

        (= (sled_capacity s0) 8.696441176057544)

        (= (sled_supplies s0) 7.66586108076875)

        (= (factor_value f0) 0.8526779876395139)
		(= (factor_value f1) 0.9966578429638855)
		(= (factor_value f2) 0.8048931540967683)

        (= (dummy_1_value d1_0) 0.5817741718247784)
		(= (dummy_1_value d1_1) 0.7089008327112359)
		(= (dummy_1_value d1_2) 0.6225414797815346)
		(= (dummy_1_value d1_3) 0.8155908741376614)
		(= (dummy_1_value d1_4) 0.8852124037831588)

        (= (dummy_2_value d2_0) 1.521941768977194)
		(= (dummy_2_value d2_1) 3.0259778756521247)

        (= (dummy_3_value d3_0) 81.52483435933914)
		(= (dummy_3_value d3_1) 68.81902055255682)

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

