;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_67)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 d1_1 d1_2 d1_3 - dummy_1
		d2_0 d2_1 - dummy_2
		d3_0 d3_1 d3_2 d3_3 - dummy_3
	)

  (:init
		(= (x b0) -5.0)
		(= (y b0) 1.0)
		(= (x b1) 8.0)
		(= (y b1) -1.0)

		(= (d p0) 96.0)
		(= (d p1) 118.0)

        (= (dummy_1_d d1_0) 98.0)
		(= (dummy_1_d d1_1) -36.0)
		(= (dummy_1_d d1_2) 74.0)
		(= (dummy_1_d d1_3) -88.0)

        (= (dummy_2_d d2_0) 1.0)
		(= (dummy_2_d d2_1) -0.0)

        (= (dummy_3_d d3_0) 1294.0)
		(= (dummy_3_d d3_1) 1134.0)
		(= (dummy_3_d d3_2) -623.0)
		(= (dummy_3_d d3_3) -527.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

