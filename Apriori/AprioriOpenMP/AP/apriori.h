/*
 * Copyright(C) 2016 João Saffran <joaosaffran@gmail.com>
 * 
 * apriori.h - Apriori kernel library
 */

#ifndef _APRIORI_H_
#define _APRIORI_H_

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <omp.h>

	#define SIZE 10000000
	#define NUM_OF_CARDS 282
	#define DATABASE_SIZE 5000	
	#define LINE_MAX 100
	#define MAX_COMB 50000
	struct Item
	{
		const char *item;
		int num_itens;
		int frequency;
		int isFrequent;
	};

	/*
	 * Apriori Data
	 */
	 int pos_to_insert;

	 struct Item data[SIZE];

	 extern struct Item individual_itens[NUM_OF_CARDS];

	 extern char* database[DATABASE_SIZE];

	/* Forward definitions. */
	 extern void count_combinations_frequency(int, int);
	 extern void determinate_frequents(struct Item *, int, int, int);
	 extern void combine(struct Item *, int, struct Item *, int, int);

#endif /* _APRIORI_H_ */