;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_89)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.679000822980272)

        (= (sled_supplies s0) 2.9531777118707794)

        (= (factor_value f0) 0.5148561237166941)
		(= (factor_value f1) 0.6797595819889212)

        (= (dummy_1_value d1_0) 0.8001219242635322)

        (= (dummy_2_value d2_0) 8.928053669229836)
		(= (dummy_2_value d2_1) 8.855540466901271)
		(= (dummy_2_value d2_2) 2.881971873938986)

        (= (dummy_3_value d3_0) 90.32715481891492)
		(= (dummy_3_value d3_1) 99.3155653817364)
		(= (dummy_3_value d3_2) 90.80195523974022)
		(= (dummy_3_value d3_3) 32.04028810818916)
		(= (dummy_3_value d3_4) 99.55115751297932)

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

