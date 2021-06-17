/*Copyright(C) 2016 João Saffran <joaosaffran@gmail.com>
 * 
 * apriori.c - Apriori Methods Implementation
 */

#include <assert.h>
#include "apriori.h"

/*
 * Checks if has combination in an item of the database
 */
static inline int has_item_in_line(const struct Item *it, char *line)
{
	int resp = 1;
	char *token = malloc(LINE_MAX*sizeof(char));
	int aux[it->num_itens];

	size_t j = 0;

	memset(aux, 0, it->num_itens*sizeof(int));
	memset(token, 0, LINE_MAX*sizeof(char));

	for (int i = 0; i < it->num_itens; i++)
	{
		for (int k = 0; ((it->item[j] != (',')) && (j < strlen(it->item))); k++, j++)
		{
			token[k] = it->item[j];	
		}
		++j;
		if (strstr(line, token) != NULL)
		{
			aux[i] = 1;	
		}

	}

	free(token);

	for (int i = 0; i < it->num_itens; i++)
	{
		resp = (resp && aux[i]);
	}

	return (resp);
}

/*
 * Counts the frequency of the combinations specified.
 */
void count_combinations_frequency(int ini_pos, int end_pos)
{
#pragma omp parallel for
	for (int i = 0; i< DATABASE_SIZE; i++) 
	{
		for (int j = ini_pos; j < end_pos; j++)
		{
			if (has_item_in_line(&data[j], database[i]))
			{
				++data[j].frequency;
			}
		}
	}
}

/*
 * Determines if items are frequent.
 */
void determinate_frequents(struct Item *dataset, int begin, int end, int threshold)
{
	for (int i = begin; i< end; i++)
	{
		dataset[i].isFrequent = (dataset[i].frequency >= threshold);
	}
}
/*
 * Combines two databases itens.
 */
void combine(struct Item *dataset1, int size1, struct Item *dataset2, int size2, int num_threads)
{
	struct Item tmp_data[10000*num_threads][num_threads];
	int aux_lpi[num_threads];
	memset(aux_lpi, 0, num_threads * sizeof(int));

	#pragma omp parallel
	{
		int tid = omp_get_thread_num();
		int lpi = 0;
		char *str;

		str = malloc( LINE_MAX*sizeof(char) );
		assert(str != NULL);

		#pragma omp for
		for (int i = 0; i < size1; i++)
		{
			if (!dataset1[i].isFrequent)
			{
				continue;
			}

			for (int j = 0; j < size2; j++)
			{
				if (!dataset2[j].isFrequent)
				{
					continue;
				}

				if (strcmp(dataset1[i].item,dataset2[j].item) < 0)
				{
					strcat(str, dataset1[i].item);
					strcat(str, ",");
					strcat(str, dataset2[j].item);
				} else
				{
					strcat(str, dataset2[j].item);
					strcat(str, ",");
					strcat(str, dataset1[i].item); 
				}

				tmp_data[lpi][tid].num_itens = dataset1[i].num_itens + 1;
				tmp_data[lpi++][tid].item = str;

				str = NULL;
				free(str);
				str = malloc( LINE_MAX * sizeof(char) );
			}
		}
		free(str);
		aux_lpi[tid] = lpi;
	}

	for(int i = 0; i< num_threads; i++)
	{
		for(int j = 0; j< aux_lpi[i];j++)
		{
			data[pos_to_insert++] = tmp_data[j][i];
		}
	}
}