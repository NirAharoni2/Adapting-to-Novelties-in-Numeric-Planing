;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_36)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.659254037821688)

        (= (sled_supplies s0) 5.742618943413085)

        (= (factor_value f0) 0.5633153548642714)
		(= (factor_value f1) 0.7134452280760638)

        (= (dummy_1_value d1_0) 0.7299029929012417)

        (= (dummy_2_value d2_0) 4.355233061873661)
		(= (dummy_2_value d2_1) 9.763231483275693)
		(= (dummy_2_value d2_2) 6.146708500715521)
		(= (dummy_2_value d2_3) 5.647649492043614)
		(= (dummy_2_value d2_4) 4.959860030667404)

        (= (dummy_3_value d3_0) 44.30932577941654)
		(= (dummy_3_value d3_1) 95.14874810212322)
		(= (dummy_3_value d3_2) 80.11674585179279)
		(= (dummy_3_value d3_3) 65.10884015371761)
		(= (dummy_3_value d3_4) 17.07688044059589)

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

