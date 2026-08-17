;; Enrico Scala (enricos83@gmail.com) and Miquel Ramirez (miquel.ramirez@gmail.com)
(define (problem instance_32)

	(:domain sailing)

	(:objects
		b0 b1 - boat
		p0 p1 - person
		d1_0 - dummy_1
		d2_0 d2_1 d2_2 d2_3 d2_4 - dummy_2
		d3_0 d3_1 d3_2 - dummy_3
	)

  (:init
		(= (x b0) -2.0)
		(= (y b0) 5.0)
		(= (x b1) 5.0)
		(= (y b1) -1.0)

		(= (d p0) 52.0)
		(= (d p1) -98.0)

        (= (dummy_1_d d1_0) 93.0)

        (= (dummy_2_d d2_0) -11.0)
		(= (dummy_2_d d2_1) 3.0)
		(= (dummy_2_d d2_2) 2.0)
		(= (dummy_2_d d2_3) -8.0)
		(= (dummy_2_d d2_4) 4.0)

        (= (dummy_3_d d3_0) 885.0)
		(= (dummy_3_d d3_1) -1156.0)
		(= (dummy_3_d d3_2) 1044.0)
	)

	(:goal
		(and
			(saved p0)
			(saved p1)
		)
	)
)

