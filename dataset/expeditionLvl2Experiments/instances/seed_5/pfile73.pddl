;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_73)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.76776876790416)

        (= (sled_supplies s0) 1.4069246060472658)

        (= (factor_value f0) 0.6771379178952703)

        (= (dummy_1_value d1_0) 0.6249071173110272)
		(= (dummy_1_value d1_1) 0.6466395933340554)

        (= (dummy_2_value d2_0) 6.661088422164461)
		(= (dummy_2_value d2_1) 5.308343844690048)

        (= (dummy_3_value d3_0) 12.632720169580738)
		(= (dummy_3_value d3_1) 52.85378042886482)
		(= (dummy_3_value d3_2) 27.624790976226926)

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

