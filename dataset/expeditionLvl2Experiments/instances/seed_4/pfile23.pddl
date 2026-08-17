;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.737593619020672)

        (= (sled_supplies s0) 7.766126594949613)

        (= (factor_value f0) 0.6268002378521733)
		(= (factor_value f1) 0.6080602105355024)
		(= (factor_value f2) 0.8210625480832225)

        (= (dummy_1_value d1_0) 0.8821635585800625)

        (= (dummy_2_value d2_0) 6.8094565426146625)
		(= (dummy_2_value d2_1) 1.0715926818596606)

        (= (dummy_3_value d3_0) 57.43751107931524)
		(= (dummy_3_value d3_1) 21.16975198299021)
		(= (dummy_3_value d3_2) 10.257715338259334)
		(= (dummy_3_value d3_3) 52.38863129527474)
		(= (dummy_3_value d3_4) 10.437212759900097)

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

