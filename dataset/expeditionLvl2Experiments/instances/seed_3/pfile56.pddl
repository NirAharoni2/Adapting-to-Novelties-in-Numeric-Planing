;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_56)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.474159257318334)

        (= (sled_supplies s0) 4.11222503580979)

        (= (factor_value f0) 0.7577630442215689)
		(= (factor_value f1) 0.6986547942243271)
		(= (factor_value f2) 0.533038852659972)
		(= (factor_value f3) 0.6381783771669791)
		(= (factor_value f4) 0.6571221024932454)

        (= (dummy_1_value d1_0) 0.9707702259006121)
		(= (dummy_1_value d1_1) 0.558601469590323)

        (= (dummy_2_value d2_0) 9.531715147127844)

        (= (dummy_3_value d3_0) 48.19651407579169)

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

