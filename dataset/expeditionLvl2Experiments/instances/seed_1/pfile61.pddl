;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_61)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 8.208764283289044)

        (= (sled_supplies s0) 8.198556823406019)

        (= (factor_value f0) 0.9549287329307428)
		(= (factor_value f1) 0.7385782004051866)
		(= (factor_value f2) 0.7134103935383481)

        (= (dummy_1_value d1_0) 0.7943411571865775)
		(= (dummy_1_value d1_1) 0.658655232918338)
		(= (dummy_1_value d1_2) 0.5746988080297704)
		(= (dummy_1_value d1_3) 0.7946662215730043)

        (= (dummy_2_value d2_0) 8.6586662975843)
		(= (dummy_2_value d2_1) 3.4999862431943525)
		(= (dummy_2_value d2_2) 8.785192709150639)

        (= (dummy_3_value d3_0) 78.9257671408085)
		(= (dummy_3_value d3_1) 77.79190996838476)
		(= (dummy_3_value d3_2) 42.097888415385285)

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

