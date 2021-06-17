#include "apriori.h"
#include <stddef.h>
#include <papi.h>

#define ITENS_ID 0  

int main(int argc, char** argv)
{
	if (argc != 4)
	{
		printf("%s first_threshold second_threshold num_threads\n", argv[0]);
		return (EXIT_FAILURE);
	}
	long_long start_cycles, end_cycles, start_usec, end_usec;
    int EventSet = PAPI_NULL;
	omp_set_num_threads(atoi(argv[3]));
	int tmp = 0; 

#ifdef _XEON_PHI_
	double power;
	power_init();
#endif
    if (PAPI_library_init(PAPI_VER_CURRENT) != PAPI_VER_CURRENT)
    exit(1);

    /* Gets the starting time in clock cycles */
    start_cycles = PAPI_get_real_cyc();

	double inin = omp_get_wtime();
    /*Create an EventSet */
    if (PAPI_create_eventset(&EventSet) != PAPI_OK)
    exit(1);
	determinate_frequents(individual_itens, 0, NUM_OF_CARDS, atoi(argv[1]));

	combine(individual_itens, NUM_OF_CARDS, individual_itens, NUM_OF_CARDS, atoi(argv[3]));
	count_combinations_frequency(0, pos_to_insert);

	determinate_frequents(data, 0, pos_to_insert, atoi(argv[2]));

	tmp = pos_to_insert;

	combine(data, pos_to_insert, individual_itens, NUM_OF_CARDS, atoi(argv[3]));
	count_combinations_frequency(tmp, pos_to_insert);

	determinate_frequents(data, tmp, pos_to_insert, atoi(argv[2]));
    /* Gets the ending time in clock cycles */
    end_cycles = PAPI_get_real_cyc();
	printf("Statistics:\ntime: %f\n", omp_get_wtime() - inin);
	printf("Wall clock cycles: %lld\n", end_cycles - start_cycles);
   
#ifdef _XEON_PHI_
	power = power_end();
	printf("average power: %f\n", power*0.000001);
#endif

#ifndef NDEBUG
	for (int i = 0; i< NUM_OF_CARDS; i++)
	{
		//if(individual_itens[i].isFrequent)
		///printf("%s -> %d\n",individual_itens[i].item,individual_itens[i].frequency);
	}

	for (int i = 0; i< pos_to_insert;i++)
	{
		//if(data[i].isFrequent)
		//printf("%s -> %d\n",data[i].item,data[i].frequency);
	}
#endif

	return (EXIT_SUCCESS);
}

