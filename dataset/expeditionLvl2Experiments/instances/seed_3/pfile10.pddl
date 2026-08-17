;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_10)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 6.789334688252837)

        (= (sled_supplies s0) 3.579786555134789)

        (= (factor_value f0) 0.7673185202763886)
		(= (factor_value f1) 0.9084054236084614)
		(= (factor_value f2) 0.585651130376222)

        (= (dummy_1_value d1_0) 0.8958359594410614)
		(= (dummy_1_value d1_1) 0.960883255636816)
		(= (dummy_1_value d1_2) 0.9030255195814568)
		(= (dummy_1_value d1_3) 0.9117493812767904)
		(= (dummy_1_value d1_4) 0.5037523600738545)

        (= (dummy_2_value d2_0) 6.6574648927007445)
		(= (dummy_2_value d2_1) 8.762991112489239)
		(= (dummy_2_value d2_2) 1.4493866697579652)
		(= (dummy_2_value d2_3) 3.442573303239999)

        (= (dummy_3_value d3_0) 27.590025009146483)

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

