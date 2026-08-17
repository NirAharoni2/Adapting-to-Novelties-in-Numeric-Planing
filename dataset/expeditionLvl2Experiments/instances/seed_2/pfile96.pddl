;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_96)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.3676941693472955)

        (= (sled_supplies s0) 4.581902366444528)

        (= (factor_value f0) 0.5103524781878217)
		(= (factor_value f1) 0.8620276495345052)
		(= (factor_value f2) 0.7542082924857195)

        (= (dummy_1_value d1_0) 0.505495165854529)
		(= (dummy_1_value d1_1) 0.7799803106355245)
		(= (dummy_1_value d1_2) 0.5418866987661255)
		(= (dummy_1_value d1_3) 0.7366111937194133)
		(= (dummy_1_value d1_4) 0.854821736637073)

        (= (dummy_2_value d2_0) 3.027538579349586)

        (= (dummy_3_value d3_0) 41.22740134385974)

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

