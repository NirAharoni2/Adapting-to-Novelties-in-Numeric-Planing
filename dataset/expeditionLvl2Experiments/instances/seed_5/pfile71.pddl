;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_71)
	(:domain expedition)
	(:objects
		s0 - sled
		w0_0 w0_1 w0_2 w0_3 w0_4 - waypoint
		f0 f1 f2 f3 - factor
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 d2_2 d2_3 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)
  (:init
        (at s0 w0_0)

        (= (sled_capacity s0) 7.295094660238932)

        (= (sled_supplies s0) 3.1101529522013034)

        (= (factor_value f0) 0.8570064798756742)
		(= (factor_value f1) 0.9781702725096998)
		(= (factor_value f2) 0.5422194083137721)
		(= (factor_value f3) 0.888593660466473)

        (= (dummy_1_value d1_0) 0.8259298744359144)
		(= (dummy_1_value d1_1) 0.7698591301243424)
		(= (dummy_1_value d1_2) 0.8947848752568224)
		(= (dummy_1_value d1_3) 0.9299811895016281)

        (= (dummy_2_value d2_0) 2.319649049069554)
		(= (dummy_2_value d2_1) 5.3789437732222485)
		(= (dummy_2_value d2_2) 6.539040879269971)
		(= (dummy_2_value d2_3) 7.289567651320456)

        (= (dummy_3_value d3_0) 95.88668034280921)
		(= (dummy_3_value d3_1) 80.48823977736863)
		(= (dummy_3_value d3_2) 83.01349778017682)
		(= (dummy_3_value d3_3) 7.392461086603111)

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

