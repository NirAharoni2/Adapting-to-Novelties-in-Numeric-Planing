;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_44)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 d1_4 - dummy_1
		d2_0 d2_1 d2_2 - dummy_2
		d3_0 d3_1 d3_2 d3_3 d3_4 - dummy_3
	)

  (:init
		(= (x b0) -1.0)
		(= (y b0) -5.0)
		(= (x b1) 5.0)
		(= (y b1) 3.0)

		(= (d p0) -141.0)
		(= (d p1) -146.0)

        (= (dummy_1_d d1_0) -143.0)
		(= (dummy_1_d d1_1) 129.0)
		(= (dummy_1_d d1_2) 55.0)
		(= (dummy_1_d d1_3) 131.0)
		(= (dummy_1_d d1_4) -2.0)

        (= (dummy_2_d d2_0) -3.0)
		(= (dummy_2_d d2_1) 7.0)
		(= (dummy_2_d d2_2) -0.0)

        (= (dummy_3_d d3_0) -1084.0)
		(= (dummy_3_d d3_1) 1256.0)
		(= (dummy_3_d d3_2) -765.0)
		(= (dummy_3_d d3_3) -1295.0)
		(= (dummy_3_d d3_4) 985.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

