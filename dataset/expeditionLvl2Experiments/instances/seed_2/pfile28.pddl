;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_28)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.399198797418416)

        (= (sled_supplies s0) 3.934382862800396)

        (= (factor_value f0) 0.7591944283579768)
		(= (factor_value f1) 0.5337645389612269)
		(= (factor_value f2) 0.949022726772191)
		(= (factor_value f3) 0.8338837389665111)

        (= (dummy_1_value d1_0) 0.5168502459502206)
		(= (dummy_1_value d1_1) 0.648708863777127)
		(= (dummy_1_value d1_2) 0.9310432192758995)

        (= (dummy_2_value d2_0) 6.728091287023096)
		(= (dummy_2_value d2_1) 7.608410428838187)

        (= (dummy_3_value d3_0) 94.4838414947532)
		(= (dummy_3_value d3_1) 2.559069284983081)

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

