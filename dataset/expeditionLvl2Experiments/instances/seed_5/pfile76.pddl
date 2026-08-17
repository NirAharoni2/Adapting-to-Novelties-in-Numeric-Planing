;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_76)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.907077337872286)

        (= (sled_supplies s0) 6.013714695876304)

        (= (factor_value f0) 0.7439932841171868)
		(= (factor_value f1) 0.6265639516287491)
		(= (factor_value f2) 0.6331331509545959)
		(= (factor_value f3) 0.8074280354764614)
		(= (factor_value f4) 0.9832632823965006)

        (= (dummy_1_value d1_0) 0.7740319084052902)
		(= (dummy_1_value d1_1) 0.9937571611741928)

        (= (dummy_2_value d2_0) 4.892337973519329)
		(= (dummy_2_value d2_1) 7.044016361237616)
		(= (dummy_2_value d2_2) 5.213081951651357)

        (= (dummy_3_value d3_0) 6.2953332645547935)
		(= (dummy_3_value d3_1) 18.148819245379926)
		(= (dummy_3_value d3_2) 24.027926572793152)
		(= (dummy_3_value d3_3) 52.23086147641732)

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

