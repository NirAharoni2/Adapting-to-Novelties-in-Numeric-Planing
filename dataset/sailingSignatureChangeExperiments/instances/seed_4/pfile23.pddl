;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_23)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 - person
		e0 e1 - engine
		d1_0 d1_1 d1_2 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) 4.0)
		(= (y b0) -9.0)
		(= (x b1) -8.0)
		(= (y b1) -6.0)

		(= (d p0) 55.0)

        (= (engine_value e0) 3.26)
		(= (engine_value e1) 5.59)

        (= (dummy_1_value d1_0) 124.0)
		(= (dummy_1_value d1_1) -139.0)
		(= (dummy_1_value d1_2) -104.0)

        (= (dummy_2_value d2_0) -6.0)
		(= (dummy_2_value d2_1) -11.0)
		(= (dummy_2_value d2_2) -7.0)

        (= (dummy_3_value d3_0) 1215.0)
		(= (dummy_3_value d3_1) 808.0)
		(= (dummy_3_value d3_2) -965.0)
		(= (dummy_3_value d3_3) -988.0)
		(= (dummy_3_value d3_4) 837.0)
	)

	(:goal
		(and
			(saved p0)
		)
	)
)

