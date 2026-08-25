;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_22)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 12.393049295507623)

        (= (sled_supplies s0) 2.015192369504675)

        (= (factor_value f0) 0.7186076191508509)
		(= (factor_value f1) 0.9858717779664139)

        (= (dummy_1_value d1_0) 0.6656759446702278)
		(= (dummy_1_value d1_1) 0.9542702861395205)
		(= (dummy_1_value d1_2) 0.9749519885611544)
		(= (dummy_1_value d1_3) 0.9638446377288838)

        (= (dummy_2_value d2_0) 4.686056136271877)
		(= (dummy_2_value d2_1) 7.752545256771489)
		(= (dummy_2_value d2_2) 2.89148804771821)

        (= (dummy_3_value d3_0) 28.684585747129272)
		(= (dummy_3_value d3_1) 9.574979059235615)

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

