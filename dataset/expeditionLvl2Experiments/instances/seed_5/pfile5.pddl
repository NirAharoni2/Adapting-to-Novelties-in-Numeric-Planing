;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_5)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 f4 - factor
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 9.305182047194506)

        (= (sled_supplies s0) 7.860402693070957)

        (= (factor_value f0) 0.7278325507453324)
		(= (factor_value f1) 0.7108786409557947)
		(= (factor_value f2) 0.5278536155039467)
		(= (factor_value f3) 0.9580346742209955)
		(= (factor_value f4) 0.5163606099846378)

        (= (dummy_1_value d1_0) 0.7467820992104162)
		(= (dummy_1_value d1_1) 0.9192146405840661)
		(= (dummy_1_value d1_2) 0.56528591357656)
		(= (dummy_1_value d1_3) 0.8658322116883382)
		(= (dummy_1_value d1_4) 0.9748992813109494)

        (= (dummy_2_value d2_0) 6.673593640837551)
		(= (dummy_2_value d2_1) 8.092085948023213)
		(= (dummy_2_value d2_2) 1.9596754872753301)
		(= (dummy_2_value d2_3) 4.910996715403934)

        (= (dummy_3_value d3_0) 15.775289109485525)

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

