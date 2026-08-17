;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_51)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.545809018077458)

        (= (sled_supplies s0) 9.275730061498349)

        (= (factor_value f0) 0.7300145951067829)
		(= (factor_value f1) 0.5448918264073412)
		(= (factor_value f2) 0.9190635153971562)
		(= (factor_value f3) 0.7508408484647755)
		(= (factor_value f4) 0.7351379265033473)

        (= (dummy_1_value d1_0) 0.819480260008557)

        (= (dummy_2_value d2_0) 2.4185082963897155)
		(= (dummy_2_value d2_1) 2.9668606097272234)
		(= (dummy_2_value d2_2) 8.332710787318346)
		(= (dummy_2_value d2_3) 7.611337587218458)
		(= (dummy_2_value d2_4) 9.853820695724155)

        (= (dummy_3_value d3_0) 43.90203997101066)

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

